import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed458
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody458_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody458_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody458_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody458_3 : StackLang.HolProg 64 :=
.seq NamedBody458_1 NamedBody458_2

def NamedBody458_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody458_3 NamedBody458_4

def NamedBody458_6 : StackLang.HolProg 64 :=
.seq NamedBody458_0 NamedBody458_5

def NamedBody458_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody458_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_9 : StackLang.HolProg 64 :=
.seq NamedBody458_7 NamedBody458_8

def NamedBody458_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1408#64)

def NamedBody458_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody458_13 : StackLang.HolProg 64 :=
.seq NamedBody458_11 NamedBody458_12

def NamedBody458_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody458_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody458_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody458_17 : StackLang.HolProg 64 :=
.seq NamedBody458_15 NamedBody458_16

def NamedBody458_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody458_17 NamedBody458_18

def NamedBody458_20 : StackLang.HolProg 64 :=
.seq NamedBody458_14 NamedBody458_19

def NamedBody458_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody458_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody458_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 458 3

def NamedBody458_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody458_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody458_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody458_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody458_30 : StackLang.HolProg 64 :=
.seq NamedBody458_28 NamedBody458_29

def NamedBody458_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody458_32 : StackLang.HolProg 64 :=
.seq NamedBody458_30 NamedBody458_31

def NamedBody458_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody458_34 : StackLang.HolProg 64 :=
.seq NamedBody458_32 NamedBody458_33

def NamedBody458_35 : StackLang.HolProg 64 :=
.seq NamedBody458_27 NamedBody458_34

def NamedBody458_36 : StackLang.HolProg 64 :=
.seq NamedBody458_26 NamedBody458_35

def NamedBody458_37 : StackLang.HolProg 64 :=
.seq NamedBody458_25 NamedBody458_36

def NamedBody458_38 : StackLang.HolProg 64 :=
.seq NamedBody458_24 NamedBody458_37

def NamedBody458_39 : StackLang.HolProg 64 :=
.seq NamedBody458_23 NamedBody458_38

def NamedBody458_40 : StackLang.HolProg 64 :=
.seq NamedBody458_22 NamedBody458_39

def NamedBody458_41 : StackLang.HolProg 64 :=
.seq NamedBody458_21 NamedBody458_40

def NamedBody458_42 : StackLang.HolProg 64 :=
.seq NamedBody458_20 NamedBody458_41

def NamedBody458_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody458_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody458_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody458_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_51 : StackLang.HolProg 64 :=
.seq NamedBody458_49 NamedBody458_50

def NamedBody458_52 : StackLang.HolProg 64 :=
.seq NamedBody458_48 NamedBody458_51

def NamedBody458_53 : StackLang.HolProg 64 :=
.seq NamedBody458_47 NamedBody458_52

def NamedBody458_54 : StackLang.HolProg 64 :=
.seq NamedBody458_46 NamedBody458_53

def NamedBody458_55 : StackLang.HolProg 64 :=
.seq NamedBody458_45 NamedBody458_54

def NamedBody458_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody458_58 : StackLang.HolProg 64 :=
.seq NamedBody458_56 NamedBody458_57

def NamedBody458_59 : StackLang.HolProg 64 :=
.call (some (NamedBody458_55, 1, 458, 2)) (Sum.inl 198) (some (NamedBody458_58, 458, 3))

def NamedBody458_60 : StackLang.HolProg 64 :=
.seq NamedBody458_44 NamedBody458_59

def NamedBody458_61 : StackLang.HolProg 64 :=
.seq NamedBody458_43 NamedBody458_60

def NamedBody458_62 : StackLang.HolProg 64 :=
.seq NamedBody458_42 NamedBody458_61

def NamedBody458_63 : StackLang.HolProg 64 :=
.seq NamedBody458_13 NamedBody458_62

def NamedBody458_64 : StackLang.HolProg 64 :=
.seq NamedBody458_10 NamedBody458_63

def NamedBody458_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody458_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody458_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 2#64)

def NamedBody458_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody458_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody458_71 : StackLang.HolProg 64 :=
.seq NamedBody458_69 NamedBody458_70

def NamedBody458_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1409#64)

def NamedBody458_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody458_75 : StackLang.HolProg 64 :=
.seq NamedBody458_73 NamedBody458_74

def NamedBody458_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody458_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody458_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody458_79 : StackLang.HolProg 64 :=
.seq NamedBody458_77 NamedBody458_78

def NamedBody458_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody458_79 NamedBody458_80

def NamedBody458_82 : StackLang.HolProg 64 :=
.seq NamedBody458_76 NamedBody458_81

def NamedBody458_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody458_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody458_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 458 5

def NamedBody458_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody458_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody458_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody458_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody458_92 : StackLang.HolProg 64 :=
.seq NamedBody458_90 NamedBody458_91

def NamedBody458_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody458_94 : StackLang.HolProg 64 :=
.seq NamedBody458_92 NamedBody458_93

def NamedBody458_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody458_96 : StackLang.HolProg 64 :=
.seq NamedBody458_94 NamedBody458_95

def NamedBody458_97 : StackLang.HolProg 64 :=
.seq NamedBody458_89 NamedBody458_96

def NamedBody458_98 : StackLang.HolProg 64 :=
.seq NamedBody458_88 NamedBody458_97

def NamedBody458_99 : StackLang.HolProg 64 :=
.seq NamedBody458_87 NamedBody458_98

def NamedBody458_100 : StackLang.HolProg 64 :=
.seq NamedBody458_86 NamedBody458_99

def NamedBody458_101 : StackLang.HolProg 64 :=
.seq NamedBody458_85 NamedBody458_100

def NamedBody458_102 : StackLang.HolProg 64 :=
.seq NamedBody458_84 NamedBody458_101

def NamedBody458_103 : StackLang.HolProg 64 :=
.seq NamedBody458_83 NamedBody458_102

def NamedBody458_104 : StackLang.HolProg 64 :=
.seq NamedBody458_82 NamedBody458_103

def NamedBody458_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody458_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody458_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody458_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody458_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody458_114 : StackLang.HolProg 64 :=
.seq NamedBody458_112 NamedBody458_113

def NamedBody458_115 : StackLang.HolProg 64 :=
.seq NamedBody458_111 NamedBody458_114

def NamedBody458_116 : StackLang.HolProg 64 :=
.seq NamedBody458_110 NamedBody458_115

def NamedBody458_117 : StackLang.HolProg 64 :=
.seq NamedBody458_109 NamedBody458_116

def NamedBody458_118 : StackLang.HolProg 64 :=
.seq NamedBody458_108 NamedBody458_117

def NamedBody458_119 : StackLang.HolProg 64 :=
.seq NamedBody458_107 NamedBody458_118

def NamedBody458_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody458_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody458_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody458_123 : StackLang.HolProg 64 :=
.seq NamedBody458_121 NamedBody458_122

def NamedBody458_124 : StackLang.HolProg 64 :=
.seq NamedBody458_120 NamedBody458_123

def NamedBody458_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody458_126 : StackLang.HolProg 64 :=
.seq NamedBody458_124 NamedBody458_125

def NamedBody458_127 : StackLang.HolProg 64 :=
.call (some (NamedBody458_119, 1, 458, 4)) (Sum.inl 457) (some (NamedBody458_126, 458, 5))

def NamedBody458_128 : StackLang.HolProg 64 :=
.seq NamedBody458_106 NamedBody458_127

def NamedBody458_129 : StackLang.HolProg 64 :=
.seq NamedBody458_105 NamedBody458_128

def NamedBody458_130 : StackLang.HolProg 64 :=
.seq NamedBody458_104 NamedBody458_129

def NamedBody458_131 : StackLang.HolProg 64 :=
.seq NamedBody458_75 NamedBody458_130

def NamedBody458_132 : StackLang.HolProg 64 :=
.seq NamedBody458_72 NamedBody458_131

def NamedBody458_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody458_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody458_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody458_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody458_137 : StackLang.HolProg 64 :=
.seq NamedBody458_135 NamedBody458_136

def NamedBody458_138 : StackLang.HolProg 64 :=
.seq NamedBody458_134 NamedBody458_137

def NamedBody458_139 : StackLang.HolProg 64 :=
.seq NamedBody458_133 NamedBody458_138

def NamedBody458_140 : StackLang.HolProg 64 :=
.seq NamedBody458_132 NamedBody458_139

def NamedBody458_141 : StackLang.HolProg 64 :=
.seq NamedBody458_71 NamedBody458_140

def NamedBody458_142 : StackLang.HolProg 64 :=
.seq NamedBody458_68 NamedBody458_141

def NamedBody458_143 : StackLang.HolProg 64 :=
.seq NamedBody458_67 NamedBody458_142

def NamedBody458_144 : StackLang.HolProg 64 :=
.seq NamedBody458_66 NamedBody458_143

def NamedBody458_145 : StackLang.HolProg 64 :=
.seq NamedBody458_65 NamedBody458_144

def NamedBody458_146 : StackLang.HolProg 64 :=
.seq NamedBody458_64 NamedBody458_145

def NamedBody458_147 : StackLang.HolProg 64 :=
.seq NamedBody458_9 NamedBody458_146

def NamedBody458_148 : StackLang.HolProg 64 :=
.seq NamedBody458_6 NamedBody458_147

def Named458 : Nat × StackLang.HolProg 64 := (458, NamedBody458_148)
theorem Named458_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed458 = Named458 := by
  kernel_rfl
#print axioms Named458_eq
end InitECandidate.Proofs.BackendStages
