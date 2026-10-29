import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed559
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody559_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody559_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody559_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody559_3 : StackLang.HolProg 64 :=
.seq NamedBody559_1 NamedBody559_2

def NamedBody559_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody559_3 NamedBody559_4

def NamedBody559_6 : StackLang.HolProg 64 :=
.seq NamedBody559_0 NamedBody559_5

def NamedBody559_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody559_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody559_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1908#64)

def NamedBody559_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody559_13 : StackLang.HolProg 64 :=
.seq NamedBody559_11 NamedBody559_12

def NamedBody559_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody559_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody559_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody559_17 : StackLang.HolProg 64 :=
.seq NamedBody559_15 NamedBody559_16

def NamedBody559_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody559_17 NamedBody559_18

def NamedBody559_20 : StackLang.HolProg 64 :=
.seq NamedBody559_14 NamedBody559_19

def NamedBody559_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody559_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody559_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 3

def NamedBody559_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody559_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody559_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody559_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody559_30 : StackLang.HolProg 64 :=
.seq NamedBody559_28 NamedBody559_29

def NamedBody559_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody559_32 : StackLang.HolProg 64 :=
.seq NamedBody559_30 NamedBody559_31

def NamedBody559_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_34 : StackLang.HolProg 64 :=
.seq NamedBody559_32 NamedBody559_33

def NamedBody559_35 : StackLang.HolProg 64 :=
.seq NamedBody559_27 NamedBody559_34

def NamedBody559_36 : StackLang.HolProg 64 :=
.seq NamedBody559_26 NamedBody559_35

def NamedBody559_37 : StackLang.HolProg 64 :=
.seq NamedBody559_25 NamedBody559_36

def NamedBody559_38 : StackLang.HolProg 64 :=
.seq NamedBody559_24 NamedBody559_37

def NamedBody559_39 : StackLang.HolProg 64 :=
.seq NamedBody559_23 NamedBody559_38

def NamedBody559_40 : StackLang.HolProg 64 :=
.seq NamedBody559_22 NamedBody559_39

def NamedBody559_41 : StackLang.HolProg 64 :=
.seq NamedBody559_21 NamedBody559_40

def NamedBody559_42 : StackLang.HolProg 64 :=
.seq NamedBody559_20 NamedBody559_41

def NamedBody559_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody559_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody559_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_50 : StackLang.HolProg 64 :=
.seq NamedBody559_48 NamedBody559_49

def NamedBody559_51 : StackLang.HolProg 64 :=
.seq NamedBody559_47 NamedBody559_50

def NamedBody559_52 : StackLang.HolProg 64 :=
.seq NamedBody559_46 NamedBody559_51

def NamedBody559_53 : StackLang.HolProg 64 :=
.seq NamedBody559_45 NamedBody559_52

def NamedBody559_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody559_56 : StackLang.HolProg 64 :=
.seq NamedBody559_54 NamedBody559_55

def NamedBody559_57 : StackLang.HolProg 64 :=
.call (some (NamedBody559_53, 1, 559, 2)) (Sum.inl 470) (some (NamedBody559_56, 559, 3))

def NamedBody559_58 : StackLang.HolProg 64 :=
.seq NamedBody559_44 NamedBody559_57

def NamedBody559_59 : StackLang.HolProg 64 :=
.seq NamedBody559_43 NamedBody559_58

def NamedBody559_60 : StackLang.HolProg 64 :=
.seq NamedBody559_42 NamedBody559_59

def NamedBody559_61 : StackLang.HolProg 64 :=
.seq NamedBody559_13 NamedBody559_60

def NamedBody559_62 : StackLang.HolProg 64 :=
.seq NamedBody559_10 NamedBody559_61

def NamedBody559_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody559_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody559_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody559_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody559_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody559_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody559_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def NamedBody559_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1909#64)

def NamedBody559_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody559_74 : StackLang.HolProg 64 :=
.seq NamedBody559_72 NamedBody559_73

def NamedBody559_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody559_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody559_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody559_78 : StackLang.HolProg 64 :=
.seq NamedBody559_76 NamedBody559_77

def NamedBody559_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody559_78 NamedBody559_79

def NamedBody559_81 : StackLang.HolProg 64 :=
.seq NamedBody559_75 NamedBody559_80

def NamedBody559_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody559_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody559_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 5

def NamedBody559_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody559_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody559_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody559_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody559_91 : StackLang.HolProg 64 :=
.seq NamedBody559_89 NamedBody559_90

def NamedBody559_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody559_93 : StackLang.HolProg 64 :=
.seq NamedBody559_91 NamedBody559_92

def NamedBody559_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_95 : StackLang.HolProg 64 :=
.seq NamedBody559_93 NamedBody559_94

def NamedBody559_96 : StackLang.HolProg 64 :=
.seq NamedBody559_88 NamedBody559_95

def NamedBody559_97 : StackLang.HolProg 64 :=
.seq NamedBody559_87 NamedBody559_96

def NamedBody559_98 : StackLang.HolProg 64 :=
.seq NamedBody559_86 NamedBody559_97

def NamedBody559_99 : StackLang.HolProg 64 :=
.seq NamedBody559_85 NamedBody559_98

def NamedBody559_100 : StackLang.HolProg 64 :=
.seq NamedBody559_84 NamedBody559_99

def NamedBody559_101 : StackLang.HolProg 64 :=
.seq NamedBody559_83 NamedBody559_100

def NamedBody559_102 : StackLang.HolProg 64 :=
.seq NamedBody559_82 NamedBody559_101

def NamedBody559_103 : StackLang.HolProg 64 :=
.seq NamedBody559_81 NamedBody559_102

def NamedBody559_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody559_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody559_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_111 : StackLang.HolProg 64 :=
.seq NamedBody559_109 NamedBody559_110

def NamedBody559_112 : StackLang.HolProg 64 :=
.seq NamedBody559_108 NamedBody559_111

def NamedBody559_113 : StackLang.HolProg 64 :=
.seq NamedBody559_107 NamedBody559_112

def NamedBody559_114 : StackLang.HolProg 64 :=
.seq NamedBody559_106 NamedBody559_113

def NamedBody559_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody559_117 : StackLang.HolProg 64 :=
.seq NamedBody559_115 NamedBody559_116

def NamedBody559_118 : StackLang.HolProg 64 :=
.call (some (NamedBody559_114, 1, 559, 4)) (Sum.inl 477) (some (NamedBody559_117, 559, 5))

def NamedBody559_119 : StackLang.HolProg 64 :=
.seq NamedBody559_105 NamedBody559_118

def NamedBody559_120 : StackLang.HolProg 64 :=
.seq NamedBody559_104 NamedBody559_119

def NamedBody559_121 : StackLang.HolProg 64 :=
.seq NamedBody559_103 NamedBody559_120

def NamedBody559_122 : StackLang.HolProg 64 :=
.seq NamedBody559_74 NamedBody559_121

def NamedBody559_123 : StackLang.HolProg 64 :=
.seq NamedBody559_71 NamedBody559_122

def NamedBody559_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody559_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody559_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1910#64)

def NamedBody559_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody559_130 : StackLang.HolProg 64 :=
.seq NamedBody559_128 NamedBody559_129

def NamedBody559_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody559_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody559_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody559_134 : StackLang.HolProg 64 :=
.seq NamedBody559_132 NamedBody559_133

def NamedBody559_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody559_134 NamedBody559_135

def NamedBody559_137 : StackLang.HolProg 64 :=
.seq NamedBody559_131 NamedBody559_136

def NamedBody559_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody559_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody559_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 7

def NamedBody559_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody559_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody559_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody559_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody559_147 : StackLang.HolProg 64 :=
.seq NamedBody559_145 NamedBody559_146

def NamedBody559_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody559_149 : StackLang.HolProg 64 :=
.seq NamedBody559_147 NamedBody559_148

def NamedBody559_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_151 : StackLang.HolProg 64 :=
.seq NamedBody559_149 NamedBody559_150

def NamedBody559_152 : StackLang.HolProg 64 :=
.seq NamedBody559_144 NamedBody559_151

def NamedBody559_153 : StackLang.HolProg 64 :=
.seq NamedBody559_143 NamedBody559_152

def NamedBody559_154 : StackLang.HolProg 64 :=
.seq NamedBody559_142 NamedBody559_153

def NamedBody559_155 : StackLang.HolProg 64 :=
.seq NamedBody559_141 NamedBody559_154

def NamedBody559_156 : StackLang.HolProg 64 :=
.seq NamedBody559_140 NamedBody559_155

def NamedBody559_157 : StackLang.HolProg 64 :=
.seq NamedBody559_139 NamedBody559_156

def NamedBody559_158 : StackLang.HolProg 64 :=
.seq NamedBody559_138 NamedBody559_157

def NamedBody559_159 : StackLang.HolProg 64 :=
.seq NamedBody559_137 NamedBody559_158

def NamedBody559_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody559_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody559_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody559_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody559_167 : StackLang.HolProg 64 :=
.seq NamedBody559_165 NamedBody559_166

def NamedBody559_168 : StackLang.HolProg 64 :=
.seq NamedBody559_164 NamedBody559_167

def NamedBody559_169 : StackLang.HolProg 64 :=
.seq NamedBody559_163 NamedBody559_168

def NamedBody559_170 : StackLang.HolProg 64 :=
.seq NamedBody559_162 NamedBody559_169

def NamedBody559_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody559_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody559_173 : StackLang.HolProg 64 :=
.seq NamedBody559_171 NamedBody559_172

def NamedBody559_174 : StackLang.HolProg 64 :=
.call (some (NamedBody559_170, 1, 559, 6)) (Sum.inl 490) (some (NamedBody559_173, 559, 7))

def NamedBody559_175 : StackLang.HolProg 64 :=
.seq NamedBody559_161 NamedBody559_174

def NamedBody559_176 : StackLang.HolProg 64 :=
.seq NamedBody559_160 NamedBody559_175

def NamedBody559_177 : StackLang.HolProg 64 :=
.seq NamedBody559_159 NamedBody559_176

def NamedBody559_178 : StackLang.HolProg 64 :=
.seq NamedBody559_130 NamedBody559_177

def NamedBody559_179 : StackLang.HolProg 64 :=
.seq NamedBody559_127 NamedBody559_178

def NamedBody559_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody559_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody559_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody559_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody559_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody559_185 : StackLang.HolProg 64 :=
.seq NamedBody559_183 NamedBody559_184

def NamedBody559_186 : StackLang.HolProg 64 :=
.seq NamedBody559_182 NamedBody559_185

def NamedBody559_187 : StackLang.HolProg 64 :=
.seq NamedBody559_181 NamedBody559_186

def NamedBody559_188 : StackLang.HolProg 64 :=
.seq NamedBody559_180 NamedBody559_187

def NamedBody559_189 : StackLang.HolProg 64 :=
.seq NamedBody559_179 NamedBody559_188

def NamedBody559_190 : StackLang.HolProg 64 :=
.seq NamedBody559_126 NamedBody559_189

def NamedBody559_191 : StackLang.HolProg 64 :=
.seq NamedBody559_125 NamedBody559_190

def NamedBody559_192 : StackLang.HolProg 64 :=
.seq NamedBody559_124 NamedBody559_191

def NamedBody559_193 : StackLang.HolProg 64 :=
.seq NamedBody559_123 NamedBody559_192

def NamedBody559_194 : StackLang.HolProg 64 :=
.seq NamedBody559_70 NamedBody559_193

def NamedBody559_195 : StackLang.HolProg 64 :=
.seq NamedBody559_69 NamedBody559_194

def NamedBody559_196 : StackLang.HolProg 64 :=
.seq NamedBody559_68 NamedBody559_195

def NamedBody559_197 : StackLang.HolProg 64 :=
.seq NamedBody559_67 NamedBody559_196

def NamedBody559_198 : StackLang.HolProg 64 :=
.seq NamedBody559_66 NamedBody559_197

def NamedBody559_199 : StackLang.HolProg 64 :=
.seq NamedBody559_65 NamedBody559_198

def NamedBody559_200 : StackLang.HolProg 64 :=
.seq NamedBody559_64 NamedBody559_199

def NamedBody559_201 : StackLang.HolProg 64 :=
.seq NamedBody559_63 NamedBody559_200

def NamedBody559_202 : StackLang.HolProg 64 :=
.seq NamedBody559_62 NamedBody559_201

def NamedBody559_203 : StackLang.HolProg 64 :=
.seq NamedBody559_9 NamedBody559_202

def NamedBody559_204 : StackLang.HolProg 64 :=
.seq NamedBody559_8 NamedBody559_203

def NamedBody559_205 : StackLang.HolProg 64 :=
.seq NamedBody559_7 NamedBody559_204

def NamedBody559_206 : StackLang.HolProg 64 :=
.seq NamedBody559_6 NamedBody559_205

def Named559 : Nat × StackLang.HolProg 64 := (559, NamedBody559_206)
theorem Named559_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed559 = Named559 := by
  kernel_rfl
#print axioms Named559_eq
end InitECandidate.Proofs.BackendStages
