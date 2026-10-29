import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed261
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody261_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody261_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_3 : StackLang.HolProg 64 :=
.seq NamedBody261_1 NamedBody261_2

def NamedBody261_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_3 NamedBody261_4

def NamedBody261_6 : StackLang.HolProg 64 :=
.seq NamedBody261_0 NamedBody261_5

def NamedBody261_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody261_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_10 : StackLang.HolProg 64 :=
.seq NamedBody261_8 NamedBody261_9

def NamedBody261_11 : StackLang.HolProg 64 :=
.seq NamedBody261_7 NamedBody261_10

def NamedBody261_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 599#64)

def NamedBody261_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_15 : StackLang.HolProg 64 :=
.seq NamedBody261_13 NamedBody261_14

def NamedBody261_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_19 : StackLang.HolProg 64 :=
.seq NamedBody261_17 NamedBody261_18

def NamedBody261_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_19 NamedBody261_20

def NamedBody261_22 : StackLang.HolProg 64 :=
.seq NamedBody261_16 NamedBody261_21

def NamedBody261_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody261_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 3

def NamedBody261_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody261_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody261_32 : StackLang.HolProg 64 :=
.seq NamedBody261_30 NamedBody261_31

def NamedBody261_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody261_34 : StackLang.HolProg 64 :=
.seq NamedBody261_32 NamedBody261_33

def NamedBody261_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_36 : StackLang.HolProg 64 :=
.seq NamedBody261_34 NamedBody261_35

def NamedBody261_37 : StackLang.HolProg 64 :=
.seq NamedBody261_29 NamedBody261_36

def NamedBody261_38 : StackLang.HolProg 64 :=
.seq NamedBody261_28 NamedBody261_37

def NamedBody261_39 : StackLang.HolProg 64 :=
.seq NamedBody261_27 NamedBody261_38

def NamedBody261_40 : StackLang.HolProg 64 :=
.seq NamedBody261_26 NamedBody261_39

def NamedBody261_41 : StackLang.HolProg 64 :=
.seq NamedBody261_25 NamedBody261_40

def NamedBody261_42 : StackLang.HolProg 64 :=
.seq NamedBody261_24 NamedBody261_41

def NamedBody261_43 : StackLang.HolProg 64 :=
.seq NamedBody261_23 NamedBody261_42

def NamedBody261_44 : StackLang.HolProg 64 :=
.seq NamedBody261_22 NamedBody261_43

def NamedBody261_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody261_52 : StackLang.HolProg 64 :=
.seq NamedBody261_50 NamedBody261_51

def NamedBody261_53 : StackLang.HolProg 64 :=
.seq NamedBody261_49 NamedBody261_52

def NamedBody261_54 : StackLang.HolProg 64 :=
.seq NamedBody261_48 NamedBody261_53

def NamedBody261_55 : StackLang.HolProg 64 :=
.seq NamedBody261_47 NamedBody261_54

def NamedBody261_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody261_58 : StackLang.HolProg 64 :=
.seq NamedBody261_56 NamedBody261_57

def NamedBody261_59 : StackLang.HolProg 64 :=
.call (some (NamedBody261_55, 1, 261, 2)) (Sum.inl 69) (some (NamedBody261_58, 261, 3))

def NamedBody261_60 : StackLang.HolProg 64 :=
.seq NamedBody261_46 NamedBody261_59

def NamedBody261_61 : StackLang.HolProg 64 :=
.seq NamedBody261_45 NamedBody261_60

def NamedBody261_62 : StackLang.HolProg 64 :=
.seq NamedBody261_44 NamedBody261_61

def NamedBody261_63 : StackLang.HolProg 64 :=
.seq NamedBody261_15 NamedBody261_62

def NamedBody261_64 : StackLang.HolProg 64 :=
.seq NamedBody261_12 NamedBody261_63

def NamedBody261_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody261_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody261_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody261_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 600#64)

def NamedBody261_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_71 : StackLang.HolProg 64 :=
.seq NamedBody261_69 NamedBody261_70

def NamedBody261_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_75 : StackLang.HolProg 64 :=
.seq NamedBody261_73 NamedBody261_74

def NamedBody261_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_75 NamedBody261_76

def NamedBody261_78 : StackLang.HolProg 64 :=
.seq NamedBody261_72 NamedBody261_77

def NamedBody261_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody261_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 5

def NamedBody261_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody261_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody261_88 : StackLang.HolProg 64 :=
.seq NamedBody261_86 NamedBody261_87

def NamedBody261_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody261_90 : StackLang.HolProg 64 :=
.seq NamedBody261_88 NamedBody261_89

def NamedBody261_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_92 : StackLang.HolProg 64 :=
.seq NamedBody261_90 NamedBody261_91

def NamedBody261_93 : StackLang.HolProg 64 :=
.seq NamedBody261_85 NamedBody261_92

def NamedBody261_94 : StackLang.HolProg 64 :=
.seq NamedBody261_84 NamedBody261_93

def NamedBody261_95 : StackLang.HolProg 64 :=
.seq NamedBody261_83 NamedBody261_94

def NamedBody261_96 : StackLang.HolProg 64 :=
.seq NamedBody261_82 NamedBody261_95

def NamedBody261_97 : StackLang.HolProg 64 :=
.seq NamedBody261_81 NamedBody261_96

def NamedBody261_98 : StackLang.HolProg 64 :=
.seq NamedBody261_80 NamedBody261_97

def NamedBody261_99 : StackLang.HolProg 64 :=
.seq NamedBody261_79 NamedBody261_98

def NamedBody261_100 : StackLang.HolProg 64 :=
.seq NamedBody261_78 NamedBody261_99

def NamedBody261_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody261_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_109 : StackLang.HolProg 64 :=
.seq NamedBody261_107 NamedBody261_108

def NamedBody261_110 : StackLang.HolProg 64 :=
.seq NamedBody261_106 NamedBody261_109

def NamedBody261_111 : StackLang.HolProg 64 :=
.seq NamedBody261_105 NamedBody261_110

def NamedBody261_112 : StackLang.HolProg 64 :=
.seq NamedBody261_104 NamedBody261_111

def NamedBody261_113 : StackLang.HolProg 64 :=
.seq NamedBody261_103 NamedBody261_112

def NamedBody261_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody261_116 : StackLang.HolProg 64 :=
.seq NamedBody261_114 NamedBody261_115

def NamedBody261_117 : StackLang.HolProg 64 :=
.call (some (NamedBody261_113, 1, 261, 4)) (Sum.inl 68) (some (NamedBody261_116, 261, 5))

def NamedBody261_118 : StackLang.HolProg 64 :=
.seq NamedBody261_102 NamedBody261_117

def NamedBody261_119 : StackLang.HolProg 64 :=
.seq NamedBody261_101 NamedBody261_118

def NamedBody261_120 : StackLang.HolProg 64 :=
.seq NamedBody261_100 NamedBody261_119

def NamedBody261_121 : StackLang.HolProg 64 :=
.seq NamedBody261_71 NamedBody261_120

def NamedBody261_122 : StackLang.HolProg 64 :=
.seq NamedBody261_68 NamedBody261_121

def NamedBody261_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody261_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody261_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 20#64)

def NamedBody261_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_128 : StackLang.HolProg 64 :=
.seq NamedBody261_126 NamedBody261_127

def NamedBody261_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 601#64)

def NamedBody261_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_132 : StackLang.HolProg 64 :=
.seq NamedBody261_130 NamedBody261_131

def NamedBody261_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_136 : StackLang.HolProg 64 :=
.seq NamedBody261_134 NamedBody261_135

def NamedBody261_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_136 NamedBody261_137

def NamedBody261_139 : StackLang.HolProg 64 :=
.seq NamedBody261_133 NamedBody261_138

def NamedBody261_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody261_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 7

def NamedBody261_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody261_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody261_149 : StackLang.HolProg 64 :=
.seq NamedBody261_147 NamedBody261_148

def NamedBody261_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody261_151 : StackLang.HolProg 64 :=
.seq NamedBody261_149 NamedBody261_150

def NamedBody261_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_153 : StackLang.HolProg 64 :=
.seq NamedBody261_151 NamedBody261_152

def NamedBody261_154 : StackLang.HolProg 64 :=
.seq NamedBody261_146 NamedBody261_153

def NamedBody261_155 : StackLang.HolProg 64 :=
.seq NamedBody261_145 NamedBody261_154

def NamedBody261_156 : StackLang.HolProg 64 :=
.seq NamedBody261_144 NamedBody261_155

def NamedBody261_157 : StackLang.HolProg 64 :=
.seq NamedBody261_143 NamedBody261_156

def NamedBody261_158 : StackLang.HolProg 64 :=
.seq NamedBody261_142 NamedBody261_157

def NamedBody261_159 : StackLang.HolProg 64 :=
.seq NamedBody261_141 NamedBody261_158

def NamedBody261_160 : StackLang.HolProg 64 :=
.seq NamedBody261_140 NamedBody261_159

def NamedBody261_161 : StackLang.HolProg 64 :=
.seq NamedBody261_139 NamedBody261_160

def NamedBody261_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_170 : StackLang.HolProg 64 :=
.seq NamedBody261_168 NamedBody261_169

def NamedBody261_171 : StackLang.HolProg 64 :=
.seq NamedBody261_167 NamedBody261_170

def NamedBody261_172 : StackLang.HolProg 64 :=
.seq NamedBody261_166 NamedBody261_171

def NamedBody261_173 : StackLang.HolProg 64 :=
.seq NamedBody261_165 NamedBody261_172

def NamedBody261_174 : StackLang.HolProg 64 :=
.seq NamedBody261_164 NamedBody261_173

def NamedBody261_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_177 : StackLang.HolProg 64 :=
.seq NamedBody261_175 NamedBody261_176

def NamedBody261_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody261_179 : StackLang.HolProg 64 :=
.seq NamedBody261_177 NamedBody261_178

def NamedBody261_180 : StackLang.HolProg 64 :=
.call (some (NamedBody261_174, 1, 261, 6)) (Sum.inl 242) (some (NamedBody261_179, 261, 7))

def NamedBody261_181 : StackLang.HolProg 64 :=
.seq NamedBody261_163 NamedBody261_180

def NamedBody261_182 : StackLang.HolProg 64 :=
.seq NamedBody261_162 NamedBody261_181

def NamedBody261_183 : StackLang.HolProg 64 :=
.seq NamedBody261_161 NamedBody261_182

def NamedBody261_184 : StackLang.HolProg 64 :=
.seq NamedBody261_132 NamedBody261_183

def NamedBody261_185 : StackLang.HolProg 64 :=
.seq NamedBody261_129 NamedBody261_184

def NamedBody261_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody261_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def NamedBody261_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody261_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 48#64)

def NamedBody261_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_194 : StackLang.HolProg 64 :=
.seq NamedBody261_192 NamedBody261_193

def NamedBody261_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 602#64)

def NamedBody261_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_198 : StackLang.HolProg 64 :=
.seq NamedBody261_196 NamedBody261_197

def NamedBody261_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_202 : StackLang.HolProg 64 :=
.seq NamedBody261_200 NamedBody261_201

def NamedBody261_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_202 NamedBody261_203

def NamedBody261_205 : StackLang.HolProg 64 :=
.seq NamedBody261_199 NamedBody261_204

def NamedBody261_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody261_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 9

def NamedBody261_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody261_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody261_215 : StackLang.HolProg 64 :=
.seq NamedBody261_213 NamedBody261_214

def NamedBody261_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody261_217 : StackLang.HolProg 64 :=
.seq NamedBody261_215 NamedBody261_216

def NamedBody261_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_219 : StackLang.HolProg 64 :=
.seq NamedBody261_217 NamedBody261_218

def NamedBody261_220 : StackLang.HolProg 64 :=
.seq NamedBody261_212 NamedBody261_219

def NamedBody261_221 : StackLang.HolProg 64 :=
.seq NamedBody261_211 NamedBody261_220

def NamedBody261_222 : StackLang.HolProg 64 :=
.seq NamedBody261_210 NamedBody261_221

def NamedBody261_223 : StackLang.HolProg 64 :=
.seq NamedBody261_209 NamedBody261_222

def NamedBody261_224 : StackLang.HolProg 64 :=
.seq NamedBody261_208 NamedBody261_223

def NamedBody261_225 : StackLang.HolProg 64 :=
.seq NamedBody261_207 NamedBody261_224

def NamedBody261_226 : StackLang.HolProg 64 :=
.seq NamedBody261_206 NamedBody261_225

def NamedBody261_227 : StackLang.HolProg 64 :=
.seq NamedBody261_205 NamedBody261_226

def NamedBody261_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_236 : StackLang.HolProg 64 :=
.seq NamedBody261_234 NamedBody261_235

def NamedBody261_237 : StackLang.HolProg 64 :=
.seq NamedBody261_233 NamedBody261_236

def NamedBody261_238 : StackLang.HolProg 64 :=
.seq NamedBody261_232 NamedBody261_237

def NamedBody261_239 : StackLang.HolProg 64 :=
.seq NamedBody261_231 NamedBody261_238

def NamedBody261_240 : StackLang.HolProg 64 :=
.seq NamedBody261_230 NamedBody261_239

def NamedBody261_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_243 : StackLang.HolProg 64 :=
.seq NamedBody261_241 NamedBody261_242

def NamedBody261_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody261_245 : StackLang.HolProg 64 :=
.seq NamedBody261_243 NamedBody261_244

def NamedBody261_246 : StackLang.HolProg 64 :=
.call (some (NamedBody261_240, 1, 261, 8)) (Sum.inl 242) (some (NamedBody261_245, 261, 9))

def NamedBody261_247 : StackLang.HolProg 64 :=
.seq NamedBody261_229 NamedBody261_246

def NamedBody261_248 : StackLang.HolProg 64 :=
.seq NamedBody261_228 NamedBody261_247

def NamedBody261_249 : StackLang.HolProg 64 :=
.seq NamedBody261_227 NamedBody261_248

def NamedBody261_250 : StackLang.HolProg 64 :=
.seq NamedBody261_198 NamedBody261_249

def NamedBody261_251 : StackLang.HolProg 64 :=
.seq NamedBody261_195 NamedBody261_250

def NamedBody261_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody261_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 68#64)))

def NamedBody261_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody261_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 603#64)

def NamedBody261_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_261 : StackLang.HolProg 64 :=
.seq NamedBody261_259 NamedBody261_260

def NamedBody261_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_265 : StackLang.HolProg 64 :=
.seq NamedBody261_263 NamedBody261_264

def NamedBody261_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_265 NamedBody261_266

def NamedBody261_268 : StackLang.HolProg 64 :=
.seq NamedBody261_262 NamedBody261_267

def NamedBody261_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody261_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 11

def NamedBody261_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody261_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody261_278 : StackLang.HolProg 64 :=
.seq NamedBody261_276 NamedBody261_277

def NamedBody261_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody261_280 : StackLang.HolProg 64 :=
.seq NamedBody261_278 NamedBody261_279

def NamedBody261_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_282 : StackLang.HolProg 64 :=
.seq NamedBody261_280 NamedBody261_281

def NamedBody261_283 : StackLang.HolProg 64 :=
.seq NamedBody261_275 NamedBody261_282

def NamedBody261_284 : StackLang.HolProg 64 :=
.seq NamedBody261_274 NamedBody261_283

def NamedBody261_285 : StackLang.HolProg 64 :=
.seq NamedBody261_273 NamedBody261_284

def NamedBody261_286 : StackLang.HolProg 64 :=
.seq NamedBody261_272 NamedBody261_285

def NamedBody261_287 : StackLang.HolProg 64 :=
.seq NamedBody261_271 NamedBody261_286

def NamedBody261_288 : StackLang.HolProg 64 :=
.seq NamedBody261_270 NamedBody261_287

def NamedBody261_289 : StackLang.HolProg 64 :=
.seq NamedBody261_269 NamedBody261_288

def NamedBody261_290 : StackLang.HolProg 64 :=
.seq NamedBody261_268 NamedBody261_289

def NamedBody261_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_299 : StackLang.HolProg 64 :=
.seq NamedBody261_297 NamedBody261_298

def NamedBody261_300 : StackLang.HolProg 64 :=
.seq NamedBody261_296 NamedBody261_299

def NamedBody261_301 : StackLang.HolProg 64 :=
.seq NamedBody261_295 NamedBody261_300

def NamedBody261_302 : StackLang.HolProg 64 :=
.seq NamedBody261_294 NamedBody261_301

def NamedBody261_303 : StackLang.HolProg 64 :=
.seq NamedBody261_293 NamedBody261_302

def NamedBody261_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody261_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_306 : StackLang.HolProg 64 :=
.seq NamedBody261_304 NamedBody261_305

def NamedBody261_307 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody261_308 : StackLang.HolProg 64 :=
.seq NamedBody261_306 NamedBody261_307

def NamedBody261_309 : StackLang.HolProg 64 :=
.call (some (NamedBody261_303, 1, 261, 10)) (Sum.inl 244) (some (NamedBody261_308, 261, 11))

def NamedBody261_310 : StackLang.HolProg 64 :=
.seq NamedBody261_292 NamedBody261_309

def NamedBody261_311 : StackLang.HolProg 64 :=
.seq NamedBody261_291 NamedBody261_310

def NamedBody261_312 : StackLang.HolProg 64 :=
.seq NamedBody261_290 NamedBody261_311

def NamedBody261_313 : StackLang.HolProg 64 :=
.seq NamedBody261_261 NamedBody261_312

def NamedBody261_314 : StackLang.HolProg 64 :=
.seq NamedBody261_258 NamedBody261_313

def NamedBody261_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody261_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody261_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 3#64)

def NamedBody261_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody261_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 604#64)

def NamedBody261_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_323 : StackLang.HolProg 64 :=
.seq NamedBody261_321 NamedBody261_322

def NamedBody261_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_327 : StackLang.HolProg 64 :=
.seq NamedBody261_325 NamedBody261_326

def NamedBody261_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_329 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_327 NamedBody261_328

def NamedBody261_330 : StackLang.HolProg 64 :=
.seq NamedBody261_324 NamedBody261_329

def NamedBody261_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody261_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 13

def NamedBody261_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody261_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody261_340 : StackLang.HolProg 64 :=
.seq NamedBody261_338 NamedBody261_339

def NamedBody261_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody261_342 : StackLang.HolProg 64 :=
.seq NamedBody261_340 NamedBody261_341

def NamedBody261_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_344 : StackLang.HolProg 64 :=
.seq NamedBody261_342 NamedBody261_343

def NamedBody261_345 : StackLang.HolProg 64 :=
.seq NamedBody261_337 NamedBody261_344

def NamedBody261_346 : StackLang.HolProg 64 :=
.seq NamedBody261_336 NamedBody261_345

def NamedBody261_347 : StackLang.HolProg 64 :=
.seq NamedBody261_335 NamedBody261_346

def NamedBody261_348 : StackLang.HolProg 64 :=
.seq NamedBody261_334 NamedBody261_347

def NamedBody261_349 : StackLang.HolProg 64 :=
.seq NamedBody261_333 NamedBody261_348

def NamedBody261_350 : StackLang.HolProg 64 :=
.seq NamedBody261_332 NamedBody261_349

def NamedBody261_351 : StackLang.HolProg 64 :=
.seq NamedBody261_331 NamedBody261_350

def NamedBody261_352 : StackLang.HolProg 64 :=
.seq NamedBody261_330 NamedBody261_351

def NamedBody261_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody261_360 : StackLang.HolProg 64 :=
.seq NamedBody261_358 NamedBody261_359

def NamedBody261_361 : StackLang.HolProg 64 :=
.seq NamedBody261_357 NamedBody261_360

def NamedBody261_362 : StackLang.HolProg 64 :=
.seq NamedBody261_356 NamedBody261_361

def NamedBody261_363 : StackLang.HolProg 64 :=
.seq NamedBody261_355 NamedBody261_362

def NamedBody261_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody261_365 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody261_366 : StackLang.HolProg 64 :=
.seq NamedBody261_364 NamedBody261_365

def NamedBody261_367 : StackLang.HolProg 64 :=
.call (some (NamedBody261_363, 1, 261, 12)) (Sum.inl 235) (some (NamedBody261_366, 261, 13))

def NamedBody261_368 : StackLang.HolProg 64 :=
.seq NamedBody261_354 NamedBody261_367

def NamedBody261_369 : StackLang.HolProg 64 :=
.seq NamedBody261_353 NamedBody261_368

def NamedBody261_370 : StackLang.HolProg 64 :=
.seq NamedBody261_352 NamedBody261_369

def NamedBody261_371 : StackLang.HolProg 64 :=
.seq NamedBody261_323 NamedBody261_370

def NamedBody261_372 : StackLang.HolProg 64 :=
.seq NamedBody261_320 NamedBody261_371

def NamedBody261_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody261_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody261_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 605#64)

def NamedBody261_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_378 : StackLang.HolProg 64 :=
.seq NamedBody261_376 NamedBody261_377

def NamedBody261_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody261_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody261_382 : StackLang.HolProg 64 :=
.seq NamedBody261_380 NamedBody261_381

def NamedBody261_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_384 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody261_382 NamedBody261_383

def NamedBody261_385 : StackLang.HolProg 64 :=
.seq NamedBody261_379 NamedBody261_384

def NamedBody261_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody261_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody261_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 15

def NamedBody261_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody261_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody261_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody261_395 : StackLang.HolProg 64 :=
.seq NamedBody261_393 NamedBody261_394

def NamedBody261_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody261_397 : StackLang.HolProg 64 :=
.seq NamedBody261_395 NamedBody261_396

def NamedBody261_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_399 : StackLang.HolProg 64 :=
.seq NamedBody261_397 NamedBody261_398

def NamedBody261_400 : StackLang.HolProg 64 :=
.seq NamedBody261_392 NamedBody261_399

def NamedBody261_401 : StackLang.HolProg 64 :=
.seq NamedBody261_391 NamedBody261_400

def NamedBody261_402 : StackLang.HolProg 64 :=
.seq NamedBody261_390 NamedBody261_401

def NamedBody261_403 : StackLang.HolProg 64 :=
.seq NamedBody261_389 NamedBody261_402

def NamedBody261_404 : StackLang.HolProg 64 :=
.seq NamedBody261_388 NamedBody261_403

def NamedBody261_405 : StackLang.HolProg 64 :=
.seq NamedBody261_387 NamedBody261_404

def NamedBody261_406 : StackLang.HolProg 64 :=
.seq NamedBody261_386 NamedBody261_405

def NamedBody261_407 : StackLang.HolProg 64 :=
.seq NamedBody261_385 NamedBody261_406

def NamedBody261_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody261_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody261_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody261_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody261_415 : StackLang.HolProg 64 :=
.seq NamedBody261_413 NamedBody261_414

def NamedBody261_416 : StackLang.HolProg 64 :=
.seq NamedBody261_412 NamedBody261_415

def NamedBody261_417 : StackLang.HolProg 64 :=
.seq NamedBody261_411 NamedBody261_416

def NamedBody261_418 : StackLang.HolProg 64 :=
.seq NamedBody261_410 NamedBody261_417

def NamedBody261_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody261_420 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody261_421 : StackLang.HolProg 64 :=
.seq NamedBody261_419 NamedBody261_420

def NamedBody261_422 : StackLang.HolProg 64 :=
.call (some (NamedBody261_418, 1, 261, 14)) (Sum.inl 70) (some (NamedBody261_421, 261, 15))

def NamedBody261_423 : StackLang.HolProg 64 :=
.seq NamedBody261_409 NamedBody261_422

def NamedBody261_424 : StackLang.HolProg 64 :=
.seq NamedBody261_408 NamedBody261_423

def NamedBody261_425 : StackLang.HolProg 64 :=
.seq NamedBody261_407 NamedBody261_424

def NamedBody261_426 : StackLang.HolProg 64 :=
.seq NamedBody261_378 NamedBody261_425

def NamedBody261_427 : StackLang.HolProg 64 :=
.seq NamedBody261_375 NamedBody261_426

def NamedBody261_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody261_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody261_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody261_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody261_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody261_433 : StackLang.HolProg 64 :=
.seq NamedBody261_431 NamedBody261_432

def NamedBody261_434 : StackLang.HolProg 64 :=
.seq NamedBody261_430 NamedBody261_433

def NamedBody261_435 : StackLang.HolProg 64 :=
.seq NamedBody261_429 NamedBody261_434

def NamedBody261_436 : StackLang.HolProg 64 :=
.seq NamedBody261_428 NamedBody261_435

def NamedBody261_437 : StackLang.HolProg 64 :=
.seq NamedBody261_427 NamedBody261_436

def NamedBody261_438 : StackLang.HolProg 64 :=
.seq NamedBody261_374 NamedBody261_437

def NamedBody261_439 : StackLang.HolProg 64 :=
.seq NamedBody261_373 NamedBody261_438

def NamedBody261_440 : StackLang.HolProg 64 :=
.seq NamedBody261_372 NamedBody261_439

def NamedBody261_441 : StackLang.HolProg 64 :=
.seq NamedBody261_319 NamedBody261_440

def NamedBody261_442 : StackLang.HolProg 64 :=
.seq NamedBody261_318 NamedBody261_441

def NamedBody261_443 : StackLang.HolProg 64 :=
.seq NamedBody261_317 NamedBody261_442

def NamedBody261_444 : StackLang.HolProg 64 :=
.seq NamedBody261_316 NamedBody261_443

def NamedBody261_445 : StackLang.HolProg 64 :=
.seq NamedBody261_315 NamedBody261_444

def NamedBody261_446 : StackLang.HolProg 64 :=
.seq NamedBody261_314 NamedBody261_445

def NamedBody261_447 : StackLang.HolProg 64 :=
.seq NamedBody261_257 NamedBody261_446

def NamedBody261_448 : StackLang.HolProg 64 :=
.seq NamedBody261_256 NamedBody261_447

def NamedBody261_449 : StackLang.HolProg 64 :=
.seq NamedBody261_255 NamedBody261_448

def NamedBody261_450 : StackLang.HolProg 64 :=
.seq NamedBody261_254 NamedBody261_449

def NamedBody261_451 : StackLang.HolProg 64 :=
.seq NamedBody261_253 NamedBody261_450

def NamedBody261_452 : StackLang.HolProg 64 :=
.seq NamedBody261_252 NamedBody261_451

def NamedBody261_453 : StackLang.HolProg 64 :=
.seq NamedBody261_251 NamedBody261_452

def NamedBody261_454 : StackLang.HolProg 64 :=
.seq NamedBody261_194 NamedBody261_453

def NamedBody261_455 : StackLang.HolProg 64 :=
.seq NamedBody261_191 NamedBody261_454

def NamedBody261_456 : StackLang.HolProg 64 :=
.seq NamedBody261_190 NamedBody261_455

def NamedBody261_457 : StackLang.HolProg 64 :=
.seq NamedBody261_189 NamedBody261_456

def NamedBody261_458 : StackLang.HolProg 64 :=
.seq NamedBody261_188 NamedBody261_457

def NamedBody261_459 : StackLang.HolProg 64 :=
.seq NamedBody261_187 NamedBody261_458

def NamedBody261_460 : StackLang.HolProg 64 :=
.seq NamedBody261_186 NamedBody261_459

def NamedBody261_461 : StackLang.HolProg 64 :=
.seq NamedBody261_185 NamedBody261_460

def NamedBody261_462 : StackLang.HolProg 64 :=
.seq NamedBody261_128 NamedBody261_461

def NamedBody261_463 : StackLang.HolProg 64 :=
.seq NamedBody261_125 NamedBody261_462

def NamedBody261_464 : StackLang.HolProg 64 :=
.seq NamedBody261_124 NamedBody261_463

def NamedBody261_465 : StackLang.HolProg 64 :=
.seq NamedBody261_123 NamedBody261_464

def NamedBody261_466 : StackLang.HolProg 64 :=
.seq NamedBody261_122 NamedBody261_465

def NamedBody261_467 : StackLang.HolProg 64 :=
.seq NamedBody261_67 NamedBody261_466

def NamedBody261_468 : StackLang.HolProg 64 :=
.seq NamedBody261_66 NamedBody261_467

def NamedBody261_469 : StackLang.HolProg 64 :=
.seq NamedBody261_65 NamedBody261_468

def NamedBody261_470 : StackLang.HolProg 64 :=
.seq NamedBody261_64 NamedBody261_469

def NamedBody261_471 : StackLang.HolProg 64 :=
.seq NamedBody261_11 NamedBody261_470

def NamedBody261_472 : StackLang.HolProg 64 :=
.seq NamedBody261_6 NamedBody261_471

def Named261 : Nat × StackLang.HolProg 64 := (261, NamedBody261_472)
theorem Named261_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed261 = Named261 := by
  kernel_rfl
#print axioms Named261_eq
end InitECandidate.Proofs.BackendStages
