import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed776
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody776_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody776_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody776_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody776_3 : StackLang.HolProg 64 :=
.seq NamedBody776_1 NamedBody776_2

def NamedBody776_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody776_3 NamedBody776_4

def NamedBody776_6 : StackLang.HolProg 64 :=
.seq NamedBody776_0 NamedBody776_5

def NamedBody776_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody776_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_10 : StackLang.HolProg 64 :=
.seq NamedBody776_8 NamedBody776_9

def NamedBody776_11 : StackLang.HolProg 64 :=
.seq NamedBody776_7 NamedBody776_10

def NamedBody776_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3532#64)

def NamedBody776_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_15 : StackLang.HolProg 64 :=
.seq NamedBody776_13 NamedBody776_14

def NamedBody776_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody776_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody776_19 : StackLang.HolProg 64 :=
.seq NamedBody776_17 NamedBody776_18

def NamedBody776_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody776_19 NamedBody776_20

def NamedBody776_22 : StackLang.HolProg 64 :=
.seq NamedBody776_16 NamedBody776_21

def NamedBody776_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody776_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 3

def NamedBody776_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody776_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody776_32 : StackLang.HolProg 64 :=
.seq NamedBody776_30 NamedBody776_31

def NamedBody776_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody776_34 : StackLang.HolProg 64 :=
.seq NamedBody776_32 NamedBody776_33

def NamedBody776_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_36 : StackLang.HolProg 64 :=
.seq NamedBody776_34 NamedBody776_35

def NamedBody776_37 : StackLang.HolProg 64 :=
.seq NamedBody776_29 NamedBody776_36

def NamedBody776_38 : StackLang.HolProg 64 :=
.seq NamedBody776_28 NamedBody776_37

def NamedBody776_39 : StackLang.HolProg 64 :=
.seq NamedBody776_27 NamedBody776_38

def NamedBody776_40 : StackLang.HolProg 64 :=
.seq NamedBody776_26 NamedBody776_39

def NamedBody776_41 : StackLang.HolProg 64 :=
.seq NamedBody776_25 NamedBody776_40

def NamedBody776_42 : StackLang.HolProg 64 :=
.seq NamedBody776_24 NamedBody776_41

def NamedBody776_43 : StackLang.HolProg 64 :=
.seq NamedBody776_23 NamedBody776_42

def NamedBody776_44 : StackLang.HolProg 64 :=
.seq NamedBody776_22 NamedBody776_43

def NamedBody776_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody776_52 : StackLang.HolProg 64 :=
.seq NamedBody776_50 NamedBody776_51

def NamedBody776_53 : StackLang.HolProg 64 :=
.seq NamedBody776_49 NamedBody776_52

def NamedBody776_54 : StackLang.HolProg 64 :=
.seq NamedBody776_48 NamedBody776_53

def NamedBody776_55 : StackLang.HolProg 64 :=
.seq NamedBody776_47 NamedBody776_54

def NamedBody776_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody776_58 : StackLang.HolProg 64 :=
.seq NamedBody776_56 NamedBody776_57

def NamedBody776_59 : StackLang.HolProg 64 :=
.call (some (NamedBody776_55, 1, 776, 2)) (Sum.inl 69) (some (NamedBody776_58, 776, 3))

def NamedBody776_60 : StackLang.HolProg 64 :=
.seq NamedBody776_46 NamedBody776_59

def NamedBody776_61 : StackLang.HolProg 64 :=
.seq NamedBody776_45 NamedBody776_60

def NamedBody776_62 : StackLang.HolProg 64 :=
.seq NamedBody776_44 NamedBody776_61

def NamedBody776_63 : StackLang.HolProg 64 :=
.seq NamedBody776_15 NamedBody776_62

def NamedBody776_64 : StackLang.HolProg 64 :=
.seq NamedBody776_12 NamedBody776_63

def NamedBody776_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody776_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody776_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3533#64)

def NamedBody776_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_71 : StackLang.HolProg 64 :=
.seq NamedBody776_69 NamedBody776_70

def NamedBody776_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody776_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody776_75 : StackLang.HolProg 64 :=
.seq NamedBody776_73 NamedBody776_74

def NamedBody776_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody776_75 NamedBody776_76

def NamedBody776_78 : StackLang.HolProg 64 :=
.seq NamedBody776_72 NamedBody776_77

def NamedBody776_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody776_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 5

def NamedBody776_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody776_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody776_88 : StackLang.HolProg 64 :=
.seq NamedBody776_86 NamedBody776_87

def NamedBody776_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody776_90 : StackLang.HolProg 64 :=
.seq NamedBody776_88 NamedBody776_89

def NamedBody776_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_92 : StackLang.HolProg 64 :=
.seq NamedBody776_90 NamedBody776_91

def NamedBody776_93 : StackLang.HolProg 64 :=
.seq NamedBody776_85 NamedBody776_92

def NamedBody776_94 : StackLang.HolProg 64 :=
.seq NamedBody776_84 NamedBody776_93

def NamedBody776_95 : StackLang.HolProg 64 :=
.seq NamedBody776_83 NamedBody776_94

def NamedBody776_96 : StackLang.HolProg 64 :=
.seq NamedBody776_82 NamedBody776_95

def NamedBody776_97 : StackLang.HolProg 64 :=
.seq NamedBody776_81 NamedBody776_96

def NamedBody776_98 : StackLang.HolProg 64 :=
.seq NamedBody776_80 NamedBody776_97

def NamedBody776_99 : StackLang.HolProg 64 :=
.seq NamedBody776_79 NamedBody776_98

def NamedBody776_100 : StackLang.HolProg 64 :=
.seq NamedBody776_78 NamedBody776_99

def NamedBody776_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody776_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_109 : StackLang.HolProg 64 :=
.seq NamedBody776_107 NamedBody776_108

def NamedBody776_110 : StackLang.HolProg 64 :=
.seq NamedBody776_106 NamedBody776_109

def NamedBody776_111 : StackLang.HolProg 64 :=
.seq NamedBody776_105 NamedBody776_110

def NamedBody776_112 : StackLang.HolProg 64 :=
.seq NamedBody776_104 NamedBody776_111

def NamedBody776_113 : StackLang.HolProg 64 :=
.seq NamedBody776_103 NamedBody776_112

def NamedBody776_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody776_116 : StackLang.HolProg 64 :=
.seq NamedBody776_114 NamedBody776_115

def NamedBody776_117 : StackLang.HolProg 64 :=
.call (some (NamedBody776_113, 1, 776, 4)) (Sum.inl 68) (some (NamedBody776_116, 776, 5))

def NamedBody776_118 : StackLang.HolProg 64 :=
.seq NamedBody776_102 NamedBody776_117

def NamedBody776_119 : StackLang.HolProg 64 :=
.seq NamedBody776_101 NamedBody776_118

def NamedBody776_120 : StackLang.HolProg 64 :=
.seq NamedBody776_100 NamedBody776_119

def NamedBody776_121 : StackLang.HolProg 64 :=
.seq NamedBody776_71 NamedBody776_120

def NamedBody776_122 : StackLang.HolProg 64 :=
.seq NamedBody776_68 NamedBody776_121

def NamedBody776_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody776_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody776_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_126 : StackLang.HolProg 64 :=
.seq NamedBody776_124 NamedBody776_125

def NamedBody776_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3534#64)

def NamedBody776_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_130 : StackLang.HolProg 64 :=
.seq NamedBody776_128 NamedBody776_129

def NamedBody776_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody776_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody776_134 : StackLang.HolProg 64 :=
.seq NamedBody776_132 NamedBody776_133

def NamedBody776_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody776_134 NamedBody776_135

def NamedBody776_137 : StackLang.HolProg 64 :=
.seq NamedBody776_131 NamedBody776_136

def NamedBody776_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody776_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 7

def NamedBody776_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody776_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody776_147 : StackLang.HolProg 64 :=
.seq NamedBody776_145 NamedBody776_146

def NamedBody776_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody776_149 : StackLang.HolProg 64 :=
.seq NamedBody776_147 NamedBody776_148

def NamedBody776_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_151 : StackLang.HolProg 64 :=
.seq NamedBody776_149 NamedBody776_150

def NamedBody776_152 : StackLang.HolProg 64 :=
.seq NamedBody776_144 NamedBody776_151

def NamedBody776_153 : StackLang.HolProg 64 :=
.seq NamedBody776_143 NamedBody776_152

def NamedBody776_154 : StackLang.HolProg 64 :=
.seq NamedBody776_142 NamedBody776_153

def NamedBody776_155 : StackLang.HolProg 64 :=
.seq NamedBody776_141 NamedBody776_154

def NamedBody776_156 : StackLang.HolProg 64 :=
.seq NamedBody776_140 NamedBody776_155

def NamedBody776_157 : StackLang.HolProg 64 :=
.seq NamedBody776_139 NamedBody776_156

def NamedBody776_158 : StackLang.HolProg 64 :=
.seq NamedBody776_138 NamedBody776_157

def NamedBody776_159 : StackLang.HolProg 64 :=
.seq NamedBody776_137 NamedBody776_158

def NamedBody776_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_168 : StackLang.HolProg 64 :=
.seq NamedBody776_166 NamedBody776_167

def NamedBody776_169 : StackLang.HolProg 64 :=
.seq NamedBody776_165 NamedBody776_168

def NamedBody776_170 : StackLang.HolProg 64 :=
.seq NamedBody776_164 NamedBody776_169

def NamedBody776_171 : StackLang.HolProg 64 :=
.seq NamedBody776_163 NamedBody776_170

def NamedBody776_172 : StackLang.HolProg 64 :=
.seq NamedBody776_162 NamedBody776_171

def NamedBody776_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_175 : StackLang.HolProg 64 :=
.seq NamedBody776_173 NamedBody776_174

def NamedBody776_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody776_177 : StackLang.HolProg 64 :=
.seq NamedBody776_175 NamedBody776_176

def NamedBody776_178 : StackLang.HolProg 64 :=
.call (some (NamedBody776_172, 1, 776, 6)) (Sum.inl 773) (some (NamedBody776_177, 776, 7))

def NamedBody776_179 : StackLang.HolProg 64 :=
.seq NamedBody776_161 NamedBody776_178

def NamedBody776_180 : StackLang.HolProg 64 :=
.seq NamedBody776_160 NamedBody776_179

def NamedBody776_181 : StackLang.HolProg 64 :=
.seq NamedBody776_159 NamedBody776_180

def NamedBody776_182 : StackLang.HolProg 64 :=
.seq NamedBody776_130 NamedBody776_181

def NamedBody776_183 : StackLang.HolProg 64 :=
.seq NamedBody776_127 NamedBody776_182

def NamedBody776_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody776_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody776_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_188 : StackLang.HolProg 64 :=
.seq NamedBody776_186 NamedBody776_187

def NamedBody776_189 : StackLang.HolProg 64 :=
.seq NamedBody776_185 NamedBody776_188

def NamedBody776_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3535#64)

def NamedBody776_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_193 : StackLang.HolProg 64 :=
.seq NamedBody776_191 NamedBody776_192

def NamedBody776_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody776_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody776_197 : StackLang.HolProg 64 :=
.seq NamedBody776_195 NamedBody776_196

def NamedBody776_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_199 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody776_197 NamedBody776_198

def NamedBody776_200 : StackLang.HolProg 64 :=
.seq NamedBody776_194 NamedBody776_199

def NamedBody776_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody776_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 9

def NamedBody776_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody776_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody776_210 : StackLang.HolProg 64 :=
.seq NamedBody776_208 NamedBody776_209

def NamedBody776_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody776_212 : StackLang.HolProg 64 :=
.seq NamedBody776_210 NamedBody776_211

def NamedBody776_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_214 : StackLang.HolProg 64 :=
.seq NamedBody776_212 NamedBody776_213

def NamedBody776_215 : StackLang.HolProg 64 :=
.seq NamedBody776_207 NamedBody776_214

def NamedBody776_216 : StackLang.HolProg 64 :=
.seq NamedBody776_206 NamedBody776_215

def NamedBody776_217 : StackLang.HolProg 64 :=
.seq NamedBody776_205 NamedBody776_216

def NamedBody776_218 : StackLang.HolProg 64 :=
.seq NamedBody776_204 NamedBody776_217

def NamedBody776_219 : StackLang.HolProg 64 :=
.seq NamedBody776_203 NamedBody776_218

def NamedBody776_220 : StackLang.HolProg 64 :=
.seq NamedBody776_202 NamedBody776_219

def NamedBody776_221 : StackLang.HolProg 64 :=
.seq NamedBody776_201 NamedBody776_220

def NamedBody776_222 : StackLang.HolProg 64 :=
.seq NamedBody776_200 NamedBody776_221

def NamedBody776_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_232 : StackLang.HolProg 64 :=
.seq NamedBody776_230 NamedBody776_231

def NamedBody776_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_234 : StackLang.HolProg 64 :=
.seq NamedBody776_232 NamedBody776_233

def NamedBody776_235 : StackLang.HolProg 64 :=
.seq NamedBody776_229 NamedBody776_234

def NamedBody776_236 : StackLang.HolProg 64 :=
.seq NamedBody776_228 NamedBody776_235

def NamedBody776_237 : StackLang.HolProg 64 :=
.seq NamedBody776_227 NamedBody776_236

def NamedBody776_238 : StackLang.HolProg 64 :=
.seq NamedBody776_226 NamedBody776_237

def NamedBody776_239 : StackLang.HolProg 64 :=
.seq NamedBody776_225 NamedBody776_238

def NamedBody776_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_243 : StackLang.HolProg 64 :=
.seq NamedBody776_241 NamedBody776_242

def NamedBody776_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_245 : StackLang.HolProg 64 :=
.seq NamedBody776_243 NamedBody776_244

def NamedBody776_246 : StackLang.HolProg 64 :=
.seq NamedBody776_240 NamedBody776_245

def NamedBody776_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody776_248 : StackLang.HolProg 64 :=
.seq NamedBody776_246 NamedBody776_247

def NamedBody776_249 : StackLang.HolProg 64 :=
.call (some (NamedBody776_239, 1, 776, 8)) (Sum.inl 728) (some (NamedBody776_248, 776, 9))

def NamedBody776_250 : StackLang.HolProg 64 :=
.seq NamedBody776_224 NamedBody776_249

def NamedBody776_251 : StackLang.HolProg 64 :=
.seq NamedBody776_223 NamedBody776_250

def NamedBody776_252 : StackLang.HolProg 64 :=
.seq NamedBody776_222 NamedBody776_251

def NamedBody776_253 : StackLang.HolProg 64 :=
.seq NamedBody776_193 NamedBody776_252

def NamedBody776_254 : StackLang.HolProg 64 :=
.seq NamedBody776_190 NamedBody776_253

def NamedBody776_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody776_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody776_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody776_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3536#64)

def NamedBody776_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_264 : StackLang.HolProg 64 :=
.seq NamedBody776_262 NamedBody776_263

def NamedBody776_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody776_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody776_268 : StackLang.HolProg 64 :=
.seq NamedBody776_266 NamedBody776_267

def NamedBody776_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_270 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody776_268 NamedBody776_269

def NamedBody776_271 : StackLang.HolProg 64 :=
.seq NamedBody776_265 NamedBody776_270

def NamedBody776_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody776_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 11

def NamedBody776_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody776_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody776_281 : StackLang.HolProg 64 :=
.seq NamedBody776_279 NamedBody776_280

def NamedBody776_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody776_283 : StackLang.HolProg 64 :=
.seq NamedBody776_281 NamedBody776_282

def NamedBody776_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_285 : StackLang.HolProg 64 :=
.seq NamedBody776_283 NamedBody776_284

def NamedBody776_286 : StackLang.HolProg 64 :=
.seq NamedBody776_278 NamedBody776_285

def NamedBody776_287 : StackLang.HolProg 64 :=
.seq NamedBody776_277 NamedBody776_286

def NamedBody776_288 : StackLang.HolProg 64 :=
.seq NamedBody776_276 NamedBody776_287

def NamedBody776_289 : StackLang.HolProg 64 :=
.seq NamedBody776_275 NamedBody776_288

def NamedBody776_290 : StackLang.HolProg 64 :=
.seq NamedBody776_274 NamedBody776_289

def NamedBody776_291 : StackLang.HolProg 64 :=
.seq NamedBody776_273 NamedBody776_290

def NamedBody776_292 : StackLang.HolProg 64 :=
.seq NamedBody776_272 NamedBody776_291

def NamedBody776_293 : StackLang.HolProg 64 :=
.seq NamedBody776_271 NamedBody776_292

def NamedBody776_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_301 : StackLang.HolProg 64 :=
.seq NamedBody776_299 NamedBody776_300

def NamedBody776_302 : StackLang.HolProg 64 :=
.seq NamedBody776_298 NamedBody776_301

def NamedBody776_303 : StackLang.HolProg 64 :=
.seq NamedBody776_297 NamedBody776_302

def NamedBody776_304 : StackLang.HolProg 64 :=
.seq NamedBody776_296 NamedBody776_303

def NamedBody776_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody776_306 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody776_307 : StackLang.HolProg 64 :=
.seq NamedBody776_305 NamedBody776_306

def NamedBody776_308 : StackLang.HolProg 64 :=
.call (some (NamedBody776_304, 1, 776, 10)) (Sum.inl 728) (some (NamedBody776_307, 776, 11))

def NamedBody776_309 : StackLang.HolProg 64 :=
.seq NamedBody776_295 NamedBody776_308

def NamedBody776_310 : StackLang.HolProg 64 :=
.seq NamedBody776_294 NamedBody776_309

def NamedBody776_311 : StackLang.HolProg 64 :=
.seq NamedBody776_293 NamedBody776_310

def NamedBody776_312 : StackLang.HolProg 64 :=
.seq NamedBody776_264 NamedBody776_311

def NamedBody776_313 : StackLang.HolProg 64 :=
.seq NamedBody776_261 NamedBody776_312

def NamedBody776_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody776_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody776_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3537#64)

def NamedBody776_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_319 : StackLang.HolProg 64 :=
.seq NamedBody776_317 NamedBody776_318

def NamedBody776_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody776_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody776_323 : StackLang.HolProg 64 :=
.seq NamedBody776_321 NamedBody776_322

def NamedBody776_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_325 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody776_323 NamedBody776_324

def NamedBody776_326 : StackLang.HolProg 64 :=
.seq NamedBody776_320 NamedBody776_325

def NamedBody776_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody776_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody776_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 13

def NamedBody776_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody776_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody776_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody776_336 : StackLang.HolProg 64 :=
.seq NamedBody776_334 NamedBody776_335

def NamedBody776_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody776_338 : StackLang.HolProg 64 :=
.seq NamedBody776_336 NamedBody776_337

def NamedBody776_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_340 : StackLang.HolProg 64 :=
.seq NamedBody776_338 NamedBody776_339

def NamedBody776_341 : StackLang.HolProg 64 :=
.seq NamedBody776_333 NamedBody776_340

def NamedBody776_342 : StackLang.HolProg 64 :=
.seq NamedBody776_332 NamedBody776_341

def NamedBody776_343 : StackLang.HolProg 64 :=
.seq NamedBody776_331 NamedBody776_342

def NamedBody776_344 : StackLang.HolProg 64 :=
.seq NamedBody776_330 NamedBody776_343

def NamedBody776_345 : StackLang.HolProg 64 :=
.seq NamedBody776_329 NamedBody776_344

def NamedBody776_346 : StackLang.HolProg 64 :=
.seq NamedBody776_328 NamedBody776_345

def NamedBody776_347 : StackLang.HolProg 64 :=
.seq NamedBody776_327 NamedBody776_346

def NamedBody776_348 : StackLang.HolProg 64 :=
.seq NamedBody776_326 NamedBody776_347

def NamedBody776_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody776_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody776_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody776_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody776_356 : StackLang.HolProg 64 :=
.seq NamedBody776_354 NamedBody776_355

def NamedBody776_357 : StackLang.HolProg 64 :=
.seq NamedBody776_353 NamedBody776_356

def NamedBody776_358 : StackLang.HolProg 64 :=
.seq NamedBody776_352 NamedBody776_357

def NamedBody776_359 : StackLang.HolProg 64 :=
.seq NamedBody776_351 NamedBody776_358

def NamedBody776_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody776_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody776_362 : StackLang.HolProg 64 :=
.seq NamedBody776_360 NamedBody776_361

def NamedBody776_363 : StackLang.HolProg 64 :=
.call (some (NamedBody776_359, 1, 776, 12)) (Sum.inl 70) (some (NamedBody776_362, 776, 13))

def NamedBody776_364 : StackLang.HolProg 64 :=
.seq NamedBody776_350 NamedBody776_363

def NamedBody776_365 : StackLang.HolProg 64 :=
.seq NamedBody776_349 NamedBody776_364

def NamedBody776_366 : StackLang.HolProg 64 :=
.seq NamedBody776_348 NamedBody776_365

def NamedBody776_367 : StackLang.HolProg 64 :=
.seq NamedBody776_319 NamedBody776_366

def NamedBody776_368 : StackLang.HolProg 64 :=
.seq NamedBody776_316 NamedBody776_367

def NamedBody776_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody776_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody776_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody776_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody776_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody776_374 : StackLang.HolProg 64 :=
.seq NamedBody776_372 NamedBody776_373

def NamedBody776_375 : StackLang.HolProg 64 :=
.seq NamedBody776_371 NamedBody776_374

def NamedBody776_376 : StackLang.HolProg 64 :=
.seq NamedBody776_370 NamedBody776_375

def NamedBody776_377 : StackLang.HolProg 64 :=
.seq NamedBody776_369 NamedBody776_376

def NamedBody776_378 : StackLang.HolProg 64 :=
.seq NamedBody776_368 NamedBody776_377

def NamedBody776_379 : StackLang.HolProg 64 :=
.seq NamedBody776_315 NamedBody776_378

def NamedBody776_380 : StackLang.HolProg 64 :=
.seq NamedBody776_314 NamedBody776_379

def NamedBody776_381 : StackLang.HolProg 64 :=
.seq NamedBody776_313 NamedBody776_380

def NamedBody776_382 : StackLang.HolProg 64 :=
.seq NamedBody776_260 NamedBody776_381

def NamedBody776_383 : StackLang.HolProg 64 :=
.seq NamedBody776_259 NamedBody776_382

def NamedBody776_384 : StackLang.HolProg 64 :=
.seq NamedBody776_258 NamedBody776_383

def NamedBody776_385 : StackLang.HolProg 64 :=
.seq NamedBody776_257 NamedBody776_384

def NamedBody776_386 : StackLang.HolProg 64 :=
.seq NamedBody776_256 NamedBody776_385

def NamedBody776_387 : StackLang.HolProg 64 :=
.seq NamedBody776_255 NamedBody776_386

def NamedBody776_388 : StackLang.HolProg 64 :=
.seq NamedBody776_254 NamedBody776_387

def NamedBody776_389 : StackLang.HolProg 64 :=
.seq NamedBody776_189 NamedBody776_388

def NamedBody776_390 : StackLang.HolProg 64 :=
.seq NamedBody776_184 NamedBody776_389

def NamedBody776_391 : StackLang.HolProg 64 :=
.seq NamedBody776_183 NamedBody776_390

def NamedBody776_392 : StackLang.HolProg 64 :=
.seq NamedBody776_126 NamedBody776_391

def NamedBody776_393 : StackLang.HolProg 64 :=
.seq NamedBody776_123 NamedBody776_392

def NamedBody776_394 : StackLang.HolProg 64 :=
.seq NamedBody776_122 NamedBody776_393

def NamedBody776_395 : StackLang.HolProg 64 :=
.seq NamedBody776_67 NamedBody776_394

def NamedBody776_396 : StackLang.HolProg 64 :=
.seq NamedBody776_66 NamedBody776_395

def NamedBody776_397 : StackLang.HolProg 64 :=
.seq NamedBody776_65 NamedBody776_396

def NamedBody776_398 : StackLang.HolProg 64 :=
.seq NamedBody776_64 NamedBody776_397

def NamedBody776_399 : StackLang.HolProg 64 :=
.seq NamedBody776_11 NamedBody776_398

def NamedBody776_400 : StackLang.HolProg 64 :=
.seq NamedBody776_6 NamedBody776_399

def Named776 : Nat × StackLang.HolProg 64 := (776, NamedBody776_400)
theorem Named776_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed776 = Named776 := by
  kernel_rfl
#print axioms Named776_eq
end InitECandidate.Proofs.BackendStages
