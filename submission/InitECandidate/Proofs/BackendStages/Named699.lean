import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed699
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody699_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody699_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_3 : StackLang.HolProg 64 :=
.seq NamedBody699_1 NamedBody699_2

def NamedBody699_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_3 NamedBody699_4

def NamedBody699_6 : StackLang.HolProg 64 :=
.seq NamedBody699_0 NamedBody699_5

def NamedBody699_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody699_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody699_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_10 : StackLang.HolProg 64 :=
.seq NamedBody699_8 NamedBody699_9

def NamedBody699_11 : StackLang.HolProg 64 :=
.seq NamedBody699_7 NamedBody699_10

def NamedBody699_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3086#64)

def NamedBody699_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_15 : StackLang.HolProg 64 :=
.seq NamedBody699_13 NamedBody699_14

def NamedBody699_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_19 : StackLang.HolProg 64 :=
.seq NamedBody699_17 NamedBody699_18

def NamedBody699_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_19 NamedBody699_20

def NamedBody699_22 : StackLang.HolProg 64 :=
.seq NamedBody699_16 NamedBody699_21

def NamedBody699_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 3

def NamedBody699_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_32 : StackLang.HolProg 64 :=
.seq NamedBody699_30 NamedBody699_31

def NamedBody699_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_34 : StackLang.HolProg 64 :=
.seq NamedBody699_32 NamedBody699_33

def NamedBody699_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_36 : StackLang.HolProg 64 :=
.seq NamedBody699_34 NamedBody699_35

def NamedBody699_37 : StackLang.HolProg 64 :=
.seq NamedBody699_29 NamedBody699_36

def NamedBody699_38 : StackLang.HolProg 64 :=
.seq NamedBody699_28 NamedBody699_37

def NamedBody699_39 : StackLang.HolProg 64 :=
.seq NamedBody699_27 NamedBody699_38

def NamedBody699_40 : StackLang.HolProg 64 :=
.seq NamedBody699_26 NamedBody699_39

def NamedBody699_41 : StackLang.HolProg 64 :=
.seq NamedBody699_25 NamedBody699_40

def NamedBody699_42 : StackLang.HolProg 64 :=
.seq NamedBody699_24 NamedBody699_41

def NamedBody699_43 : StackLang.HolProg 64 :=
.seq NamedBody699_23 NamedBody699_42

def NamedBody699_44 : StackLang.HolProg 64 :=
.seq NamedBody699_22 NamedBody699_43

def NamedBody699_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody699_52 : StackLang.HolProg 64 :=
.seq NamedBody699_50 NamedBody699_51

def NamedBody699_53 : StackLang.HolProg 64 :=
.seq NamedBody699_49 NamedBody699_52

def NamedBody699_54 : StackLang.HolProg 64 :=
.seq NamedBody699_48 NamedBody699_53

def NamedBody699_55 : StackLang.HolProg 64 :=
.seq NamedBody699_47 NamedBody699_54

def NamedBody699_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_58 : StackLang.HolProg 64 :=
.seq NamedBody699_56 NamedBody699_57

def NamedBody699_59 : StackLang.HolProg 64 :=
.call (some (NamedBody699_55, 1, 699, 2)) (Sum.inl 69) (some (NamedBody699_58, 699, 3))

def NamedBody699_60 : StackLang.HolProg 64 :=
.seq NamedBody699_46 NamedBody699_59

def NamedBody699_61 : StackLang.HolProg 64 :=
.seq NamedBody699_45 NamedBody699_60

def NamedBody699_62 : StackLang.HolProg 64 :=
.seq NamedBody699_44 NamedBody699_61

def NamedBody699_63 : StackLang.HolProg 64 :=
.seq NamedBody699_15 NamedBody699_62

def NamedBody699_64 : StackLang.HolProg 64 :=
.seq NamedBody699_12 NamedBody699_63

def NamedBody699_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody699_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody699_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3087#64)

def NamedBody699_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_71 : StackLang.HolProg 64 :=
.seq NamedBody699_69 NamedBody699_70

def NamedBody699_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_75 : StackLang.HolProg 64 :=
.seq NamedBody699_73 NamedBody699_74

def NamedBody699_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_75 NamedBody699_76

def NamedBody699_78 : StackLang.HolProg 64 :=
.seq NamedBody699_72 NamedBody699_77

def NamedBody699_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 5

def NamedBody699_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_88 : StackLang.HolProg 64 :=
.seq NamedBody699_86 NamedBody699_87

def NamedBody699_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_90 : StackLang.HolProg 64 :=
.seq NamedBody699_88 NamedBody699_89

def NamedBody699_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_92 : StackLang.HolProg 64 :=
.seq NamedBody699_90 NamedBody699_91

def NamedBody699_93 : StackLang.HolProg 64 :=
.seq NamedBody699_85 NamedBody699_92

def NamedBody699_94 : StackLang.HolProg 64 :=
.seq NamedBody699_84 NamedBody699_93

def NamedBody699_95 : StackLang.HolProg 64 :=
.seq NamedBody699_83 NamedBody699_94

def NamedBody699_96 : StackLang.HolProg 64 :=
.seq NamedBody699_82 NamedBody699_95

def NamedBody699_97 : StackLang.HolProg 64 :=
.seq NamedBody699_81 NamedBody699_96

def NamedBody699_98 : StackLang.HolProg 64 :=
.seq NamedBody699_80 NamedBody699_97

def NamedBody699_99 : StackLang.HolProg 64 :=
.seq NamedBody699_79 NamedBody699_98

def NamedBody699_100 : StackLang.HolProg 64 :=
.seq NamedBody699_78 NamedBody699_99

def NamedBody699_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody699_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_109 : StackLang.HolProg 64 :=
.seq NamedBody699_107 NamedBody699_108

def NamedBody699_110 : StackLang.HolProg 64 :=
.seq NamedBody699_106 NamedBody699_109

def NamedBody699_111 : StackLang.HolProg 64 :=
.seq NamedBody699_105 NamedBody699_110

def NamedBody699_112 : StackLang.HolProg 64 :=
.seq NamedBody699_104 NamedBody699_111

def NamedBody699_113 : StackLang.HolProg 64 :=
.seq NamedBody699_103 NamedBody699_112

def NamedBody699_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_116 : StackLang.HolProg 64 :=
.seq NamedBody699_114 NamedBody699_115

def NamedBody699_117 : StackLang.HolProg 64 :=
.call (some (NamedBody699_113, 1, 699, 4)) (Sum.inl 68) (some (NamedBody699_116, 699, 5))

def NamedBody699_118 : StackLang.HolProg 64 :=
.seq NamedBody699_102 NamedBody699_117

def NamedBody699_119 : StackLang.HolProg 64 :=
.seq NamedBody699_101 NamedBody699_118

def NamedBody699_120 : StackLang.HolProg 64 :=
.seq NamedBody699_100 NamedBody699_119

def NamedBody699_121 : StackLang.HolProg 64 :=
.seq NamedBody699_71 NamedBody699_120

def NamedBody699_122 : StackLang.HolProg 64 :=
.seq NamedBody699_68 NamedBody699_121

def NamedBody699_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody699_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_127 : StackLang.HolProg 64 :=
.seq NamedBody699_125 NamedBody699_126

def NamedBody699_128 : StackLang.HolProg 64 :=
.seq NamedBody699_124 NamedBody699_127

def NamedBody699_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3088#64)

def NamedBody699_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_132 : StackLang.HolProg 64 :=
.seq NamedBody699_130 NamedBody699_131

def NamedBody699_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_136 : StackLang.HolProg 64 :=
.seq NamedBody699_134 NamedBody699_135

def NamedBody699_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_136 NamedBody699_137

def NamedBody699_139 : StackLang.HolProg 64 :=
.seq NamedBody699_133 NamedBody699_138

def NamedBody699_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 7

def NamedBody699_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_149 : StackLang.HolProg 64 :=
.seq NamedBody699_147 NamedBody699_148

def NamedBody699_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_151 : StackLang.HolProg 64 :=
.seq NamedBody699_149 NamedBody699_150

def NamedBody699_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_153 : StackLang.HolProg 64 :=
.seq NamedBody699_151 NamedBody699_152

def NamedBody699_154 : StackLang.HolProg 64 :=
.seq NamedBody699_146 NamedBody699_153

def NamedBody699_155 : StackLang.HolProg 64 :=
.seq NamedBody699_145 NamedBody699_154

def NamedBody699_156 : StackLang.HolProg 64 :=
.seq NamedBody699_144 NamedBody699_155

def NamedBody699_157 : StackLang.HolProg 64 :=
.seq NamedBody699_143 NamedBody699_156

def NamedBody699_158 : StackLang.HolProg 64 :=
.seq NamedBody699_142 NamedBody699_157

def NamedBody699_159 : StackLang.HolProg 64 :=
.seq NamedBody699_141 NamedBody699_158

def NamedBody699_160 : StackLang.HolProg 64 :=
.seq NamedBody699_140 NamedBody699_159

def NamedBody699_161 : StackLang.HolProg 64 :=
.seq NamedBody699_139 NamedBody699_160

def NamedBody699_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody699_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_172 : StackLang.HolProg 64 :=
.seq NamedBody699_170 NamedBody699_171

def NamedBody699_173 : StackLang.HolProg 64 :=
.seq NamedBody699_169 NamedBody699_172

def NamedBody699_174 : StackLang.HolProg 64 :=
.seq NamedBody699_168 NamedBody699_173

def NamedBody699_175 : StackLang.HolProg 64 :=
.seq NamedBody699_167 NamedBody699_174

def NamedBody699_176 : StackLang.HolProg 64 :=
.seq NamedBody699_166 NamedBody699_175

def NamedBody699_177 : StackLang.HolProg 64 :=
.seq NamedBody699_165 NamedBody699_176

def NamedBody699_178 : StackLang.HolProg 64 :=
.seq NamedBody699_164 NamedBody699_177

def NamedBody699_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_182 : StackLang.HolProg 64 :=
.seq NamedBody699_180 NamedBody699_181

def NamedBody699_183 : StackLang.HolProg 64 :=
.seq NamedBody699_179 NamedBody699_182

def NamedBody699_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_185 : StackLang.HolProg 64 :=
.seq NamedBody699_183 NamedBody699_184

def NamedBody699_186 : StackLang.HolProg 64 :=
.call (some (NamedBody699_178, 1, 699, 6)) (Sum.inl 695) (some (NamedBody699_185, 699, 7))

def NamedBody699_187 : StackLang.HolProg 64 :=
.seq NamedBody699_163 NamedBody699_186

def NamedBody699_188 : StackLang.HolProg 64 :=
.seq NamedBody699_162 NamedBody699_187

def NamedBody699_189 : StackLang.HolProg 64 :=
.seq NamedBody699_161 NamedBody699_188

def NamedBody699_190 : StackLang.HolProg 64 :=
.seq NamedBody699_132 NamedBody699_189

def NamedBody699_191 : StackLang.HolProg 64 :=
.seq NamedBody699_129 NamedBody699_190

def NamedBody699_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody699_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody699_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody699_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_199 : StackLang.HolProg 64 :=
.seq NamedBody699_197 NamedBody699_198

def NamedBody699_200 : StackLang.HolProg 64 :=
.seq NamedBody699_196 NamedBody699_199

def NamedBody699_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3089#64)

def NamedBody699_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_204 : StackLang.HolProg 64 :=
.seq NamedBody699_202 NamedBody699_203

def NamedBody699_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_208 : StackLang.HolProg 64 :=
.seq NamedBody699_206 NamedBody699_207

def NamedBody699_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_208 NamedBody699_209

def NamedBody699_211 : StackLang.HolProg 64 :=
.seq NamedBody699_205 NamedBody699_210

def NamedBody699_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 9

def NamedBody699_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_221 : StackLang.HolProg 64 :=
.seq NamedBody699_219 NamedBody699_220

def NamedBody699_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_223 : StackLang.HolProg 64 :=
.seq NamedBody699_221 NamedBody699_222

def NamedBody699_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_225 : StackLang.HolProg 64 :=
.seq NamedBody699_223 NamedBody699_224

def NamedBody699_226 : StackLang.HolProg 64 :=
.seq NamedBody699_218 NamedBody699_225

def NamedBody699_227 : StackLang.HolProg 64 :=
.seq NamedBody699_217 NamedBody699_226

def NamedBody699_228 : StackLang.HolProg 64 :=
.seq NamedBody699_216 NamedBody699_227

def NamedBody699_229 : StackLang.HolProg 64 :=
.seq NamedBody699_215 NamedBody699_228

def NamedBody699_230 : StackLang.HolProg 64 :=
.seq NamedBody699_214 NamedBody699_229

def NamedBody699_231 : StackLang.HolProg 64 :=
.seq NamedBody699_213 NamedBody699_230

def NamedBody699_232 : StackLang.HolProg 64 :=
.seq NamedBody699_212 NamedBody699_231

def NamedBody699_233 : StackLang.HolProg 64 :=
.seq NamedBody699_211 NamedBody699_232

def NamedBody699_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_241 : StackLang.HolProg 64 :=
.seq NamedBody699_239 NamedBody699_240

def NamedBody699_242 : StackLang.HolProg 64 :=
.seq NamedBody699_238 NamedBody699_241

def NamedBody699_243 : StackLang.HolProg 64 :=
.seq NamedBody699_237 NamedBody699_242

def NamedBody699_244 : StackLang.HolProg 64 :=
.seq NamedBody699_236 NamedBody699_243

def NamedBody699_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_247 : StackLang.HolProg 64 :=
.seq NamedBody699_245 NamedBody699_246

def NamedBody699_248 : StackLang.HolProg 64 :=
.call (some (NamedBody699_244, 1, 699, 8)) (Sum.inl 70) (some (NamedBody699_247, 699, 9))

def NamedBody699_249 : StackLang.HolProg 64 :=
.seq NamedBody699_235 NamedBody699_248

def NamedBody699_250 : StackLang.HolProg 64 :=
.seq NamedBody699_234 NamedBody699_249

def NamedBody699_251 : StackLang.HolProg 64 :=
.seq NamedBody699_233 NamedBody699_250

def NamedBody699_252 : StackLang.HolProg 64 :=
.seq NamedBody699_204 NamedBody699_251

def NamedBody699_253 : StackLang.HolProg 64 :=
.seq NamedBody699_201 NamedBody699_252

def NamedBody699_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody699_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody699_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody699_259 : StackLang.HolProg 64 :=
.seq NamedBody699_257 NamedBody699_258

def NamedBody699_260 : StackLang.HolProg 64 :=
.seq NamedBody699_256 NamedBody699_259

def NamedBody699_261 : StackLang.HolProg 64 :=
.seq NamedBody699_255 NamedBody699_260

def NamedBody699_262 : StackLang.HolProg 64 :=
.seq NamedBody699_254 NamedBody699_261

def NamedBody699_263 : StackLang.HolProg 64 :=
.seq NamedBody699_253 NamedBody699_262

def NamedBody699_264 : StackLang.HolProg 64 :=
.seq NamedBody699_200 NamedBody699_263

def NamedBody699_265 : StackLang.HolProg 64 :=
.seq NamedBody699_195 NamedBody699_264

def NamedBody699_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody699_265 NamedBody699_266

def NamedBody699_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody699_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody699_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3090#64)

def NamedBody699_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_277 : StackLang.HolProg 64 :=
.seq NamedBody699_275 NamedBody699_276

def NamedBody699_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_281 : StackLang.HolProg 64 :=
.seq NamedBody699_279 NamedBody699_280

def NamedBody699_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_281 NamedBody699_282

def NamedBody699_284 : StackLang.HolProg 64 :=
.seq NamedBody699_278 NamedBody699_283

def NamedBody699_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 11

def NamedBody699_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_294 : StackLang.HolProg 64 :=
.seq NamedBody699_292 NamedBody699_293

def NamedBody699_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_296 : StackLang.HolProg 64 :=
.seq NamedBody699_294 NamedBody699_295

def NamedBody699_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_298 : StackLang.HolProg 64 :=
.seq NamedBody699_296 NamedBody699_297

def NamedBody699_299 : StackLang.HolProg 64 :=
.seq NamedBody699_291 NamedBody699_298

def NamedBody699_300 : StackLang.HolProg 64 :=
.seq NamedBody699_290 NamedBody699_299

def NamedBody699_301 : StackLang.HolProg 64 :=
.seq NamedBody699_289 NamedBody699_300

def NamedBody699_302 : StackLang.HolProg 64 :=
.seq NamedBody699_288 NamedBody699_301

def NamedBody699_303 : StackLang.HolProg 64 :=
.seq NamedBody699_287 NamedBody699_302

def NamedBody699_304 : StackLang.HolProg 64 :=
.seq NamedBody699_286 NamedBody699_303

def NamedBody699_305 : StackLang.HolProg 64 :=
.seq NamedBody699_285 NamedBody699_304

def NamedBody699_306 : StackLang.HolProg 64 :=
.seq NamedBody699_284 NamedBody699_305

def NamedBody699_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody699_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_315 : StackLang.HolProg 64 :=
.seq NamedBody699_313 NamedBody699_314

def NamedBody699_316 : StackLang.HolProg 64 :=
.seq NamedBody699_312 NamedBody699_315

def NamedBody699_317 : StackLang.HolProg 64 :=
.seq NamedBody699_311 NamedBody699_316

def NamedBody699_318 : StackLang.HolProg 64 :=
.seq NamedBody699_310 NamedBody699_317

def NamedBody699_319 : StackLang.HolProg 64 :=
.seq NamedBody699_309 NamedBody699_318

def NamedBody699_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_321 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_322 : StackLang.HolProg 64 :=
.seq NamedBody699_320 NamedBody699_321

def NamedBody699_323 : StackLang.HolProg 64 :=
.call (some (NamedBody699_319, 1, 699, 10)) (Sum.inl 146) (some (NamedBody699_322, 699, 11))

def NamedBody699_324 : StackLang.HolProg 64 :=
.seq NamedBody699_308 NamedBody699_323

def NamedBody699_325 : StackLang.HolProg 64 :=
.seq NamedBody699_307 NamedBody699_324

def NamedBody699_326 : StackLang.HolProg 64 :=
.seq NamedBody699_306 NamedBody699_325

def NamedBody699_327 : StackLang.HolProg 64 :=
.seq NamedBody699_277 NamedBody699_326

def NamedBody699_328 : StackLang.HolProg 64 :=
.seq NamedBody699_274 NamedBody699_327

def NamedBody699_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody699_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody699_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody699_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody699_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody699_335 : StackLang.HolProg 64 :=
.seq NamedBody699_333 NamedBody699_334

def NamedBody699_336 : StackLang.HolProg 64 :=
.seq NamedBody699_332 NamedBody699_335

def NamedBody699_337 : StackLang.HolProg 64 :=
.seq NamedBody699_331 NamedBody699_336

def NamedBody699_338 : StackLang.HolProg 64 :=
.seq NamedBody699_330 NamedBody699_337

def NamedBody699_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody699_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody699_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_342 : StackLang.HolProg 64 :=
.seq NamedBody699_340 NamedBody699_341

def NamedBody699_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3091#64)

def NamedBody699_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_346 : StackLang.HolProg 64 :=
.seq NamedBody699_344 NamedBody699_345

def NamedBody699_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_350 : StackLang.HolProg 64 :=
.seq NamedBody699_348 NamedBody699_349

def NamedBody699_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_352 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_350 NamedBody699_351

def NamedBody699_353 : StackLang.HolProg 64 :=
.seq NamedBody699_347 NamedBody699_352

def NamedBody699_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 13

def NamedBody699_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_363 : StackLang.HolProg 64 :=
.seq NamedBody699_361 NamedBody699_362

def NamedBody699_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_365 : StackLang.HolProg 64 :=
.seq NamedBody699_363 NamedBody699_364

def NamedBody699_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_367 : StackLang.HolProg 64 :=
.seq NamedBody699_365 NamedBody699_366

def NamedBody699_368 : StackLang.HolProg 64 :=
.seq NamedBody699_360 NamedBody699_367

def NamedBody699_369 : StackLang.HolProg 64 :=
.seq NamedBody699_359 NamedBody699_368

def NamedBody699_370 : StackLang.HolProg 64 :=
.seq NamedBody699_358 NamedBody699_369

def NamedBody699_371 : StackLang.HolProg 64 :=
.seq NamedBody699_357 NamedBody699_370

def NamedBody699_372 : StackLang.HolProg 64 :=
.seq NamedBody699_356 NamedBody699_371

def NamedBody699_373 : StackLang.HolProg 64 :=
.seq NamedBody699_355 NamedBody699_372

def NamedBody699_374 : StackLang.HolProg 64 :=
.seq NamedBody699_354 NamedBody699_373

def NamedBody699_375 : StackLang.HolProg 64 :=
.seq NamedBody699_353 NamedBody699_374

def NamedBody699_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody699_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody699_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody699_385 : StackLang.HolProg 64 :=
.seq NamedBody699_383 NamedBody699_384

def NamedBody699_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_387 : StackLang.HolProg 64 :=
.seq NamedBody699_385 NamedBody699_386

def NamedBody699_388 : StackLang.HolProg 64 :=
.seq NamedBody699_382 NamedBody699_387

def NamedBody699_389 : StackLang.HolProg 64 :=
.seq NamedBody699_381 NamedBody699_388

def NamedBody699_390 : StackLang.HolProg 64 :=
.seq NamedBody699_380 NamedBody699_389

def NamedBody699_391 : StackLang.HolProg 64 :=
.seq NamedBody699_379 NamedBody699_390

def NamedBody699_392 : StackLang.HolProg 64 :=
.seq NamedBody699_378 NamedBody699_391

def NamedBody699_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody699_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody699_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody699_396 : StackLang.HolProg 64 :=
.seq NamedBody699_394 NamedBody699_395

def NamedBody699_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_398 : StackLang.HolProg 64 :=
.seq NamedBody699_396 NamedBody699_397

def NamedBody699_399 : StackLang.HolProg 64 :=
.seq NamedBody699_393 NamedBody699_398

def NamedBody699_400 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_401 : StackLang.HolProg 64 :=
.seq NamedBody699_399 NamedBody699_400

def NamedBody699_402 : StackLang.HolProg 64 :=
.call (some (NamedBody699_392, 1, 699, 12)) (Sum.inl 684) (some (NamedBody699_401, 699, 13))

def NamedBody699_403 : StackLang.HolProg 64 :=
.seq NamedBody699_377 NamedBody699_402

def NamedBody699_404 : StackLang.HolProg 64 :=
.seq NamedBody699_376 NamedBody699_403

def NamedBody699_405 : StackLang.HolProg 64 :=
.seq NamedBody699_375 NamedBody699_404

def NamedBody699_406 : StackLang.HolProg 64 :=
.seq NamedBody699_346 NamedBody699_405

def NamedBody699_407 : StackLang.HolProg 64 :=
.seq NamedBody699_343 NamedBody699_406

def NamedBody699_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody699_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3092#64)

def NamedBody699_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_413 : StackLang.HolProg 64 :=
.seq NamedBody699_411 NamedBody699_412

def NamedBody699_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_417 : StackLang.HolProg 64 :=
.seq NamedBody699_415 NamedBody699_416

def NamedBody699_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_419 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_417 NamedBody699_418

def NamedBody699_420 : StackLang.HolProg 64 :=
.seq NamedBody699_414 NamedBody699_419

def NamedBody699_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 15

def NamedBody699_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_430 : StackLang.HolProg 64 :=
.seq NamedBody699_428 NamedBody699_429

def NamedBody699_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_432 : StackLang.HolProg 64 :=
.seq NamedBody699_430 NamedBody699_431

def NamedBody699_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_434 : StackLang.HolProg 64 :=
.seq NamedBody699_432 NamedBody699_433

def NamedBody699_435 : StackLang.HolProg 64 :=
.seq NamedBody699_427 NamedBody699_434

def NamedBody699_436 : StackLang.HolProg 64 :=
.seq NamedBody699_426 NamedBody699_435

def NamedBody699_437 : StackLang.HolProg 64 :=
.seq NamedBody699_425 NamedBody699_436

def NamedBody699_438 : StackLang.HolProg 64 :=
.seq NamedBody699_424 NamedBody699_437

def NamedBody699_439 : StackLang.HolProg 64 :=
.seq NamedBody699_423 NamedBody699_438

def NamedBody699_440 : StackLang.HolProg 64 :=
.seq NamedBody699_422 NamedBody699_439

def NamedBody699_441 : StackLang.HolProg 64 :=
.seq NamedBody699_421 NamedBody699_440

def NamedBody699_442 : StackLang.HolProg 64 :=
.seq NamedBody699_420 NamedBody699_441

def NamedBody699_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody699_450 : StackLang.HolProg 64 :=
.seq NamedBody699_448 NamedBody699_449

def NamedBody699_451 : StackLang.HolProg 64 :=
.seq NamedBody699_447 NamedBody699_450

def NamedBody699_452 : StackLang.HolProg 64 :=
.seq NamedBody699_446 NamedBody699_451

def NamedBody699_453 : StackLang.HolProg 64 :=
.seq NamedBody699_445 NamedBody699_452

def NamedBody699_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody699_455 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_456 : StackLang.HolProg 64 :=
.seq NamedBody699_454 NamedBody699_455

def NamedBody699_457 : StackLang.HolProg 64 :=
.call (some (NamedBody699_453, 1, 699, 14)) (Sum.inl 697) (some (NamedBody699_456, 699, 15))

def NamedBody699_458 : StackLang.HolProg 64 :=
.seq NamedBody699_444 NamedBody699_457

def NamedBody699_459 : StackLang.HolProg 64 :=
.seq NamedBody699_443 NamedBody699_458

def NamedBody699_460 : StackLang.HolProg 64 :=
.seq NamedBody699_442 NamedBody699_459

def NamedBody699_461 : StackLang.HolProg 64 :=
.seq NamedBody699_413 NamedBody699_460

def NamedBody699_462 : StackLang.HolProg 64 :=
.seq NamedBody699_410 NamedBody699_461

def NamedBody699_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody699_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3093#64)

def NamedBody699_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_468 : StackLang.HolProg 64 :=
.seq NamedBody699_466 NamedBody699_467

def NamedBody699_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody699_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody699_472 : StackLang.HolProg 64 :=
.seq NamedBody699_470 NamedBody699_471

def NamedBody699_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_474 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody699_472 NamedBody699_473

def NamedBody699_475 : StackLang.HolProg 64 :=
.seq NamedBody699_469 NamedBody699_474

def NamedBody699_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody699_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody699_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 17

def NamedBody699_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody699_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody699_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody699_485 : StackLang.HolProg 64 :=
.seq NamedBody699_483 NamedBody699_484

def NamedBody699_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody699_487 : StackLang.HolProg 64 :=
.seq NamedBody699_485 NamedBody699_486

def NamedBody699_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_489 : StackLang.HolProg 64 :=
.seq NamedBody699_487 NamedBody699_488

def NamedBody699_490 : StackLang.HolProg 64 :=
.seq NamedBody699_482 NamedBody699_489

def NamedBody699_491 : StackLang.HolProg 64 :=
.seq NamedBody699_481 NamedBody699_490

def NamedBody699_492 : StackLang.HolProg 64 :=
.seq NamedBody699_480 NamedBody699_491

def NamedBody699_493 : StackLang.HolProg 64 :=
.seq NamedBody699_479 NamedBody699_492

def NamedBody699_494 : StackLang.HolProg 64 :=
.seq NamedBody699_478 NamedBody699_493

def NamedBody699_495 : StackLang.HolProg 64 :=
.seq NamedBody699_477 NamedBody699_494

def NamedBody699_496 : StackLang.HolProg 64 :=
.seq NamedBody699_476 NamedBody699_495

def NamedBody699_497 : StackLang.HolProg 64 :=
.seq NamedBody699_475 NamedBody699_496

def NamedBody699_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody699_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody699_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody699_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody699_505 : StackLang.HolProg 64 :=
.seq NamedBody699_503 NamedBody699_504

def NamedBody699_506 : StackLang.HolProg 64 :=
.seq NamedBody699_502 NamedBody699_505

def NamedBody699_507 : StackLang.HolProg 64 :=
.seq NamedBody699_501 NamedBody699_506

def NamedBody699_508 : StackLang.HolProg 64 :=
.seq NamedBody699_500 NamedBody699_507

def NamedBody699_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody699_510 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody699_511 : StackLang.HolProg 64 :=
.seq NamedBody699_509 NamedBody699_510

def NamedBody699_512 : StackLang.HolProg 64 :=
.call (some (NamedBody699_508, 1, 699, 16)) (Sum.inl 70) (some (NamedBody699_511, 699, 17))

def NamedBody699_513 : StackLang.HolProg 64 :=
.seq NamedBody699_499 NamedBody699_512

def NamedBody699_514 : StackLang.HolProg 64 :=
.seq NamedBody699_498 NamedBody699_513

def NamedBody699_515 : StackLang.HolProg 64 :=
.seq NamedBody699_497 NamedBody699_514

def NamedBody699_516 : StackLang.HolProg 64 :=
.seq NamedBody699_468 NamedBody699_515

def NamedBody699_517 : StackLang.HolProg 64 :=
.seq NamedBody699_465 NamedBody699_516

def NamedBody699_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody699_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody699_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody699_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody699_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody699_523 : StackLang.HolProg 64 :=
.seq NamedBody699_521 NamedBody699_522

def NamedBody699_524 : StackLang.HolProg 64 :=
.seq NamedBody699_520 NamedBody699_523

def NamedBody699_525 : StackLang.HolProg 64 :=
.seq NamedBody699_519 NamedBody699_524

def NamedBody699_526 : StackLang.HolProg 64 :=
.seq NamedBody699_518 NamedBody699_525

def NamedBody699_527 : StackLang.HolProg 64 :=
.seq NamedBody699_517 NamedBody699_526

def NamedBody699_528 : StackLang.HolProg 64 :=
.seq NamedBody699_464 NamedBody699_527

def NamedBody699_529 : StackLang.HolProg 64 :=
.seq NamedBody699_463 NamedBody699_528

def NamedBody699_530 : StackLang.HolProg 64 :=
.seq NamedBody699_462 NamedBody699_529

def NamedBody699_531 : StackLang.HolProg 64 :=
.seq NamedBody699_409 NamedBody699_530

def NamedBody699_532 : StackLang.HolProg 64 :=
.seq NamedBody699_408 NamedBody699_531

def NamedBody699_533 : StackLang.HolProg 64 :=
.seq NamedBody699_407 NamedBody699_532

def NamedBody699_534 : StackLang.HolProg 64 :=
.seq NamedBody699_342 NamedBody699_533

def NamedBody699_535 : StackLang.HolProg 64 :=
.seq NamedBody699_339 NamedBody699_534

def NamedBody699_536 : StackLang.HolProg 64 :=
.seq NamedBody699_338 NamedBody699_535

def NamedBody699_537 : StackLang.HolProg 64 :=
.seq NamedBody699_329 NamedBody699_536

def NamedBody699_538 : StackLang.HolProg 64 :=
.seq NamedBody699_328 NamedBody699_537

def NamedBody699_539 : StackLang.HolProg 64 :=
.seq NamedBody699_273 NamedBody699_538

def NamedBody699_540 : StackLang.HolProg 64 :=
.seq NamedBody699_272 NamedBody699_539

def NamedBody699_541 : StackLang.HolProg 64 :=
.seq NamedBody699_271 NamedBody699_540

def NamedBody699_542 : StackLang.HolProg 64 :=
.seq NamedBody699_270 NamedBody699_541

def NamedBody699_543 : StackLang.HolProg 64 :=
.seq NamedBody699_269 NamedBody699_542

def NamedBody699_544 : StackLang.HolProg 64 :=
.seq NamedBody699_268 NamedBody699_543

def NamedBody699_545 : StackLang.HolProg 64 :=
.seq NamedBody699_267 NamedBody699_544

def NamedBody699_546 : StackLang.HolProg 64 :=
.seq NamedBody699_194 NamedBody699_545

def NamedBody699_547 : StackLang.HolProg 64 :=
.seq NamedBody699_193 NamedBody699_546

def NamedBody699_548 : StackLang.HolProg 64 :=
.seq NamedBody699_192 NamedBody699_547

def NamedBody699_549 : StackLang.HolProg 64 :=
.seq NamedBody699_191 NamedBody699_548

def NamedBody699_550 : StackLang.HolProg 64 :=
.seq NamedBody699_128 NamedBody699_549

def NamedBody699_551 : StackLang.HolProg 64 :=
.seq NamedBody699_123 NamedBody699_550

def NamedBody699_552 : StackLang.HolProg 64 :=
.seq NamedBody699_122 NamedBody699_551

def NamedBody699_553 : StackLang.HolProg 64 :=
.seq NamedBody699_67 NamedBody699_552

def NamedBody699_554 : StackLang.HolProg 64 :=
.seq NamedBody699_66 NamedBody699_553

def NamedBody699_555 : StackLang.HolProg 64 :=
.seq NamedBody699_65 NamedBody699_554

def NamedBody699_556 : StackLang.HolProg 64 :=
.seq NamedBody699_64 NamedBody699_555

def NamedBody699_557 : StackLang.HolProg 64 :=
.seq NamedBody699_11 NamedBody699_556

def NamedBody699_558 : StackLang.HolProg 64 :=
.seq NamedBody699_6 NamedBody699_557

def Named699 : Nat × StackLang.HolProg 64 := (699, NamedBody699_558)
theorem Named699_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed699 = Named699 := by
  kernel_rfl
#print axioms Named699_eq
end InitECandidate.Proofs.BackendStages
