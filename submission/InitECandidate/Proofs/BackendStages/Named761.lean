import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed761
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody761_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody761_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_3 : StackLang.HolProg 64 :=
.seq NamedBody761_1 NamedBody761_2

def NamedBody761_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_3 NamedBody761_4

def NamedBody761_6 : StackLang.HolProg 64 :=
.seq NamedBody761_0 NamedBody761_5

def NamedBody761_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody761_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_10 : StackLang.HolProg 64 :=
.seq NamedBody761_8 NamedBody761_9

def NamedBody761_11 : StackLang.HolProg 64 :=
.seq NamedBody761_7 NamedBody761_10

def NamedBody761_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3393#64)

def NamedBody761_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_15 : StackLang.HolProg 64 :=
.seq NamedBody761_13 NamedBody761_14

def NamedBody761_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_19 : StackLang.HolProg 64 :=
.seq NamedBody761_17 NamedBody761_18

def NamedBody761_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_19 NamedBody761_20

def NamedBody761_22 : StackLang.HolProg 64 :=
.seq NamedBody761_16 NamedBody761_21

def NamedBody761_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 3

def NamedBody761_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_32 : StackLang.HolProg 64 :=
.seq NamedBody761_30 NamedBody761_31

def NamedBody761_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_34 : StackLang.HolProg 64 :=
.seq NamedBody761_32 NamedBody761_33

def NamedBody761_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_36 : StackLang.HolProg 64 :=
.seq NamedBody761_34 NamedBody761_35

def NamedBody761_37 : StackLang.HolProg 64 :=
.seq NamedBody761_29 NamedBody761_36

def NamedBody761_38 : StackLang.HolProg 64 :=
.seq NamedBody761_28 NamedBody761_37

def NamedBody761_39 : StackLang.HolProg 64 :=
.seq NamedBody761_27 NamedBody761_38

def NamedBody761_40 : StackLang.HolProg 64 :=
.seq NamedBody761_26 NamedBody761_39

def NamedBody761_41 : StackLang.HolProg 64 :=
.seq NamedBody761_25 NamedBody761_40

def NamedBody761_42 : StackLang.HolProg 64 :=
.seq NamedBody761_24 NamedBody761_41

def NamedBody761_43 : StackLang.HolProg 64 :=
.seq NamedBody761_23 NamedBody761_42

def NamedBody761_44 : StackLang.HolProg 64 :=
.seq NamedBody761_22 NamedBody761_43

def NamedBody761_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody761_52 : StackLang.HolProg 64 :=
.seq NamedBody761_50 NamedBody761_51

def NamedBody761_53 : StackLang.HolProg 64 :=
.seq NamedBody761_49 NamedBody761_52

def NamedBody761_54 : StackLang.HolProg 64 :=
.seq NamedBody761_48 NamedBody761_53

def NamedBody761_55 : StackLang.HolProg 64 :=
.seq NamedBody761_47 NamedBody761_54

def NamedBody761_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_58 : StackLang.HolProg 64 :=
.seq NamedBody761_56 NamedBody761_57

def NamedBody761_59 : StackLang.HolProg 64 :=
.call (some (NamedBody761_55, 1, 761, 2)) (Sum.inl 69) (some (NamedBody761_58, 761, 3))

def NamedBody761_60 : StackLang.HolProg 64 :=
.seq NamedBody761_46 NamedBody761_59

def NamedBody761_61 : StackLang.HolProg 64 :=
.seq NamedBody761_45 NamedBody761_60

def NamedBody761_62 : StackLang.HolProg 64 :=
.seq NamedBody761_44 NamedBody761_61

def NamedBody761_63 : StackLang.HolProg 64 :=
.seq NamedBody761_15 NamedBody761_62

def NamedBody761_64 : StackLang.HolProg 64 :=
.seq NamedBody761_12 NamedBody761_63

def NamedBody761_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 864#64)

def NamedBody761_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3394#64)

def NamedBody761_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_71 : StackLang.HolProg 64 :=
.seq NamedBody761_69 NamedBody761_70

def NamedBody761_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_75 : StackLang.HolProg 64 :=
.seq NamedBody761_73 NamedBody761_74

def NamedBody761_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_75 NamedBody761_76

def NamedBody761_78 : StackLang.HolProg 64 :=
.seq NamedBody761_72 NamedBody761_77

def NamedBody761_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 5

def NamedBody761_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_88 : StackLang.HolProg 64 :=
.seq NamedBody761_86 NamedBody761_87

def NamedBody761_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_90 : StackLang.HolProg 64 :=
.seq NamedBody761_88 NamedBody761_89

def NamedBody761_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_92 : StackLang.HolProg 64 :=
.seq NamedBody761_90 NamedBody761_91

def NamedBody761_93 : StackLang.HolProg 64 :=
.seq NamedBody761_85 NamedBody761_92

def NamedBody761_94 : StackLang.HolProg 64 :=
.seq NamedBody761_84 NamedBody761_93

def NamedBody761_95 : StackLang.HolProg 64 :=
.seq NamedBody761_83 NamedBody761_94

def NamedBody761_96 : StackLang.HolProg 64 :=
.seq NamedBody761_82 NamedBody761_95

def NamedBody761_97 : StackLang.HolProg 64 :=
.seq NamedBody761_81 NamedBody761_96

def NamedBody761_98 : StackLang.HolProg 64 :=
.seq NamedBody761_80 NamedBody761_97

def NamedBody761_99 : StackLang.HolProg 64 :=
.seq NamedBody761_79 NamedBody761_98

def NamedBody761_100 : StackLang.HolProg 64 :=
.seq NamedBody761_78 NamedBody761_99

def NamedBody761_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody761_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_109 : StackLang.HolProg 64 :=
.seq NamedBody761_107 NamedBody761_108

def NamedBody761_110 : StackLang.HolProg 64 :=
.seq NamedBody761_106 NamedBody761_109

def NamedBody761_111 : StackLang.HolProg 64 :=
.seq NamedBody761_105 NamedBody761_110

def NamedBody761_112 : StackLang.HolProg 64 :=
.seq NamedBody761_104 NamedBody761_111

def NamedBody761_113 : StackLang.HolProg 64 :=
.seq NamedBody761_103 NamedBody761_112

def NamedBody761_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_116 : StackLang.HolProg 64 :=
.seq NamedBody761_114 NamedBody761_115

def NamedBody761_117 : StackLang.HolProg 64 :=
.call (some (NamedBody761_113, 1, 761, 4)) (Sum.inl 68) (some (NamedBody761_116, 761, 5))

def NamedBody761_118 : StackLang.HolProg 64 :=
.seq NamedBody761_102 NamedBody761_117

def NamedBody761_119 : StackLang.HolProg 64 :=
.seq NamedBody761_101 NamedBody761_118

def NamedBody761_120 : StackLang.HolProg 64 :=
.seq NamedBody761_100 NamedBody761_119

def NamedBody761_121 : StackLang.HolProg 64 :=
.seq NamedBody761_71 NamedBody761_120

def NamedBody761_122 : StackLang.HolProg 64 :=
.seq NamedBody761_68 NamedBody761_121

def NamedBody761_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody761_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody761_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def NamedBody761_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody761_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_133 : StackLang.HolProg 64 :=
.seq NamedBody761_131 NamedBody761_132

def NamedBody761_134 : StackLang.HolProg 64 :=
.seq NamedBody761_130 NamedBody761_133

def NamedBody761_135 : StackLang.HolProg 64 :=
.seq NamedBody761_129 NamedBody761_134

def NamedBody761_136 : StackLang.HolProg 64 :=
.seq NamedBody761_128 NamedBody761_135

def NamedBody761_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3395#64)

def NamedBody761_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_140 : StackLang.HolProg 64 :=
.seq NamedBody761_138 NamedBody761_139

def NamedBody761_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_144 : StackLang.HolProg 64 :=
.seq NamedBody761_142 NamedBody761_143

def NamedBody761_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_144 NamedBody761_145

def NamedBody761_147 : StackLang.HolProg 64 :=
.seq NamedBody761_141 NamedBody761_146

def NamedBody761_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 7

def NamedBody761_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_157 : StackLang.HolProg 64 :=
.seq NamedBody761_155 NamedBody761_156

def NamedBody761_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_159 : StackLang.HolProg 64 :=
.seq NamedBody761_157 NamedBody761_158

def NamedBody761_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_161 : StackLang.HolProg 64 :=
.seq NamedBody761_159 NamedBody761_160

def NamedBody761_162 : StackLang.HolProg 64 :=
.seq NamedBody761_154 NamedBody761_161

def NamedBody761_163 : StackLang.HolProg 64 :=
.seq NamedBody761_153 NamedBody761_162

def NamedBody761_164 : StackLang.HolProg 64 :=
.seq NamedBody761_152 NamedBody761_163

def NamedBody761_165 : StackLang.HolProg 64 :=
.seq NamedBody761_151 NamedBody761_164

def NamedBody761_166 : StackLang.HolProg 64 :=
.seq NamedBody761_150 NamedBody761_165

def NamedBody761_167 : StackLang.HolProg 64 :=
.seq NamedBody761_149 NamedBody761_166

def NamedBody761_168 : StackLang.HolProg 64 :=
.seq NamedBody761_148 NamedBody761_167

def NamedBody761_169 : StackLang.HolProg 64 :=
.seq NamedBody761_147 NamedBody761_168

def NamedBody761_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_178 : StackLang.HolProg 64 :=
.seq NamedBody761_176 NamedBody761_177

def NamedBody761_179 : StackLang.HolProg 64 :=
.seq NamedBody761_175 NamedBody761_178

def NamedBody761_180 : StackLang.HolProg 64 :=
.seq NamedBody761_174 NamedBody761_179

def NamedBody761_181 : StackLang.HolProg 64 :=
.seq NamedBody761_173 NamedBody761_180

def NamedBody761_182 : StackLang.HolProg 64 :=
.seq NamedBody761_172 NamedBody761_181

def NamedBody761_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_185 : StackLang.HolProg 64 :=
.seq NamedBody761_183 NamedBody761_184

def NamedBody761_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_187 : StackLang.HolProg 64 :=
.seq NamedBody761_185 NamedBody761_186

def NamedBody761_188 : StackLang.HolProg 64 :=
.call (some (NamedBody761_182, 1, 761, 6)) (Sum.inl 752) (some (NamedBody761_187, 761, 7))

def NamedBody761_189 : StackLang.HolProg 64 :=
.seq NamedBody761_171 NamedBody761_188

def NamedBody761_190 : StackLang.HolProg 64 :=
.seq NamedBody761_170 NamedBody761_189

def NamedBody761_191 : StackLang.HolProg 64 :=
.seq NamedBody761_169 NamedBody761_190

def NamedBody761_192 : StackLang.HolProg 64 :=
.seq NamedBody761_140 NamedBody761_191

def NamedBody761_193 : StackLang.HolProg 64 :=
.seq NamedBody761_137 NamedBody761_192

def NamedBody761_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody761_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody761_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody761_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_200 : StackLang.HolProg 64 :=
.seq NamedBody761_198 NamedBody761_199

def NamedBody761_201 : StackLang.HolProg 64 :=
.seq NamedBody761_197 NamedBody761_200

def NamedBody761_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3396#64)

def NamedBody761_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_205 : StackLang.HolProg 64 :=
.seq NamedBody761_203 NamedBody761_204

def NamedBody761_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_209 : StackLang.HolProg 64 :=
.seq NamedBody761_207 NamedBody761_208

def NamedBody761_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_211 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_209 NamedBody761_210

def NamedBody761_212 : StackLang.HolProg 64 :=
.seq NamedBody761_206 NamedBody761_211

def NamedBody761_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 9

def NamedBody761_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_222 : StackLang.HolProg 64 :=
.seq NamedBody761_220 NamedBody761_221

def NamedBody761_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_224 : StackLang.HolProg 64 :=
.seq NamedBody761_222 NamedBody761_223

def NamedBody761_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_226 : StackLang.HolProg 64 :=
.seq NamedBody761_224 NamedBody761_225

def NamedBody761_227 : StackLang.HolProg 64 :=
.seq NamedBody761_219 NamedBody761_226

def NamedBody761_228 : StackLang.HolProg 64 :=
.seq NamedBody761_218 NamedBody761_227

def NamedBody761_229 : StackLang.HolProg 64 :=
.seq NamedBody761_217 NamedBody761_228

def NamedBody761_230 : StackLang.HolProg 64 :=
.seq NamedBody761_216 NamedBody761_229

def NamedBody761_231 : StackLang.HolProg 64 :=
.seq NamedBody761_215 NamedBody761_230

def NamedBody761_232 : StackLang.HolProg 64 :=
.seq NamedBody761_214 NamedBody761_231

def NamedBody761_233 : StackLang.HolProg 64 :=
.seq NamedBody761_213 NamedBody761_232

def NamedBody761_234 : StackLang.HolProg 64 :=
.seq NamedBody761_212 NamedBody761_233

def NamedBody761_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_242 : StackLang.HolProg 64 :=
.seq NamedBody761_240 NamedBody761_241

def NamedBody761_243 : StackLang.HolProg 64 :=
.seq NamedBody761_239 NamedBody761_242

def NamedBody761_244 : StackLang.HolProg 64 :=
.seq NamedBody761_238 NamedBody761_243

def NamedBody761_245 : StackLang.HolProg 64 :=
.seq NamedBody761_237 NamedBody761_244

def NamedBody761_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_248 : StackLang.HolProg 64 :=
.seq NamedBody761_246 NamedBody761_247

def NamedBody761_249 : StackLang.HolProg 64 :=
.call (some (NamedBody761_245, 1, 761, 8)) (Sum.inl 752) (some (NamedBody761_248, 761, 9))

def NamedBody761_250 : StackLang.HolProg 64 :=
.seq NamedBody761_236 NamedBody761_249

def NamedBody761_251 : StackLang.HolProg 64 :=
.seq NamedBody761_235 NamedBody761_250

def NamedBody761_252 : StackLang.HolProg 64 :=
.seq NamedBody761_234 NamedBody761_251

def NamedBody761_253 : StackLang.HolProg 64 :=
.seq NamedBody761_205 NamedBody761_252

def NamedBody761_254 : StackLang.HolProg 64 :=
.seq NamedBody761_202 NamedBody761_253

def NamedBody761_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody761_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_258 : StackLang.HolProg 64 :=
.seq NamedBody761_256 NamedBody761_257

def NamedBody761_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3397#64)

def NamedBody761_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_262 : StackLang.HolProg 64 :=
.seq NamedBody761_260 NamedBody761_261

def NamedBody761_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_266 : StackLang.HolProg 64 :=
.seq NamedBody761_264 NamedBody761_265

def NamedBody761_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_266 NamedBody761_267

def NamedBody761_269 : StackLang.HolProg 64 :=
.seq NamedBody761_263 NamedBody761_268

def NamedBody761_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 11

def NamedBody761_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_279 : StackLang.HolProg 64 :=
.seq NamedBody761_277 NamedBody761_278

def NamedBody761_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_281 : StackLang.HolProg 64 :=
.seq NamedBody761_279 NamedBody761_280

def NamedBody761_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_283 : StackLang.HolProg 64 :=
.seq NamedBody761_281 NamedBody761_282

def NamedBody761_284 : StackLang.HolProg 64 :=
.seq NamedBody761_276 NamedBody761_283

def NamedBody761_285 : StackLang.HolProg 64 :=
.seq NamedBody761_275 NamedBody761_284

def NamedBody761_286 : StackLang.HolProg 64 :=
.seq NamedBody761_274 NamedBody761_285

def NamedBody761_287 : StackLang.HolProg 64 :=
.seq NamedBody761_273 NamedBody761_286

def NamedBody761_288 : StackLang.HolProg 64 :=
.seq NamedBody761_272 NamedBody761_287

def NamedBody761_289 : StackLang.HolProg 64 :=
.seq NamedBody761_271 NamedBody761_288

def NamedBody761_290 : StackLang.HolProg 64 :=
.seq NamedBody761_270 NamedBody761_289

def NamedBody761_291 : StackLang.HolProg 64 :=
.seq NamedBody761_269 NamedBody761_290

def NamedBody761_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_301 : StackLang.HolProg 64 :=
.seq NamedBody761_299 NamedBody761_300

def NamedBody761_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_305 : StackLang.HolProg 64 :=
.seq NamedBody761_303 NamedBody761_304

def NamedBody761_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_308 : StackLang.HolProg 64 :=
.seq NamedBody761_306 NamedBody761_307

def NamedBody761_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_310 : StackLang.HolProg 64 :=
.seq NamedBody761_308 NamedBody761_309

def NamedBody761_311 : StackLang.HolProg 64 :=
.seq NamedBody761_305 NamedBody761_310

def NamedBody761_312 : StackLang.HolProg 64 :=
.seq NamedBody761_302 NamedBody761_311

def NamedBody761_313 : StackLang.HolProg 64 :=
.seq NamedBody761_301 NamedBody761_312

def NamedBody761_314 : StackLang.HolProg 64 :=
.seq NamedBody761_298 NamedBody761_313

def NamedBody761_315 : StackLang.HolProg 64 :=
.seq NamedBody761_297 NamedBody761_314

def NamedBody761_316 : StackLang.HolProg 64 :=
.seq NamedBody761_296 NamedBody761_315

def NamedBody761_317 : StackLang.HolProg 64 :=
.seq NamedBody761_295 NamedBody761_316

def NamedBody761_318 : StackLang.HolProg 64 :=
.seq NamedBody761_294 NamedBody761_317

def NamedBody761_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_322 : StackLang.HolProg 64 :=
.seq NamedBody761_320 NamedBody761_321

def NamedBody761_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_326 : StackLang.HolProg 64 :=
.seq NamedBody761_324 NamedBody761_325

def NamedBody761_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_329 : StackLang.HolProg 64 :=
.seq NamedBody761_327 NamedBody761_328

def NamedBody761_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_331 : StackLang.HolProg 64 :=
.seq NamedBody761_329 NamedBody761_330

def NamedBody761_332 : StackLang.HolProg 64 :=
.seq NamedBody761_326 NamedBody761_331

def NamedBody761_333 : StackLang.HolProg 64 :=
.seq NamedBody761_323 NamedBody761_332

def NamedBody761_334 : StackLang.HolProg 64 :=
.seq NamedBody761_322 NamedBody761_333

def NamedBody761_335 : StackLang.HolProg 64 :=
.seq NamedBody761_319 NamedBody761_334

def NamedBody761_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_337 : StackLang.HolProg 64 :=
.seq NamedBody761_335 NamedBody761_336

def NamedBody761_338 : StackLang.HolProg 64 :=
.call (some (NamedBody761_318, 1, 761, 10)) (Sum.inl 753) (some (NamedBody761_337, 761, 11))

def NamedBody761_339 : StackLang.HolProg 64 :=
.seq NamedBody761_293 NamedBody761_338

def NamedBody761_340 : StackLang.HolProg 64 :=
.seq NamedBody761_292 NamedBody761_339

def NamedBody761_341 : StackLang.HolProg 64 :=
.seq NamedBody761_291 NamedBody761_340

def NamedBody761_342 : StackLang.HolProg 64 :=
.seq NamedBody761_262 NamedBody761_341

def NamedBody761_343 : StackLang.HolProg 64 :=
.seq NamedBody761_259 NamedBody761_342

def NamedBody761_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody761_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_347 : StackLang.HolProg 64 :=
.seq NamedBody761_345 NamedBody761_346

def NamedBody761_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3398#64)

def NamedBody761_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_351 : StackLang.HolProg 64 :=
.seq NamedBody761_349 NamedBody761_350

def NamedBody761_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_355 : StackLang.HolProg 64 :=
.seq NamedBody761_353 NamedBody761_354

def NamedBody761_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_357 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_355 NamedBody761_356

def NamedBody761_358 : StackLang.HolProg 64 :=
.seq NamedBody761_352 NamedBody761_357

def NamedBody761_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 13

def NamedBody761_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_368 : StackLang.HolProg 64 :=
.seq NamedBody761_366 NamedBody761_367

def NamedBody761_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_370 : StackLang.HolProg 64 :=
.seq NamedBody761_368 NamedBody761_369

def NamedBody761_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_372 : StackLang.HolProg 64 :=
.seq NamedBody761_370 NamedBody761_371

def NamedBody761_373 : StackLang.HolProg 64 :=
.seq NamedBody761_365 NamedBody761_372

def NamedBody761_374 : StackLang.HolProg 64 :=
.seq NamedBody761_364 NamedBody761_373

def NamedBody761_375 : StackLang.HolProg 64 :=
.seq NamedBody761_363 NamedBody761_374

def NamedBody761_376 : StackLang.HolProg 64 :=
.seq NamedBody761_362 NamedBody761_375

def NamedBody761_377 : StackLang.HolProg 64 :=
.seq NamedBody761_361 NamedBody761_376

def NamedBody761_378 : StackLang.HolProg 64 :=
.seq NamedBody761_360 NamedBody761_377

def NamedBody761_379 : StackLang.HolProg 64 :=
.seq NamedBody761_359 NamedBody761_378

def NamedBody761_380 : StackLang.HolProg 64 :=
.seq NamedBody761_358 NamedBody761_379

def NamedBody761_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_388 : StackLang.HolProg 64 :=
.seq NamedBody761_386 NamedBody761_387

def NamedBody761_389 : StackLang.HolProg 64 :=
.seq NamedBody761_385 NamedBody761_388

def NamedBody761_390 : StackLang.HolProg 64 :=
.seq NamedBody761_384 NamedBody761_389

def NamedBody761_391 : StackLang.HolProg 64 :=
.seq NamedBody761_383 NamedBody761_390

def NamedBody761_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_393 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_394 : StackLang.HolProg 64 :=
.seq NamedBody761_392 NamedBody761_393

def NamedBody761_395 : StackLang.HolProg 64 :=
.call (some (NamedBody761_391, 1, 761, 12)) (Sum.inl 750) (some (NamedBody761_394, 761, 13))

def NamedBody761_396 : StackLang.HolProg 64 :=
.seq NamedBody761_382 NamedBody761_395

def NamedBody761_397 : StackLang.HolProg 64 :=
.seq NamedBody761_381 NamedBody761_396

def NamedBody761_398 : StackLang.HolProg 64 :=
.seq NamedBody761_380 NamedBody761_397

def NamedBody761_399 : StackLang.HolProg 64 :=
.seq NamedBody761_351 NamedBody761_398

def NamedBody761_400 : StackLang.HolProg 64 :=
.seq NamedBody761_348 NamedBody761_399

def NamedBody761_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody761_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_404 : StackLang.HolProg 64 :=
.seq NamedBody761_402 NamedBody761_403

def NamedBody761_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3399#64)

def NamedBody761_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_408 : StackLang.HolProg 64 :=
.seq NamedBody761_406 NamedBody761_407

def NamedBody761_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_412 : StackLang.HolProg 64 :=
.seq NamedBody761_410 NamedBody761_411

def NamedBody761_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_414 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_412 NamedBody761_413

def NamedBody761_415 : StackLang.HolProg 64 :=
.seq NamedBody761_409 NamedBody761_414

def NamedBody761_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 15

def NamedBody761_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_425 : StackLang.HolProg 64 :=
.seq NamedBody761_423 NamedBody761_424

def NamedBody761_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_427 : StackLang.HolProg 64 :=
.seq NamedBody761_425 NamedBody761_426

def NamedBody761_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_429 : StackLang.HolProg 64 :=
.seq NamedBody761_427 NamedBody761_428

def NamedBody761_430 : StackLang.HolProg 64 :=
.seq NamedBody761_422 NamedBody761_429

def NamedBody761_431 : StackLang.HolProg 64 :=
.seq NamedBody761_421 NamedBody761_430

def NamedBody761_432 : StackLang.HolProg 64 :=
.seq NamedBody761_420 NamedBody761_431

def NamedBody761_433 : StackLang.HolProg 64 :=
.seq NamedBody761_419 NamedBody761_432

def NamedBody761_434 : StackLang.HolProg 64 :=
.seq NamedBody761_418 NamedBody761_433

def NamedBody761_435 : StackLang.HolProg 64 :=
.seq NamedBody761_417 NamedBody761_434

def NamedBody761_436 : StackLang.HolProg 64 :=
.seq NamedBody761_416 NamedBody761_435

def NamedBody761_437 : StackLang.HolProg 64 :=
.seq NamedBody761_415 NamedBody761_436

def NamedBody761_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_447 : StackLang.HolProg 64 :=
.seq NamedBody761_445 NamedBody761_446

def NamedBody761_448 : StackLang.HolProg 64 :=
.seq NamedBody761_444 NamedBody761_447

def NamedBody761_449 : StackLang.HolProg 64 :=
.seq NamedBody761_443 NamedBody761_448

def NamedBody761_450 : StackLang.HolProg 64 :=
.seq NamedBody761_442 NamedBody761_449

def NamedBody761_451 : StackLang.HolProg 64 :=
.seq NamedBody761_441 NamedBody761_450

def NamedBody761_452 : StackLang.HolProg 64 :=
.seq NamedBody761_440 NamedBody761_451

def NamedBody761_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_456 : StackLang.HolProg 64 :=
.seq NamedBody761_454 NamedBody761_455

def NamedBody761_457 : StackLang.HolProg 64 :=
.seq NamedBody761_453 NamedBody761_456

def NamedBody761_458 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_459 : StackLang.HolProg 64 :=
.seq NamedBody761_457 NamedBody761_458

def NamedBody761_460 : StackLang.HolProg 64 :=
.call (some (NamedBody761_452, 1, 761, 14)) (Sum.inl 754) (some (NamedBody761_459, 761, 15))

def NamedBody761_461 : StackLang.HolProg 64 :=
.seq NamedBody761_439 NamedBody761_460

def NamedBody761_462 : StackLang.HolProg 64 :=
.seq NamedBody761_438 NamedBody761_461

def NamedBody761_463 : StackLang.HolProg 64 :=
.seq NamedBody761_437 NamedBody761_462

def NamedBody761_464 : StackLang.HolProg 64 :=
.seq NamedBody761_408 NamedBody761_463

def NamedBody761_465 : StackLang.HolProg 64 :=
.seq NamedBody761_405 NamedBody761_464

def NamedBody761_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody761_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_471 : StackLang.HolProg 64 :=
.seq NamedBody761_469 NamedBody761_470

def NamedBody761_472 : StackLang.HolProg 64 :=
.seq NamedBody761_468 NamedBody761_471

def NamedBody761_473 : StackLang.HolProg 64 :=
.seq NamedBody761_467 NamedBody761_472

def NamedBody761_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3400#64)

def NamedBody761_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_477 : StackLang.HolProg 64 :=
.seq NamedBody761_475 NamedBody761_476

def NamedBody761_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_481 : StackLang.HolProg 64 :=
.seq NamedBody761_479 NamedBody761_480

def NamedBody761_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_483 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_481 NamedBody761_482

def NamedBody761_484 : StackLang.HolProg 64 :=
.seq NamedBody761_478 NamedBody761_483

def NamedBody761_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 17

def NamedBody761_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_494 : StackLang.HolProg 64 :=
.seq NamedBody761_492 NamedBody761_493

def NamedBody761_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_496 : StackLang.HolProg 64 :=
.seq NamedBody761_494 NamedBody761_495

def NamedBody761_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_498 : StackLang.HolProg 64 :=
.seq NamedBody761_496 NamedBody761_497

def NamedBody761_499 : StackLang.HolProg 64 :=
.seq NamedBody761_491 NamedBody761_498

def NamedBody761_500 : StackLang.HolProg 64 :=
.seq NamedBody761_490 NamedBody761_499

def NamedBody761_501 : StackLang.HolProg 64 :=
.seq NamedBody761_489 NamedBody761_500

def NamedBody761_502 : StackLang.HolProg 64 :=
.seq NamedBody761_488 NamedBody761_501

def NamedBody761_503 : StackLang.HolProg 64 :=
.seq NamedBody761_487 NamedBody761_502

def NamedBody761_504 : StackLang.HolProg 64 :=
.seq NamedBody761_486 NamedBody761_503

def NamedBody761_505 : StackLang.HolProg 64 :=
.seq NamedBody761_485 NamedBody761_504

def NamedBody761_506 : StackLang.HolProg 64 :=
.seq NamedBody761_484 NamedBody761_505

def NamedBody761_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_517 : StackLang.HolProg 64 :=
.seq NamedBody761_515 NamedBody761_516

def NamedBody761_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_519 : StackLang.HolProg 64 :=
.seq NamedBody761_517 NamedBody761_518

def NamedBody761_520 : StackLang.HolProg 64 :=
.seq NamedBody761_514 NamedBody761_519

def NamedBody761_521 : StackLang.HolProg 64 :=
.seq NamedBody761_513 NamedBody761_520

def NamedBody761_522 : StackLang.HolProg 64 :=
.seq NamedBody761_512 NamedBody761_521

def NamedBody761_523 : StackLang.HolProg 64 :=
.seq NamedBody761_511 NamedBody761_522

def NamedBody761_524 : StackLang.HolProg 64 :=
.seq NamedBody761_510 NamedBody761_523

def NamedBody761_525 : StackLang.HolProg 64 :=
.seq NamedBody761_509 NamedBody761_524

def NamedBody761_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody761_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_530 : StackLang.HolProg 64 :=
.seq NamedBody761_528 NamedBody761_529

def NamedBody761_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody761_532 : StackLang.HolProg 64 :=
.seq NamedBody761_530 NamedBody761_531

def NamedBody761_533 : StackLang.HolProg 64 :=
.seq NamedBody761_527 NamedBody761_532

def NamedBody761_534 : StackLang.HolProg 64 :=
.seq NamedBody761_526 NamedBody761_533

def NamedBody761_535 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_536 : StackLang.HolProg 64 :=
.seq NamedBody761_534 NamedBody761_535

def NamedBody761_537 : StackLang.HolProg 64 :=
.call (some (NamedBody761_525, 1, 761, 16)) (Sum.inl 752) (some (NamedBody761_536, 761, 17))

def NamedBody761_538 : StackLang.HolProg 64 :=
.seq NamedBody761_508 NamedBody761_537

def NamedBody761_539 : StackLang.HolProg 64 :=
.seq NamedBody761_507 NamedBody761_538

def NamedBody761_540 : StackLang.HolProg 64 :=
.seq NamedBody761_506 NamedBody761_539

def NamedBody761_541 : StackLang.HolProg 64 :=
.seq NamedBody761_477 NamedBody761_540

def NamedBody761_542 : StackLang.HolProg 64 :=
.seq NamedBody761_474 NamedBody761_541

def NamedBody761_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody761_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody761_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3401#64)

def NamedBody761_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_552 : StackLang.HolProg 64 :=
.seq NamedBody761_550 NamedBody761_551

def NamedBody761_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_556 : StackLang.HolProg 64 :=
.seq NamedBody761_554 NamedBody761_555

def NamedBody761_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_558 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_556 NamedBody761_557

def NamedBody761_559 : StackLang.HolProg 64 :=
.seq NamedBody761_553 NamedBody761_558

def NamedBody761_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 19

def NamedBody761_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_569 : StackLang.HolProg 64 :=
.seq NamedBody761_567 NamedBody761_568

def NamedBody761_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_571 : StackLang.HolProg 64 :=
.seq NamedBody761_569 NamedBody761_570

def NamedBody761_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_573 : StackLang.HolProg 64 :=
.seq NamedBody761_571 NamedBody761_572

def NamedBody761_574 : StackLang.HolProg 64 :=
.seq NamedBody761_566 NamedBody761_573

def NamedBody761_575 : StackLang.HolProg 64 :=
.seq NamedBody761_565 NamedBody761_574

def NamedBody761_576 : StackLang.HolProg 64 :=
.seq NamedBody761_564 NamedBody761_575

def NamedBody761_577 : StackLang.HolProg 64 :=
.seq NamedBody761_563 NamedBody761_576

def NamedBody761_578 : StackLang.HolProg 64 :=
.seq NamedBody761_562 NamedBody761_577

def NamedBody761_579 : StackLang.HolProg 64 :=
.seq NamedBody761_561 NamedBody761_578

def NamedBody761_580 : StackLang.HolProg 64 :=
.seq NamedBody761_560 NamedBody761_579

def NamedBody761_581 : StackLang.HolProg 64 :=
.seq NamedBody761_559 NamedBody761_580

def NamedBody761_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_591 : StackLang.HolProg 64 :=
.seq NamedBody761_589 NamedBody761_590

def NamedBody761_592 : StackLang.HolProg 64 :=
.seq NamedBody761_588 NamedBody761_591

def NamedBody761_593 : StackLang.HolProg 64 :=
.seq NamedBody761_587 NamedBody761_592

def NamedBody761_594 : StackLang.HolProg 64 :=
.seq NamedBody761_586 NamedBody761_593

def NamedBody761_595 : StackLang.HolProg 64 :=
.seq NamedBody761_585 NamedBody761_594

def NamedBody761_596 : StackLang.HolProg 64 :=
.seq NamedBody761_584 NamedBody761_595

def NamedBody761_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody761_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_600 : StackLang.HolProg 64 :=
.seq NamedBody761_598 NamedBody761_599

def NamedBody761_601 : StackLang.HolProg 64 :=
.seq NamedBody761_597 NamedBody761_600

def NamedBody761_602 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_603 : StackLang.HolProg 64 :=
.seq NamedBody761_601 NamedBody761_602

def NamedBody761_604 : StackLang.HolProg 64 :=
.call (some (NamedBody761_596, 1, 761, 18)) (Sum.inl 752) (some (NamedBody761_603, 761, 19))

def NamedBody761_605 : StackLang.HolProg 64 :=
.seq NamedBody761_583 NamedBody761_604

def NamedBody761_606 : StackLang.HolProg 64 :=
.seq NamedBody761_582 NamedBody761_605

def NamedBody761_607 : StackLang.HolProg 64 :=
.seq NamedBody761_581 NamedBody761_606

def NamedBody761_608 : StackLang.HolProg 64 :=
.seq NamedBody761_552 NamedBody761_607

def NamedBody761_609 : StackLang.HolProg 64 :=
.seq NamedBody761_549 NamedBody761_608

def NamedBody761_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody761_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody761_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3402#64)

def NamedBody761_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_617 : StackLang.HolProg 64 :=
.seq NamedBody761_615 NamedBody761_616

def NamedBody761_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_621 : StackLang.HolProg 64 :=
.seq NamedBody761_619 NamedBody761_620

def NamedBody761_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_623 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_621 NamedBody761_622

def NamedBody761_624 : StackLang.HolProg 64 :=
.seq NamedBody761_618 NamedBody761_623

def NamedBody761_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 21

def NamedBody761_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_634 : StackLang.HolProg 64 :=
.seq NamedBody761_632 NamedBody761_633

def NamedBody761_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_636 : StackLang.HolProg 64 :=
.seq NamedBody761_634 NamedBody761_635

def NamedBody761_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_638 : StackLang.HolProg 64 :=
.seq NamedBody761_636 NamedBody761_637

def NamedBody761_639 : StackLang.HolProg 64 :=
.seq NamedBody761_631 NamedBody761_638

def NamedBody761_640 : StackLang.HolProg 64 :=
.seq NamedBody761_630 NamedBody761_639

def NamedBody761_641 : StackLang.HolProg 64 :=
.seq NamedBody761_629 NamedBody761_640

def NamedBody761_642 : StackLang.HolProg 64 :=
.seq NamedBody761_628 NamedBody761_641

def NamedBody761_643 : StackLang.HolProg 64 :=
.seq NamedBody761_627 NamedBody761_642

def NamedBody761_644 : StackLang.HolProg 64 :=
.seq NamedBody761_626 NamedBody761_643

def NamedBody761_645 : StackLang.HolProg 64 :=
.seq NamedBody761_625 NamedBody761_644

def NamedBody761_646 : StackLang.HolProg 64 :=
.seq NamedBody761_624 NamedBody761_645

def NamedBody761_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_654 : StackLang.HolProg 64 :=
.seq NamedBody761_652 NamedBody761_653

def NamedBody761_655 : StackLang.HolProg 64 :=
.seq NamedBody761_651 NamedBody761_654

def NamedBody761_656 : StackLang.HolProg 64 :=
.seq NamedBody761_650 NamedBody761_655

def NamedBody761_657 : StackLang.HolProg 64 :=
.seq NamedBody761_649 NamedBody761_656

def NamedBody761_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody761_659 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_660 : StackLang.HolProg 64 :=
.seq NamedBody761_658 NamedBody761_659

def NamedBody761_661 : StackLang.HolProg 64 :=
.call (some (NamedBody761_657, 1, 761, 20)) (Sum.inl 751) (some (NamedBody761_660, 761, 21))

def NamedBody761_662 : StackLang.HolProg 64 :=
.seq NamedBody761_648 NamedBody761_661

def NamedBody761_663 : StackLang.HolProg 64 :=
.seq NamedBody761_647 NamedBody761_662

def NamedBody761_664 : StackLang.HolProg 64 :=
.seq NamedBody761_646 NamedBody761_663

def NamedBody761_665 : StackLang.HolProg 64 :=
.seq NamedBody761_617 NamedBody761_664

def NamedBody761_666 : StackLang.HolProg 64 :=
.seq NamedBody761_614 NamedBody761_665

def NamedBody761_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody761_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3403#64)

def NamedBody761_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_672 : StackLang.HolProg 64 :=
.seq NamedBody761_670 NamedBody761_671

def NamedBody761_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody761_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody761_676 : StackLang.HolProg 64 :=
.seq NamedBody761_674 NamedBody761_675

def NamedBody761_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_678 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody761_676 NamedBody761_677

def NamedBody761_679 : StackLang.HolProg 64 :=
.seq NamedBody761_673 NamedBody761_678

def NamedBody761_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody761_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody761_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 23

def NamedBody761_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody761_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody761_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody761_689 : StackLang.HolProg 64 :=
.seq NamedBody761_687 NamedBody761_688

def NamedBody761_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody761_691 : StackLang.HolProg 64 :=
.seq NamedBody761_689 NamedBody761_690

def NamedBody761_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_693 : StackLang.HolProg 64 :=
.seq NamedBody761_691 NamedBody761_692

def NamedBody761_694 : StackLang.HolProg 64 :=
.seq NamedBody761_686 NamedBody761_693

def NamedBody761_695 : StackLang.HolProg 64 :=
.seq NamedBody761_685 NamedBody761_694

def NamedBody761_696 : StackLang.HolProg 64 :=
.seq NamedBody761_684 NamedBody761_695

def NamedBody761_697 : StackLang.HolProg 64 :=
.seq NamedBody761_683 NamedBody761_696

def NamedBody761_698 : StackLang.HolProg 64 :=
.seq NamedBody761_682 NamedBody761_697

def NamedBody761_699 : StackLang.HolProg 64 :=
.seq NamedBody761_681 NamedBody761_698

def NamedBody761_700 : StackLang.HolProg 64 :=
.seq NamedBody761_680 NamedBody761_699

def NamedBody761_701 : StackLang.HolProg 64 :=
.seq NamedBody761_679 NamedBody761_700

def NamedBody761_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody761_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody761_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody761_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody761_709 : StackLang.HolProg 64 :=
.seq NamedBody761_707 NamedBody761_708

def NamedBody761_710 : StackLang.HolProg 64 :=
.seq NamedBody761_706 NamedBody761_709

def NamedBody761_711 : StackLang.HolProg 64 :=
.seq NamedBody761_705 NamedBody761_710

def NamedBody761_712 : StackLang.HolProg 64 :=
.seq NamedBody761_704 NamedBody761_711

def NamedBody761_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody761_714 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody761_715 : StackLang.HolProg 64 :=
.seq NamedBody761_713 NamedBody761_714

def NamedBody761_716 : StackLang.HolProg 64 :=
.call (some (NamedBody761_712, 1, 761, 22)) (Sum.inl 70) (some (NamedBody761_715, 761, 23))

def NamedBody761_717 : StackLang.HolProg 64 :=
.seq NamedBody761_703 NamedBody761_716

def NamedBody761_718 : StackLang.HolProg 64 :=
.seq NamedBody761_702 NamedBody761_717

def NamedBody761_719 : StackLang.HolProg 64 :=
.seq NamedBody761_701 NamedBody761_718

def NamedBody761_720 : StackLang.HolProg 64 :=
.seq NamedBody761_672 NamedBody761_719

def NamedBody761_721 : StackLang.HolProg 64 :=
.seq NamedBody761_669 NamedBody761_720

def NamedBody761_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody761_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody761_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody761_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody761_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody761_727 : StackLang.HolProg 64 :=
.seq NamedBody761_725 NamedBody761_726

def NamedBody761_728 : StackLang.HolProg 64 :=
.seq NamedBody761_724 NamedBody761_727

def NamedBody761_729 : StackLang.HolProg 64 :=
.seq NamedBody761_723 NamedBody761_728

def NamedBody761_730 : StackLang.HolProg 64 :=
.seq NamedBody761_722 NamedBody761_729

def NamedBody761_731 : StackLang.HolProg 64 :=
.seq NamedBody761_721 NamedBody761_730

def NamedBody761_732 : StackLang.HolProg 64 :=
.seq NamedBody761_668 NamedBody761_731

def NamedBody761_733 : StackLang.HolProg 64 :=
.seq NamedBody761_667 NamedBody761_732

def NamedBody761_734 : StackLang.HolProg 64 :=
.seq NamedBody761_666 NamedBody761_733

def NamedBody761_735 : StackLang.HolProg 64 :=
.seq NamedBody761_613 NamedBody761_734

def NamedBody761_736 : StackLang.HolProg 64 :=
.seq NamedBody761_612 NamedBody761_735

def NamedBody761_737 : StackLang.HolProg 64 :=
.seq NamedBody761_611 NamedBody761_736

def NamedBody761_738 : StackLang.HolProg 64 :=
.seq NamedBody761_610 NamedBody761_737

def NamedBody761_739 : StackLang.HolProg 64 :=
.seq NamedBody761_609 NamedBody761_738

def NamedBody761_740 : StackLang.HolProg 64 :=
.seq NamedBody761_548 NamedBody761_739

def NamedBody761_741 : StackLang.HolProg 64 :=
.seq NamedBody761_547 NamedBody761_740

def NamedBody761_742 : StackLang.HolProg 64 :=
.seq NamedBody761_546 NamedBody761_741

def NamedBody761_743 : StackLang.HolProg 64 :=
.seq NamedBody761_545 NamedBody761_742

def NamedBody761_744 : StackLang.HolProg 64 :=
.seq NamedBody761_544 NamedBody761_743

def NamedBody761_745 : StackLang.HolProg 64 :=
.seq NamedBody761_543 NamedBody761_744

def NamedBody761_746 : StackLang.HolProg 64 :=
.seq NamedBody761_542 NamedBody761_745

def NamedBody761_747 : StackLang.HolProg 64 :=
.seq NamedBody761_473 NamedBody761_746

def NamedBody761_748 : StackLang.HolProg 64 :=
.seq NamedBody761_466 NamedBody761_747

def NamedBody761_749 : StackLang.HolProg 64 :=
.seq NamedBody761_465 NamedBody761_748

def NamedBody761_750 : StackLang.HolProg 64 :=
.seq NamedBody761_404 NamedBody761_749

def NamedBody761_751 : StackLang.HolProg 64 :=
.seq NamedBody761_401 NamedBody761_750

def NamedBody761_752 : StackLang.HolProg 64 :=
.seq NamedBody761_400 NamedBody761_751

def NamedBody761_753 : StackLang.HolProg 64 :=
.seq NamedBody761_347 NamedBody761_752

def NamedBody761_754 : StackLang.HolProg 64 :=
.seq NamedBody761_344 NamedBody761_753

def NamedBody761_755 : StackLang.HolProg 64 :=
.seq NamedBody761_343 NamedBody761_754

def NamedBody761_756 : StackLang.HolProg 64 :=
.seq NamedBody761_258 NamedBody761_755

def NamedBody761_757 : StackLang.HolProg 64 :=
.seq NamedBody761_255 NamedBody761_756

def NamedBody761_758 : StackLang.HolProg 64 :=
.seq NamedBody761_254 NamedBody761_757

def NamedBody761_759 : StackLang.HolProg 64 :=
.seq NamedBody761_201 NamedBody761_758

def NamedBody761_760 : StackLang.HolProg 64 :=
.seq NamedBody761_196 NamedBody761_759

def NamedBody761_761 : StackLang.HolProg 64 :=
.seq NamedBody761_195 NamedBody761_760

def NamedBody761_762 : StackLang.HolProg 64 :=
.seq NamedBody761_194 NamedBody761_761

def NamedBody761_763 : StackLang.HolProg 64 :=
.seq NamedBody761_193 NamedBody761_762

def NamedBody761_764 : StackLang.HolProg 64 :=
.seq NamedBody761_136 NamedBody761_763

def NamedBody761_765 : StackLang.HolProg 64 :=
.seq NamedBody761_127 NamedBody761_764

def NamedBody761_766 : StackLang.HolProg 64 :=
.seq NamedBody761_126 NamedBody761_765

def NamedBody761_767 : StackLang.HolProg 64 :=
.seq NamedBody761_125 NamedBody761_766

def NamedBody761_768 : StackLang.HolProg 64 :=
.seq NamedBody761_124 NamedBody761_767

def NamedBody761_769 : StackLang.HolProg 64 :=
.seq NamedBody761_123 NamedBody761_768

def NamedBody761_770 : StackLang.HolProg 64 :=
.seq NamedBody761_122 NamedBody761_769

def NamedBody761_771 : StackLang.HolProg 64 :=
.seq NamedBody761_67 NamedBody761_770

def NamedBody761_772 : StackLang.HolProg 64 :=
.seq NamedBody761_66 NamedBody761_771

def NamedBody761_773 : StackLang.HolProg 64 :=
.seq NamedBody761_65 NamedBody761_772

def NamedBody761_774 : StackLang.HolProg 64 :=
.seq NamedBody761_64 NamedBody761_773

def NamedBody761_775 : StackLang.HolProg 64 :=
.seq NamedBody761_11 NamedBody761_774

def NamedBody761_776 : StackLang.HolProg 64 :=
.seq NamedBody761_6 NamedBody761_775

def Named761 : Nat × StackLang.HolProg 64 := (761, NamedBody761_776)
theorem Named761_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed761 = Named761 := by
  kernel_rfl
#print axioms Named761_eq
end InitECandidate.Proofs.BackendStages
