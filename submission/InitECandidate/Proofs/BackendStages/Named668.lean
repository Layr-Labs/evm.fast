import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed668
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody668_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody668_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_3 : StackLang.HolProg 64 :=
.seq NamedBody668_1 NamedBody668_2

def NamedBody668_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_3 NamedBody668_4

def NamedBody668_6 : StackLang.HolProg 64 :=
.seq NamedBody668_0 NamedBody668_5

def NamedBody668_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody668_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_11 : StackLang.HolProg 64 :=
.seq NamedBody668_9 NamedBody668_10

def NamedBody668_12 : StackLang.HolProg 64 :=
.seq NamedBody668_8 NamedBody668_11

def NamedBody668_13 : StackLang.HolProg 64 :=
.seq NamedBody668_7 NamedBody668_12

def NamedBody668_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2766#64)

def NamedBody668_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_17 : StackLang.HolProg 64 :=
.seq NamedBody668_15 NamedBody668_16

def NamedBody668_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_21 : StackLang.HolProg 64 :=
.seq NamedBody668_19 NamedBody668_20

def NamedBody668_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_21 NamedBody668_22

def NamedBody668_24 : StackLang.HolProg 64 :=
.seq NamedBody668_18 NamedBody668_23

def NamedBody668_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody668_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 3

def NamedBody668_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody668_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody668_34 : StackLang.HolProg 64 :=
.seq NamedBody668_32 NamedBody668_33

def NamedBody668_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody668_36 : StackLang.HolProg 64 :=
.seq NamedBody668_34 NamedBody668_35

def NamedBody668_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_38 : StackLang.HolProg 64 :=
.seq NamedBody668_36 NamedBody668_37

def NamedBody668_39 : StackLang.HolProg 64 :=
.seq NamedBody668_31 NamedBody668_38

def NamedBody668_40 : StackLang.HolProg 64 :=
.seq NamedBody668_30 NamedBody668_39

def NamedBody668_41 : StackLang.HolProg 64 :=
.seq NamedBody668_29 NamedBody668_40

def NamedBody668_42 : StackLang.HolProg 64 :=
.seq NamedBody668_28 NamedBody668_41

def NamedBody668_43 : StackLang.HolProg 64 :=
.seq NamedBody668_27 NamedBody668_42

def NamedBody668_44 : StackLang.HolProg 64 :=
.seq NamedBody668_26 NamedBody668_43

def NamedBody668_45 : StackLang.HolProg 64 :=
.seq NamedBody668_25 NamedBody668_44

def NamedBody668_46 : StackLang.HolProg 64 :=
.seq NamedBody668_24 NamedBody668_45

def NamedBody668_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody668_54 : StackLang.HolProg 64 :=
.seq NamedBody668_52 NamedBody668_53

def NamedBody668_55 : StackLang.HolProg 64 :=
.seq NamedBody668_51 NamedBody668_54

def NamedBody668_56 : StackLang.HolProg 64 :=
.seq NamedBody668_50 NamedBody668_55

def NamedBody668_57 : StackLang.HolProg 64 :=
.seq NamedBody668_49 NamedBody668_56

def NamedBody668_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody668_60 : StackLang.HolProg 64 :=
.seq NamedBody668_58 NamedBody668_59

def NamedBody668_61 : StackLang.HolProg 64 :=
.call (some (NamedBody668_57, 1, 668, 2)) (Sum.inl 69) (some (NamedBody668_60, 668, 3))

def NamedBody668_62 : StackLang.HolProg 64 :=
.seq NamedBody668_48 NamedBody668_61

def NamedBody668_63 : StackLang.HolProg 64 :=
.seq NamedBody668_47 NamedBody668_62

def NamedBody668_64 : StackLang.HolProg 64 :=
.seq NamedBody668_46 NamedBody668_63

def NamedBody668_65 : StackLang.HolProg 64 :=
.seq NamedBody668_17 NamedBody668_64

def NamedBody668_66 : StackLang.HolProg 64 :=
.seq NamedBody668_14 NamedBody668_65

def NamedBody668_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 736#64)

def NamedBody668_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody668_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2767#64)

def NamedBody668_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_73 : StackLang.HolProg 64 :=
.seq NamedBody668_71 NamedBody668_72

def NamedBody668_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_77 : StackLang.HolProg 64 :=
.seq NamedBody668_75 NamedBody668_76

def NamedBody668_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_77 NamedBody668_78

def NamedBody668_80 : StackLang.HolProg 64 :=
.seq NamedBody668_74 NamedBody668_79

def NamedBody668_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody668_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 5

def NamedBody668_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody668_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody668_90 : StackLang.HolProg 64 :=
.seq NamedBody668_88 NamedBody668_89

def NamedBody668_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody668_92 : StackLang.HolProg 64 :=
.seq NamedBody668_90 NamedBody668_91

def NamedBody668_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_94 : StackLang.HolProg 64 :=
.seq NamedBody668_92 NamedBody668_93

def NamedBody668_95 : StackLang.HolProg 64 :=
.seq NamedBody668_87 NamedBody668_94

def NamedBody668_96 : StackLang.HolProg 64 :=
.seq NamedBody668_86 NamedBody668_95

def NamedBody668_97 : StackLang.HolProg 64 :=
.seq NamedBody668_85 NamedBody668_96

def NamedBody668_98 : StackLang.HolProg 64 :=
.seq NamedBody668_84 NamedBody668_97

def NamedBody668_99 : StackLang.HolProg 64 :=
.seq NamedBody668_83 NamedBody668_98

def NamedBody668_100 : StackLang.HolProg 64 :=
.seq NamedBody668_82 NamedBody668_99

def NamedBody668_101 : StackLang.HolProg 64 :=
.seq NamedBody668_81 NamedBody668_100

def NamedBody668_102 : StackLang.HolProg 64 :=
.seq NamedBody668_80 NamedBody668_101

def NamedBody668_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody668_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_112 : StackLang.HolProg 64 :=
.seq NamedBody668_110 NamedBody668_111

def NamedBody668_113 : StackLang.HolProg 64 :=
.seq NamedBody668_109 NamedBody668_112

def NamedBody668_114 : StackLang.HolProg 64 :=
.seq NamedBody668_108 NamedBody668_113

def NamedBody668_115 : StackLang.HolProg 64 :=
.seq NamedBody668_107 NamedBody668_114

def NamedBody668_116 : StackLang.HolProg 64 :=
.seq NamedBody668_106 NamedBody668_115

def NamedBody668_117 : StackLang.HolProg 64 :=
.seq NamedBody668_105 NamedBody668_116

def NamedBody668_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_120 : StackLang.HolProg 64 :=
.seq NamedBody668_118 NamedBody668_119

def NamedBody668_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody668_122 : StackLang.HolProg 64 :=
.seq NamedBody668_120 NamedBody668_121

def NamedBody668_123 : StackLang.HolProg 64 :=
.call (some (NamedBody668_117, 1, 668, 4)) (Sum.inl 68) (some (NamedBody668_122, 668, 5))

def NamedBody668_124 : StackLang.HolProg 64 :=
.seq NamedBody668_104 NamedBody668_123

def NamedBody668_125 : StackLang.HolProg 64 :=
.seq NamedBody668_103 NamedBody668_124

def NamedBody668_126 : StackLang.HolProg 64 :=
.seq NamedBody668_102 NamedBody668_125

def NamedBody668_127 : StackLang.HolProg 64 :=
.seq NamedBody668_73 NamedBody668_126

def NamedBody668_128 : StackLang.HolProg 64 :=
.seq NamedBody668_70 NamedBody668_127

def NamedBody668_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody668_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 23#64)

def NamedBody668_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody668_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody668_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody668_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody668_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody668_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 11#64)

def NamedBody668_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551605#64)))

def NamedBody668_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_147 : StackLang.HolProg 64 :=
.seq NamedBody668_145 NamedBody668_146

def NamedBody668_148 : StackLang.HolProg 64 :=
.seq NamedBody668_144 NamedBody668_147

def NamedBody668_149 : StackLang.HolProg 64 :=
.seq NamedBody668_143 NamedBody668_148

def NamedBody668_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_152 : StackLang.HolProg 64 :=
.seq NamedBody668_150 NamedBody668_151

def NamedBody668_153 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody668_149 NamedBody668_152

def NamedBody668_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 11#64)

def NamedBody668_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody668_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 11#64)

def NamedBody668_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_161 : StackLang.HolProg 64 :=
.seq NamedBody668_159 NamedBody668_160

def NamedBody668_162 : StackLang.HolProg 64 :=
.seq NamedBody668_158 NamedBody668_161

def NamedBody668_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_165 : StackLang.HolProg 64 :=
.seq NamedBody668_163 NamedBody668_164

def NamedBody668_166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody668_162 NamedBody668_165

def NamedBody668_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_173 : StackLang.HolProg 64 :=
.seq NamedBody668_171 NamedBody668_172

def NamedBody668_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_176 : StackLang.HolProg 64 :=
.seq NamedBody668_174 NamedBody668_175

def NamedBody668_177 : StackLang.HolProg 64 :=
.seq NamedBody668_173 NamedBody668_176

def NamedBody668_178 : StackLang.HolProg 64 :=
.seq NamedBody668_170 NamedBody668_177

def NamedBody668_179 : StackLang.HolProg 64 :=
.seq NamedBody668_169 NamedBody668_178

def NamedBody668_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody668_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody668_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody668_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody668_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody668_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody668_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody668_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody668_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody668_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody668_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody668_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_202 : StackLang.HolProg 64 :=
.seq NamedBody668_200 NamedBody668_201

def NamedBody668_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody668_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody668_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody668_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody668_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody668_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody668_211 : StackLang.HolProg 64 :=
.seq NamedBody668_209 NamedBody668_210

def NamedBody668_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_214 : StackLang.HolProg 64 :=
.seq NamedBody668_212 NamedBody668_213

def NamedBody668_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_217 : StackLang.HolProg 64 :=
.seq NamedBody668_215 NamedBody668_216

def NamedBody668_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_220 : StackLang.HolProg 64 :=
.seq NamedBody668_218 NamedBody668_219

def NamedBody668_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_223 : StackLang.HolProg 64 :=
.seq NamedBody668_221 NamedBody668_222

def NamedBody668_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_225 : StackLang.HolProg 64 :=
.seq NamedBody668_223 NamedBody668_224

def NamedBody668_226 : StackLang.HolProg 64 :=
.seq NamedBody668_220 NamedBody668_225

def NamedBody668_227 : StackLang.HolProg 64 :=
.seq NamedBody668_217 NamedBody668_226

def NamedBody668_228 : StackLang.HolProg 64 :=
.seq NamedBody668_214 NamedBody668_227

def NamedBody668_229 : StackLang.HolProg 64 :=
.seq NamedBody668_211 NamedBody668_228

def NamedBody668_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2768#64)

def NamedBody668_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_233 : StackLang.HolProg 64 :=
.seq NamedBody668_231 NamedBody668_232

def NamedBody668_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_237 : StackLang.HolProg 64 :=
.seq NamedBody668_235 NamedBody668_236

def NamedBody668_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_237 NamedBody668_238

def NamedBody668_240 : StackLang.HolProg 64 :=
.seq NamedBody668_234 NamedBody668_239

def NamedBody668_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody668_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 7

def NamedBody668_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody668_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody668_250 : StackLang.HolProg 64 :=
.seq NamedBody668_248 NamedBody668_249

def NamedBody668_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody668_252 : StackLang.HolProg 64 :=
.seq NamedBody668_250 NamedBody668_251

def NamedBody668_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_254 : StackLang.HolProg 64 :=
.seq NamedBody668_252 NamedBody668_253

def NamedBody668_255 : StackLang.HolProg 64 :=
.seq NamedBody668_247 NamedBody668_254

def NamedBody668_256 : StackLang.HolProg 64 :=
.seq NamedBody668_246 NamedBody668_255

def NamedBody668_257 : StackLang.HolProg 64 :=
.seq NamedBody668_245 NamedBody668_256

def NamedBody668_258 : StackLang.HolProg 64 :=
.seq NamedBody668_244 NamedBody668_257

def NamedBody668_259 : StackLang.HolProg 64 :=
.seq NamedBody668_243 NamedBody668_258

def NamedBody668_260 : StackLang.HolProg 64 :=
.seq NamedBody668_242 NamedBody668_259

def NamedBody668_261 : StackLang.HolProg 64 :=
.seq NamedBody668_241 NamedBody668_260

def NamedBody668_262 : StackLang.HolProg 64 :=
.seq NamedBody668_240 NamedBody668_261

def NamedBody668_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody668_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody668_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody668_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody668_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_277 : StackLang.HolProg 64 :=
.seq NamedBody668_275 NamedBody668_276

def NamedBody668_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody668_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody668_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_282 : StackLang.HolProg 64 :=
.seq NamedBody668_280 NamedBody668_281

def NamedBody668_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_285 : StackLang.HolProg 64 :=
.seq NamedBody668_283 NamedBody668_284

def NamedBody668_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_288 : StackLang.HolProg 64 :=
.seq NamedBody668_286 NamedBody668_287

def NamedBody668_289 : StackLang.HolProg 64 :=
.seq NamedBody668_285 NamedBody668_288

def NamedBody668_290 : StackLang.HolProg 64 :=
.seq NamedBody668_282 NamedBody668_289

def NamedBody668_291 : StackLang.HolProg 64 :=
.seq NamedBody668_279 NamedBody668_290

def NamedBody668_292 : StackLang.HolProg 64 :=
.seq NamedBody668_278 NamedBody668_291

def NamedBody668_293 : StackLang.HolProg 64 :=
.seq NamedBody668_277 NamedBody668_292

def NamedBody668_294 : StackLang.HolProg 64 :=
.seq NamedBody668_274 NamedBody668_293

def NamedBody668_295 : StackLang.HolProg 64 :=
.seq NamedBody668_273 NamedBody668_294

def NamedBody668_296 : StackLang.HolProg 64 :=
.seq NamedBody668_272 NamedBody668_295

def NamedBody668_297 : StackLang.HolProg 64 :=
.seq NamedBody668_271 NamedBody668_296

def NamedBody668_298 : StackLang.HolProg 64 :=
.seq NamedBody668_270 NamedBody668_297

def NamedBody668_299 : StackLang.HolProg 64 :=
.seq NamedBody668_269 NamedBody668_298

def NamedBody668_300 : StackLang.HolProg 64 :=
.seq NamedBody668_268 NamedBody668_299

def NamedBody668_301 : StackLang.HolProg 64 :=
.seq NamedBody668_267 NamedBody668_300

def NamedBody668_302 : StackLang.HolProg 64 :=
.seq NamedBody668_266 NamedBody668_301

def NamedBody668_303 : StackLang.HolProg 64 :=
.seq NamedBody668_265 NamedBody668_302

def NamedBody668_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_308 : StackLang.HolProg 64 :=
.seq NamedBody668_306 NamedBody668_307

def NamedBody668_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody668_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody668_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_313 : StackLang.HolProg 64 :=
.seq NamedBody668_311 NamedBody668_312

def NamedBody668_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_316 : StackLang.HolProg 64 :=
.seq NamedBody668_314 NamedBody668_315

def NamedBody668_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_319 : StackLang.HolProg 64 :=
.seq NamedBody668_317 NamedBody668_318

def NamedBody668_320 : StackLang.HolProg 64 :=
.seq NamedBody668_316 NamedBody668_319

def NamedBody668_321 : StackLang.HolProg 64 :=
.seq NamedBody668_313 NamedBody668_320

def NamedBody668_322 : StackLang.HolProg 64 :=
.seq NamedBody668_310 NamedBody668_321

def NamedBody668_323 : StackLang.HolProg 64 :=
.seq NamedBody668_309 NamedBody668_322

def NamedBody668_324 : StackLang.HolProg 64 :=
.seq NamedBody668_308 NamedBody668_323

def NamedBody668_325 : StackLang.HolProg 64 :=
.seq NamedBody668_305 NamedBody668_324

def NamedBody668_326 : StackLang.HolProg 64 :=
.seq NamedBody668_304 NamedBody668_325

def NamedBody668_327 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody668_328 : StackLang.HolProg 64 :=
.seq NamedBody668_326 NamedBody668_327

def NamedBody668_329 : StackLang.HolProg 64 :=
.call (some (NamedBody668_303, 1, 668, 6)) (Sum.inl 661) (some (NamedBody668_328, 668, 7))

def NamedBody668_330 : StackLang.HolProg 64 :=
.seq NamedBody668_264 NamedBody668_329

def NamedBody668_331 : StackLang.HolProg 64 :=
.seq NamedBody668_263 NamedBody668_330

def NamedBody668_332 : StackLang.HolProg 64 :=
.seq NamedBody668_262 NamedBody668_331

def NamedBody668_333 : StackLang.HolProg 64 :=
.seq NamedBody668_233 NamedBody668_332

def NamedBody668_334 : StackLang.HolProg 64 :=
.seq NamedBody668_230 NamedBody668_333

def NamedBody668_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody668_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2769#64)

def NamedBody668_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_340 : StackLang.HolProg 64 :=
.seq NamedBody668_338 NamedBody668_339

def NamedBody668_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_344 : StackLang.HolProg 64 :=
.seq NamedBody668_342 NamedBody668_343

def NamedBody668_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_346 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_344 NamedBody668_345

def NamedBody668_347 : StackLang.HolProg 64 :=
.seq NamedBody668_341 NamedBody668_346

def NamedBody668_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody668_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 9

def NamedBody668_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody668_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody668_357 : StackLang.HolProg 64 :=
.seq NamedBody668_355 NamedBody668_356

def NamedBody668_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody668_359 : StackLang.HolProg 64 :=
.seq NamedBody668_357 NamedBody668_358

def NamedBody668_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_361 : StackLang.HolProg 64 :=
.seq NamedBody668_359 NamedBody668_360

def NamedBody668_362 : StackLang.HolProg 64 :=
.seq NamedBody668_354 NamedBody668_361

def NamedBody668_363 : StackLang.HolProg 64 :=
.seq NamedBody668_353 NamedBody668_362

def NamedBody668_364 : StackLang.HolProg 64 :=
.seq NamedBody668_352 NamedBody668_363

def NamedBody668_365 : StackLang.HolProg 64 :=
.seq NamedBody668_351 NamedBody668_364

def NamedBody668_366 : StackLang.HolProg 64 :=
.seq NamedBody668_350 NamedBody668_365

def NamedBody668_367 : StackLang.HolProg 64 :=
.seq NamedBody668_349 NamedBody668_366

def NamedBody668_368 : StackLang.HolProg 64 :=
.seq NamedBody668_348 NamedBody668_367

def NamedBody668_369 : StackLang.HolProg 64 :=
.seq NamedBody668_347 NamedBody668_368

def NamedBody668_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody668_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_382 : StackLang.HolProg 64 :=
.seq NamedBody668_380 NamedBody668_381

def NamedBody668_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_386 : StackLang.HolProg 64 :=
.seq NamedBody668_384 NamedBody668_385

def NamedBody668_387 : StackLang.HolProg 64 :=
.seq NamedBody668_383 NamedBody668_386

def NamedBody668_388 : StackLang.HolProg 64 :=
.seq NamedBody668_382 NamedBody668_387

def NamedBody668_389 : StackLang.HolProg 64 :=
.seq NamedBody668_379 NamedBody668_388

def NamedBody668_390 : StackLang.HolProg 64 :=
.seq NamedBody668_378 NamedBody668_389

def NamedBody668_391 : StackLang.HolProg 64 :=
.seq NamedBody668_377 NamedBody668_390

def NamedBody668_392 : StackLang.HolProg 64 :=
.seq NamedBody668_376 NamedBody668_391

def NamedBody668_393 : StackLang.HolProg 64 :=
.seq NamedBody668_375 NamedBody668_392

def NamedBody668_394 : StackLang.HolProg 64 :=
.seq NamedBody668_374 NamedBody668_393

def NamedBody668_395 : StackLang.HolProg 64 :=
.seq NamedBody668_373 NamedBody668_394

def NamedBody668_396 : StackLang.HolProg 64 :=
.seq NamedBody668_372 NamedBody668_395

def NamedBody668_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_402 : StackLang.HolProg 64 :=
.seq NamedBody668_400 NamedBody668_401

def NamedBody668_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody668_406 : StackLang.HolProg 64 :=
.seq NamedBody668_404 NamedBody668_405

def NamedBody668_407 : StackLang.HolProg 64 :=
.seq NamedBody668_403 NamedBody668_406

def NamedBody668_408 : StackLang.HolProg 64 :=
.seq NamedBody668_402 NamedBody668_407

def NamedBody668_409 : StackLang.HolProg 64 :=
.seq NamedBody668_399 NamedBody668_408

def NamedBody668_410 : StackLang.HolProg 64 :=
.seq NamedBody668_398 NamedBody668_409

def NamedBody668_411 : StackLang.HolProg 64 :=
.seq NamedBody668_397 NamedBody668_410

def NamedBody668_412 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody668_413 : StackLang.HolProg 64 :=
.seq NamedBody668_411 NamedBody668_412

def NamedBody668_414 : StackLang.HolProg 64 :=
.call (some (NamedBody668_396, 1, 668, 8)) (Sum.inl 658) (some (NamedBody668_413, 668, 9))

def NamedBody668_415 : StackLang.HolProg 64 :=
.seq NamedBody668_371 NamedBody668_414

def NamedBody668_416 : StackLang.HolProg 64 :=
.seq NamedBody668_370 NamedBody668_415

def NamedBody668_417 : StackLang.HolProg 64 :=
.seq NamedBody668_369 NamedBody668_416

def NamedBody668_418 : StackLang.HolProg 64 :=
.seq NamedBody668_340 NamedBody668_417

def NamedBody668_419 : StackLang.HolProg 64 :=
.seq NamedBody668_337 NamedBody668_418

def NamedBody668_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody668_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_428 : StackLang.HolProg 64 :=
.seq NamedBody668_426 NamedBody668_427

def NamedBody668_429 : StackLang.HolProg 64 :=
.seq NamedBody668_425 NamedBody668_428

def NamedBody668_430 : StackLang.HolProg 64 :=
.seq NamedBody668_424 NamedBody668_429

def NamedBody668_431 : StackLang.HolProg 64 :=
.seq NamedBody668_423 NamedBody668_430

def NamedBody668_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody668_433 : StackLang.HolProg 64 :=
.seq NamedBody668_431 NamedBody668_432

def NamedBody668_434 : StackLang.HolProg 64 :=
.seq NamedBody668_422 NamedBody668_433

def NamedBody668_435 : StackLang.HolProg 64 :=
.seq NamedBody668_421 NamedBody668_434

def NamedBody668_436 : StackLang.HolProg 64 :=
.seq NamedBody668_420 NamedBody668_435

def NamedBody668_437 : StackLang.HolProg 64 :=
.seq NamedBody668_419 NamedBody668_436

def NamedBody668_438 : StackLang.HolProg 64 :=
.seq NamedBody668_336 NamedBody668_437

def NamedBody668_439 : StackLang.HolProg 64 :=
.seq NamedBody668_335 NamedBody668_438

def NamedBody668_440 : StackLang.HolProg 64 :=
.seq NamedBody668_334 NamedBody668_439

def NamedBody668_441 : StackLang.HolProg 64 :=
.seq NamedBody668_229 NamedBody668_440

def NamedBody668_442 : StackLang.HolProg 64 :=
.seq NamedBody668_208 NamedBody668_441

def NamedBody668_443 : StackLang.HolProg 64 :=
.seq NamedBody668_207 NamedBody668_442

def NamedBody668_444 : StackLang.HolProg 64 :=
.seq NamedBody668_206 NamedBody668_443

def NamedBody668_445 : StackLang.HolProg 64 :=
.seq NamedBody668_205 NamedBody668_444

def NamedBody668_446 : StackLang.HolProg 64 :=
.seq NamedBody668_204 NamedBody668_445

def NamedBody668_447 : StackLang.HolProg 64 :=
.seq NamedBody668_203 NamedBody668_446

def NamedBody668_448 : StackLang.HolProg 64 :=
.seq NamedBody668_202 NamedBody668_447

def NamedBody668_449 : StackLang.HolProg 64 :=
.seq NamedBody668_199 NamedBody668_448

def NamedBody668_450 : StackLang.HolProg 64 :=
.seq NamedBody668_198 NamedBody668_449

def NamedBody668_451 : StackLang.HolProg 64 :=
.seq NamedBody668_197 NamedBody668_450

def NamedBody668_452 : StackLang.HolProg 64 :=
.seq NamedBody668_196 NamedBody668_451

def NamedBody668_453 : StackLang.HolProg 64 :=
.seq NamedBody668_195 NamedBody668_452

def NamedBody668_454 : StackLang.HolProg 64 :=
.seq NamedBody668_194 NamedBody668_453

def NamedBody668_455 : StackLang.HolProg 64 :=
.seq NamedBody668_193 NamedBody668_454

def NamedBody668_456 : StackLang.HolProg 64 :=
.seq NamedBody668_192 NamedBody668_455

def NamedBody668_457 : StackLang.HolProg 64 :=
.seq NamedBody668_191 NamedBody668_456

def NamedBody668_458 : StackLang.HolProg 64 :=
.seq NamedBody668_190 NamedBody668_457

def NamedBody668_459 : StackLang.HolProg 64 :=
.seq NamedBody668_189 NamedBody668_458

def NamedBody668_460 : StackLang.HolProg 64 :=
.seq NamedBody668_188 NamedBody668_459

def NamedBody668_461 : StackLang.HolProg 64 :=
.seq NamedBody668_187 NamedBody668_460

def NamedBody668_462 : StackLang.HolProg 64 :=
.seq NamedBody668_186 NamedBody668_461

def NamedBody668_463 : StackLang.HolProg 64 :=
.seq NamedBody668_185 NamedBody668_462

def NamedBody668_464 : StackLang.HolProg 64 :=
.seq NamedBody668_184 NamedBody668_463

def NamedBody668_465 : StackLang.HolProg 64 :=
.seq NamedBody668_183 NamedBody668_464

def NamedBody668_466 : StackLang.HolProg 64 :=
.seq NamedBody668_182 NamedBody668_465

def NamedBody668_467 : StackLang.HolProg 64 :=
.seq NamedBody668_181 NamedBody668_466

def NamedBody668_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody668_470 : StackLang.HolProg 64 :=
.seq NamedBody668_468 NamedBody668_469

def NamedBody668_471 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody668_467 NamedBody668_470

def NamedBody668_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody668_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody668_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_481 : StackLang.HolProg 64 :=
.seq NamedBody668_479 NamedBody668_480

def NamedBody668_482 : StackLang.HolProg 64 :=
.seq NamedBody668_478 NamedBody668_481

def NamedBody668_483 : StackLang.HolProg 64 :=
.seq NamedBody668_477 NamedBody668_482

def NamedBody668_484 : StackLang.HolProg 64 :=
.seq NamedBody668_476 NamedBody668_483

def NamedBody668_485 : StackLang.HolProg 64 :=
.seq NamedBody668_475 NamedBody668_484

def NamedBody668_486 : StackLang.HolProg 64 :=
.seq NamedBody668_474 NamedBody668_485

def NamedBody668_487 : StackLang.HolProg 64 :=
.seq NamedBody668_473 NamedBody668_486

def NamedBody668_488 : StackLang.HolProg 64 :=
.seq NamedBody668_472 NamedBody668_487

def NamedBody668_489 : StackLang.HolProg 64 :=
.seq NamedBody668_471 NamedBody668_488

def NamedBody668_490 : StackLang.HolProg 64 :=
.seq NamedBody668_180 NamedBody668_489

def NamedBody668_491 : StackLang.HolProg 64 :=
.loop NamedBody668_490

def NamedBody668_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody668_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody668_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody668_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody668_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody668_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody668_501 : StackLang.HolProg 64 :=
.seq NamedBody668_499 NamedBody668_500

def NamedBody668_502 : StackLang.HolProg 64 :=
.seq NamedBody668_498 NamedBody668_501

def NamedBody668_503 : StackLang.HolProg 64 :=
.seq NamedBody668_497 NamedBody668_502

def NamedBody668_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody668_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody668_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody668_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody668_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody668_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody668_515 : StackLang.HolProg 64 :=
.seq NamedBody668_513 NamedBody668_514

def NamedBody668_516 : StackLang.HolProg 64 :=
.seq NamedBody668_512 NamedBody668_515

def NamedBody668_517 : StackLang.HolProg 64 :=
.seq NamedBody668_511 NamedBody668_516

def NamedBody668_518 : StackLang.HolProg 64 :=
.seq NamedBody668_510 NamedBody668_517

def NamedBody668_519 : StackLang.HolProg 64 :=
.seq NamedBody668_509 NamedBody668_518

def NamedBody668_520 : StackLang.HolProg 64 :=
.seq NamedBody668_508 NamedBody668_519

def NamedBody668_521 : StackLang.HolProg 64 :=
.seq NamedBody668_507 NamedBody668_520

def NamedBody668_522 : StackLang.HolProg 64 :=
.seq NamedBody668_506 NamedBody668_521

def NamedBody668_523 : StackLang.HolProg 64 :=
.seq NamedBody668_505 NamedBody668_522

def NamedBody668_524 : StackLang.HolProg 64 :=
.seq NamedBody668_504 NamedBody668_523

def NamedBody668_525 : StackLang.HolProg 64 :=
.seq NamedBody668_503 NamedBody668_524

def NamedBody668_526 : StackLang.HolProg 64 :=
.seq NamedBody668_496 NamedBody668_525

def NamedBody668_527 : StackLang.HolProg 64 :=
.seq NamedBody668_495 NamedBody668_526

def NamedBody668_528 : StackLang.HolProg 64 :=
.seq NamedBody668_494 NamedBody668_527

def NamedBody668_529 : StackLang.HolProg 64 :=
.seq NamedBody668_493 NamedBody668_528

def NamedBody668_530 : StackLang.HolProg 64 :=
.seq NamedBody668_492 NamedBody668_529

def NamedBody668_531 : StackLang.HolProg 64 :=
.seq NamedBody668_491 NamedBody668_530

def NamedBody668_532 : StackLang.HolProg 64 :=
.seq NamedBody668_179 NamedBody668_531

def NamedBody668_533 : StackLang.HolProg 64 :=
.seq NamedBody668_168 NamedBody668_532

def NamedBody668_534 : StackLang.HolProg 64 :=
.seq NamedBody668_167 NamedBody668_533

def NamedBody668_535 : StackLang.HolProg 64 :=
.seq NamedBody668_166 NamedBody668_534

def NamedBody668_536 : StackLang.HolProg 64 :=
.seq NamedBody668_157 NamedBody668_535

def NamedBody668_537 : StackLang.HolProg 64 :=
.seq NamedBody668_156 NamedBody668_536

def NamedBody668_538 : StackLang.HolProg 64 :=
.seq NamedBody668_155 NamedBody668_537

def NamedBody668_539 : StackLang.HolProg 64 :=
.seq NamedBody668_154 NamedBody668_538

def NamedBody668_540 : StackLang.HolProg 64 :=
.seq NamedBody668_153 NamedBody668_539

def NamedBody668_541 : StackLang.HolProg 64 :=
.seq NamedBody668_142 NamedBody668_540

def NamedBody668_542 : StackLang.HolProg 64 :=
.seq NamedBody668_141 NamedBody668_541

def NamedBody668_543 : StackLang.HolProg 64 :=
.seq NamedBody668_140 NamedBody668_542

def NamedBody668_544 : StackLang.HolProg 64 :=
.seq NamedBody668_139 NamedBody668_543

def NamedBody668_545 : StackLang.HolProg 64 :=
.seq NamedBody668_138 NamedBody668_544

def NamedBody668_546 : StackLang.HolProg 64 :=
.seq NamedBody668_137 NamedBody668_545

def NamedBody668_547 : StackLang.HolProg 64 :=
.seq NamedBody668_136 NamedBody668_546

def NamedBody668_548 : StackLang.HolProg 64 :=
.seq NamedBody668_135 NamedBody668_547

def NamedBody668_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody668_551 : StackLang.HolProg 64 :=
.seq NamedBody668_549 NamedBody668_550

def NamedBody668_552 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody668_548 NamedBody668_551

def NamedBody668_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody668_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody668_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_558 : StackLang.HolProg 64 :=
.seq NamedBody668_556 NamedBody668_557

def NamedBody668_559 : StackLang.HolProg 64 :=
.seq NamedBody668_555 NamedBody668_558

def NamedBody668_560 : StackLang.HolProg 64 :=
.seq NamedBody668_554 NamedBody668_559

def NamedBody668_561 : StackLang.HolProg 64 :=
.seq NamedBody668_553 NamedBody668_560

def NamedBody668_562 : StackLang.HolProg 64 :=
.seq NamedBody668_552 NamedBody668_561

def NamedBody668_563 : StackLang.HolProg 64 :=
.seq NamedBody668_134 NamedBody668_562

def NamedBody668_564 : StackLang.HolProg 64 :=
.seq NamedBody668_133 NamedBody668_563

def NamedBody668_565 : StackLang.HolProg 64 :=
.loop NamedBody668_564

def NamedBody668_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2770#64)

def NamedBody668_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_571 : StackLang.HolProg 64 :=
.seq NamedBody668_569 NamedBody668_570

def NamedBody668_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_575 : StackLang.HolProg 64 :=
.seq NamedBody668_573 NamedBody668_574

def NamedBody668_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_577 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_575 NamedBody668_576

def NamedBody668_578 : StackLang.HolProg 64 :=
.seq NamedBody668_572 NamedBody668_577

def NamedBody668_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody668_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 11

def NamedBody668_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody668_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody668_588 : StackLang.HolProg 64 :=
.seq NamedBody668_586 NamedBody668_587

def NamedBody668_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody668_590 : StackLang.HolProg 64 :=
.seq NamedBody668_588 NamedBody668_589

def NamedBody668_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_592 : StackLang.HolProg 64 :=
.seq NamedBody668_590 NamedBody668_591

def NamedBody668_593 : StackLang.HolProg 64 :=
.seq NamedBody668_585 NamedBody668_592

def NamedBody668_594 : StackLang.HolProg 64 :=
.seq NamedBody668_584 NamedBody668_593

def NamedBody668_595 : StackLang.HolProg 64 :=
.seq NamedBody668_583 NamedBody668_594

def NamedBody668_596 : StackLang.HolProg 64 :=
.seq NamedBody668_582 NamedBody668_595

def NamedBody668_597 : StackLang.HolProg 64 :=
.seq NamedBody668_581 NamedBody668_596

def NamedBody668_598 : StackLang.HolProg 64 :=
.seq NamedBody668_580 NamedBody668_597

def NamedBody668_599 : StackLang.HolProg 64 :=
.seq NamedBody668_579 NamedBody668_598

def NamedBody668_600 : StackLang.HolProg 64 :=
.seq NamedBody668_578 NamedBody668_599

def NamedBody668_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_609 : StackLang.HolProg 64 :=
.seq NamedBody668_607 NamedBody668_608

def NamedBody668_610 : StackLang.HolProg 64 :=
.seq NamedBody668_606 NamedBody668_609

def NamedBody668_611 : StackLang.HolProg 64 :=
.seq NamedBody668_605 NamedBody668_610

def NamedBody668_612 : StackLang.HolProg 64 :=
.seq NamedBody668_604 NamedBody668_611

def NamedBody668_613 : StackLang.HolProg 64 :=
.seq NamedBody668_603 NamedBody668_612

def NamedBody668_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody668_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody668_616 : StackLang.HolProg 64 :=
.seq NamedBody668_614 NamedBody668_615

def NamedBody668_617 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody668_618 : StackLang.HolProg 64 :=
.seq NamedBody668_616 NamedBody668_617

def NamedBody668_619 : StackLang.HolProg 64 :=
.call (some (NamedBody668_613, 1, 668, 10)) (Sum.inl 667) (some (NamedBody668_618, 668, 11))

def NamedBody668_620 : StackLang.HolProg 64 :=
.seq NamedBody668_602 NamedBody668_619

def NamedBody668_621 : StackLang.HolProg 64 :=
.seq NamedBody668_601 NamedBody668_620

def NamedBody668_622 : StackLang.HolProg 64 :=
.seq NamedBody668_600 NamedBody668_621

def NamedBody668_623 : StackLang.HolProg 64 :=
.seq NamedBody668_571 NamedBody668_622

def NamedBody668_624 : StackLang.HolProg 64 :=
.seq NamedBody668_568 NamedBody668_623

def NamedBody668_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody668_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 384#64)

def NamedBody668_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2771#64)

def NamedBody668_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_632 : StackLang.HolProg 64 :=
.seq NamedBody668_630 NamedBody668_631

def NamedBody668_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_636 : StackLang.HolProg 64 :=
.seq NamedBody668_634 NamedBody668_635

def NamedBody668_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_638 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_636 NamedBody668_637

def NamedBody668_639 : StackLang.HolProg 64 :=
.seq NamedBody668_633 NamedBody668_638

def NamedBody668_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody668_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 13

def NamedBody668_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody668_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody668_649 : StackLang.HolProg 64 :=
.seq NamedBody668_647 NamedBody668_648

def NamedBody668_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody668_651 : StackLang.HolProg 64 :=
.seq NamedBody668_649 NamedBody668_650

def NamedBody668_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_653 : StackLang.HolProg 64 :=
.seq NamedBody668_651 NamedBody668_652

def NamedBody668_654 : StackLang.HolProg 64 :=
.seq NamedBody668_646 NamedBody668_653

def NamedBody668_655 : StackLang.HolProg 64 :=
.seq NamedBody668_645 NamedBody668_654

def NamedBody668_656 : StackLang.HolProg 64 :=
.seq NamedBody668_644 NamedBody668_655

def NamedBody668_657 : StackLang.HolProg 64 :=
.seq NamedBody668_643 NamedBody668_656

def NamedBody668_658 : StackLang.HolProg 64 :=
.seq NamedBody668_642 NamedBody668_657

def NamedBody668_659 : StackLang.HolProg 64 :=
.seq NamedBody668_641 NamedBody668_658

def NamedBody668_660 : StackLang.HolProg 64 :=
.seq NamedBody668_640 NamedBody668_659

def NamedBody668_661 : StackLang.HolProg 64 :=
.seq NamedBody668_639 NamedBody668_660

def NamedBody668_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody668_669 : StackLang.HolProg 64 :=
.seq NamedBody668_667 NamedBody668_668

def NamedBody668_670 : StackLang.HolProg 64 :=
.seq NamedBody668_666 NamedBody668_669

def NamedBody668_671 : StackLang.HolProg 64 :=
.seq NamedBody668_665 NamedBody668_670

def NamedBody668_672 : StackLang.HolProg 64 :=
.seq NamedBody668_664 NamedBody668_671

def NamedBody668_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody668_674 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody668_675 : StackLang.HolProg 64 :=
.seq NamedBody668_673 NamedBody668_674

def NamedBody668_676 : StackLang.HolProg 64 :=
.call (some (NamedBody668_672, 1, 668, 12)) (Sum.inl 77) (some (NamedBody668_675, 668, 13))

def NamedBody668_677 : StackLang.HolProg 64 :=
.seq NamedBody668_663 NamedBody668_676

def NamedBody668_678 : StackLang.HolProg 64 :=
.seq NamedBody668_662 NamedBody668_677

def NamedBody668_679 : StackLang.HolProg 64 :=
.seq NamedBody668_661 NamedBody668_678

def NamedBody668_680 : StackLang.HolProg 64 :=
.seq NamedBody668_632 NamedBody668_679

def NamedBody668_681 : StackLang.HolProg 64 :=
.seq NamedBody668_629 NamedBody668_680

def NamedBody668_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody668_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2772#64)

def NamedBody668_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_687 : StackLang.HolProg 64 :=
.seq NamedBody668_685 NamedBody668_686

def NamedBody668_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody668_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody668_691 : StackLang.HolProg 64 :=
.seq NamedBody668_689 NamedBody668_690

def NamedBody668_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_693 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody668_691 NamedBody668_692

def NamedBody668_694 : StackLang.HolProg 64 :=
.seq NamedBody668_688 NamedBody668_693

def NamedBody668_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody668_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody668_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 15

def NamedBody668_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody668_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody668_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody668_704 : StackLang.HolProg 64 :=
.seq NamedBody668_702 NamedBody668_703

def NamedBody668_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody668_706 : StackLang.HolProg 64 :=
.seq NamedBody668_704 NamedBody668_705

def NamedBody668_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_708 : StackLang.HolProg 64 :=
.seq NamedBody668_706 NamedBody668_707

def NamedBody668_709 : StackLang.HolProg 64 :=
.seq NamedBody668_701 NamedBody668_708

def NamedBody668_710 : StackLang.HolProg 64 :=
.seq NamedBody668_700 NamedBody668_709

def NamedBody668_711 : StackLang.HolProg 64 :=
.seq NamedBody668_699 NamedBody668_710

def NamedBody668_712 : StackLang.HolProg 64 :=
.seq NamedBody668_698 NamedBody668_711

def NamedBody668_713 : StackLang.HolProg 64 :=
.seq NamedBody668_697 NamedBody668_712

def NamedBody668_714 : StackLang.HolProg 64 :=
.seq NamedBody668_696 NamedBody668_713

def NamedBody668_715 : StackLang.HolProg 64 :=
.seq NamedBody668_695 NamedBody668_714

def NamedBody668_716 : StackLang.HolProg 64 :=
.seq NamedBody668_694 NamedBody668_715

def NamedBody668_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody668_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody668_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody668_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody668_724 : StackLang.HolProg 64 :=
.seq NamedBody668_722 NamedBody668_723

def NamedBody668_725 : StackLang.HolProg 64 :=
.seq NamedBody668_721 NamedBody668_724

def NamedBody668_726 : StackLang.HolProg 64 :=
.seq NamedBody668_720 NamedBody668_725

def NamedBody668_727 : StackLang.HolProg 64 :=
.seq NamedBody668_719 NamedBody668_726

def NamedBody668_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody668_729 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody668_730 : StackLang.HolProg 64 :=
.seq NamedBody668_728 NamedBody668_729

def NamedBody668_731 : StackLang.HolProg 64 :=
.call (some (NamedBody668_727, 1, 668, 14)) (Sum.inl 70) (some (NamedBody668_730, 668, 15))

def NamedBody668_732 : StackLang.HolProg 64 :=
.seq NamedBody668_718 NamedBody668_731

def NamedBody668_733 : StackLang.HolProg 64 :=
.seq NamedBody668_717 NamedBody668_732

def NamedBody668_734 : StackLang.HolProg 64 :=
.seq NamedBody668_716 NamedBody668_733

def NamedBody668_735 : StackLang.HolProg 64 :=
.seq NamedBody668_687 NamedBody668_734

def NamedBody668_736 : StackLang.HolProg 64 :=
.seq NamedBody668_684 NamedBody668_735

def NamedBody668_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody668_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody668_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody668_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody668_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody668_742 : StackLang.HolProg 64 :=
.seq NamedBody668_740 NamedBody668_741

def NamedBody668_743 : StackLang.HolProg 64 :=
.seq NamedBody668_739 NamedBody668_742

def NamedBody668_744 : StackLang.HolProg 64 :=
.seq NamedBody668_738 NamedBody668_743

def NamedBody668_745 : StackLang.HolProg 64 :=
.seq NamedBody668_737 NamedBody668_744

def NamedBody668_746 : StackLang.HolProg 64 :=
.seq NamedBody668_736 NamedBody668_745

def NamedBody668_747 : StackLang.HolProg 64 :=
.seq NamedBody668_683 NamedBody668_746

def NamedBody668_748 : StackLang.HolProg 64 :=
.seq NamedBody668_682 NamedBody668_747

def NamedBody668_749 : StackLang.HolProg 64 :=
.seq NamedBody668_681 NamedBody668_748

def NamedBody668_750 : StackLang.HolProg 64 :=
.seq NamedBody668_628 NamedBody668_749

def NamedBody668_751 : StackLang.HolProg 64 :=
.seq NamedBody668_627 NamedBody668_750

def NamedBody668_752 : StackLang.HolProg 64 :=
.seq NamedBody668_626 NamedBody668_751

def NamedBody668_753 : StackLang.HolProg 64 :=
.seq NamedBody668_625 NamedBody668_752

def NamedBody668_754 : StackLang.HolProg 64 :=
.seq NamedBody668_624 NamedBody668_753

def NamedBody668_755 : StackLang.HolProg 64 :=
.seq NamedBody668_567 NamedBody668_754

def NamedBody668_756 : StackLang.HolProg 64 :=
.seq NamedBody668_566 NamedBody668_755

def NamedBody668_757 : StackLang.HolProg 64 :=
.seq NamedBody668_565 NamedBody668_756

def NamedBody668_758 : StackLang.HolProg 64 :=
.seq NamedBody668_132 NamedBody668_757

def NamedBody668_759 : StackLang.HolProg 64 :=
.seq NamedBody668_131 NamedBody668_758

def NamedBody668_760 : StackLang.HolProg 64 :=
.seq NamedBody668_130 NamedBody668_759

def NamedBody668_761 : StackLang.HolProg 64 :=
.seq NamedBody668_129 NamedBody668_760

def NamedBody668_762 : StackLang.HolProg 64 :=
.seq NamedBody668_128 NamedBody668_761

def NamedBody668_763 : StackLang.HolProg 64 :=
.seq NamedBody668_69 NamedBody668_762

def NamedBody668_764 : StackLang.HolProg 64 :=
.seq NamedBody668_68 NamedBody668_763

def NamedBody668_765 : StackLang.HolProg 64 :=
.seq NamedBody668_67 NamedBody668_764

def NamedBody668_766 : StackLang.HolProg 64 :=
.seq NamedBody668_66 NamedBody668_765

def NamedBody668_767 : StackLang.HolProg 64 :=
.seq NamedBody668_13 NamedBody668_766

def NamedBody668_768 : StackLang.HolProg 64 :=
.seq NamedBody668_6 NamedBody668_767

def Named668 : Nat × StackLang.HolProg 64 := (668, NamedBody668_768)
theorem Named668_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed668 = Named668 := by
  kernel_rfl
#print axioms Named668_eq
end InitECandidate.Proofs.BackendStages
