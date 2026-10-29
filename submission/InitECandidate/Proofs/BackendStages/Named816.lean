import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed816
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody816_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody816_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_3 : StackLang.HolProg 64 :=
.seq NamedBody816_1 NamedBody816_2

def NamedBody816_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_3 NamedBody816_4

def NamedBody816_6 : StackLang.HolProg 64 :=
.seq NamedBody816_0 NamedBody816_5

def NamedBody816_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody816_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_10 : StackLang.HolProg 64 :=
.seq NamedBody816_8 NamedBody816_9

def NamedBody816_11 : StackLang.HolProg 64 :=
.seq NamedBody816_7 NamedBody816_10

def NamedBody816_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4059#64)

def NamedBody816_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_15 : StackLang.HolProg 64 :=
.seq NamedBody816_13 NamedBody816_14

def NamedBody816_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_19 : StackLang.HolProg 64 :=
.seq NamedBody816_17 NamedBody816_18

def NamedBody816_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_19 NamedBody816_20

def NamedBody816_22 : StackLang.HolProg 64 :=
.seq NamedBody816_16 NamedBody816_21

def NamedBody816_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 3

def NamedBody816_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_32 : StackLang.HolProg 64 :=
.seq NamedBody816_30 NamedBody816_31

def NamedBody816_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_34 : StackLang.HolProg 64 :=
.seq NamedBody816_32 NamedBody816_33

def NamedBody816_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_36 : StackLang.HolProg 64 :=
.seq NamedBody816_34 NamedBody816_35

def NamedBody816_37 : StackLang.HolProg 64 :=
.seq NamedBody816_29 NamedBody816_36

def NamedBody816_38 : StackLang.HolProg 64 :=
.seq NamedBody816_28 NamedBody816_37

def NamedBody816_39 : StackLang.HolProg 64 :=
.seq NamedBody816_27 NamedBody816_38

def NamedBody816_40 : StackLang.HolProg 64 :=
.seq NamedBody816_26 NamedBody816_39

def NamedBody816_41 : StackLang.HolProg 64 :=
.seq NamedBody816_25 NamedBody816_40

def NamedBody816_42 : StackLang.HolProg 64 :=
.seq NamedBody816_24 NamedBody816_41

def NamedBody816_43 : StackLang.HolProg 64 :=
.seq NamedBody816_23 NamedBody816_42

def NamedBody816_44 : StackLang.HolProg 64 :=
.seq NamedBody816_22 NamedBody816_43

def NamedBody816_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody816_52 : StackLang.HolProg 64 :=
.seq NamedBody816_50 NamedBody816_51

def NamedBody816_53 : StackLang.HolProg 64 :=
.seq NamedBody816_49 NamedBody816_52

def NamedBody816_54 : StackLang.HolProg 64 :=
.seq NamedBody816_48 NamedBody816_53

def NamedBody816_55 : StackLang.HolProg 64 :=
.seq NamedBody816_47 NamedBody816_54

def NamedBody816_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_58 : StackLang.HolProg 64 :=
.seq NamedBody816_56 NamedBody816_57

def NamedBody816_59 : StackLang.HolProg 64 :=
.call (some (NamedBody816_55, 1, 816, 2)) (Sum.inl 69) (some (NamedBody816_58, 816, 3))

def NamedBody816_60 : StackLang.HolProg 64 :=
.seq NamedBody816_46 NamedBody816_59

def NamedBody816_61 : StackLang.HolProg 64 :=
.seq NamedBody816_45 NamedBody816_60

def NamedBody816_62 : StackLang.HolProg 64 :=
.seq NamedBody816_44 NamedBody816_61

def NamedBody816_63 : StackLang.HolProg 64 :=
.seq NamedBody816_15 NamedBody816_62

def NamedBody816_64 : StackLang.HolProg 64 :=
.seq NamedBody816_12 NamedBody816_63

def NamedBody816_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 96#64)

def NamedBody816_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4060#64)

def NamedBody816_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_71 : StackLang.HolProg 64 :=
.seq NamedBody816_69 NamedBody816_70

def NamedBody816_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_75 : StackLang.HolProg 64 :=
.seq NamedBody816_73 NamedBody816_74

def NamedBody816_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_75 NamedBody816_76

def NamedBody816_78 : StackLang.HolProg 64 :=
.seq NamedBody816_72 NamedBody816_77

def NamedBody816_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 5

def NamedBody816_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_88 : StackLang.HolProg 64 :=
.seq NamedBody816_86 NamedBody816_87

def NamedBody816_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_90 : StackLang.HolProg 64 :=
.seq NamedBody816_88 NamedBody816_89

def NamedBody816_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_92 : StackLang.HolProg 64 :=
.seq NamedBody816_90 NamedBody816_91

def NamedBody816_93 : StackLang.HolProg 64 :=
.seq NamedBody816_85 NamedBody816_92

def NamedBody816_94 : StackLang.HolProg 64 :=
.seq NamedBody816_84 NamedBody816_93

def NamedBody816_95 : StackLang.HolProg 64 :=
.seq NamedBody816_83 NamedBody816_94

def NamedBody816_96 : StackLang.HolProg 64 :=
.seq NamedBody816_82 NamedBody816_95

def NamedBody816_97 : StackLang.HolProg 64 :=
.seq NamedBody816_81 NamedBody816_96

def NamedBody816_98 : StackLang.HolProg 64 :=
.seq NamedBody816_80 NamedBody816_97

def NamedBody816_99 : StackLang.HolProg 64 :=
.seq NamedBody816_79 NamedBody816_98

def NamedBody816_100 : StackLang.HolProg 64 :=
.seq NamedBody816_78 NamedBody816_99

def NamedBody816_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody816_108 : StackLang.HolProg 64 :=
.seq NamedBody816_106 NamedBody816_107

def NamedBody816_109 : StackLang.HolProg 64 :=
.seq NamedBody816_105 NamedBody816_108

def NamedBody816_110 : StackLang.HolProg 64 :=
.seq NamedBody816_104 NamedBody816_109

def NamedBody816_111 : StackLang.HolProg 64 :=
.seq NamedBody816_103 NamedBody816_110

def NamedBody816_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_114 : StackLang.HolProg 64 :=
.seq NamedBody816_112 NamedBody816_113

def NamedBody816_115 : StackLang.HolProg 64 :=
.call (some (NamedBody816_111, 1, 816, 4)) (Sum.inl 68) (some (NamedBody816_114, 816, 5))

def NamedBody816_116 : StackLang.HolProg 64 :=
.seq NamedBody816_102 NamedBody816_115

def NamedBody816_117 : StackLang.HolProg 64 :=
.seq NamedBody816_101 NamedBody816_116

def NamedBody816_118 : StackLang.HolProg 64 :=
.seq NamedBody816_100 NamedBody816_117

def NamedBody816_119 : StackLang.HolProg 64 :=
.seq NamedBody816_71 NamedBody816_118

def NamedBody816_120 : StackLang.HolProg 64 :=
.seq NamedBody816_68 NamedBody816_119

def NamedBody816_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 288#64)

def NamedBody816_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4061#64)

def NamedBody816_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_127 : StackLang.HolProg 64 :=
.seq NamedBody816_125 NamedBody816_126

def NamedBody816_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_131 : StackLang.HolProg 64 :=
.seq NamedBody816_129 NamedBody816_130

def NamedBody816_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_131 NamedBody816_132

def NamedBody816_134 : StackLang.HolProg 64 :=
.seq NamedBody816_128 NamedBody816_133

def NamedBody816_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 7

def NamedBody816_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_144 : StackLang.HolProg 64 :=
.seq NamedBody816_142 NamedBody816_143

def NamedBody816_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_146 : StackLang.HolProg 64 :=
.seq NamedBody816_144 NamedBody816_145

def NamedBody816_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_148 : StackLang.HolProg 64 :=
.seq NamedBody816_146 NamedBody816_147

def NamedBody816_149 : StackLang.HolProg 64 :=
.seq NamedBody816_141 NamedBody816_148

def NamedBody816_150 : StackLang.HolProg 64 :=
.seq NamedBody816_140 NamedBody816_149

def NamedBody816_151 : StackLang.HolProg 64 :=
.seq NamedBody816_139 NamedBody816_150

def NamedBody816_152 : StackLang.HolProg 64 :=
.seq NamedBody816_138 NamedBody816_151

def NamedBody816_153 : StackLang.HolProg 64 :=
.seq NamedBody816_137 NamedBody816_152

def NamedBody816_154 : StackLang.HolProg 64 :=
.seq NamedBody816_136 NamedBody816_153

def NamedBody816_155 : StackLang.HolProg 64 :=
.seq NamedBody816_135 NamedBody816_154

def NamedBody816_156 : StackLang.HolProg 64 :=
.seq NamedBody816_134 NamedBody816_155

def NamedBody816_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody816_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_166 : StackLang.HolProg 64 :=
.seq NamedBody816_164 NamedBody816_165

def NamedBody816_167 : StackLang.HolProg 64 :=
.seq NamedBody816_163 NamedBody816_166

def NamedBody816_168 : StackLang.HolProg 64 :=
.seq NamedBody816_162 NamedBody816_167

def NamedBody816_169 : StackLang.HolProg 64 :=
.seq NamedBody816_161 NamedBody816_168

def NamedBody816_170 : StackLang.HolProg 64 :=
.seq NamedBody816_160 NamedBody816_169

def NamedBody816_171 : StackLang.HolProg 64 :=
.seq NamedBody816_159 NamedBody816_170

def NamedBody816_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_174 : StackLang.HolProg 64 :=
.seq NamedBody816_172 NamedBody816_173

def NamedBody816_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_176 : StackLang.HolProg 64 :=
.seq NamedBody816_174 NamedBody816_175

def NamedBody816_177 : StackLang.HolProg 64 :=
.call (some (NamedBody816_171, 1, 816, 6)) (Sum.inl 68) (some (NamedBody816_176, 816, 7))

def NamedBody816_178 : StackLang.HolProg 64 :=
.seq NamedBody816_158 NamedBody816_177

def NamedBody816_179 : StackLang.HolProg 64 :=
.seq NamedBody816_157 NamedBody816_178

def NamedBody816_180 : StackLang.HolProg 64 :=
.seq NamedBody816_156 NamedBody816_179

def NamedBody816_181 : StackLang.HolProg 64 :=
.seq NamedBody816_127 NamedBody816_180

def NamedBody816_182 : StackLang.HolProg 64 :=
.seq NamedBody816_124 NamedBody816_181

def NamedBody816_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody816_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_188 : StackLang.HolProg 64 :=
.seq NamedBody816_186 NamedBody816_187

def NamedBody816_189 : StackLang.HolProg 64 :=
.seq NamedBody816_185 NamedBody816_188

def NamedBody816_190 : StackLang.HolProg 64 :=
.seq NamedBody816_184 NamedBody816_189

def NamedBody816_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4062#64)

def NamedBody816_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_194 : StackLang.HolProg 64 :=
.seq NamedBody816_192 NamedBody816_193

def NamedBody816_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_198 : StackLang.HolProg 64 :=
.seq NamedBody816_196 NamedBody816_197

def NamedBody816_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_198 NamedBody816_199

def NamedBody816_201 : StackLang.HolProg 64 :=
.seq NamedBody816_195 NamedBody816_200

def NamedBody816_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 9

def NamedBody816_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_211 : StackLang.HolProg 64 :=
.seq NamedBody816_209 NamedBody816_210

def NamedBody816_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_213 : StackLang.HolProg 64 :=
.seq NamedBody816_211 NamedBody816_212

def NamedBody816_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_215 : StackLang.HolProg 64 :=
.seq NamedBody816_213 NamedBody816_214

def NamedBody816_216 : StackLang.HolProg 64 :=
.seq NamedBody816_208 NamedBody816_215

def NamedBody816_217 : StackLang.HolProg 64 :=
.seq NamedBody816_207 NamedBody816_216

def NamedBody816_218 : StackLang.HolProg 64 :=
.seq NamedBody816_206 NamedBody816_217

def NamedBody816_219 : StackLang.HolProg 64 :=
.seq NamedBody816_205 NamedBody816_218

def NamedBody816_220 : StackLang.HolProg 64 :=
.seq NamedBody816_204 NamedBody816_219

def NamedBody816_221 : StackLang.HolProg 64 :=
.seq NamedBody816_203 NamedBody816_220

def NamedBody816_222 : StackLang.HolProg 64 :=
.seq NamedBody816_202 NamedBody816_221

def NamedBody816_223 : StackLang.HolProg 64 :=
.seq NamedBody816_201 NamedBody816_222

def NamedBody816_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody816_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_234 : StackLang.HolProg 64 :=
.seq NamedBody816_232 NamedBody816_233

def NamedBody816_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_238 : StackLang.HolProg 64 :=
.seq NamedBody816_236 NamedBody816_237

def NamedBody816_239 : StackLang.HolProg 64 :=
.seq NamedBody816_235 NamedBody816_238

def NamedBody816_240 : StackLang.HolProg 64 :=
.seq NamedBody816_234 NamedBody816_239

def NamedBody816_241 : StackLang.HolProg 64 :=
.seq NamedBody816_231 NamedBody816_240

def NamedBody816_242 : StackLang.HolProg 64 :=
.seq NamedBody816_230 NamedBody816_241

def NamedBody816_243 : StackLang.HolProg 64 :=
.seq NamedBody816_229 NamedBody816_242

def NamedBody816_244 : StackLang.HolProg 64 :=
.seq NamedBody816_228 NamedBody816_243

def NamedBody816_245 : StackLang.HolProg 64 :=
.seq NamedBody816_227 NamedBody816_244

def NamedBody816_246 : StackLang.HolProg 64 :=
.seq NamedBody816_226 NamedBody816_245

def NamedBody816_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_250 : StackLang.HolProg 64 :=
.seq NamedBody816_248 NamedBody816_249

def NamedBody816_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_254 : StackLang.HolProg 64 :=
.seq NamedBody816_252 NamedBody816_253

def NamedBody816_255 : StackLang.HolProg 64 :=
.seq NamedBody816_251 NamedBody816_254

def NamedBody816_256 : StackLang.HolProg 64 :=
.seq NamedBody816_250 NamedBody816_255

def NamedBody816_257 : StackLang.HolProg 64 :=
.seq NamedBody816_247 NamedBody816_256

def NamedBody816_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_259 : StackLang.HolProg 64 :=
.seq NamedBody816_257 NamedBody816_258

def NamedBody816_260 : StackLang.HolProg 64 :=
.call (some (NamedBody816_246, 1, 816, 8)) (Sum.inl 727) (some (NamedBody816_259, 816, 9))

def NamedBody816_261 : StackLang.HolProg 64 :=
.seq NamedBody816_225 NamedBody816_260

def NamedBody816_262 : StackLang.HolProg 64 :=
.seq NamedBody816_224 NamedBody816_261

def NamedBody816_263 : StackLang.HolProg 64 :=
.seq NamedBody816_223 NamedBody816_262

def NamedBody816_264 : StackLang.HolProg 64 :=
.seq NamedBody816_194 NamedBody816_263

def NamedBody816_265 : StackLang.HolProg 64 :=
.seq NamedBody816_191 NamedBody816_264

def NamedBody816_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody816_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody816_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody816_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody816_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_276 : StackLang.HolProg 64 :=
.seq NamedBody816_274 NamedBody816_275

def NamedBody816_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_279 : StackLang.HolProg 64 :=
.seq NamedBody816_277 NamedBody816_278

def NamedBody816_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_281 : StackLang.HolProg 64 :=
.seq NamedBody816_279 NamedBody816_280

def NamedBody816_282 : StackLang.HolProg 64 :=
.seq NamedBody816_276 NamedBody816_281

def NamedBody816_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4063#64)

def NamedBody816_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_286 : StackLang.HolProg 64 :=
.seq NamedBody816_284 NamedBody816_285

def NamedBody816_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_290 : StackLang.HolProg 64 :=
.seq NamedBody816_288 NamedBody816_289

def NamedBody816_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_292 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_290 NamedBody816_291

def NamedBody816_293 : StackLang.HolProg 64 :=
.seq NamedBody816_287 NamedBody816_292

def NamedBody816_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 11

def NamedBody816_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_303 : StackLang.HolProg 64 :=
.seq NamedBody816_301 NamedBody816_302

def NamedBody816_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_305 : StackLang.HolProg 64 :=
.seq NamedBody816_303 NamedBody816_304

def NamedBody816_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_307 : StackLang.HolProg 64 :=
.seq NamedBody816_305 NamedBody816_306

def NamedBody816_308 : StackLang.HolProg 64 :=
.seq NamedBody816_300 NamedBody816_307

def NamedBody816_309 : StackLang.HolProg 64 :=
.seq NamedBody816_299 NamedBody816_308

def NamedBody816_310 : StackLang.HolProg 64 :=
.seq NamedBody816_298 NamedBody816_309

def NamedBody816_311 : StackLang.HolProg 64 :=
.seq NamedBody816_297 NamedBody816_310

def NamedBody816_312 : StackLang.HolProg 64 :=
.seq NamedBody816_296 NamedBody816_311

def NamedBody816_313 : StackLang.HolProg 64 :=
.seq NamedBody816_295 NamedBody816_312

def NamedBody816_314 : StackLang.HolProg 64 :=
.seq NamedBody816_294 NamedBody816_313

def NamedBody816_315 : StackLang.HolProg 64 :=
.seq NamedBody816_293 NamedBody816_314

def NamedBody816_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody816_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_327 : StackLang.HolProg 64 :=
.seq NamedBody816_325 NamedBody816_326

def NamedBody816_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_330 : StackLang.HolProg 64 :=
.seq NamedBody816_328 NamedBody816_329

def NamedBody816_331 : StackLang.HolProg 64 :=
.seq NamedBody816_327 NamedBody816_330

def NamedBody816_332 : StackLang.HolProg 64 :=
.seq NamedBody816_324 NamedBody816_331

def NamedBody816_333 : StackLang.HolProg 64 :=
.seq NamedBody816_323 NamedBody816_332

def NamedBody816_334 : StackLang.HolProg 64 :=
.seq NamedBody816_322 NamedBody816_333

def NamedBody816_335 : StackLang.HolProg 64 :=
.seq NamedBody816_321 NamedBody816_334

def NamedBody816_336 : StackLang.HolProg 64 :=
.seq NamedBody816_320 NamedBody816_335

def NamedBody816_337 : StackLang.HolProg 64 :=
.seq NamedBody816_319 NamedBody816_336

def NamedBody816_338 : StackLang.HolProg 64 :=
.seq NamedBody816_318 NamedBody816_337

def NamedBody816_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_343 : StackLang.HolProg 64 :=
.seq NamedBody816_341 NamedBody816_342

def NamedBody816_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_346 : StackLang.HolProg 64 :=
.seq NamedBody816_344 NamedBody816_345

def NamedBody816_347 : StackLang.HolProg 64 :=
.seq NamedBody816_343 NamedBody816_346

def NamedBody816_348 : StackLang.HolProg 64 :=
.seq NamedBody816_340 NamedBody816_347

def NamedBody816_349 : StackLang.HolProg 64 :=
.seq NamedBody816_339 NamedBody816_348

def NamedBody816_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_351 : StackLang.HolProg 64 :=
.seq NamedBody816_349 NamedBody816_350

def NamedBody816_352 : StackLang.HolProg 64 :=
.call (some (NamedBody816_338, 1, 816, 10)) (Sum.inl 727) (some (NamedBody816_351, 816, 11))

def NamedBody816_353 : StackLang.HolProg 64 :=
.seq NamedBody816_317 NamedBody816_352

def NamedBody816_354 : StackLang.HolProg 64 :=
.seq NamedBody816_316 NamedBody816_353

def NamedBody816_355 : StackLang.HolProg 64 :=
.seq NamedBody816_315 NamedBody816_354

def NamedBody816_356 : StackLang.HolProg 64 :=
.seq NamedBody816_286 NamedBody816_355

def NamedBody816_357 : StackLang.HolProg 64 :=
.seq NamedBody816_283 NamedBody816_356

def NamedBody816_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_360 : StackLang.HolProg 64 :=
.seq NamedBody816_358 NamedBody816_359

def NamedBody816_361 : StackLang.HolProg 64 :=
.seq NamedBody816_357 NamedBody816_360

def NamedBody816_362 : StackLang.HolProg 64 :=
.seq NamedBody816_282 NamedBody816_361

def NamedBody816_363 : StackLang.HolProg 64 :=
.seq NamedBody816_273 NamedBody816_362

def NamedBody816_364 : StackLang.HolProg 64 :=
.seq NamedBody816_272 NamedBody816_363

def NamedBody816_365 : StackLang.HolProg 64 :=
.seq NamedBody816_271 NamedBody816_364

def NamedBody816_366 : StackLang.HolProg 64 :=
.seq NamedBody816_270 NamedBody816_365

def NamedBody816_367 : StackLang.HolProg 64 :=
.seq NamedBody816_269 NamedBody816_366

def NamedBody816_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_370 : StackLang.HolProg 64 :=
.seq NamedBody816_368 NamedBody816_369

def NamedBody816_371 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody816_367 NamedBody816_370

def NamedBody816_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody816_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody816_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_379 : StackLang.HolProg 64 :=
.seq NamedBody816_377 NamedBody816_378

def NamedBody816_380 : StackLang.HolProg 64 :=
.seq NamedBody816_376 NamedBody816_379

def NamedBody816_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4064#64)

def NamedBody816_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_384 : StackLang.HolProg 64 :=
.seq NamedBody816_382 NamedBody816_383

def NamedBody816_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_388 : StackLang.HolProg 64 :=
.seq NamedBody816_386 NamedBody816_387

def NamedBody816_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_390 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_388 NamedBody816_389

def NamedBody816_391 : StackLang.HolProg 64 :=
.seq NamedBody816_385 NamedBody816_390

def NamedBody816_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 13

def NamedBody816_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_401 : StackLang.HolProg 64 :=
.seq NamedBody816_399 NamedBody816_400

def NamedBody816_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_403 : StackLang.HolProg 64 :=
.seq NamedBody816_401 NamedBody816_402

def NamedBody816_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_405 : StackLang.HolProg 64 :=
.seq NamedBody816_403 NamedBody816_404

def NamedBody816_406 : StackLang.HolProg 64 :=
.seq NamedBody816_398 NamedBody816_405

def NamedBody816_407 : StackLang.HolProg 64 :=
.seq NamedBody816_397 NamedBody816_406

def NamedBody816_408 : StackLang.HolProg 64 :=
.seq NamedBody816_396 NamedBody816_407

def NamedBody816_409 : StackLang.HolProg 64 :=
.seq NamedBody816_395 NamedBody816_408

def NamedBody816_410 : StackLang.HolProg 64 :=
.seq NamedBody816_394 NamedBody816_409

def NamedBody816_411 : StackLang.HolProg 64 :=
.seq NamedBody816_393 NamedBody816_410

def NamedBody816_412 : StackLang.HolProg 64 :=
.seq NamedBody816_392 NamedBody816_411

def NamedBody816_413 : StackLang.HolProg 64 :=
.seq NamedBody816_391 NamedBody816_412

def NamedBody816_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_421 : StackLang.HolProg 64 :=
.seq NamedBody816_419 NamedBody816_420

def NamedBody816_422 : StackLang.HolProg 64 :=
.seq NamedBody816_418 NamedBody816_421

def NamedBody816_423 : StackLang.HolProg 64 :=
.seq NamedBody816_417 NamedBody816_422

def NamedBody816_424 : StackLang.HolProg 64 :=
.seq NamedBody816_416 NamedBody816_423

def NamedBody816_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_426 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_427 : StackLang.HolProg 64 :=
.seq NamedBody816_425 NamedBody816_426

def NamedBody816_428 : StackLang.HolProg 64 :=
.call (some (NamedBody816_424, 1, 816, 12)) (Sum.inl 70) (some (NamedBody816_427, 816, 13))

def NamedBody816_429 : StackLang.HolProg 64 :=
.seq NamedBody816_415 NamedBody816_428

def NamedBody816_430 : StackLang.HolProg 64 :=
.seq NamedBody816_414 NamedBody816_429

def NamedBody816_431 : StackLang.HolProg 64 :=
.seq NamedBody816_413 NamedBody816_430

def NamedBody816_432 : StackLang.HolProg 64 :=
.seq NamedBody816_384 NamedBody816_431

def NamedBody816_433 : StackLang.HolProg 64 :=
.seq NamedBody816_381 NamedBody816_432

def NamedBody816_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody816_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody816_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody816_439 : StackLang.HolProg 64 :=
.seq NamedBody816_437 NamedBody816_438

def NamedBody816_440 : StackLang.HolProg 64 :=
.seq NamedBody816_436 NamedBody816_439

def NamedBody816_441 : StackLang.HolProg 64 :=
.seq NamedBody816_435 NamedBody816_440

def NamedBody816_442 : StackLang.HolProg 64 :=
.seq NamedBody816_434 NamedBody816_441

def NamedBody816_443 : StackLang.HolProg 64 :=
.seq NamedBody816_433 NamedBody816_442

def NamedBody816_444 : StackLang.HolProg 64 :=
.seq NamedBody816_380 NamedBody816_443

def NamedBody816_445 : StackLang.HolProg 64 :=
.seq NamedBody816_375 NamedBody816_444

def NamedBody816_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody816_445 NamedBody816_446

def NamedBody816_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody816_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_452 : StackLang.HolProg 64 :=
.seq NamedBody816_450 NamedBody816_451

def NamedBody816_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4065#64)

def NamedBody816_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_456 : StackLang.HolProg 64 :=
.seq NamedBody816_454 NamedBody816_455

def NamedBody816_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_460 : StackLang.HolProg 64 :=
.seq NamedBody816_458 NamedBody816_459

def NamedBody816_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_462 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_460 NamedBody816_461

def NamedBody816_463 : StackLang.HolProg 64 :=
.seq NamedBody816_457 NamedBody816_462

def NamedBody816_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 15

def NamedBody816_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_473 : StackLang.HolProg 64 :=
.seq NamedBody816_471 NamedBody816_472

def NamedBody816_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_475 : StackLang.HolProg 64 :=
.seq NamedBody816_473 NamedBody816_474

def NamedBody816_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_477 : StackLang.HolProg 64 :=
.seq NamedBody816_475 NamedBody816_476

def NamedBody816_478 : StackLang.HolProg 64 :=
.seq NamedBody816_470 NamedBody816_477

def NamedBody816_479 : StackLang.HolProg 64 :=
.seq NamedBody816_469 NamedBody816_478

def NamedBody816_480 : StackLang.HolProg 64 :=
.seq NamedBody816_468 NamedBody816_479

def NamedBody816_481 : StackLang.HolProg 64 :=
.seq NamedBody816_467 NamedBody816_480

def NamedBody816_482 : StackLang.HolProg 64 :=
.seq NamedBody816_466 NamedBody816_481

def NamedBody816_483 : StackLang.HolProg 64 :=
.seq NamedBody816_465 NamedBody816_482

def NamedBody816_484 : StackLang.HolProg 64 :=
.seq NamedBody816_464 NamedBody816_483

def NamedBody816_485 : StackLang.HolProg 64 :=
.seq NamedBody816_463 NamedBody816_484

def NamedBody816_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_496 : StackLang.HolProg 64 :=
.seq NamedBody816_494 NamedBody816_495

def NamedBody816_497 : StackLang.HolProg 64 :=
.seq NamedBody816_493 NamedBody816_496

def NamedBody816_498 : StackLang.HolProg 64 :=
.seq NamedBody816_492 NamedBody816_497

def NamedBody816_499 : StackLang.HolProg 64 :=
.seq NamedBody816_491 NamedBody816_498

def NamedBody816_500 : StackLang.HolProg 64 :=
.seq NamedBody816_490 NamedBody816_499

def NamedBody816_501 : StackLang.HolProg 64 :=
.seq NamedBody816_489 NamedBody816_500

def NamedBody816_502 : StackLang.HolProg 64 :=
.seq NamedBody816_488 NamedBody816_501

def NamedBody816_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody816_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody816_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_507 : StackLang.HolProg 64 :=
.seq NamedBody816_505 NamedBody816_506

def NamedBody816_508 : StackLang.HolProg 64 :=
.seq NamedBody816_504 NamedBody816_507

def NamedBody816_509 : StackLang.HolProg 64 :=
.seq NamedBody816_503 NamedBody816_508

def NamedBody816_510 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_511 : StackLang.HolProg 64 :=
.seq NamedBody816_509 NamedBody816_510

def NamedBody816_512 : StackLang.HolProg 64 :=
.call (some (NamedBody816_502, 1, 816, 14)) (Sum.inl 804) (some (NamedBody816_511, 816, 15))

def NamedBody816_513 : StackLang.HolProg 64 :=
.seq NamedBody816_487 NamedBody816_512

def NamedBody816_514 : StackLang.HolProg 64 :=
.seq NamedBody816_486 NamedBody816_513

def NamedBody816_515 : StackLang.HolProg 64 :=
.seq NamedBody816_485 NamedBody816_514

def NamedBody816_516 : StackLang.HolProg 64 :=
.seq NamedBody816_456 NamedBody816_515

def NamedBody816_517 : StackLang.HolProg 64 :=
.seq NamedBody816_453 NamedBody816_516

def NamedBody816_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody816_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4066#64)

def NamedBody816_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_523 : StackLang.HolProg 64 :=
.seq NamedBody816_521 NamedBody816_522

def NamedBody816_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_527 : StackLang.HolProg 64 :=
.seq NamedBody816_525 NamedBody816_526

def NamedBody816_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_529 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_527 NamedBody816_528

def NamedBody816_530 : StackLang.HolProg 64 :=
.seq NamedBody816_524 NamedBody816_529

def NamedBody816_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 17

def NamedBody816_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_540 : StackLang.HolProg 64 :=
.seq NamedBody816_538 NamedBody816_539

def NamedBody816_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_542 : StackLang.HolProg 64 :=
.seq NamedBody816_540 NamedBody816_541

def NamedBody816_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_544 : StackLang.HolProg 64 :=
.seq NamedBody816_542 NamedBody816_543

def NamedBody816_545 : StackLang.HolProg 64 :=
.seq NamedBody816_537 NamedBody816_544

def NamedBody816_546 : StackLang.HolProg 64 :=
.seq NamedBody816_536 NamedBody816_545

def NamedBody816_547 : StackLang.HolProg 64 :=
.seq NamedBody816_535 NamedBody816_546

def NamedBody816_548 : StackLang.HolProg 64 :=
.seq NamedBody816_534 NamedBody816_547

def NamedBody816_549 : StackLang.HolProg 64 :=
.seq NamedBody816_533 NamedBody816_548

def NamedBody816_550 : StackLang.HolProg 64 :=
.seq NamedBody816_532 NamedBody816_549

def NamedBody816_551 : StackLang.HolProg 64 :=
.seq NamedBody816_531 NamedBody816_550

def NamedBody816_552 : StackLang.HolProg 64 :=
.seq NamedBody816_530 NamedBody816_551

def NamedBody816_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_560 : StackLang.HolProg 64 :=
.seq NamedBody816_558 NamedBody816_559

def NamedBody816_561 : StackLang.HolProg 64 :=
.seq NamedBody816_557 NamedBody816_560

def NamedBody816_562 : StackLang.HolProg 64 :=
.seq NamedBody816_556 NamedBody816_561

def NamedBody816_563 : StackLang.HolProg 64 :=
.seq NamedBody816_555 NamedBody816_562

def NamedBody816_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody816_565 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_566 : StackLang.HolProg 64 :=
.seq NamedBody816_564 NamedBody816_565

def NamedBody816_567 : StackLang.HolProg 64 :=
.call (some (NamedBody816_563, 1, 816, 16)) (Sum.inl 788) (some (NamedBody816_566, 816, 17))

def NamedBody816_568 : StackLang.HolProg 64 :=
.seq NamedBody816_554 NamedBody816_567

def NamedBody816_569 : StackLang.HolProg 64 :=
.seq NamedBody816_553 NamedBody816_568

def NamedBody816_570 : StackLang.HolProg 64 :=
.seq NamedBody816_552 NamedBody816_569

def NamedBody816_571 : StackLang.HolProg 64 :=
.seq NamedBody816_523 NamedBody816_570

def NamedBody816_572 : StackLang.HolProg 64 :=
.seq NamedBody816_520 NamedBody816_571

def NamedBody816_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody816_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4067#64)

def NamedBody816_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_578 : StackLang.HolProg 64 :=
.seq NamedBody816_576 NamedBody816_577

def NamedBody816_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody816_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody816_582 : StackLang.HolProg 64 :=
.seq NamedBody816_580 NamedBody816_581

def NamedBody816_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_584 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody816_582 NamedBody816_583

def NamedBody816_585 : StackLang.HolProg 64 :=
.seq NamedBody816_579 NamedBody816_584

def NamedBody816_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody816_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody816_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 19

def NamedBody816_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody816_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody816_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody816_595 : StackLang.HolProg 64 :=
.seq NamedBody816_593 NamedBody816_594

def NamedBody816_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody816_597 : StackLang.HolProg 64 :=
.seq NamedBody816_595 NamedBody816_596

def NamedBody816_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_599 : StackLang.HolProg 64 :=
.seq NamedBody816_597 NamedBody816_598

def NamedBody816_600 : StackLang.HolProg 64 :=
.seq NamedBody816_592 NamedBody816_599

def NamedBody816_601 : StackLang.HolProg 64 :=
.seq NamedBody816_591 NamedBody816_600

def NamedBody816_602 : StackLang.HolProg 64 :=
.seq NamedBody816_590 NamedBody816_601

def NamedBody816_603 : StackLang.HolProg 64 :=
.seq NamedBody816_589 NamedBody816_602

def NamedBody816_604 : StackLang.HolProg 64 :=
.seq NamedBody816_588 NamedBody816_603

def NamedBody816_605 : StackLang.HolProg 64 :=
.seq NamedBody816_587 NamedBody816_604

def NamedBody816_606 : StackLang.HolProg 64 :=
.seq NamedBody816_586 NamedBody816_605

def NamedBody816_607 : StackLang.HolProg 64 :=
.seq NamedBody816_585 NamedBody816_606

def NamedBody816_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody816_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody816_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody816_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody816_615 : StackLang.HolProg 64 :=
.seq NamedBody816_613 NamedBody816_614

def NamedBody816_616 : StackLang.HolProg 64 :=
.seq NamedBody816_612 NamedBody816_615

def NamedBody816_617 : StackLang.HolProg 64 :=
.seq NamedBody816_611 NamedBody816_616

def NamedBody816_618 : StackLang.HolProg 64 :=
.seq NamedBody816_610 NamedBody816_617

def NamedBody816_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody816_620 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody816_621 : StackLang.HolProg 64 :=
.seq NamedBody816_619 NamedBody816_620

def NamedBody816_622 : StackLang.HolProg 64 :=
.call (some (NamedBody816_618, 1, 816, 18)) (Sum.inl 70) (some (NamedBody816_621, 816, 19))

def NamedBody816_623 : StackLang.HolProg 64 :=
.seq NamedBody816_609 NamedBody816_622

def NamedBody816_624 : StackLang.HolProg 64 :=
.seq NamedBody816_608 NamedBody816_623

def NamedBody816_625 : StackLang.HolProg 64 :=
.seq NamedBody816_607 NamedBody816_624

def NamedBody816_626 : StackLang.HolProg 64 :=
.seq NamedBody816_578 NamedBody816_625

def NamedBody816_627 : StackLang.HolProg 64 :=
.seq NamedBody816_575 NamedBody816_626

def NamedBody816_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody816_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody816_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody816_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody816_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody816_633 : StackLang.HolProg 64 :=
.seq NamedBody816_631 NamedBody816_632

def NamedBody816_634 : StackLang.HolProg 64 :=
.seq NamedBody816_630 NamedBody816_633

def NamedBody816_635 : StackLang.HolProg 64 :=
.seq NamedBody816_629 NamedBody816_634

def NamedBody816_636 : StackLang.HolProg 64 :=
.seq NamedBody816_628 NamedBody816_635

def NamedBody816_637 : StackLang.HolProg 64 :=
.seq NamedBody816_627 NamedBody816_636

def NamedBody816_638 : StackLang.HolProg 64 :=
.seq NamedBody816_574 NamedBody816_637

def NamedBody816_639 : StackLang.HolProg 64 :=
.seq NamedBody816_573 NamedBody816_638

def NamedBody816_640 : StackLang.HolProg 64 :=
.seq NamedBody816_572 NamedBody816_639

def NamedBody816_641 : StackLang.HolProg 64 :=
.seq NamedBody816_519 NamedBody816_640

def NamedBody816_642 : StackLang.HolProg 64 :=
.seq NamedBody816_518 NamedBody816_641

def NamedBody816_643 : StackLang.HolProg 64 :=
.seq NamedBody816_517 NamedBody816_642

def NamedBody816_644 : StackLang.HolProg 64 :=
.seq NamedBody816_452 NamedBody816_643

def NamedBody816_645 : StackLang.HolProg 64 :=
.seq NamedBody816_449 NamedBody816_644

def NamedBody816_646 : StackLang.HolProg 64 :=
.seq NamedBody816_448 NamedBody816_645

def NamedBody816_647 : StackLang.HolProg 64 :=
.seq NamedBody816_447 NamedBody816_646

def NamedBody816_648 : StackLang.HolProg 64 :=
.seq NamedBody816_374 NamedBody816_647

def NamedBody816_649 : StackLang.HolProg 64 :=
.seq NamedBody816_373 NamedBody816_648

def NamedBody816_650 : StackLang.HolProg 64 :=
.seq NamedBody816_372 NamedBody816_649

def NamedBody816_651 : StackLang.HolProg 64 :=
.seq NamedBody816_371 NamedBody816_650

def NamedBody816_652 : StackLang.HolProg 64 :=
.seq NamedBody816_268 NamedBody816_651

def NamedBody816_653 : StackLang.HolProg 64 :=
.seq NamedBody816_267 NamedBody816_652

def NamedBody816_654 : StackLang.HolProg 64 :=
.seq NamedBody816_266 NamedBody816_653

def NamedBody816_655 : StackLang.HolProg 64 :=
.seq NamedBody816_265 NamedBody816_654

def NamedBody816_656 : StackLang.HolProg 64 :=
.seq NamedBody816_190 NamedBody816_655

def NamedBody816_657 : StackLang.HolProg 64 :=
.seq NamedBody816_183 NamedBody816_656

def NamedBody816_658 : StackLang.HolProg 64 :=
.seq NamedBody816_182 NamedBody816_657

def NamedBody816_659 : StackLang.HolProg 64 :=
.seq NamedBody816_123 NamedBody816_658

def NamedBody816_660 : StackLang.HolProg 64 :=
.seq NamedBody816_122 NamedBody816_659

def NamedBody816_661 : StackLang.HolProg 64 :=
.seq NamedBody816_121 NamedBody816_660

def NamedBody816_662 : StackLang.HolProg 64 :=
.seq NamedBody816_120 NamedBody816_661

def NamedBody816_663 : StackLang.HolProg 64 :=
.seq NamedBody816_67 NamedBody816_662

def NamedBody816_664 : StackLang.HolProg 64 :=
.seq NamedBody816_66 NamedBody816_663

def NamedBody816_665 : StackLang.HolProg 64 :=
.seq NamedBody816_65 NamedBody816_664

def NamedBody816_666 : StackLang.HolProg 64 :=
.seq NamedBody816_64 NamedBody816_665

def NamedBody816_667 : StackLang.HolProg 64 :=
.seq NamedBody816_11 NamedBody816_666

def NamedBody816_668 : StackLang.HolProg 64 :=
.seq NamedBody816_6 NamedBody816_667

def Named816 : Nat × StackLang.HolProg 64 := (816, NamedBody816_668)
theorem Named816_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed816 = Named816 := by
  kernel_rfl
#print axioms Named816_eq
end InitECandidate.Proofs.BackendStages
