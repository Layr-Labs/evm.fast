import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed260
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody260_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody260_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_3 : StackLang.HolProg 64 :=
.seq NamedBody260_1 NamedBody260_2

def NamedBody260_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_3 NamedBody260_4

def NamedBody260_6 : StackLang.HolProg 64 :=
.seq NamedBody260_0 NamedBody260_5

def NamedBody260_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody260_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_10 : StackLang.HolProg 64 :=
.seq NamedBody260_8 NamedBody260_9

def NamedBody260_11 : StackLang.HolProg 64 :=
.seq NamedBody260_7 NamedBody260_10

def NamedBody260_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 590#64)

def NamedBody260_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_15 : StackLang.HolProg 64 :=
.seq NamedBody260_13 NamedBody260_14

def NamedBody260_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_19 : StackLang.HolProg 64 :=
.seq NamedBody260_17 NamedBody260_18

def NamedBody260_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_19 NamedBody260_20

def NamedBody260_22 : StackLang.HolProg 64 :=
.seq NamedBody260_16 NamedBody260_21

def NamedBody260_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 3

def NamedBody260_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_32 : StackLang.HolProg 64 :=
.seq NamedBody260_30 NamedBody260_31

def NamedBody260_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_34 : StackLang.HolProg 64 :=
.seq NamedBody260_32 NamedBody260_33

def NamedBody260_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_36 : StackLang.HolProg 64 :=
.seq NamedBody260_34 NamedBody260_35

def NamedBody260_37 : StackLang.HolProg 64 :=
.seq NamedBody260_29 NamedBody260_36

def NamedBody260_38 : StackLang.HolProg 64 :=
.seq NamedBody260_28 NamedBody260_37

def NamedBody260_39 : StackLang.HolProg 64 :=
.seq NamedBody260_27 NamedBody260_38

def NamedBody260_40 : StackLang.HolProg 64 :=
.seq NamedBody260_26 NamedBody260_39

def NamedBody260_41 : StackLang.HolProg 64 :=
.seq NamedBody260_25 NamedBody260_40

def NamedBody260_42 : StackLang.HolProg 64 :=
.seq NamedBody260_24 NamedBody260_41

def NamedBody260_43 : StackLang.HolProg 64 :=
.seq NamedBody260_23 NamedBody260_42

def NamedBody260_44 : StackLang.HolProg 64 :=
.seq NamedBody260_22 NamedBody260_43

def NamedBody260_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody260_52 : StackLang.HolProg 64 :=
.seq NamedBody260_50 NamedBody260_51

def NamedBody260_53 : StackLang.HolProg 64 :=
.seq NamedBody260_49 NamedBody260_52

def NamedBody260_54 : StackLang.HolProg 64 :=
.seq NamedBody260_48 NamedBody260_53

def NamedBody260_55 : StackLang.HolProg 64 :=
.seq NamedBody260_47 NamedBody260_54

def NamedBody260_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_58 : StackLang.HolProg 64 :=
.seq NamedBody260_56 NamedBody260_57

def NamedBody260_59 : StackLang.HolProg 64 :=
.call (some (NamedBody260_55, 1, 260, 2)) (Sum.inl 69) (some (NamedBody260_58, 260, 3))

def NamedBody260_60 : StackLang.HolProg 64 :=
.seq NamedBody260_46 NamedBody260_59

def NamedBody260_61 : StackLang.HolProg 64 :=
.seq NamedBody260_45 NamedBody260_60

def NamedBody260_62 : StackLang.HolProg 64 :=
.seq NamedBody260_44 NamedBody260_61

def NamedBody260_63 : StackLang.HolProg 64 :=
.seq NamedBody260_15 NamedBody260_62

def NamedBody260_64 : StackLang.HolProg 64 :=
.seq NamedBody260_12 NamedBody260_63

def NamedBody260_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 160#64)

def NamedBody260_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody260_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 591#64)

def NamedBody260_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_71 : StackLang.HolProg 64 :=
.seq NamedBody260_69 NamedBody260_70

def NamedBody260_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_75 : StackLang.HolProg 64 :=
.seq NamedBody260_73 NamedBody260_74

def NamedBody260_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_75 NamedBody260_76

def NamedBody260_78 : StackLang.HolProg 64 :=
.seq NamedBody260_72 NamedBody260_77

def NamedBody260_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 5

def NamedBody260_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_88 : StackLang.HolProg 64 :=
.seq NamedBody260_86 NamedBody260_87

def NamedBody260_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_90 : StackLang.HolProg 64 :=
.seq NamedBody260_88 NamedBody260_89

def NamedBody260_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_92 : StackLang.HolProg 64 :=
.seq NamedBody260_90 NamedBody260_91

def NamedBody260_93 : StackLang.HolProg 64 :=
.seq NamedBody260_85 NamedBody260_92

def NamedBody260_94 : StackLang.HolProg 64 :=
.seq NamedBody260_84 NamedBody260_93

def NamedBody260_95 : StackLang.HolProg 64 :=
.seq NamedBody260_83 NamedBody260_94

def NamedBody260_96 : StackLang.HolProg 64 :=
.seq NamedBody260_82 NamedBody260_95

def NamedBody260_97 : StackLang.HolProg 64 :=
.seq NamedBody260_81 NamedBody260_96

def NamedBody260_98 : StackLang.HolProg 64 :=
.seq NamedBody260_80 NamedBody260_97

def NamedBody260_99 : StackLang.HolProg 64 :=
.seq NamedBody260_79 NamedBody260_98

def NamedBody260_100 : StackLang.HolProg 64 :=
.seq NamedBody260_78 NamedBody260_99

def NamedBody260_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody260_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_109 : StackLang.HolProg 64 :=
.seq NamedBody260_107 NamedBody260_108

def NamedBody260_110 : StackLang.HolProg 64 :=
.seq NamedBody260_106 NamedBody260_109

def NamedBody260_111 : StackLang.HolProg 64 :=
.seq NamedBody260_105 NamedBody260_110

def NamedBody260_112 : StackLang.HolProg 64 :=
.seq NamedBody260_104 NamedBody260_111

def NamedBody260_113 : StackLang.HolProg 64 :=
.seq NamedBody260_103 NamedBody260_112

def NamedBody260_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_116 : StackLang.HolProg 64 :=
.seq NamedBody260_114 NamedBody260_115

def NamedBody260_117 : StackLang.HolProg 64 :=
.call (some (NamedBody260_113, 1, 260, 4)) (Sum.inl 68) (some (NamedBody260_116, 260, 5))

def NamedBody260_118 : StackLang.HolProg 64 :=
.seq NamedBody260_102 NamedBody260_117

def NamedBody260_119 : StackLang.HolProg 64 :=
.seq NamedBody260_101 NamedBody260_118

def NamedBody260_120 : StackLang.HolProg 64 :=
.seq NamedBody260_100 NamedBody260_119

def NamedBody260_121 : StackLang.HolProg 64 :=
.seq NamedBody260_71 NamedBody260_120

def NamedBody260_122 : StackLang.HolProg 64 :=
.seq NamedBody260_68 NamedBody260_121

def NamedBody260_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody260_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 48#64)

def NamedBody260_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_128 : StackLang.HolProg 64 :=
.seq NamedBody260_126 NamedBody260_127

def NamedBody260_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 592#64)

def NamedBody260_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_132 : StackLang.HolProg 64 :=
.seq NamedBody260_130 NamedBody260_131

def NamedBody260_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_136 : StackLang.HolProg 64 :=
.seq NamedBody260_134 NamedBody260_135

def NamedBody260_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_136 NamedBody260_137

def NamedBody260_139 : StackLang.HolProg 64 :=
.seq NamedBody260_133 NamedBody260_138

def NamedBody260_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 7

def NamedBody260_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_149 : StackLang.HolProg 64 :=
.seq NamedBody260_147 NamedBody260_148

def NamedBody260_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_151 : StackLang.HolProg 64 :=
.seq NamedBody260_149 NamedBody260_150

def NamedBody260_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_153 : StackLang.HolProg 64 :=
.seq NamedBody260_151 NamedBody260_152

def NamedBody260_154 : StackLang.HolProg 64 :=
.seq NamedBody260_146 NamedBody260_153

def NamedBody260_155 : StackLang.HolProg 64 :=
.seq NamedBody260_145 NamedBody260_154

def NamedBody260_156 : StackLang.HolProg 64 :=
.seq NamedBody260_144 NamedBody260_155

def NamedBody260_157 : StackLang.HolProg 64 :=
.seq NamedBody260_143 NamedBody260_156

def NamedBody260_158 : StackLang.HolProg 64 :=
.seq NamedBody260_142 NamedBody260_157

def NamedBody260_159 : StackLang.HolProg 64 :=
.seq NamedBody260_141 NamedBody260_158

def NamedBody260_160 : StackLang.HolProg 64 :=
.seq NamedBody260_140 NamedBody260_159

def NamedBody260_161 : StackLang.HolProg 64 :=
.seq NamedBody260_139 NamedBody260_160

def NamedBody260_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_170 : StackLang.HolProg 64 :=
.seq NamedBody260_168 NamedBody260_169

def NamedBody260_171 : StackLang.HolProg 64 :=
.seq NamedBody260_167 NamedBody260_170

def NamedBody260_172 : StackLang.HolProg 64 :=
.seq NamedBody260_166 NamedBody260_171

def NamedBody260_173 : StackLang.HolProg 64 :=
.seq NamedBody260_165 NamedBody260_172

def NamedBody260_174 : StackLang.HolProg 64 :=
.seq NamedBody260_164 NamedBody260_173

def NamedBody260_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_177 : StackLang.HolProg 64 :=
.seq NamedBody260_175 NamedBody260_176

def NamedBody260_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_179 : StackLang.HolProg 64 :=
.seq NamedBody260_177 NamedBody260_178

def NamedBody260_180 : StackLang.HolProg 64 :=
.call (some (NamedBody260_174, 1, 260, 6)) (Sum.inl 242) (some (NamedBody260_179, 260, 7))

def NamedBody260_181 : StackLang.HolProg 64 :=
.seq NamedBody260_163 NamedBody260_180

def NamedBody260_182 : StackLang.HolProg 64 :=
.seq NamedBody260_162 NamedBody260_181

def NamedBody260_183 : StackLang.HolProg 64 :=
.seq NamedBody260_161 NamedBody260_182

def NamedBody260_184 : StackLang.HolProg 64 :=
.seq NamedBody260_132 NamedBody260_183

def NamedBody260_185 : StackLang.HolProg 64 :=
.seq NamedBody260_129 NamedBody260_184

def NamedBody260_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody260_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody260_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody260_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_194 : StackLang.HolProg 64 :=
.seq NamedBody260_192 NamedBody260_193

def NamedBody260_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 593#64)

def NamedBody260_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_198 : StackLang.HolProg 64 :=
.seq NamedBody260_196 NamedBody260_197

def NamedBody260_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_202 : StackLang.HolProg 64 :=
.seq NamedBody260_200 NamedBody260_201

def NamedBody260_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_202 NamedBody260_203

def NamedBody260_205 : StackLang.HolProg 64 :=
.seq NamedBody260_199 NamedBody260_204

def NamedBody260_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 9

def NamedBody260_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_215 : StackLang.HolProg 64 :=
.seq NamedBody260_213 NamedBody260_214

def NamedBody260_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_217 : StackLang.HolProg 64 :=
.seq NamedBody260_215 NamedBody260_216

def NamedBody260_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_219 : StackLang.HolProg 64 :=
.seq NamedBody260_217 NamedBody260_218

def NamedBody260_220 : StackLang.HolProg 64 :=
.seq NamedBody260_212 NamedBody260_219

def NamedBody260_221 : StackLang.HolProg 64 :=
.seq NamedBody260_211 NamedBody260_220

def NamedBody260_222 : StackLang.HolProg 64 :=
.seq NamedBody260_210 NamedBody260_221

def NamedBody260_223 : StackLang.HolProg 64 :=
.seq NamedBody260_209 NamedBody260_222

def NamedBody260_224 : StackLang.HolProg 64 :=
.seq NamedBody260_208 NamedBody260_223

def NamedBody260_225 : StackLang.HolProg 64 :=
.seq NamedBody260_207 NamedBody260_224

def NamedBody260_226 : StackLang.HolProg 64 :=
.seq NamedBody260_206 NamedBody260_225

def NamedBody260_227 : StackLang.HolProg 64 :=
.seq NamedBody260_205 NamedBody260_226

def NamedBody260_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_236 : StackLang.HolProg 64 :=
.seq NamedBody260_234 NamedBody260_235

def NamedBody260_237 : StackLang.HolProg 64 :=
.seq NamedBody260_233 NamedBody260_236

def NamedBody260_238 : StackLang.HolProg 64 :=
.seq NamedBody260_232 NamedBody260_237

def NamedBody260_239 : StackLang.HolProg 64 :=
.seq NamedBody260_231 NamedBody260_238

def NamedBody260_240 : StackLang.HolProg 64 :=
.seq NamedBody260_230 NamedBody260_239

def NamedBody260_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_243 : StackLang.HolProg 64 :=
.seq NamedBody260_241 NamedBody260_242

def NamedBody260_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_245 : StackLang.HolProg 64 :=
.seq NamedBody260_243 NamedBody260_244

def NamedBody260_246 : StackLang.HolProg 64 :=
.call (some (NamedBody260_240, 1, 260, 8)) (Sum.inl 77) (some (NamedBody260_245, 260, 9))

def NamedBody260_247 : StackLang.HolProg 64 :=
.seq NamedBody260_229 NamedBody260_246

def NamedBody260_248 : StackLang.HolProg 64 :=
.seq NamedBody260_228 NamedBody260_247

def NamedBody260_249 : StackLang.HolProg 64 :=
.seq NamedBody260_227 NamedBody260_248

def NamedBody260_250 : StackLang.HolProg 64 :=
.seq NamedBody260_198 NamedBody260_249

def NamedBody260_251 : StackLang.HolProg 64 :=
.seq NamedBody260_195 NamedBody260_250

def NamedBody260_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody260_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody260_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_259 : StackLang.HolProg 64 :=
.seq NamedBody260_257 NamedBody260_258

def NamedBody260_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 594#64)

def NamedBody260_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_263 : StackLang.HolProg 64 :=
.seq NamedBody260_261 NamedBody260_262

def NamedBody260_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_267 : StackLang.HolProg 64 :=
.seq NamedBody260_265 NamedBody260_266

def NamedBody260_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_267 NamedBody260_268

def NamedBody260_270 : StackLang.HolProg 64 :=
.seq NamedBody260_264 NamedBody260_269

def NamedBody260_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 11

def NamedBody260_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_280 : StackLang.HolProg 64 :=
.seq NamedBody260_278 NamedBody260_279

def NamedBody260_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_282 : StackLang.HolProg 64 :=
.seq NamedBody260_280 NamedBody260_281

def NamedBody260_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_284 : StackLang.HolProg 64 :=
.seq NamedBody260_282 NamedBody260_283

def NamedBody260_285 : StackLang.HolProg 64 :=
.seq NamedBody260_277 NamedBody260_284

def NamedBody260_286 : StackLang.HolProg 64 :=
.seq NamedBody260_276 NamedBody260_285

def NamedBody260_287 : StackLang.HolProg 64 :=
.seq NamedBody260_275 NamedBody260_286

def NamedBody260_288 : StackLang.HolProg 64 :=
.seq NamedBody260_274 NamedBody260_287

def NamedBody260_289 : StackLang.HolProg 64 :=
.seq NamedBody260_273 NamedBody260_288

def NamedBody260_290 : StackLang.HolProg 64 :=
.seq NamedBody260_272 NamedBody260_289

def NamedBody260_291 : StackLang.HolProg 64 :=
.seq NamedBody260_271 NamedBody260_290

def NamedBody260_292 : StackLang.HolProg 64 :=
.seq NamedBody260_270 NamedBody260_291

def NamedBody260_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_301 : StackLang.HolProg 64 :=
.seq NamedBody260_299 NamedBody260_300

def NamedBody260_302 : StackLang.HolProg 64 :=
.seq NamedBody260_298 NamedBody260_301

def NamedBody260_303 : StackLang.HolProg 64 :=
.seq NamedBody260_297 NamedBody260_302

def NamedBody260_304 : StackLang.HolProg 64 :=
.seq NamedBody260_296 NamedBody260_303

def NamedBody260_305 : StackLang.HolProg 64 :=
.seq NamedBody260_295 NamedBody260_304

def NamedBody260_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_308 : StackLang.HolProg 64 :=
.seq NamedBody260_306 NamedBody260_307

def NamedBody260_309 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_310 : StackLang.HolProg 64 :=
.seq NamedBody260_308 NamedBody260_309

def NamedBody260_311 : StackLang.HolProg 64 :=
.call (some (NamedBody260_305, 1, 260, 10)) (Sum.inl 244) (some (NamedBody260_310, 260, 11))

def NamedBody260_312 : StackLang.HolProg 64 :=
.seq NamedBody260_294 NamedBody260_311

def NamedBody260_313 : StackLang.HolProg 64 :=
.seq NamedBody260_293 NamedBody260_312

def NamedBody260_314 : StackLang.HolProg 64 :=
.seq NamedBody260_292 NamedBody260_313

def NamedBody260_315 : StackLang.HolProg 64 :=
.seq NamedBody260_263 NamedBody260_314

def NamedBody260_316 : StackLang.HolProg 64 :=
.seq NamedBody260_260 NamedBody260_315

def NamedBody260_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody260_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody260_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 96#64)

def NamedBody260_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_325 : StackLang.HolProg 64 :=
.seq NamedBody260_323 NamedBody260_324

def NamedBody260_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 595#64)

def NamedBody260_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_329 : StackLang.HolProg 64 :=
.seq NamedBody260_327 NamedBody260_328

def NamedBody260_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_333 : StackLang.HolProg 64 :=
.seq NamedBody260_331 NamedBody260_332

def NamedBody260_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_335 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_333 NamedBody260_334

def NamedBody260_336 : StackLang.HolProg 64 :=
.seq NamedBody260_330 NamedBody260_335

def NamedBody260_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 13

def NamedBody260_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_346 : StackLang.HolProg 64 :=
.seq NamedBody260_344 NamedBody260_345

def NamedBody260_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_348 : StackLang.HolProg 64 :=
.seq NamedBody260_346 NamedBody260_347

def NamedBody260_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_350 : StackLang.HolProg 64 :=
.seq NamedBody260_348 NamedBody260_349

def NamedBody260_351 : StackLang.HolProg 64 :=
.seq NamedBody260_343 NamedBody260_350

def NamedBody260_352 : StackLang.HolProg 64 :=
.seq NamedBody260_342 NamedBody260_351

def NamedBody260_353 : StackLang.HolProg 64 :=
.seq NamedBody260_341 NamedBody260_352

def NamedBody260_354 : StackLang.HolProg 64 :=
.seq NamedBody260_340 NamedBody260_353

def NamedBody260_355 : StackLang.HolProg 64 :=
.seq NamedBody260_339 NamedBody260_354

def NamedBody260_356 : StackLang.HolProg 64 :=
.seq NamedBody260_338 NamedBody260_355

def NamedBody260_357 : StackLang.HolProg 64 :=
.seq NamedBody260_337 NamedBody260_356

def NamedBody260_358 : StackLang.HolProg 64 :=
.seq NamedBody260_336 NamedBody260_357

def NamedBody260_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_367 : StackLang.HolProg 64 :=
.seq NamedBody260_365 NamedBody260_366

def NamedBody260_368 : StackLang.HolProg 64 :=
.seq NamedBody260_364 NamedBody260_367

def NamedBody260_369 : StackLang.HolProg 64 :=
.seq NamedBody260_363 NamedBody260_368

def NamedBody260_370 : StackLang.HolProg 64 :=
.seq NamedBody260_362 NamedBody260_369

def NamedBody260_371 : StackLang.HolProg 64 :=
.seq NamedBody260_361 NamedBody260_370

def NamedBody260_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_374 : StackLang.HolProg 64 :=
.seq NamedBody260_372 NamedBody260_373

def NamedBody260_375 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_376 : StackLang.HolProg 64 :=
.seq NamedBody260_374 NamedBody260_375

def NamedBody260_377 : StackLang.HolProg 64 :=
.call (some (NamedBody260_371, 1, 260, 12)) (Sum.inl 242) (some (NamedBody260_376, 260, 13))

def NamedBody260_378 : StackLang.HolProg 64 :=
.seq NamedBody260_360 NamedBody260_377

def NamedBody260_379 : StackLang.HolProg 64 :=
.seq NamedBody260_359 NamedBody260_378

def NamedBody260_380 : StackLang.HolProg 64 :=
.seq NamedBody260_358 NamedBody260_379

def NamedBody260_381 : StackLang.HolProg 64 :=
.seq NamedBody260_329 NamedBody260_380

def NamedBody260_382 : StackLang.HolProg 64 :=
.seq NamedBody260_326 NamedBody260_381

def NamedBody260_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody260_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody260_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 596#64)

def NamedBody260_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_392 : StackLang.HolProg 64 :=
.seq NamedBody260_390 NamedBody260_391

def NamedBody260_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_396 : StackLang.HolProg 64 :=
.seq NamedBody260_394 NamedBody260_395

def NamedBody260_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_398 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_396 NamedBody260_397

def NamedBody260_399 : StackLang.HolProg 64 :=
.seq NamedBody260_393 NamedBody260_398

def NamedBody260_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 15

def NamedBody260_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_409 : StackLang.HolProg 64 :=
.seq NamedBody260_407 NamedBody260_408

def NamedBody260_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_411 : StackLang.HolProg 64 :=
.seq NamedBody260_409 NamedBody260_410

def NamedBody260_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_413 : StackLang.HolProg 64 :=
.seq NamedBody260_411 NamedBody260_412

def NamedBody260_414 : StackLang.HolProg 64 :=
.seq NamedBody260_406 NamedBody260_413

def NamedBody260_415 : StackLang.HolProg 64 :=
.seq NamedBody260_405 NamedBody260_414

def NamedBody260_416 : StackLang.HolProg 64 :=
.seq NamedBody260_404 NamedBody260_415

def NamedBody260_417 : StackLang.HolProg 64 :=
.seq NamedBody260_403 NamedBody260_416

def NamedBody260_418 : StackLang.HolProg 64 :=
.seq NamedBody260_402 NamedBody260_417

def NamedBody260_419 : StackLang.HolProg 64 :=
.seq NamedBody260_401 NamedBody260_418

def NamedBody260_420 : StackLang.HolProg 64 :=
.seq NamedBody260_400 NamedBody260_419

def NamedBody260_421 : StackLang.HolProg 64 :=
.seq NamedBody260_399 NamedBody260_420

def NamedBody260_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_430 : StackLang.HolProg 64 :=
.seq NamedBody260_428 NamedBody260_429

def NamedBody260_431 : StackLang.HolProg 64 :=
.seq NamedBody260_427 NamedBody260_430

def NamedBody260_432 : StackLang.HolProg 64 :=
.seq NamedBody260_426 NamedBody260_431

def NamedBody260_433 : StackLang.HolProg 64 :=
.seq NamedBody260_425 NamedBody260_432

def NamedBody260_434 : StackLang.HolProg 64 :=
.seq NamedBody260_424 NamedBody260_433

def NamedBody260_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody260_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_437 : StackLang.HolProg 64 :=
.seq NamedBody260_435 NamedBody260_436

def NamedBody260_438 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_439 : StackLang.HolProg 64 :=
.seq NamedBody260_437 NamedBody260_438

def NamedBody260_440 : StackLang.HolProg 64 :=
.call (some (NamedBody260_434, 1, 260, 14)) (Sum.inl 244) (some (NamedBody260_439, 260, 15))

def NamedBody260_441 : StackLang.HolProg 64 :=
.seq NamedBody260_423 NamedBody260_440

def NamedBody260_442 : StackLang.HolProg 64 :=
.seq NamedBody260_422 NamedBody260_441

def NamedBody260_443 : StackLang.HolProg 64 :=
.seq NamedBody260_421 NamedBody260_442

def NamedBody260_444 : StackLang.HolProg 64 :=
.seq NamedBody260_392 NamedBody260_443

def NamedBody260_445 : StackLang.HolProg 64 :=
.seq NamedBody260_389 NamedBody260_444

def NamedBody260_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody260_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 5#64)

def NamedBody260_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5#64)

def NamedBody260_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 597#64)

def NamedBody260_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_454 : StackLang.HolProg 64 :=
.seq NamedBody260_452 NamedBody260_453

def NamedBody260_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_458 : StackLang.HolProg 64 :=
.seq NamedBody260_456 NamedBody260_457

def NamedBody260_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_460 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_458 NamedBody260_459

def NamedBody260_461 : StackLang.HolProg 64 :=
.seq NamedBody260_455 NamedBody260_460

def NamedBody260_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 17

def NamedBody260_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_471 : StackLang.HolProg 64 :=
.seq NamedBody260_469 NamedBody260_470

def NamedBody260_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_473 : StackLang.HolProg 64 :=
.seq NamedBody260_471 NamedBody260_472

def NamedBody260_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_475 : StackLang.HolProg 64 :=
.seq NamedBody260_473 NamedBody260_474

def NamedBody260_476 : StackLang.HolProg 64 :=
.seq NamedBody260_468 NamedBody260_475

def NamedBody260_477 : StackLang.HolProg 64 :=
.seq NamedBody260_467 NamedBody260_476

def NamedBody260_478 : StackLang.HolProg 64 :=
.seq NamedBody260_466 NamedBody260_477

def NamedBody260_479 : StackLang.HolProg 64 :=
.seq NamedBody260_465 NamedBody260_478

def NamedBody260_480 : StackLang.HolProg 64 :=
.seq NamedBody260_464 NamedBody260_479

def NamedBody260_481 : StackLang.HolProg 64 :=
.seq NamedBody260_463 NamedBody260_480

def NamedBody260_482 : StackLang.HolProg 64 :=
.seq NamedBody260_462 NamedBody260_481

def NamedBody260_483 : StackLang.HolProg 64 :=
.seq NamedBody260_461 NamedBody260_482

def NamedBody260_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody260_491 : StackLang.HolProg 64 :=
.seq NamedBody260_489 NamedBody260_490

def NamedBody260_492 : StackLang.HolProg 64 :=
.seq NamedBody260_488 NamedBody260_491

def NamedBody260_493 : StackLang.HolProg 64 :=
.seq NamedBody260_487 NamedBody260_492

def NamedBody260_494 : StackLang.HolProg 64 :=
.seq NamedBody260_486 NamedBody260_493

def NamedBody260_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody260_496 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_497 : StackLang.HolProg 64 :=
.seq NamedBody260_495 NamedBody260_496

def NamedBody260_498 : StackLang.HolProg 64 :=
.call (some (NamedBody260_494, 1, 260, 16)) (Sum.inl 235) (some (NamedBody260_497, 260, 17))

def NamedBody260_499 : StackLang.HolProg 64 :=
.seq NamedBody260_485 NamedBody260_498

def NamedBody260_500 : StackLang.HolProg 64 :=
.seq NamedBody260_484 NamedBody260_499

def NamedBody260_501 : StackLang.HolProg 64 :=
.seq NamedBody260_483 NamedBody260_500

def NamedBody260_502 : StackLang.HolProg 64 :=
.seq NamedBody260_454 NamedBody260_501

def NamedBody260_503 : StackLang.HolProg 64 :=
.seq NamedBody260_451 NamedBody260_502

def NamedBody260_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody260_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 598#64)

def NamedBody260_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_509 : StackLang.HolProg 64 :=
.seq NamedBody260_507 NamedBody260_508

def NamedBody260_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody260_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody260_513 : StackLang.HolProg 64 :=
.seq NamedBody260_511 NamedBody260_512

def NamedBody260_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_515 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody260_513 NamedBody260_514

def NamedBody260_516 : StackLang.HolProg 64 :=
.seq NamedBody260_510 NamedBody260_515

def NamedBody260_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody260_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody260_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 19

def NamedBody260_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody260_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody260_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody260_526 : StackLang.HolProg 64 :=
.seq NamedBody260_524 NamedBody260_525

def NamedBody260_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody260_528 : StackLang.HolProg 64 :=
.seq NamedBody260_526 NamedBody260_527

def NamedBody260_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_530 : StackLang.HolProg 64 :=
.seq NamedBody260_528 NamedBody260_529

def NamedBody260_531 : StackLang.HolProg 64 :=
.seq NamedBody260_523 NamedBody260_530

def NamedBody260_532 : StackLang.HolProg 64 :=
.seq NamedBody260_522 NamedBody260_531

def NamedBody260_533 : StackLang.HolProg 64 :=
.seq NamedBody260_521 NamedBody260_532

def NamedBody260_534 : StackLang.HolProg 64 :=
.seq NamedBody260_520 NamedBody260_533

def NamedBody260_535 : StackLang.HolProg 64 :=
.seq NamedBody260_519 NamedBody260_534

def NamedBody260_536 : StackLang.HolProg 64 :=
.seq NamedBody260_518 NamedBody260_535

def NamedBody260_537 : StackLang.HolProg 64 :=
.seq NamedBody260_517 NamedBody260_536

def NamedBody260_538 : StackLang.HolProg 64 :=
.seq NamedBody260_516 NamedBody260_537

def NamedBody260_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody260_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody260_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody260_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody260_546 : StackLang.HolProg 64 :=
.seq NamedBody260_544 NamedBody260_545

def NamedBody260_547 : StackLang.HolProg 64 :=
.seq NamedBody260_543 NamedBody260_546

def NamedBody260_548 : StackLang.HolProg 64 :=
.seq NamedBody260_542 NamedBody260_547

def NamedBody260_549 : StackLang.HolProg 64 :=
.seq NamedBody260_541 NamedBody260_548

def NamedBody260_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody260_551 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody260_552 : StackLang.HolProg 64 :=
.seq NamedBody260_550 NamedBody260_551

def NamedBody260_553 : StackLang.HolProg 64 :=
.call (some (NamedBody260_549, 1, 260, 18)) (Sum.inl 70) (some (NamedBody260_552, 260, 19))

def NamedBody260_554 : StackLang.HolProg 64 :=
.seq NamedBody260_540 NamedBody260_553

def NamedBody260_555 : StackLang.HolProg 64 :=
.seq NamedBody260_539 NamedBody260_554

def NamedBody260_556 : StackLang.HolProg 64 :=
.seq NamedBody260_538 NamedBody260_555

def NamedBody260_557 : StackLang.HolProg 64 :=
.seq NamedBody260_509 NamedBody260_556

def NamedBody260_558 : StackLang.HolProg 64 :=
.seq NamedBody260_506 NamedBody260_557

def NamedBody260_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody260_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody260_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody260_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody260_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody260_564 : StackLang.HolProg 64 :=
.seq NamedBody260_562 NamedBody260_563

def NamedBody260_565 : StackLang.HolProg 64 :=
.seq NamedBody260_561 NamedBody260_564

def NamedBody260_566 : StackLang.HolProg 64 :=
.seq NamedBody260_560 NamedBody260_565

def NamedBody260_567 : StackLang.HolProg 64 :=
.seq NamedBody260_559 NamedBody260_566

def NamedBody260_568 : StackLang.HolProg 64 :=
.seq NamedBody260_558 NamedBody260_567

def NamedBody260_569 : StackLang.HolProg 64 :=
.seq NamedBody260_505 NamedBody260_568

def NamedBody260_570 : StackLang.HolProg 64 :=
.seq NamedBody260_504 NamedBody260_569

def NamedBody260_571 : StackLang.HolProg 64 :=
.seq NamedBody260_503 NamedBody260_570

def NamedBody260_572 : StackLang.HolProg 64 :=
.seq NamedBody260_450 NamedBody260_571

def NamedBody260_573 : StackLang.HolProg 64 :=
.seq NamedBody260_449 NamedBody260_572

def NamedBody260_574 : StackLang.HolProg 64 :=
.seq NamedBody260_448 NamedBody260_573

def NamedBody260_575 : StackLang.HolProg 64 :=
.seq NamedBody260_447 NamedBody260_574

def NamedBody260_576 : StackLang.HolProg 64 :=
.seq NamedBody260_446 NamedBody260_575

def NamedBody260_577 : StackLang.HolProg 64 :=
.seq NamedBody260_445 NamedBody260_576

def NamedBody260_578 : StackLang.HolProg 64 :=
.seq NamedBody260_388 NamedBody260_577

def NamedBody260_579 : StackLang.HolProg 64 :=
.seq NamedBody260_387 NamedBody260_578

def NamedBody260_580 : StackLang.HolProg 64 :=
.seq NamedBody260_386 NamedBody260_579

def NamedBody260_581 : StackLang.HolProg 64 :=
.seq NamedBody260_385 NamedBody260_580

def NamedBody260_582 : StackLang.HolProg 64 :=
.seq NamedBody260_384 NamedBody260_581

def NamedBody260_583 : StackLang.HolProg 64 :=
.seq NamedBody260_383 NamedBody260_582

def NamedBody260_584 : StackLang.HolProg 64 :=
.seq NamedBody260_382 NamedBody260_583

def NamedBody260_585 : StackLang.HolProg 64 :=
.seq NamedBody260_325 NamedBody260_584

def NamedBody260_586 : StackLang.HolProg 64 :=
.seq NamedBody260_322 NamedBody260_585

def NamedBody260_587 : StackLang.HolProg 64 :=
.seq NamedBody260_321 NamedBody260_586

def NamedBody260_588 : StackLang.HolProg 64 :=
.seq NamedBody260_320 NamedBody260_587

def NamedBody260_589 : StackLang.HolProg 64 :=
.seq NamedBody260_319 NamedBody260_588

def NamedBody260_590 : StackLang.HolProg 64 :=
.seq NamedBody260_318 NamedBody260_589

def NamedBody260_591 : StackLang.HolProg 64 :=
.seq NamedBody260_317 NamedBody260_590

def NamedBody260_592 : StackLang.HolProg 64 :=
.seq NamedBody260_316 NamedBody260_591

def NamedBody260_593 : StackLang.HolProg 64 :=
.seq NamedBody260_259 NamedBody260_592

def NamedBody260_594 : StackLang.HolProg 64 :=
.seq NamedBody260_256 NamedBody260_593

def NamedBody260_595 : StackLang.HolProg 64 :=
.seq NamedBody260_255 NamedBody260_594

def NamedBody260_596 : StackLang.HolProg 64 :=
.seq NamedBody260_254 NamedBody260_595

def NamedBody260_597 : StackLang.HolProg 64 :=
.seq NamedBody260_253 NamedBody260_596

def NamedBody260_598 : StackLang.HolProg 64 :=
.seq NamedBody260_252 NamedBody260_597

def NamedBody260_599 : StackLang.HolProg 64 :=
.seq NamedBody260_251 NamedBody260_598

def NamedBody260_600 : StackLang.HolProg 64 :=
.seq NamedBody260_194 NamedBody260_599

def NamedBody260_601 : StackLang.HolProg 64 :=
.seq NamedBody260_191 NamedBody260_600

def NamedBody260_602 : StackLang.HolProg 64 :=
.seq NamedBody260_190 NamedBody260_601

def NamedBody260_603 : StackLang.HolProg 64 :=
.seq NamedBody260_189 NamedBody260_602

def NamedBody260_604 : StackLang.HolProg 64 :=
.seq NamedBody260_188 NamedBody260_603

def NamedBody260_605 : StackLang.HolProg 64 :=
.seq NamedBody260_187 NamedBody260_604

def NamedBody260_606 : StackLang.HolProg 64 :=
.seq NamedBody260_186 NamedBody260_605

def NamedBody260_607 : StackLang.HolProg 64 :=
.seq NamedBody260_185 NamedBody260_606

def NamedBody260_608 : StackLang.HolProg 64 :=
.seq NamedBody260_128 NamedBody260_607

def NamedBody260_609 : StackLang.HolProg 64 :=
.seq NamedBody260_125 NamedBody260_608

def NamedBody260_610 : StackLang.HolProg 64 :=
.seq NamedBody260_124 NamedBody260_609

def NamedBody260_611 : StackLang.HolProg 64 :=
.seq NamedBody260_123 NamedBody260_610

def NamedBody260_612 : StackLang.HolProg 64 :=
.seq NamedBody260_122 NamedBody260_611

def NamedBody260_613 : StackLang.HolProg 64 :=
.seq NamedBody260_67 NamedBody260_612

def NamedBody260_614 : StackLang.HolProg 64 :=
.seq NamedBody260_66 NamedBody260_613

def NamedBody260_615 : StackLang.HolProg 64 :=
.seq NamedBody260_65 NamedBody260_614

def NamedBody260_616 : StackLang.HolProg 64 :=
.seq NamedBody260_64 NamedBody260_615

def NamedBody260_617 : StackLang.HolProg 64 :=
.seq NamedBody260_11 NamedBody260_616

def NamedBody260_618 : StackLang.HolProg 64 :=
.seq NamedBody260_6 NamedBody260_617

def Named260 : Nat × StackLang.HolProg 64 := (260, NamedBody260_618)
theorem Named260_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed260 = Named260 := by
  kernel_rfl
#print axioms Named260_eq
end InitECandidate.Proofs.BackendStages
