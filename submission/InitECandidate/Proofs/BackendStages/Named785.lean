import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed785
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody785_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody785_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_3 : StackLang.HolProg 64 :=
.seq NamedBody785_1 NamedBody785_2

def NamedBody785_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_3 NamedBody785_4

def NamedBody785_6 : StackLang.HolProg 64 :=
.seq NamedBody785_0 NamedBody785_5

def NamedBody785_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody785_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_10 : StackLang.HolProg 64 :=
.seq NamedBody785_8 NamedBody785_9

def NamedBody785_11 : StackLang.HolProg 64 :=
.seq NamedBody785_7 NamedBody785_10

def NamedBody785_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3625#64)

def NamedBody785_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_15 : StackLang.HolProg 64 :=
.seq NamedBody785_13 NamedBody785_14

def NamedBody785_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_19 : StackLang.HolProg 64 :=
.seq NamedBody785_17 NamedBody785_18

def NamedBody785_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_19 NamedBody785_20

def NamedBody785_22 : StackLang.HolProg 64 :=
.seq NamedBody785_16 NamedBody785_21

def NamedBody785_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 3

def NamedBody785_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_32 : StackLang.HolProg 64 :=
.seq NamedBody785_30 NamedBody785_31

def NamedBody785_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_34 : StackLang.HolProg 64 :=
.seq NamedBody785_32 NamedBody785_33

def NamedBody785_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_36 : StackLang.HolProg 64 :=
.seq NamedBody785_34 NamedBody785_35

def NamedBody785_37 : StackLang.HolProg 64 :=
.seq NamedBody785_29 NamedBody785_36

def NamedBody785_38 : StackLang.HolProg 64 :=
.seq NamedBody785_28 NamedBody785_37

def NamedBody785_39 : StackLang.HolProg 64 :=
.seq NamedBody785_27 NamedBody785_38

def NamedBody785_40 : StackLang.HolProg 64 :=
.seq NamedBody785_26 NamedBody785_39

def NamedBody785_41 : StackLang.HolProg 64 :=
.seq NamedBody785_25 NamedBody785_40

def NamedBody785_42 : StackLang.HolProg 64 :=
.seq NamedBody785_24 NamedBody785_41

def NamedBody785_43 : StackLang.HolProg 64 :=
.seq NamedBody785_23 NamedBody785_42

def NamedBody785_44 : StackLang.HolProg 64 :=
.seq NamedBody785_22 NamedBody785_43

def NamedBody785_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody785_52 : StackLang.HolProg 64 :=
.seq NamedBody785_50 NamedBody785_51

def NamedBody785_53 : StackLang.HolProg 64 :=
.seq NamedBody785_49 NamedBody785_52

def NamedBody785_54 : StackLang.HolProg 64 :=
.seq NamedBody785_48 NamedBody785_53

def NamedBody785_55 : StackLang.HolProg 64 :=
.seq NamedBody785_47 NamedBody785_54

def NamedBody785_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_58 : StackLang.HolProg 64 :=
.seq NamedBody785_56 NamedBody785_57

def NamedBody785_59 : StackLang.HolProg 64 :=
.call (some (NamedBody785_55, 1, 785, 2)) (Sum.inl 69) (some (NamedBody785_58, 785, 3))

def NamedBody785_60 : StackLang.HolProg 64 :=
.seq NamedBody785_46 NamedBody785_59

def NamedBody785_61 : StackLang.HolProg 64 :=
.seq NamedBody785_45 NamedBody785_60

def NamedBody785_62 : StackLang.HolProg 64 :=
.seq NamedBody785_44 NamedBody785_61

def NamedBody785_63 : StackLang.HolProg 64 :=
.seq NamedBody785_15 NamedBody785_62

def NamedBody785_64 : StackLang.HolProg 64 :=
.seq NamedBody785_12 NamedBody785_63

def NamedBody785_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody785_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody785_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3626#64)

def NamedBody785_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_71 : StackLang.HolProg 64 :=
.seq NamedBody785_69 NamedBody785_70

def NamedBody785_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_75 : StackLang.HolProg 64 :=
.seq NamedBody785_73 NamedBody785_74

def NamedBody785_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_75 NamedBody785_76

def NamedBody785_78 : StackLang.HolProg 64 :=
.seq NamedBody785_72 NamedBody785_77

def NamedBody785_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 5

def NamedBody785_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_88 : StackLang.HolProg 64 :=
.seq NamedBody785_86 NamedBody785_87

def NamedBody785_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_90 : StackLang.HolProg 64 :=
.seq NamedBody785_88 NamedBody785_89

def NamedBody785_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_92 : StackLang.HolProg 64 :=
.seq NamedBody785_90 NamedBody785_91

def NamedBody785_93 : StackLang.HolProg 64 :=
.seq NamedBody785_85 NamedBody785_92

def NamedBody785_94 : StackLang.HolProg 64 :=
.seq NamedBody785_84 NamedBody785_93

def NamedBody785_95 : StackLang.HolProg 64 :=
.seq NamedBody785_83 NamedBody785_94

def NamedBody785_96 : StackLang.HolProg 64 :=
.seq NamedBody785_82 NamedBody785_95

def NamedBody785_97 : StackLang.HolProg 64 :=
.seq NamedBody785_81 NamedBody785_96

def NamedBody785_98 : StackLang.HolProg 64 :=
.seq NamedBody785_80 NamedBody785_97

def NamedBody785_99 : StackLang.HolProg 64 :=
.seq NamedBody785_79 NamedBody785_98

def NamedBody785_100 : StackLang.HolProg 64 :=
.seq NamedBody785_78 NamedBody785_99

def NamedBody785_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody785_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_109 : StackLang.HolProg 64 :=
.seq NamedBody785_107 NamedBody785_108

def NamedBody785_110 : StackLang.HolProg 64 :=
.seq NamedBody785_106 NamedBody785_109

def NamedBody785_111 : StackLang.HolProg 64 :=
.seq NamedBody785_105 NamedBody785_110

def NamedBody785_112 : StackLang.HolProg 64 :=
.seq NamedBody785_104 NamedBody785_111

def NamedBody785_113 : StackLang.HolProg 64 :=
.seq NamedBody785_103 NamedBody785_112

def NamedBody785_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_116 : StackLang.HolProg 64 :=
.seq NamedBody785_114 NamedBody785_115

def NamedBody785_117 : StackLang.HolProg 64 :=
.call (some (NamedBody785_113, 1, 785, 4)) (Sum.inl 68) (some (NamedBody785_116, 785, 5))

def NamedBody785_118 : StackLang.HolProg 64 :=
.seq NamedBody785_102 NamedBody785_117

def NamedBody785_119 : StackLang.HolProg 64 :=
.seq NamedBody785_101 NamedBody785_118

def NamedBody785_120 : StackLang.HolProg 64 :=
.seq NamedBody785_100 NamedBody785_119

def NamedBody785_121 : StackLang.HolProg 64 :=
.seq NamedBody785_71 NamedBody785_120

def NamedBody785_122 : StackLang.HolProg 64 :=
.seq NamedBody785_68 NamedBody785_121

def NamedBody785_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody785_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_127 : StackLang.HolProg 64 :=
.seq NamedBody785_125 NamedBody785_126

def NamedBody785_128 : StackLang.HolProg 64 :=
.seq NamedBody785_124 NamedBody785_127

def NamedBody785_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3627#64)

def NamedBody785_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_132 : StackLang.HolProg 64 :=
.seq NamedBody785_130 NamedBody785_131

def NamedBody785_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_136 : StackLang.HolProg 64 :=
.seq NamedBody785_134 NamedBody785_135

def NamedBody785_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_136 NamedBody785_137

def NamedBody785_139 : StackLang.HolProg 64 :=
.seq NamedBody785_133 NamedBody785_138

def NamedBody785_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 7

def NamedBody785_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_149 : StackLang.HolProg 64 :=
.seq NamedBody785_147 NamedBody785_148

def NamedBody785_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_151 : StackLang.HolProg 64 :=
.seq NamedBody785_149 NamedBody785_150

def NamedBody785_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_153 : StackLang.HolProg 64 :=
.seq NamedBody785_151 NamedBody785_152

def NamedBody785_154 : StackLang.HolProg 64 :=
.seq NamedBody785_146 NamedBody785_153

def NamedBody785_155 : StackLang.HolProg 64 :=
.seq NamedBody785_145 NamedBody785_154

def NamedBody785_156 : StackLang.HolProg 64 :=
.seq NamedBody785_144 NamedBody785_155

def NamedBody785_157 : StackLang.HolProg 64 :=
.seq NamedBody785_143 NamedBody785_156

def NamedBody785_158 : StackLang.HolProg 64 :=
.seq NamedBody785_142 NamedBody785_157

def NamedBody785_159 : StackLang.HolProg 64 :=
.seq NamedBody785_141 NamedBody785_158

def NamedBody785_160 : StackLang.HolProg 64 :=
.seq NamedBody785_140 NamedBody785_159

def NamedBody785_161 : StackLang.HolProg 64 :=
.seq NamedBody785_139 NamedBody785_160

def NamedBody785_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody785_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_171 : StackLang.HolProg 64 :=
.seq NamedBody785_169 NamedBody785_170

def NamedBody785_172 : StackLang.HolProg 64 :=
.seq NamedBody785_168 NamedBody785_171

def NamedBody785_173 : StackLang.HolProg 64 :=
.seq NamedBody785_167 NamedBody785_172

def NamedBody785_174 : StackLang.HolProg 64 :=
.seq NamedBody785_166 NamedBody785_173

def NamedBody785_175 : StackLang.HolProg 64 :=
.seq NamedBody785_165 NamedBody785_174

def NamedBody785_176 : StackLang.HolProg 64 :=
.seq NamedBody785_164 NamedBody785_175

def NamedBody785_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_179 : StackLang.HolProg 64 :=
.seq NamedBody785_177 NamedBody785_178

def NamedBody785_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_181 : StackLang.HolProg 64 :=
.seq NamedBody785_179 NamedBody785_180

def NamedBody785_182 : StackLang.HolProg 64 :=
.call (some (NamedBody785_176, 1, 785, 6)) (Sum.inl 779) (some (NamedBody785_181, 785, 7))

def NamedBody785_183 : StackLang.HolProg 64 :=
.seq NamedBody785_163 NamedBody785_182

def NamedBody785_184 : StackLang.HolProg 64 :=
.seq NamedBody785_162 NamedBody785_183

def NamedBody785_185 : StackLang.HolProg 64 :=
.seq NamedBody785_161 NamedBody785_184

def NamedBody785_186 : StackLang.HolProg 64 :=
.seq NamedBody785_132 NamedBody785_185

def NamedBody785_187 : StackLang.HolProg 64 :=
.seq NamedBody785_129 NamedBody785_186

def NamedBody785_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody785_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 192#64)

def NamedBody785_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody785_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_196 : StackLang.HolProg 64 :=
.seq NamedBody785_194 NamedBody785_195

def NamedBody785_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody785_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody785_199 : StackLang.HolProg 64 :=
.seq NamedBody785_197 NamedBody785_198

def NamedBody785_200 : StackLang.HolProg 64 :=
.seq NamedBody785_196 NamedBody785_199

def NamedBody785_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3628#64)

def NamedBody785_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_204 : StackLang.HolProg 64 :=
.seq NamedBody785_202 NamedBody785_203

def NamedBody785_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_208 : StackLang.HolProg 64 :=
.seq NamedBody785_206 NamedBody785_207

def NamedBody785_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_208 NamedBody785_209

def NamedBody785_211 : StackLang.HolProg 64 :=
.seq NamedBody785_205 NamedBody785_210

def NamedBody785_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 9

def NamedBody785_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_221 : StackLang.HolProg 64 :=
.seq NamedBody785_219 NamedBody785_220

def NamedBody785_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_223 : StackLang.HolProg 64 :=
.seq NamedBody785_221 NamedBody785_222

def NamedBody785_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_225 : StackLang.HolProg 64 :=
.seq NamedBody785_223 NamedBody785_224

def NamedBody785_226 : StackLang.HolProg 64 :=
.seq NamedBody785_218 NamedBody785_225

def NamedBody785_227 : StackLang.HolProg 64 :=
.seq NamedBody785_217 NamedBody785_226

def NamedBody785_228 : StackLang.HolProg 64 :=
.seq NamedBody785_216 NamedBody785_227

def NamedBody785_229 : StackLang.HolProg 64 :=
.seq NamedBody785_215 NamedBody785_228

def NamedBody785_230 : StackLang.HolProg 64 :=
.seq NamedBody785_214 NamedBody785_229

def NamedBody785_231 : StackLang.HolProg 64 :=
.seq NamedBody785_213 NamedBody785_230

def NamedBody785_232 : StackLang.HolProg 64 :=
.seq NamedBody785_212 NamedBody785_231

def NamedBody785_233 : StackLang.HolProg 64 :=
.seq NamedBody785_211 NamedBody785_232

def NamedBody785_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody785_241 : StackLang.HolProg 64 :=
.seq NamedBody785_239 NamedBody785_240

def NamedBody785_242 : StackLang.HolProg 64 :=
.seq NamedBody785_238 NamedBody785_241

def NamedBody785_243 : StackLang.HolProg 64 :=
.seq NamedBody785_237 NamedBody785_242

def NamedBody785_244 : StackLang.HolProg 64 :=
.seq NamedBody785_236 NamedBody785_243

def NamedBody785_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody785_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_247 : StackLang.HolProg 64 :=
.seq NamedBody785_245 NamedBody785_246

def NamedBody785_248 : StackLang.HolProg 64 :=
.call (some (NamedBody785_244, 1, 785, 8)) (Sum.inl 78) (some (NamedBody785_247, 785, 9))

def NamedBody785_249 : StackLang.HolProg 64 :=
.seq NamedBody785_235 NamedBody785_248

def NamedBody785_250 : StackLang.HolProg 64 :=
.seq NamedBody785_234 NamedBody785_249

def NamedBody785_251 : StackLang.HolProg 64 :=
.seq NamedBody785_233 NamedBody785_250

def NamedBody785_252 : StackLang.HolProg 64 :=
.seq NamedBody785_204 NamedBody785_251

def NamedBody785_253 : StackLang.HolProg 64 :=
.seq NamedBody785_201 NamedBody785_252

def NamedBody785_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody785_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3629#64)

def NamedBody785_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_259 : StackLang.HolProg 64 :=
.seq NamedBody785_257 NamedBody785_258

def NamedBody785_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_263 : StackLang.HolProg 64 :=
.seq NamedBody785_261 NamedBody785_262

def NamedBody785_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_263 NamedBody785_264

def NamedBody785_266 : StackLang.HolProg 64 :=
.seq NamedBody785_260 NamedBody785_265

def NamedBody785_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 11

def NamedBody785_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_276 : StackLang.HolProg 64 :=
.seq NamedBody785_274 NamedBody785_275

def NamedBody785_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_278 : StackLang.HolProg 64 :=
.seq NamedBody785_276 NamedBody785_277

def NamedBody785_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_280 : StackLang.HolProg 64 :=
.seq NamedBody785_278 NamedBody785_279

def NamedBody785_281 : StackLang.HolProg 64 :=
.seq NamedBody785_273 NamedBody785_280

def NamedBody785_282 : StackLang.HolProg 64 :=
.seq NamedBody785_272 NamedBody785_281

def NamedBody785_283 : StackLang.HolProg 64 :=
.seq NamedBody785_271 NamedBody785_282

def NamedBody785_284 : StackLang.HolProg 64 :=
.seq NamedBody785_270 NamedBody785_283

def NamedBody785_285 : StackLang.HolProg 64 :=
.seq NamedBody785_269 NamedBody785_284

def NamedBody785_286 : StackLang.HolProg 64 :=
.seq NamedBody785_268 NamedBody785_285

def NamedBody785_287 : StackLang.HolProg 64 :=
.seq NamedBody785_267 NamedBody785_286

def NamedBody785_288 : StackLang.HolProg 64 :=
.seq NamedBody785_266 NamedBody785_287

def NamedBody785_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_296 : StackLang.HolProg 64 :=
.seq NamedBody785_294 NamedBody785_295

def NamedBody785_297 : StackLang.HolProg 64 :=
.seq NamedBody785_293 NamedBody785_296

def NamedBody785_298 : StackLang.HolProg 64 :=
.seq NamedBody785_292 NamedBody785_297

def NamedBody785_299 : StackLang.HolProg 64 :=
.seq NamedBody785_291 NamedBody785_298

def NamedBody785_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_301 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_302 : StackLang.HolProg 64 :=
.seq NamedBody785_300 NamedBody785_301

def NamedBody785_303 : StackLang.HolProg 64 :=
.call (some (NamedBody785_299, 1, 785, 10)) (Sum.inl 70) (some (NamedBody785_302, 785, 11))

def NamedBody785_304 : StackLang.HolProg 64 :=
.seq NamedBody785_290 NamedBody785_303

def NamedBody785_305 : StackLang.HolProg 64 :=
.seq NamedBody785_289 NamedBody785_304

def NamedBody785_306 : StackLang.HolProg 64 :=
.seq NamedBody785_288 NamedBody785_305

def NamedBody785_307 : StackLang.HolProg 64 :=
.seq NamedBody785_259 NamedBody785_306

def NamedBody785_308 : StackLang.HolProg 64 :=
.seq NamedBody785_256 NamedBody785_307

def NamedBody785_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody785_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody785_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody785_314 : StackLang.HolProg 64 :=
.seq NamedBody785_312 NamedBody785_313

def NamedBody785_315 : StackLang.HolProg 64 :=
.seq NamedBody785_311 NamedBody785_314

def NamedBody785_316 : StackLang.HolProg 64 :=
.seq NamedBody785_310 NamedBody785_315

def NamedBody785_317 : StackLang.HolProg 64 :=
.seq NamedBody785_309 NamedBody785_316

def NamedBody785_318 : StackLang.HolProg 64 :=
.seq NamedBody785_308 NamedBody785_317

def NamedBody785_319 : StackLang.HolProg 64 :=
.seq NamedBody785_255 NamedBody785_318

def NamedBody785_320 : StackLang.HolProg 64 :=
.seq NamedBody785_254 NamedBody785_319

def NamedBody785_321 : StackLang.HolProg 64 :=
.seq NamedBody785_253 NamedBody785_320

def NamedBody785_322 : StackLang.HolProg 64 :=
.seq NamedBody785_200 NamedBody785_321

def NamedBody785_323 : StackLang.HolProg 64 :=
.seq NamedBody785_193 NamedBody785_322

def NamedBody785_324 : StackLang.HolProg 64 :=
.seq NamedBody785_192 NamedBody785_323

def NamedBody785_325 : StackLang.HolProg 64 :=
.seq NamedBody785_191 NamedBody785_324

def NamedBody785_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_327 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody785_325 NamedBody785_326

def NamedBody785_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody785_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody785_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_334 : StackLang.HolProg 64 :=
.seq NamedBody785_332 NamedBody785_333

def NamedBody785_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3630#64)

def NamedBody785_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_338 : StackLang.HolProg 64 :=
.seq NamedBody785_336 NamedBody785_337

def NamedBody785_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_342 : StackLang.HolProg 64 :=
.seq NamedBody785_340 NamedBody785_341

def NamedBody785_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_344 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_342 NamedBody785_343

def NamedBody785_345 : StackLang.HolProg 64 :=
.seq NamedBody785_339 NamedBody785_344

def NamedBody785_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 13

def NamedBody785_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_355 : StackLang.HolProg 64 :=
.seq NamedBody785_353 NamedBody785_354

def NamedBody785_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_357 : StackLang.HolProg 64 :=
.seq NamedBody785_355 NamedBody785_356

def NamedBody785_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_359 : StackLang.HolProg 64 :=
.seq NamedBody785_357 NamedBody785_358

def NamedBody785_360 : StackLang.HolProg 64 :=
.seq NamedBody785_352 NamedBody785_359

def NamedBody785_361 : StackLang.HolProg 64 :=
.seq NamedBody785_351 NamedBody785_360

def NamedBody785_362 : StackLang.HolProg 64 :=
.seq NamedBody785_350 NamedBody785_361

def NamedBody785_363 : StackLang.HolProg 64 :=
.seq NamedBody785_349 NamedBody785_362

def NamedBody785_364 : StackLang.HolProg 64 :=
.seq NamedBody785_348 NamedBody785_363

def NamedBody785_365 : StackLang.HolProg 64 :=
.seq NamedBody785_347 NamedBody785_364

def NamedBody785_366 : StackLang.HolProg 64 :=
.seq NamedBody785_346 NamedBody785_365

def NamedBody785_367 : StackLang.HolProg 64 :=
.seq NamedBody785_345 NamedBody785_366

def NamedBody785_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_377 : StackLang.HolProg 64 :=
.seq NamedBody785_375 NamedBody785_376

def NamedBody785_378 : StackLang.HolProg 64 :=
.seq NamedBody785_374 NamedBody785_377

def NamedBody785_379 : StackLang.HolProg 64 :=
.seq NamedBody785_373 NamedBody785_378

def NamedBody785_380 : StackLang.HolProg 64 :=
.seq NamedBody785_372 NamedBody785_379

def NamedBody785_381 : StackLang.HolProg 64 :=
.seq NamedBody785_371 NamedBody785_380

def NamedBody785_382 : StackLang.HolProg 64 :=
.seq NamedBody785_370 NamedBody785_381

def NamedBody785_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_386 : StackLang.HolProg 64 :=
.seq NamedBody785_384 NamedBody785_385

def NamedBody785_387 : StackLang.HolProg 64 :=
.seq NamedBody785_383 NamedBody785_386

def NamedBody785_388 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_389 : StackLang.HolProg 64 :=
.seq NamedBody785_387 NamedBody785_388

def NamedBody785_390 : StackLang.HolProg 64 :=
.call (some (NamedBody785_382, 1, 785, 12)) (Sum.inl 743) (some (NamedBody785_389, 785, 13))

def NamedBody785_391 : StackLang.HolProg 64 :=
.seq NamedBody785_369 NamedBody785_390

def NamedBody785_392 : StackLang.HolProg 64 :=
.seq NamedBody785_368 NamedBody785_391

def NamedBody785_393 : StackLang.HolProg 64 :=
.seq NamedBody785_367 NamedBody785_392

def NamedBody785_394 : StackLang.HolProg 64 :=
.seq NamedBody785_338 NamedBody785_393

def NamedBody785_395 : StackLang.HolProg 64 :=
.seq NamedBody785_335 NamedBody785_394

def NamedBody785_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody785_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_401 : StackLang.HolProg 64 :=
.seq NamedBody785_399 NamedBody785_400

def NamedBody785_402 : StackLang.HolProg 64 :=
.seq NamedBody785_398 NamedBody785_401

def NamedBody785_403 : StackLang.HolProg 64 :=
.seq NamedBody785_397 NamedBody785_402

def NamedBody785_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3631#64)

def NamedBody785_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_407 : StackLang.HolProg 64 :=
.seq NamedBody785_405 NamedBody785_406

def NamedBody785_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_411 : StackLang.HolProg 64 :=
.seq NamedBody785_409 NamedBody785_410

def NamedBody785_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_413 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_411 NamedBody785_412

def NamedBody785_414 : StackLang.HolProg 64 :=
.seq NamedBody785_408 NamedBody785_413

def NamedBody785_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 15

def NamedBody785_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_424 : StackLang.HolProg 64 :=
.seq NamedBody785_422 NamedBody785_423

def NamedBody785_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_426 : StackLang.HolProg 64 :=
.seq NamedBody785_424 NamedBody785_425

def NamedBody785_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_428 : StackLang.HolProg 64 :=
.seq NamedBody785_426 NamedBody785_427

def NamedBody785_429 : StackLang.HolProg 64 :=
.seq NamedBody785_421 NamedBody785_428

def NamedBody785_430 : StackLang.HolProg 64 :=
.seq NamedBody785_420 NamedBody785_429

def NamedBody785_431 : StackLang.HolProg 64 :=
.seq NamedBody785_419 NamedBody785_430

def NamedBody785_432 : StackLang.HolProg 64 :=
.seq NamedBody785_418 NamedBody785_431

def NamedBody785_433 : StackLang.HolProg 64 :=
.seq NamedBody785_417 NamedBody785_432

def NamedBody785_434 : StackLang.HolProg 64 :=
.seq NamedBody785_416 NamedBody785_433

def NamedBody785_435 : StackLang.HolProg 64 :=
.seq NamedBody785_415 NamedBody785_434

def NamedBody785_436 : StackLang.HolProg 64 :=
.seq NamedBody785_414 NamedBody785_435

def NamedBody785_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_446 : StackLang.HolProg 64 :=
.seq NamedBody785_444 NamedBody785_445

def NamedBody785_447 : StackLang.HolProg 64 :=
.seq NamedBody785_443 NamedBody785_446

def NamedBody785_448 : StackLang.HolProg 64 :=
.seq NamedBody785_442 NamedBody785_447

def NamedBody785_449 : StackLang.HolProg 64 :=
.seq NamedBody785_441 NamedBody785_448

def NamedBody785_450 : StackLang.HolProg 64 :=
.seq NamedBody785_440 NamedBody785_449

def NamedBody785_451 : StackLang.HolProg 64 :=
.seq NamedBody785_439 NamedBody785_450

def NamedBody785_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody785_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_455 : StackLang.HolProg 64 :=
.seq NamedBody785_453 NamedBody785_454

def NamedBody785_456 : StackLang.HolProg 64 :=
.seq NamedBody785_452 NamedBody785_455

def NamedBody785_457 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_458 : StackLang.HolProg 64 :=
.seq NamedBody785_456 NamedBody785_457

def NamedBody785_459 : StackLang.HolProg 64 :=
.call (some (NamedBody785_451, 1, 785, 14)) (Sum.inl 739) (some (NamedBody785_458, 785, 15))

def NamedBody785_460 : StackLang.HolProg 64 :=
.seq NamedBody785_438 NamedBody785_459

def NamedBody785_461 : StackLang.HolProg 64 :=
.seq NamedBody785_437 NamedBody785_460

def NamedBody785_462 : StackLang.HolProg 64 :=
.seq NamedBody785_436 NamedBody785_461

def NamedBody785_463 : StackLang.HolProg 64 :=
.seq NamedBody785_407 NamedBody785_462

def NamedBody785_464 : StackLang.HolProg 64 :=
.seq NamedBody785_404 NamedBody785_463

def NamedBody785_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody785_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody785_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3632#64)

def NamedBody785_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_474 : StackLang.HolProg 64 :=
.seq NamedBody785_472 NamedBody785_473

def NamedBody785_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_478 : StackLang.HolProg 64 :=
.seq NamedBody785_476 NamedBody785_477

def NamedBody785_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_480 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_478 NamedBody785_479

def NamedBody785_481 : StackLang.HolProg 64 :=
.seq NamedBody785_475 NamedBody785_480

def NamedBody785_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 17

def NamedBody785_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_491 : StackLang.HolProg 64 :=
.seq NamedBody785_489 NamedBody785_490

def NamedBody785_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_493 : StackLang.HolProg 64 :=
.seq NamedBody785_491 NamedBody785_492

def NamedBody785_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_495 : StackLang.HolProg 64 :=
.seq NamedBody785_493 NamedBody785_494

def NamedBody785_496 : StackLang.HolProg 64 :=
.seq NamedBody785_488 NamedBody785_495

def NamedBody785_497 : StackLang.HolProg 64 :=
.seq NamedBody785_487 NamedBody785_496

def NamedBody785_498 : StackLang.HolProg 64 :=
.seq NamedBody785_486 NamedBody785_497

def NamedBody785_499 : StackLang.HolProg 64 :=
.seq NamedBody785_485 NamedBody785_498

def NamedBody785_500 : StackLang.HolProg 64 :=
.seq NamedBody785_484 NamedBody785_499

def NamedBody785_501 : StackLang.HolProg 64 :=
.seq NamedBody785_483 NamedBody785_500

def NamedBody785_502 : StackLang.HolProg 64 :=
.seq NamedBody785_482 NamedBody785_501

def NamedBody785_503 : StackLang.HolProg 64 :=
.seq NamedBody785_481 NamedBody785_502

def NamedBody785_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody785_511 : StackLang.HolProg 64 :=
.seq NamedBody785_509 NamedBody785_510

def NamedBody785_512 : StackLang.HolProg 64 :=
.seq NamedBody785_508 NamedBody785_511

def NamedBody785_513 : StackLang.HolProg 64 :=
.seq NamedBody785_507 NamedBody785_512

def NamedBody785_514 : StackLang.HolProg 64 :=
.seq NamedBody785_506 NamedBody785_513

def NamedBody785_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody785_516 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_517 : StackLang.HolProg 64 :=
.seq NamedBody785_515 NamedBody785_516

def NamedBody785_518 : StackLang.HolProg 64 :=
.call (some (NamedBody785_514, 1, 785, 16)) (Sum.inl 739) (some (NamedBody785_517, 785, 17))

def NamedBody785_519 : StackLang.HolProg 64 :=
.seq NamedBody785_505 NamedBody785_518

def NamedBody785_520 : StackLang.HolProg 64 :=
.seq NamedBody785_504 NamedBody785_519

def NamedBody785_521 : StackLang.HolProg 64 :=
.seq NamedBody785_503 NamedBody785_520

def NamedBody785_522 : StackLang.HolProg 64 :=
.seq NamedBody785_474 NamedBody785_521

def NamedBody785_523 : StackLang.HolProg 64 :=
.seq NamedBody785_471 NamedBody785_522

def NamedBody785_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody785_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3633#64)

def NamedBody785_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_529 : StackLang.HolProg 64 :=
.seq NamedBody785_527 NamedBody785_528

def NamedBody785_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody785_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody785_533 : StackLang.HolProg 64 :=
.seq NamedBody785_531 NamedBody785_532

def NamedBody785_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_535 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody785_533 NamedBody785_534

def NamedBody785_536 : StackLang.HolProg 64 :=
.seq NamedBody785_530 NamedBody785_535

def NamedBody785_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody785_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody785_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 19

def NamedBody785_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody785_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody785_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody785_546 : StackLang.HolProg 64 :=
.seq NamedBody785_544 NamedBody785_545

def NamedBody785_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody785_548 : StackLang.HolProg 64 :=
.seq NamedBody785_546 NamedBody785_547

def NamedBody785_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_550 : StackLang.HolProg 64 :=
.seq NamedBody785_548 NamedBody785_549

def NamedBody785_551 : StackLang.HolProg 64 :=
.seq NamedBody785_543 NamedBody785_550

def NamedBody785_552 : StackLang.HolProg 64 :=
.seq NamedBody785_542 NamedBody785_551

def NamedBody785_553 : StackLang.HolProg 64 :=
.seq NamedBody785_541 NamedBody785_552

def NamedBody785_554 : StackLang.HolProg 64 :=
.seq NamedBody785_540 NamedBody785_553

def NamedBody785_555 : StackLang.HolProg 64 :=
.seq NamedBody785_539 NamedBody785_554

def NamedBody785_556 : StackLang.HolProg 64 :=
.seq NamedBody785_538 NamedBody785_555

def NamedBody785_557 : StackLang.HolProg 64 :=
.seq NamedBody785_537 NamedBody785_556

def NamedBody785_558 : StackLang.HolProg 64 :=
.seq NamedBody785_536 NamedBody785_557

def NamedBody785_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody785_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody785_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody785_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody785_566 : StackLang.HolProg 64 :=
.seq NamedBody785_564 NamedBody785_565

def NamedBody785_567 : StackLang.HolProg 64 :=
.seq NamedBody785_563 NamedBody785_566

def NamedBody785_568 : StackLang.HolProg 64 :=
.seq NamedBody785_562 NamedBody785_567

def NamedBody785_569 : StackLang.HolProg 64 :=
.seq NamedBody785_561 NamedBody785_568

def NamedBody785_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody785_571 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody785_572 : StackLang.HolProg 64 :=
.seq NamedBody785_570 NamedBody785_571

def NamedBody785_573 : StackLang.HolProg 64 :=
.call (some (NamedBody785_569, 1, 785, 18)) (Sum.inl 70) (some (NamedBody785_572, 785, 19))

def NamedBody785_574 : StackLang.HolProg 64 :=
.seq NamedBody785_560 NamedBody785_573

def NamedBody785_575 : StackLang.HolProg 64 :=
.seq NamedBody785_559 NamedBody785_574

def NamedBody785_576 : StackLang.HolProg 64 :=
.seq NamedBody785_558 NamedBody785_575

def NamedBody785_577 : StackLang.HolProg 64 :=
.seq NamedBody785_529 NamedBody785_576

def NamedBody785_578 : StackLang.HolProg 64 :=
.seq NamedBody785_526 NamedBody785_577

def NamedBody785_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody785_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody785_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody785_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody785_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody785_584 : StackLang.HolProg 64 :=
.seq NamedBody785_582 NamedBody785_583

def NamedBody785_585 : StackLang.HolProg 64 :=
.seq NamedBody785_581 NamedBody785_584

def NamedBody785_586 : StackLang.HolProg 64 :=
.seq NamedBody785_580 NamedBody785_585

def NamedBody785_587 : StackLang.HolProg 64 :=
.seq NamedBody785_579 NamedBody785_586

def NamedBody785_588 : StackLang.HolProg 64 :=
.seq NamedBody785_578 NamedBody785_587

def NamedBody785_589 : StackLang.HolProg 64 :=
.seq NamedBody785_525 NamedBody785_588

def NamedBody785_590 : StackLang.HolProg 64 :=
.seq NamedBody785_524 NamedBody785_589

def NamedBody785_591 : StackLang.HolProg 64 :=
.seq NamedBody785_523 NamedBody785_590

def NamedBody785_592 : StackLang.HolProg 64 :=
.seq NamedBody785_470 NamedBody785_591

def NamedBody785_593 : StackLang.HolProg 64 :=
.seq NamedBody785_469 NamedBody785_592

def NamedBody785_594 : StackLang.HolProg 64 :=
.seq NamedBody785_468 NamedBody785_593

def NamedBody785_595 : StackLang.HolProg 64 :=
.seq NamedBody785_467 NamedBody785_594

def NamedBody785_596 : StackLang.HolProg 64 :=
.seq NamedBody785_466 NamedBody785_595

def NamedBody785_597 : StackLang.HolProg 64 :=
.seq NamedBody785_465 NamedBody785_596

def NamedBody785_598 : StackLang.HolProg 64 :=
.seq NamedBody785_464 NamedBody785_597

def NamedBody785_599 : StackLang.HolProg 64 :=
.seq NamedBody785_403 NamedBody785_598

def NamedBody785_600 : StackLang.HolProg 64 :=
.seq NamedBody785_396 NamedBody785_599

def NamedBody785_601 : StackLang.HolProg 64 :=
.seq NamedBody785_395 NamedBody785_600

def NamedBody785_602 : StackLang.HolProg 64 :=
.seq NamedBody785_334 NamedBody785_601

def NamedBody785_603 : StackLang.HolProg 64 :=
.seq NamedBody785_331 NamedBody785_602

def NamedBody785_604 : StackLang.HolProg 64 :=
.seq NamedBody785_330 NamedBody785_603

def NamedBody785_605 : StackLang.HolProg 64 :=
.seq NamedBody785_329 NamedBody785_604

def NamedBody785_606 : StackLang.HolProg 64 :=
.seq NamedBody785_328 NamedBody785_605

def NamedBody785_607 : StackLang.HolProg 64 :=
.seq NamedBody785_327 NamedBody785_606

def NamedBody785_608 : StackLang.HolProg 64 :=
.seq NamedBody785_190 NamedBody785_607

def NamedBody785_609 : StackLang.HolProg 64 :=
.seq NamedBody785_189 NamedBody785_608

def NamedBody785_610 : StackLang.HolProg 64 :=
.seq NamedBody785_188 NamedBody785_609

def NamedBody785_611 : StackLang.HolProg 64 :=
.seq NamedBody785_187 NamedBody785_610

def NamedBody785_612 : StackLang.HolProg 64 :=
.seq NamedBody785_128 NamedBody785_611

def NamedBody785_613 : StackLang.HolProg 64 :=
.seq NamedBody785_123 NamedBody785_612

def NamedBody785_614 : StackLang.HolProg 64 :=
.seq NamedBody785_122 NamedBody785_613

def NamedBody785_615 : StackLang.HolProg 64 :=
.seq NamedBody785_67 NamedBody785_614

def NamedBody785_616 : StackLang.HolProg 64 :=
.seq NamedBody785_66 NamedBody785_615

def NamedBody785_617 : StackLang.HolProg 64 :=
.seq NamedBody785_65 NamedBody785_616

def NamedBody785_618 : StackLang.HolProg 64 :=
.seq NamedBody785_64 NamedBody785_617

def NamedBody785_619 : StackLang.HolProg 64 :=
.seq NamedBody785_11 NamedBody785_618

def NamedBody785_620 : StackLang.HolProg 64 :=
.seq NamedBody785_6 NamedBody785_619

def Named785 : Nat × StackLang.HolProg 64 := (785, NamedBody785_620)
theorem Named785_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed785 = Named785 := by
  kernel_rfl
#print axioms Named785_eq
end InitECandidate.Proofs.BackendStages
