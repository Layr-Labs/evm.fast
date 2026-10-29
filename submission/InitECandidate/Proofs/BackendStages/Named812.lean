import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed812
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody812_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody812_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_3 : StackLang.HolProg 64 :=
.seq NamedBody812_1 NamedBody812_2

def NamedBody812_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_3 NamedBody812_4

def NamedBody812_6 : StackLang.HolProg 64 :=
.seq NamedBody812_0 NamedBody812_5

def NamedBody812_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody812_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_10 : StackLang.HolProg 64 :=
.seq NamedBody812_8 NamedBody812_9

def NamedBody812_11 : StackLang.HolProg 64 :=
.seq NamedBody812_7 NamedBody812_10

def NamedBody812_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4010#64)

def NamedBody812_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_15 : StackLang.HolProg 64 :=
.seq NamedBody812_13 NamedBody812_14

def NamedBody812_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_19 : StackLang.HolProg 64 :=
.seq NamedBody812_17 NamedBody812_18

def NamedBody812_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_19 NamedBody812_20

def NamedBody812_22 : StackLang.HolProg 64 :=
.seq NamedBody812_16 NamedBody812_21

def NamedBody812_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 3

def NamedBody812_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_32 : StackLang.HolProg 64 :=
.seq NamedBody812_30 NamedBody812_31

def NamedBody812_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_34 : StackLang.HolProg 64 :=
.seq NamedBody812_32 NamedBody812_33

def NamedBody812_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_36 : StackLang.HolProg 64 :=
.seq NamedBody812_34 NamedBody812_35

def NamedBody812_37 : StackLang.HolProg 64 :=
.seq NamedBody812_29 NamedBody812_36

def NamedBody812_38 : StackLang.HolProg 64 :=
.seq NamedBody812_28 NamedBody812_37

def NamedBody812_39 : StackLang.HolProg 64 :=
.seq NamedBody812_27 NamedBody812_38

def NamedBody812_40 : StackLang.HolProg 64 :=
.seq NamedBody812_26 NamedBody812_39

def NamedBody812_41 : StackLang.HolProg 64 :=
.seq NamedBody812_25 NamedBody812_40

def NamedBody812_42 : StackLang.HolProg 64 :=
.seq NamedBody812_24 NamedBody812_41

def NamedBody812_43 : StackLang.HolProg 64 :=
.seq NamedBody812_23 NamedBody812_42

def NamedBody812_44 : StackLang.HolProg 64 :=
.seq NamedBody812_22 NamedBody812_43

def NamedBody812_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody812_52 : StackLang.HolProg 64 :=
.seq NamedBody812_50 NamedBody812_51

def NamedBody812_53 : StackLang.HolProg 64 :=
.seq NamedBody812_49 NamedBody812_52

def NamedBody812_54 : StackLang.HolProg 64 :=
.seq NamedBody812_48 NamedBody812_53

def NamedBody812_55 : StackLang.HolProg 64 :=
.seq NamedBody812_47 NamedBody812_54

def NamedBody812_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_58 : StackLang.HolProg 64 :=
.seq NamedBody812_56 NamedBody812_57

def NamedBody812_59 : StackLang.HolProg 64 :=
.call (some (NamedBody812_55, 1, 812, 2)) (Sum.inl 69) (some (NamedBody812_58, 812, 3))

def NamedBody812_60 : StackLang.HolProg 64 :=
.seq NamedBody812_46 NamedBody812_59

def NamedBody812_61 : StackLang.HolProg 64 :=
.seq NamedBody812_45 NamedBody812_60

def NamedBody812_62 : StackLang.HolProg 64 :=
.seq NamedBody812_44 NamedBody812_61

def NamedBody812_63 : StackLang.HolProg 64 :=
.seq NamedBody812_15 NamedBody812_62

def NamedBody812_64 : StackLang.HolProg 64 :=
.seq NamedBody812_12 NamedBody812_63

def NamedBody812_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 288#64)

def NamedBody812_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4011#64)

def NamedBody812_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_71 : StackLang.HolProg 64 :=
.seq NamedBody812_69 NamedBody812_70

def NamedBody812_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_75 : StackLang.HolProg 64 :=
.seq NamedBody812_73 NamedBody812_74

def NamedBody812_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_75 NamedBody812_76

def NamedBody812_78 : StackLang.HolProg 64 :=
.seq NamedBody812_72 NamedBody812_77

def NamedBody812_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 5

def NamedBody812_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_88 : StackLang.HolProg 64 :=
.seq NamedBody812_86 NamedBody812_87

def NamedBody812_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_90 : StackLang.HolProg 64 :=
.seq NamedBody812_88 NamedBody812_89

def NamedBody812_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_92 : StackLang.HolProg 64 :=
.seq NamedBody812_90 NamedBody812_91

def NamedBody812_93 : StackLang.HolProg 64 :=
.seq NamedBody812_85 NamedBody812_92

def NamedBody812_94 : StackLang.HolProg 64 :=
.seq NamedBody812_84 NamedBody812_93

def NamedBody812_95 : StackLang.HolProg 64 :=
.seq NamedBody812_83 NamedBody812_94

def NamedBody812_96 : StackLang.HolProg 64 :=
.seq NamedBody812_82 NamedBody812_95

def NamedBody812_97 : StackLang.HolProg 64 :=
.seq NamedBody812_81 NamedBody812_96

def NamedBody812_98 : StackLang.HolProg 64 :=
.seq NamedBody812_80 NamedBody812_97

def NamedBody812_99 : StackLang.HolProg 64 :=
.seq NamedBody812_79 NamedBody812_98

def NamedBody812_100 : StackLang.HolProg 64 :=
.seq NamedBody812_78 NamedBody812_99

def NamedBody812_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody812_108 : StackLang.HolProg 64 :=
.seq NamedBody812_106 NamedBody812_107

def NamedBody812_109 : StackLang.HolProg 64 :=
.seq NamedBody812_105 NamedBody812_108

def NamedBody812_110 : StackLang.HolProg 64 :=
.seq NamedBody812_104 NamedBody812_109

def NamedBody812_111 : StackLang.HolProg 64 :=
.seq NamedBody812_103 NamedBody812_110

def NamedBody812_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_114 : StackLang.HolProg 64 :=
.seq NamedBody812_112 NamedBody812_113

def NamedBody812_115 : StackLang.HolProg 64 :=
.call (some (NamedBody812_111, 1, 812, 4)) (Sum.inl 68) (some (NamedBody812_114, 812, 5))

def NamedBody812_116 : StackLang.HolProg 64 :=
.seq NamedBody812_102 NamedBody812_115

def NamedBody812_117 : StackLang.HolProg 64 :=
.seq NamedBody812_101 NamedBody812_116

def NamedBody812_118 : StackLang.HolProg 64 :=
.seq NamedBody812_100 NamedBody812_117

def NamedBody812_119 : StackLang.HolProg 64 :=
.seq NamedBody812_71 NamedBody812_118

def NamedBody812_120 : StackLang.HolProg 64 :=
.seq NamedBody812_68 NamedBody812_119

def NamedBody812_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 288#64)

def NamedBody812_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4012#64)

def NamedBody812_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_127 : StackLang.HolProg 64 :=
.seq NamedBody812_125 NamedBody812_126

def NamedBody812_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_131 : StackLang.HolProg 64 :=
.seq NamedBody812_129 NamedBody812_130

def NamedBody812_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_131 NamedBody812_132

def NamedBody812_134 : StackLang.HolProg 64 :=
.seq NamedBody812_128 NamedBody812_133

def NamedBody812_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 7

def NamedBody812_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_144 : StackLang.HolProg 64 :=
.seq NamedBody812_142 NamedBody812_143

def NamedBody812_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_146 : StackLang.HolProg 64 :=
.seq NamedBody812_144 NamedBody812_145

def NamedBody812_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_148 : StackLang.HolProg 64 :=
.seq NamedBody812_146 NamedBody812_147

def NamedBody812_149 : StackLang.HolProg 64 :=
.seq NamedBody812_141 NamedBody812_148

def NamedBody812_150 : StackLang.HolProg 64 :=
.seq NamedBody812_140 NamedBody812_149

def NamedBody812_151 : StackLang.HolProg 64 :=
.seq NamedBody812_139 NamedBody812_150

def NamedBody812_152 : StackLang.HolProg 64 :=
.seq NamedBody812_138 NamedBody812_151

def NamedBody812_153 : StackLang.HolProg 64 :=
.seq NamedBody812_137 NamedBody812_152

def NamedBody812_154 : StackLang.HolProg 64 :=
.seq NamedBody812_136 NamedBody812_153

def NamedBody812_155 : StackLang.HolProg 64 :=
.seq NamedBody812_135 NamedBody812_154

def NamedBody812_156 : StackLang.HolProg 64 :=
.seq NamedBody812_134 NamedBody812_155

def NamedBody812_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody812_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_166 : StackLang.HolProg 64 :=
.seq NamedBody812_164 NamedBody812_165

def NamedBody812_167 : StackLang.HolProg 64 :=
.seq NamedBody812_163 NamedBody812_166

def NamedBody812_168 : StackLang.HolProg 64 :=
.seq NamedBody812_162 NamedBody812_167

def NamedBody812_169 : StackLang.HolProg 64 :=
.seq NamedBody812_161 NamedBody812_168

def NamedBody812_170 : StackLang.HolProg 64 :=
.seq NamedBody812_160 NamedBody812_169

def NamedBody812_171 : StackLang.HolProg 64 :=
.seq NamedBody812_159 NamedBody812_170

def NamedBody812_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_174 : StackLang.HolProg 64 :=
.seq NamedBody812_172 NamedBody812_173

def NamedBody812_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_176 : StackLang.HolProg 64 :=
.seq NamedBody812_174 NamedBody812_175

def NamedBody812_177 : StackLang.HolProg 64 :=
.call (some (NamedBody812_171, 1, 812, 6)) (Sum.inl 68) (some (NamedBody812_176, 812, 7))

def NamedBody812_178 : StackLang.HolProg 64 :=
.seq NamedBody812_158 NamedBody812_177

def NamedBody812_179 : StackLang.HolProg 64 :=
.seq NamedBody812_157 NamedBody812_178

def NamedBody812_180 : StackLang.HolProg 64 :=
.seq NamedBody812_156 NamedBody812_179

def NamedBody812_181 : StackLang.HolProg 64 :=
.seq NamedBody812_127 NamedBody812_180

def NamedBody812_182 : StackLang.HolProg 64 :=
.seq NamedBody812_124 NamedBody812_181

def NamedBody812_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody812_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_188 : StackLang.HolProg 64 :=
.seq NamedBody812_186 NamedBody812_187

def NamedBody812_189 : StackLang.HolProg 64 :=
.seq NamedBody812_185 NamedBody812_188

def NamedBody812_190 : StackLang.HolProg 64 :=
.seq NamedBody812_184 NamedBody812_189

def NamedBody812_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4013#64)

def NamedBody812_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_194 : StackLang.HolProg 64 :=
.seq NamedBody812_192 NamedBody812_193

def NamedBody812_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_198 : StackLang.HolProg 64 :=
.seq NamedBody812_196 NamedBody812_197

def NamedBody812_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_198 NamedBody812_199

def NamedBody812_201 : StackLang.HolProg 64 :=
.seq NamedBody812_195 NamedBody812_200

def NamedBody812_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 9

def NamedBody812_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_211 : StackLang.HolProg 64 :=
.seq NamedBody812_209 NamedBody812_210

def NamedBody812_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_213 : StackLang.HolProg 64 :=
.seq NamedBody812_211 NamedBody812_212

def NamedBody812_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_215 : StackLang.HolProg 64 :=
.seq NamedBody812_213 NamedBody812_214

def NamedBody812_216 : StackLang.HolProg 64 :=
.seq NamedBody812_208 NamedBody812_215

def NamedBody812_217 : StackLang.HolProg 64 :=
.seq NamedBody812_207 NamedBody812_216

def NamedBody812_218 : StackLang.HolProg 64 :=
.seq NamedBody812_206 NamedBody812_217

def NamedBody812_219 : StackLang.HolProg 64 :=
.seq NamedBody812_205 NamedBody812_218

def NamedBody812_220 : StackLang.HolProg 64 :=
.seq NamedBody812_204 NamedBody812_219

def NamedBody812_221 : StackLang.HolProg 64 :=
.seq NamedBody812_203 NamedBody812_220

def NamedBody812_222 : StackLang.HolProg 64 :=
.seq NamedBody812_202 NamedBody812_221

def NamedBody812_223 : StackLang.HolProg 64 :=
.seq NamedBody812_201 NamedBody812_222

def NamedBody812_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody812_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_235 : StackLang.HolProg 64 :=
.seq NamedBody812_233 NamedBody812_234

def NamedBody812_236 : StackLang.HolProg 64 :=
.seq NamedBody812_232 NamedBody812_235

def NamedBody812_237 : StackLang.HolProg 64 :=
.seq NamedBody812_231 NamedBody812_236

def NamedBody812_238 : StackLang.HolProg 64 :=
.seq NamedBody812_230 NamedBody812_237

def NamedBody812_239 : StackLang.HolProg 64 :=
.seq NamedBody812_229 NamedBody812_238

def NamedBody812_240 : StackLang.HolProg 64 :=
.seq NamedBody812_228 NamedBody812_239

def NamedBody812_241 : StackLang.HolProg 64 :=
.seq NamedBody812_227 NamedBody812_240

def NamedBody812_242 : StackLang.HolProg 64 :=
.seq NamedBody812_226 NamedBody812_241

def NamedBody812_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_247 : StackLang.HolProg 64 :=
.seq NamedBody812_245 NamedBody812_246

def NamedBody812_248 : StackLang.HolProg 64 :=
.seq NamedBody812_244 NamedBody812_247

def NamedBody812_249 : StackLang.HolProg 64 :=
.seq NamedBody812_243 NamedBody812_248

def NamedBody812_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_251 : StackLang.HolProg 64 :=
.seq NamedBody812_249 NamedBody812_250

def NamedBody812_252 : StackLang.HolProg 64 :=
.call (some (NamedBody812_242, 1, 812, 8)) (Sum.inl 787) (some (NamedBody812_251, 812, 9))

def NamedBody812_253 : StackLang.HolProg 64 :=
.seq NamedBody812_225 NamedBody812_252

def NamedBody812_254 : StackLang.HolProg 64 :=
.seq NamedBody812_224 NamedBody812_253

def NamedBody812_255 : StackLang.HolProg 64 :=
.seq NamedBody812_223 NamedBody812_254

def NamedBody812_256 : StackLang.HolProg 64 :=
.seq NamedBody812_194 NamedBody812_255

def NamedBody812_257 : StackLang.HolProg 64 :=
.seq NamedBody812_191 NamedBody812_256

def NamedBody812_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody812_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 256#64)))

def NamedBody812_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody812_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_266 : StackLang.HolProg 64 :=
.seq NamedBody812_264 NamedBody812_265

def NamedBody812_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4014#64)

def NamedBody812_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_270 : StackLang.HolProg 64 :=
.seq NamedBody812_268 NamedBody812_269

def NamedBody812_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_274 : StackLang.HolProg 64 :=
.seq NamedBody812_272 NamedBody812_273

def NamedBody812_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_274 NamedBody812_275

def NamedBody812_277 : StackLang.HolProg 64 :=
.seq NamedBody812_271 NamedBody812_276

def NamedBody812_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 11

def NamedBody812_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_287 : StackLang.HolProg 64 :=
.seq NamedBody812_285 NamedBody812_286

def NamedBody812_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_289 : StackLang.HolProg 64 :=
.seq NamedBody812_287 NamedBody812_288

def NamedBody812_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_291 : StackLang.HolProg 64 :=
.seq NamedBody812_289 NamedBody812_290

def NamedBody812_292 : StackLang.HolProg 64 :=
.seq NamedBody812_284 NamedBody812_291

def NamedBody812_293 : StackLang.HolProg 64 :=
.seq NamedBody812_283 NamedBody812_292

def NamedBody812_294 : StackLang.HolProg 64 :=
.seq NamedBody812_282 NamedBody812_293

def NamedBody812_295 : StackLang.HolProg 64 :=
.seq NamedBody812_281 NamedBody812_294

def NamedBody812_296 : StackLang.HolProg 64 :=
.seq NamedBody812_280 NamedBody812_295

def NamedBody812_297 : StackLang.HolProg 64 :=
.seq NamedBody812_279 NamedBody812_296

def NamedBody812_298 : StackLang.HolProg 64 :=
.seq NamedBody812_278 NamedBody812_297

def NamedBody812_299 : StackLang.HolProg 64 :=
.seq NamedBody812_277 NamedBody812_298

def NamedBody812_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody812_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_311 : StackLang.HolProg 64 :=
.seq NamedBody812_309 NamedBody812_310

def NamedBody812_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_314 : StackLang.HolProg 64 :=
.seq NamedBody812_312 NamedBody812_313

def NamedBody812_315 : StackLang.HolProg 64 :=
.seq NamedBody812_311 NamedBody812_314

def NamedBody812_316 : StackLang.HolProg 64 :=
.seq NamedBody812_308 NamedBody812_315

def NamedBody812_317 : StackLang.HolProg 64 :=
.seq NamedBody812_307 NamedBody812_316

def NamedBody812_318 : StackLang.HolProg 64 :=
.seq NamedBody812_306 NamedBody812_317

def NamedBody812_319 : StackLang.HolProg 64 :=
.seq NamedBody812_305 NamedBody812_318

def NamedBody812_320 : StackLang.HolProg 64 :=
.seq NamedBody812_304 NamedBody812_319

def NamedBody812_321 : StackLang.HolProg 64 :=
.seq NamedBody812_303 NamedBody812_320

def NamedBody812_322 : StackLang.HolProg 64 :=
.seq NamedBody812_302 NamedBody812_321

def NamedBody812_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_327 : StackLang.HolProg 64 :=
.seq NamedBody812_325 NamedBody812_326

def NamedBody812_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_330 : StackLang.HolProg 64 :=
.seq NamedBody812_328 NamedBody812_329

def NamedBody812_331 : StackLang.HolProg 64 :=
.seq NamedBody812_327 NamedBody812_330

def NamedBody812_332 : StackLang.HolProg 64 :=
.seq NamedBody812_324 NamedBody812_331

def NamedBody812_333 : StackLang.HolProg 64 :=
.seq NamedBody812_323 NamedBody812_332

def NamedBody812_334 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_335 : StackLang.HolProg 64 :=
.seq NamedBody812_333 NamedBody812_334

def NamedBody812_336 : StackLang.HolProg 64 :=
.call (some (NamedBody812_322, 1, 812, 10)) (Sum.inl 787) (some (NamedBody812_335, 812, 11))

def NamedBody812_337 : StackLang.HolProg 64 :=
.seq NamedBody812_301 NamedBody812_336

def NamedBody812_338 : StackLang.HolProg 64 :=
.seq NamedBody812_300 NamedBody812_337

def NamedBody812_339 : StackLang.HolProg 64 :=
.seq NamedBody812_299 NamedBody812_338

def NamedBody812_340 : StackLang.HolProg 64 :=
.seq NamedBody812_270 NamedBody812_339

def NamedBody812_341 : StackLang.HolProg 64 :=
.seq NamedBody812_267 NamedBody812_340

def NamedBody812_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_344 : StackLang.HolProg 64 :=
.seq NamedBody812_342 NamedBody812_343

def NamedBody812_345 : StackLang.HolProg 64 :=
.seq NamedBody812_341 NamedBody812_344

def NamedBody812_346 : StackLang.HolProg 64 :=
.seq NamedBody812_266 NamedBody812_345

def NamedBody812_347 : StackLang.HolProg 64 :=
.seq NamedBody812_263 NamedBody812_346

def NamedBody812_348 : StackLang.HolProg 64 :=
.seq NamedBody812_262 NamedBody812_347

def NamedBody812_349 : StackLang.HolProg 64 :=
.seq NamedBody812_261 NamedBody812_348

def NamedBody812_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_354 : StackLang.HolProg 64 :=
.seq NamedBody812_352 NamedBody812_353

def NamedBody812_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_357 : StackLang.HolProg 64 :=
.seq NamedBody812_355 NamedBody812_356

def NamedBody812_358 : StackLang.HolProg 64 :=
.seq NamedBody812_354 NamedBody812_357

def NamedBody812_359 : StackLang.HolProg 64 :=
.seq NamedBody812_351 NamedBody812_358

def NamedBody812_360 : StackLang.HolProg 64 :=
.seq NamedBody812_350 NamedBody812_359

def NamedBody812_361 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody812_349 NamedBody812_360

def NamedBody812_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody812_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody812_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_369 : StackLang.HolProg 64 :=
.seq NamedBody812_367 NamedBody812_368

def NamedBody812_370 : StackLang.HolProg 64 :=
.seq NamedBody812_366 NamedBody812_369

def NamedBody812_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4015#64)

def NamedBody812_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_374 : StackLang.HolProg 64 :=
.seq NamedBody812_372 NamedBody812_373

def NamedBody812_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_378 : StackLang.HolProg 64 :=
.seq NamedBody812_376 NamedBody812_377

def NamedBody812_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_380 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_378 NamedBody812_379

def NamedBody812_381 : StackLang.HolProg 64 :=
.seq NamedBody812_375 NamedBody812_380

def NamedBody812_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 13

def NamedBody812_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_391 : StackLang.HolProg 64 :=
.seq NamedBody812_389 NamedBody812_390

def NamedBody812_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_393 : StackLang.HolProg 64 :=
.seq NamedBody812_391 NamedBody812_392

def NamedBody812_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_395 : StackLang.HolProg 64 :=
.seq NamedBody812_393 NamedBody812_394

def NamedBody812_396 : StackLang.HolProg 64 :=
.seq NamedBody812_388 NamedBody812_395

def NamedBody812_397 : StackLang.HolProg 64 :=
.seq NamedBody812_387 NamedBody812_396

def NamedBody812_398 : StackLang.HolProg 64 :=
.seq NamedBody812_386 NamedBody812_397

def NamedBody812_399 : StackLang.HolProg 64 :=
.seq NamedBody812_385 NamedBody812_398

def NamedBody812_400 : StackLang.HolProg 64 :=
.seq NamedBody812_384 NamedBody812_399

def NamedBody812_401 : StackLang.HolProg 64 :=
.seq NamedBody812_383 NamedBody812_400

def NamedBody812_402 : StackLang.HolProg 64 :=
.seq NamedBody812_382 NamedBody812_401

def NamedBody812_403 : StackLang.HolProg 64 :=
.seq NamedBody812_381 NamedBody812_402

def NamedBody812_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_411 : StackLang.HolProg 64 :=
.seq NamedBody812_409 NamedBody812_410

def NamedBody812_412 : StackLang.HolProg 64 :=
.seq NamedBody812_408 NamedBody812_411

def NamedBody812_413 : StackLang.HolProg 64 :=
.seq NamedBody812_407 NamedBody812_412

def NamedBody812_414 : StackLang.HolProg 64 :=
.seq NamedBody812_406 NamedBody812_413

def NamedBody812_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_417 : StackLang.HolProg 64 :=
.seq NamedBody812_415 NamedBody812_416

def NamedBody812_418 : StackLang.HolProg 64 :=
.call (some (NamedBody812_414, 1, 812, 12)) (Sum.inl 70) (some (NamedBody812_417, 812, 13))

def NamedBody812_419 : StackLang.HolProg 64 :=
.seq NamedBody812_405 NamedBody812_418

def NamedBody812_420 : StackLang.HolProg 64 :=
.seq NamedBody812_404 NamedBody812_419

def NamedBody812_421 : StackLang.HolProg 64 :=
.seq NamedBody812_403 NamedBody812_420

def NamedBody812_422 : StackLang.HolProg 64 :=
.seq NamedBody812_374 NamedBody812_421

def NamedBody812_423 : StackLang.HolProg 64 :=
.seq NamedBody812_371 NamedBody812_422

def NamedBody812_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody812_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody812_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody812_429 : StackLang.HolProg 64 :=
.seq NamedBody812_427 NamedBody812_428

def NamedBody812_430 : StackLang.HolProg 64 :=
.seq NamedBody812_426 NamedBody812_429

def NamedBody812_431 : StackLang.HolProg 64 :=
.seq NamedBody812_425 NamedBody812_430

def NamedBody812_432 : StackLang.HolProg 64 :=
.seq NamedBody812_424 NamedBody812_431

def NamedBody812_433 : StackLang.HolProg 64 :=
.seq NamedBody812_423 NamedBody812_432

def NamedBody812_434 : StackLang.HolProg 64 :=
.seq NamedBody812_370 NamedBody812_433

def NamedBody812_435 : StackLang.HolProg 64 :=
.seq NamedBody812_365 NamedBody812_434

def NamedBody812_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody812_435 NamedBody812_436

def NamedBody812_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody812_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_442 : StackLang.HolProg 64 :=
.seq NamedBody812_440 NamedBody812_441

def NamedBody812_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4016#64)

def NamedBody812_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_446 : StackLang.HolProg 64 :=
.seq NamedBody812_444 NamedBody812_445

def NamedBody812_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_450 : StackLang.HolProg 64 :=
.seq NamedBody812_448 NamedBody812_449

def NamedBody812_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_452 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_450 NamedBody812_451

def NamedBody812_453 : StackLang.HolProg 64 :=
.seq NamedBody812_447 NamedBody812_452

def NamedBody812_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 15

def NamedBody812_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_463 : StackLang.HolProg 64 :=
.seq NamedBody812_461 NamedBody812_462

def NamedBody812_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_465 : StackLang.HolProg 64 :=
.seq NamedBody812_463 NamedBody812_464

def NamedBody812_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_467 : StackLang.HolProg 64 :=
.seq NamedBody812_465 NamedBody812_466

def NamedBody812_468 : StackLang.HolProg 64 :=
.seq NamedBody812_460 NamedBody812_467

def NamedBody812_469 : StackLang.HolProg 64 :=
.seq NamedBody812_459 NamedBody812_468

def NamedBody812_470 : StackLang.HolProg 64 :=
.seq NamedBody812_458 NamedBody812_469

def NamedBody812_471 : StackLang.HolProg 64 :=
.seq NamedBody812_457 NamedBody812_470

def NamedBody812_472 : StackLang.HolProg 64 :=
.seq NamedBody812_456 NamedBody812_471

def NamedBody812_473 : StackLang.HolProg 64 :=
.seq NamedBody812_455 NamedBody812_472

def NamedBody812_474 : StackLang.HolProg 64 :=
.seq NamedBody812_454 NamedBody812_473

def NamedBody812_475 : StackLang.HolProg 64 :=
.seq NamedBody812_453 NamedBody812_474

def NamedBody812_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_486 : StackLang.HolProg 64 :=
.seq NamedBody812_484 NamedBody812_485

def NamedBody812_487 : StackLang.HolProg 64 :=
.seq NamedBody812_483 NamedBody812_486

def NamedBody812_488 : StackLang.HolProg 64 :=
.seq NamedBody812_482 NamedBody812_487

def NamedBody812_489 : StackLang.HolProg 64 :=
.seq NamedBody812_481 NamedBody812_488

def NamedBody812_490 : StackLang.HolProg 64 :=
.seq NamedBody812_480 NamedBody812_489

def NamedBody812_491 : StackLang.HolProg 64 :=
.seq NamedBody812_479 NamedBody812_490

def NamedBody812_492 : StackLang.HolProg 64 :=
.seq NamedBody812_478 NamedBody812_491

def NamedBody812_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody812_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody812_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_497 : StackLang.HolProg 64 :=
.seq NamedBody812_495 NamedBody812_496

def NamedBody812_498 : StackLang.HolProg 64 :=
.seq NamedBody812_494 NamedBody812_497

def NamedBody812_499 : StackLang.HolProg 64 :=
.seq NamedBody812_493 NamedBody812_498

def NamedBody812_500 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_501 : StackLang.HolProg 64 :=
.seq NamedBody812_499 NamedBody812_500

def NamedBody812_502 : StackLang.HolProg 64 :=
.call (some (NamedBody812_492, 1, 812, 14)) (Sum.inl 783) (some (NamedBody812_501, 812, 15))

def NamedBody812_503 : StackLang.HolProg 64 :=
.seq NamedBody812_477 NamedBody812_502

def NamedBody812_504 : StackLang.HolProg 64 :=
.seq NamedBody812_476 NamedBody812_503

def NamedBody812_505 : StackLang.HolProg 64 :=
.seq NamedBody812_475 NamedBody812_504

def NamedBody812_506 : StackLang.HolProg 64 :=
.seq NamedBody812_446 NamedBody812_505

def NamedBody812_507 : StackLang.HolProg 64 :=
.seq NamedBody812_443 NamedBody812_506

def NamedBody812_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody812_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4017#64)

def NamedBody812_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_513 : StackLang.HolProg 64 :=
.seq NamedBody812_511 NamedBody812_512

def NamedBody812_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_517 : StackLang.HolProg 64 :=
.seq NamedBody812_515 NamedBody812_516

def NamedBody812_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_519 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_517 NamedBody812_518

def NamedBody812_520 : StackLang.HolProg 64 :=
.seq NamedBody812_514 NamedBody812_519

def NamedBody812_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 17

def NamedBody812_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_530 : StackLang.HolProg 64 :=
.seq NamedBody812_528 NamedBody812_529

def NamedBody812_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_532 : StackLang.HolProg 64 :=
.seq NamedBody812_530 NamedBody812_531

def NamedBody812_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_534 : StackLang.HolProg 64 :=
.seq NamedBody812_532 NamedBody812_533

def NamedBody812_535 : StackLang.HolProg 64 :=
.seq NamedBody812_527 NamedBody812_534

def NamedBody812_536 : StackLang.HolProg 64 :=
.seq NamedBody812_526 NamedBody812_535

def NamedBody812_537 : StackLang.HolProg 64 :=
.seq NamedBody812_525 NamedBody812_536

def NamedBody812_538 : StackLang.HolProg 64 :=
.seq NamedBody812_524 NamedBody812_537

def NamedBody812_539 : StackLang.HolProg 64 :=
.seq NamedBody812_523 NamedBody812_538

def NamedBody812_540 : StackLang.HolProg 64 :=
.seq NamedBody812_522 NamedBody812_539

def NamedBody812_541 : StackLang.HolProg 64 :=
.seq NamedBody812_521 NamedBody812_540

def NamedBody812_542 : StackLang.HolProg 64 :=
.seq NamedBody812_520 NamedBody812_541

def NamedBody812_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_550 : StackLang.HolProg 64 :=
.seq NamedBody812_548 NamedBody812_549

def NamedBody812_551 : StackLang.HolProg 64 :=
.seq NamedBody812_547 NamedBody812_550

def NamedBody812_552 : StackLang.HolProg 64 :=
.seq NamedBody812_546 NamedBody812_551

def NamedBody812_553 : StackLang.HolProg 64 :=
.seq NamedBody812_545 NamedBody812_552

def NamedBody812_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody812_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_556 : StackLang.HolProg 64 :=
.seq NamedBody812_554 NamedBody812_555

def NamedBody812_557 : StackLang.HolProg 64 :=
.call (some (NamedBody812_553, 1, 812, 16)) (Sum.inl 788) (some (NamedBody812_556, 812, 17))

def NamedBody812_558 : StackLang.HolProg 64 :=
.seq NamedBody812_544 NamedBody812_557

def NamedBody812_559 : StackLang.HolProg 64 :=
.seq NamedBody812_543 NamedBody812_558

def NamedBody812_560 : StackLang.HolProg 64 :=
.seq NamedBody812_542 NamedBody812_559

def NamedBody812_561 : StackLang.HolProg 64 :=
.seq NamedBody812_513 NamedBody812_560

def NamedBody812_562 : StackLang.HolProg 64 :=
.seq NamedBody812_510 NamedBody812_561

def NamedBody812_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody812_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4018#64)

def NamedBody812_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_568 : StackLang.HolProg 64 :=
.seq NamedBody812_566 NamedBody812_567

def NamedBody812_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody812_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody812_572 : StackLang.HolProg 64 :=
.seq NamedBody812_570 NamedBody812_571

def NamedBody812_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_574 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody812_572 NamedBody812_573

def NamedBody812_575 : StackLang.HolProg 64 :=
.seq NamedBody812_569 NamedBody812_574

def NamedBody812_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody812_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody812_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 19

def NamedBody812_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody812_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody812_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody812_585 : StackLang.HolProg 64 :=
.seq NamedBody812_583 NamedBody812_584

def NamedBody812_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody812_587 : StackLang.HolProg 64 :=
.seq NamedBody812_585 NamedBody812_586

def NamedBody812_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_589 : StackLang.HolProg 64 :=
.seq NamedBody812_587 NamedBody812_588

def NamedBody812_590 : StackLang.HolProg 64 :=
.seq NamedBody812_582 NamedBody812_589

def NamedBody812_591 : StackLang.HolProg 64 :=
.seq NamedBody812_581 NamedBody812_590

def NamedBody812_592 : StackLang.HolProg 64 :=
.seq NamedBody812_580 NamedBody812_591

def NamedBody812_593 : StackLang.HolProg 64 :=
.seq NamedBody812_579 NamedBody812_592

def NamedBody812_594 : StackLang.HolProg 64 :=
.seq NamedBody812_578 NamedBody812_593

def NamedBody812_595 : StackLang.HolProg 64 :=
.seq NamedBody812_577 NamedBody812_594

def NamedBody812_596 : StackLang.HolProg 64 :=
.seq NamedBody812_576 NamedBody812_595

def NamedBody812_597 : StackLang.HolProg 64 :=
.seq NamedBody812_575 NamedBody812_596

def NamedBody812_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody812_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody812_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody812_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody812_605 : StackLang.HolProg 64 :=
.seq NamedBody812_603 NamedBody812_604

def NamedBody812_606 : StackLang.HolProg 64 :=
.seq NamedBody812_602 NamedBody812_605

def NamedBody812_607 : StackLang.HolProg 64 :=
.seq NamedBody812_601 NamedBody812_606

def NamedBody812_608 : StackLang.HolProg 64 :=
.seq NamedBody812_600 NamedBody812_607

def NamedBody812_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody812_610 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody812_611 : StackLang.HolProg 64 :=
.seq NamedBody812_609 NamedBody812_610

def NamedBody812_612 : StackLang.HolProg 64 :=
.call (some (NamedBody812_608, 1, 812, 18)) (Sum.inl 70) (some (NamedBody812_611, 812, 19))

def NamedBody812_613 : StackLang.HolProg 64 :=
.seq NamedBody812_599 NamedBody812_612

def NamedBody812_614 : StackLang.HolProg 64 :=
.seq NamedBody812_598 NamedBody812_613

def NamedBody812_615 : StackLang.HolProg 64 :=
.seq NamedBody812_597 NamedBody812_614

def NamedBody812_616 : StackLang.HolProg 64 :=
.seq NamedBody812_568 NamedBody812_615

def NamedBody812_617 : StackLang.HolProg 64 :=
.seq NamedBody812_565 NamedBody812_616

def NamedBody812_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody812_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody812_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody812_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody812_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody812_623 : StackLang.HolProg 64 :=
.seq NamedBody812_621 NamedBody812_622

def NamedBody812_624 : StackLang.HolProg 64 :=
.seq NamedBody812_620 NamedBody812_623

def NamedBody812_625 : StackLang.HolProg 64 :=
.seq NamedBody812_619 NamedBody812_624

def NamedBody812_626 : StackLang.HolProg 64 :=
.seq NamedBody812_618 NamedBody812_625

def NamedBody812_627 : StackLang.HolProg 64 :=
.seq NamedBody812_617 NamedBody812_626

def NamedBody812_628 : StackLang.HolProg 64 :=
.seq NamedBody812_564 NamedBody812_627

def NamedBody812_629 : StackLang.HolProg 64 :=
.seq NamedBody812_563 NamedBody812_628

def NamedBody812_630 : StackLang.HolProg 64 :=
.seq NamedBody812_562 NamedBody812_629

def NamedBody812_631 : StackLang.HolProg 64 :=
.seq NamedBody812_509 NamedBody812_630

def NamedBody812_632 : StackLang.HolProg 64 :=
.seq NamedBody812_508 NamedBody812_631

def NamedBody812_633 : StackLang.HolProg 64 :=
.seq NamedBody812_507 NamedBody812_632

def NamedBody812_634 : StackLang.HolProg 64 :=
.seq NamedBody812_442 NamedBody812_633

def NamedBody812_635 : StackLang.HolProg 64 :=
.seq NamedBody812_439 NamedBody812_634

def NamedBody812_636 : StackLang.HolProg 64 :=
.seq NamedBody812_438 NamedBody812_635

def NamedBody812_637 : StackLang.HolProg 64 :=
.seq NamedBody812_437 NamedBody812_636

def NamedBody812_638 : StackLang.HolProg 64 :=
.seq NamedBody812_364 NamedBody812_637

def NamedBody812_639 : StackLang.HolProg 64 :=
.seq NamedBody812_363 NamedBody812_638

def NamedBody812_640 : StackLang.HolProg 64 :=
.seq NamedBody812_362 NamedBody812_639

def NamedBody812_641 : StackLang.HolProg 64 :=
.seq NamedBody812_361 NamedBody812_640

def NamedBody812_642 : StackLang.HolProg 64 :=
.seq NamedBody812_260 NamedBody812_641

def NamedBody812_643 : StackLang.HolProg 64 :=
.seq NamedBody812_259 NamedBody812_642

def NamedBody812_644 : StackLang.HolProg 64 :=
.seq NamedBody812_258 NamedBody812_643

def NamedBody812_645 : StackLang.HolProg 64 :=
.seq NamedBody812_257 NamedBody812_644

def NamedBody812_646 : StackLang.HolProg 64 :=
.seq NamedBody812_190 NamedBody812_645

def NamedBody812_647 : StackLang.HolProg 64 :=
.seq NamedBody812_183 NamedBody812_646

def NamedBody812_648 : StackLang.HolProg 64 :=
.seq NamedBody812_182 NamedBody812_647

def NamedBody812_649 : StackLang.HolProg 64 :=
.seq NamedBody812_123 NamedBody812_648

def NamedBody812_650 : StackLang.HolProg 64 :=
.seq NamedBody812_122 NamedBody812_649

def NamedBody812_651 : StackLang.HolProg 64 :=
.seq NamedBody812_121 NamedBody812_650

def NamedBody812_652 : StackLang.HolProg 64 :=
.seq NamedBody812_120 NamedBody812_651

def NamedBody812_653 : StackLang.HolProg 64 :=
.seq NamedBody812_67 NamedBody812_652

def NamedBody812_654 : StackLang.HolProg 64 :=
.seq NamedBody812_66 NamedBody812_653

def NamedBody812_655 : StackLang.HolProg 64 :=
.seq NamedBody812_65 NamedBody812_654

def NamedBody812_656 : StackLang.HolProg 64 :=
.seq NamedBody812_64 NamedBody812_655

def NamedBody812_657 : StackLang.HolProg 64 :=
.seq NamedBody812_11 NamedBody812_656

def NamedBody812_658 : StackLang.HolProg 64 :=
.seq NamedBody812_6 NamedBody812_657

def Named812 : Nat × StackLang.HolProg 64 := (812, NamedBody812_658)
theorem Named812_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed812 = Named812 := by
  kernel_rfl
#print axioms Named812_eq
end InitECandidate.Proofs.BackendStages
