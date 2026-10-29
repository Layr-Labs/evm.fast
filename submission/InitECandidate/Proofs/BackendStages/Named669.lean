import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed669
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody669_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody669_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_3 : StackLang.HolProg 64 :=
.seq NamedBody669_1 NamedBody669_2

def NamedBody669_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_3 NamedBody669_4

def NamedBody669_6 : StackLang.HolProg 64 :=
.seq NamedBody669_0 NamedBody669_5

def NamedBody669_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_10 : StackLang.HolProg 64 :=
.seq NamedBody669_8 NamedBody669_9

def NamedBody669_11 : StackLang.HolProg 64 :=
.seq NamedBody669_7 NamedBody669_10

def NamedBody669_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2773#64)

def NamedBody669_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_15 : StackLang.HolProg 64 :=
.seq NamedBody669_13 NamedBody669_14

def NamedBody669_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_19 : StackLang.HolProg 64 :=
.seq NamedBody669_17 NamedBody669_18

def NamedBody669_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_19 NamedBody669_20

def NamedBody669_22 : StackLang.HolProg 64 :=
.seq NamedBody669_16 NamedBody669_21

def NamedBody669_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 3

def NamedBody669_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_32 : StackLang.HolProg 64 :=
.seq NamedBody669_30 NamedBody669_31

def NamedBody669_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_34 : StackLang.HolProg 64 :=
.seq NamedBody669_32 NamedBody669_33

def NamedBody669_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_36 : StackLang.HolProg 64 :=
.seq NamedBody669_34 NamedBody669_35

def NamedBody669_37 : StackLang.HolProg 64 :=
.seq NamedBody669_29 NamedBody669_36

def NamedBody669_38 : StackLang.HolProg 64 :=
.seq NamedBody669_28 NamedBody669_37

def NamedBody669_39 : StackLang.HolProg 64 :=
.seq NamedBody669_27 NamedBody669_38

def NamedBody669_40 : StackLang.HolProg 64 :=
.seq NamedBody669_26 NamedBody669_39

def NamedBody669_41 : StackLang.HolProg 64 :=
.seq NamedBody669_25 NamedBody669_40

def NamedBody669_42 : StackLang.HolProg 64 :=
.seq NamedBody669_24 NamedBody669_41

def NamedBody669_43 : StackLang.HolProg 64 :=
.seq NamedBody669_23 NamedBody669_42

def NamedBody669_44 : StackLang.HolProg 64 :=
.seq NamedBody669_22 NamedBody669_43

def NamedBody669_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_52 : StackLang.HolProg 64 :=
.seq NamedBody669_50 NamedBody669_51

def NamedBody669_53 : StackLang.HolProg 64 :=
.seq NamedBody669_49 NamedBody669_52

def NamedBody669_54 : StackLang.HolProg 64 :=
.seq NamedBody669_48 NamedBody669_53

def NamedBody669_55 : StackLang.HolProg 64 :=
.seq NamedBody669_47 NamedBody669_54

def NamedBody669_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_58 : StackLang.HolProg 64 :=
.seq NamedBody669_56 NamedBody669_57

def NamedBody669_59 : StackLang.HolProg 64 :=
.call (some (NamedBody669_55, 1, 669, 2)) (Sum.inl 69) (some (NamedBody669_58, 669, 3))

def NamedBody669_60 : StackLang.HolProg 64 :=
.seq NamedBody669_46 NamedBody669_59

def NamedBody669_61 : StackLang.HolProg 64 :=
.seq NamedBody669_45 NamedBody669_60

def NamedBody669_62 : StackLang.HolProg 64 :=
.seq NamedBody669_44 NamedBody669_61

def NamedBody669_63 : StackLang.HolProg 64 :=
.seq NamedBody669_15 NamedBody669_62

def NamedBody669_64 : StackLang.HolProg 64 :=
.seq NamedBody669_12 NamedBody669_63

def NamedBody669_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 736#64)

def NamedBody669_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2774#64)

def NamedBody669_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_71 : StackLang.HolProg 64 :=
.seq NamedBody669_69 NamedBody669_70

def NamedBody669_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_75 : StackLang.HolProg 64 :=
.seq NamedBody669_73 NamedBody669_74

def NamedBody669_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_75 NamedBody669_76

def NamedBody669_78 : StackLang.HolProg 64 :=
.seq NamedBody669_72 NamedBody669_77

def NamedBody669_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 5

def NamedBody669_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_88 : StackLang.HolProg 64 :=
.seq NamedBody669_86 NamedBody669_87

def NamedBody669_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_90 : StackLang.HolProg 64 :=
.seq NamedBody669_88 NamedBody669_89

def NamedBody669_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_92 : StackLang.HolProg 64 :=
.seq NamedBody669_90 NamedBody669_91

def NamedBody669_93 : StackLang.HolProg 64 :=
.seq NamedBody669_85 NamedBody669_92

def NamedBody669_94 : StackLang.HolProg 64 :=
.seq NamedBody669_84 NamedBody669_93

def NamedBody669_95 : StackLang.HolProg 64 :=
.seq NamedBody669_83 NamedBody669_94

def NamedBody669_96 : StackLang.HolProg 64 :=
.seq NamedBody669_82 NamedBody669_95

def NamedBody669_97 : StackLang.HolProg 64 :=
.seq NamedBody669_81 NamedBody669_96

def NamedBody669_98 : StackLang.HolProg 64 :=
.seq NamedBody669_80 NamedBody669_97

def NamedBody669_99 : StackLang.HolProg 64 :=
.seq NamedBody669_79 NamedBody669_98

def NamedBody669_100 : StackLang.HolProg 64 :=
.seq NamedBody669_78 NamedBody669_99

def NamedBody669_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_109 : StackLang.HolProg 64 :=
.seq NamedBody669_107 NamedBody669_108

def NamedBody669_110 : StackLang.HolProg 64 :=
.seq NamedBody669_106 NamedBody669_109

def NamedBody669_111 : StackLang.HolProg 64 :=
.seq NamedBody669_105 NamedBody669_110

def NamedBody669_112 : StackLang.HolProg 64 :=
.seq NamedBody669_104 NamedBody669_111

def NamedBody669_113 : StackLang.HolProg 64 :=
.seq NamedBody669_103 NamedBody669_112

def NamedBody669_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_116 : StackLang.HolProg 64 :=
.seq NamedBody669_114 NamedBody669_115

def NamedBody669_117 : StackLang.HolProg 64 :=
.call (some (NamedBody669_113, 1, 669, 4)) (Sum.inl 68) (some (NamedBody669_116, 669, 5))

def NamedBody669_118 : StackLang.HolProg 64 :=
.seq NamedBody669_102 NamedBody669_117

def NamedBody669_119 : StackLang.HolProg 64 :=
.seq NamedBody669_101 NamedBody669_118

def NamedBody669_120 : StackLang.HolProg 64 :=
.seq NamedBody669_100 NamedBody669_119

def NamedBody669_121 : StackLang.HolProg 64 :=
.seq NamedBody669_71 NamedBody669_120

def NamedBody669_122 : StackLang.HolProg 64 :=
.seq NamedBody669_68 NamedBody669_121

def NamedBody669_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody669_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 23#64)

def NamedBody669_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody669_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody669_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody669_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody669_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody669_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 11#64)

def NamedBody669_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551605#64)))

def NamedBody669_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_141 : StackLang.HolProg 64 :=
.seq NamedBody669_139 NamedBody669_140

def NamedBody669_142 : StackLang.HolProg 64 :=
.seq NamedBody669_138 NamedBody669_141

def NamedBody669_143 : StackLang.HolProg 64 :=
.seq NamedBody669_137 NamedBody669_142

def NamedBody669_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_146 : StackLang.HolProg 64 :=
.seq NamedBody669_144 NamedBody669_145

def NamedBody669_147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody669_143 NamedBody669_146

def NamedBody669_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_152 : StackLang.HolProg 64 :=
.seq NamedBody669_150 NamedBody669_151

def NamedBody669_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_155 : StackLang.HolProg 64 :=
.seq NamedBody669_153 NamedBody669_154

def NamedBody669_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody669_158 : StackLang.HolProg 64 :=
.seq NamedBody669_156 NamedBody669_157

def NamedBody669_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_165 : StackLang.HolProg 64 :=
.seq NamedBody669_163 NamedBody669_164

def NamedBody669_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_168 : StackLang.HolProg 64 :=
.seq NamedBody669_166 NamedBody669_167

def NamedBody669_169 : StackLang.HolProg 64 :=
.seq NamedBody669_165 NamedBody669_168

def NamedBody669_170 : StackLang.HolProg 64 :=
.seq NamedBody669_162 NamedBody669_169

def NamedBody669_171 : StackLang.HolProg 64 :=
.seq NamedBody669_161 NamedBody669_170

def NamedBody669_172 : StackLang.HolProg 64 :=
.seq NamedBody669_160 NamedBody669_171

def NamedBody669_173 : StackLang.HolProg 64 :=
.seq NamedBody669_159 NamedBody669_172

def NamedBody669_174 : StackLang.HolProg 64 :=
.seq NamedBody669_158 NamedBody669_173

def NamedBody669_175 : StackLang.HolProg 64 :=
.seq NamedBody669_155 NamedBody669_174

def NamedBody669_176 : StackLang.HolProg 64 :=
.seq NamedBody669_152 NamedBody669_175

def NamedBody669_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody669_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody669_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody669_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody669_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody669_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody669_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody669_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody669_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody669_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody669_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody669_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody669_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody669_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody669_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody669_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2775#64)

def NamedBody669_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_208 : StackLang.HolProg 64 :=
.seq NamedBody669_206 NamedBody669_207

def NamedBody669_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_212 : StackLang.HolProg 64 :=
.seq NamedBody669_210 NamedBody669_211

def NamedBody669_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_212 NamedBody669_213

def NamedBody669_215 : StackLang.HolProg 64 :=
.seq NamedBody669_209 NamedBody669_214

def NamedBody669_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 7

def NamedBody669_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_225 : StackLang.HolProg 64 :=
.seq NamedBody669_223 NamedBody669_224

def NamedBody669_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_227 : StackLang.HolProg 64 :=
.seq NamedBody669_225 NamedBody669_226

def NamedBody669_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_229 : StackLang.HolProg 64 :=
.seq NamedBody669_227 NamedBody669_228

def NamedBody669_230 : StackLang.HolProg 64 :=
.seq NamedBody669_222 NamedBody669_229

def NamedBody669_231 : StackLang.HolProg 64 :=
.seq NamedBody669_221 NamedBody669_230

def NamedBody669_232 : StackLang.HolProg 64 :=
.seq NamedBody669_220 NamedBody669_231

def NamedBody669_233 : StackLang.HolProg 64 :=
.seq NamedBody669_219 NamedBody669_232

def NamedBody669_234 : StackLang.HolProg 64 :=
.seq NamedBody669_218 NamedBody669_233

def NamedBody669_235 : StackLang.HolProg 64 :=
.seq NamedBody669_217 NamedBody669_234

def NamedBody669_236 : StackLang.HolProg 64 :=
.seq NamedBody669_216 NamedBody669_235

def NamedBody669_237 : StackLang.HolProg 64 :=
.seq NamedBody669_215 NamedBody669_236

def NamedBody669_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody669_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody669_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody669_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_254 : StackLang.HolProg 64 :=
.seq NamedBody669_252 NamedBody669_253

def NamedBody669_255 : StackLang.HolProg 64 :=
.seq NamedBody669_251 NamedBody669_254

def NamedBody669_256 : StackLang.HolProg 64 :=
.seq NamedBody669_250 NamedBody669_255

def NamedBody669_257 : StackLang.HolProg 64 :=
.seq NamedBody669_249 NamedBody669_256

def NamedBody669_258 : StackLang.HolProg 64 :=
.seq NamedBody669_248 NamedBody669_257

def NamedBody669_259 : StackLang.HolProg 64 :=
.seq NamedBody669_247 NamedBody669_258

def NamedBody669_260 : StackLang.HolProg 64 :=
.seq NamedBody669_246 NamedBody669_259

def NamedBody669_261 : StackLang.HolProg 64 :=
.seq NamedBody669_245 NamedBody669_260

def NamedBody669_262 : StackLang.HolProg 64 :=
.seq NamedBody669_244 NamedBody669_261

def NamedBody669_263 : StackLang.HolProg 64 :=
.seq NamedBody669_243 NamedBody669_262

def NamedBody669_264 : StackLang.HolProg 64 :=
.seq NamedBody669_242 NamedBody669_263

def NamedBody669_265 : StackLang.HolProg 64 :=
.seq NamedBody669_241 NamedBody669_264

def NamedBody669_266 : StackLang.HolProg 64 :=
.seq NamedBody669_240 NamedBody669_265

def NamedBody669_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_273 : StackLang.HolProg 64 :=
.seq NamedBody669_271 NamedBody669_272

def NamedBody669_274 : StackLang.HolProg 64 :=
.seq NamedBody669_270 NamedBody669_273

def NamedBody669_275 : StackLang.HolProg 64 :=
.seq NamedBody669_269 NamedBody669_274

def NamedBody669_276 : StackLang.HolProg 64 :=
.seq NamedBody669_268 NamedBody669_275

def NamedBody669_277 : StackLang.HolProg 64 :=
.seq NamedBody669_267 NamedBody669_276

def NamedBody669_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_279 : StackLang.HolProg 64 :=
.seq NamedBody669_277 NamedBody669_278

def NamedBody669_280 : StackLang.HolProg 64 :=
.call (some (NamedBody669_266, 1, 669, 6)) (Sum.inl 661) (some (NamedBody669_279, 669, 7))

def NamedBody669_281 : StackLang.HolProg 64 :=
.seq NamedBody669_239 NamedBody669_280

def NamedBody669_282 : StackLang.HolProg 64 :=
.seq NamedBody669_238 NamedBody669_281

def NamedBody669_283 : StackLang.HolProg 64 :=
.seq NamedBody669_237 NamedBody669_282

def NamedBody669_284 : StackLang.HolProg 64 :=
.seq NamedBody669_208 NamedBody669_283

def NamedBody669_285 : StackLang.HolProg 64 :=
.seq NamedBody669_205 NamedBody669_284

def NamedBody669_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody669_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2776#64)

def NamedBody669_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_291 : StackLang.HolProg 64 :=
.seq NamedBody669_289 NamedBody669_290

def NamedBody669_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_295 : StackLang.HolProg 64 :=
.seq NamedBody669_293 NamedBody669_294

def NamedBody669_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_295 NamedBody669_296

def NamedBody669_298 : StackLang.HolProg 64 :=
.seq NamedBody669_292 NamedBody669_297

def NamedBody669_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 9

def NamedBody669_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_308 : StackLang.HolProg 64 :=
.seq NamedBody669_306 NamedBody669_307

def NamedBody669_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_310 : StackLang.HolProg 64 :=
.seq NamedBody669_308 NamedBody669_309

def NamedBody669_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_312 : StackLang.HolProg 64 :=
.seq NamedBody669_310 NamedBody669_311

def NamedBody669_313 : StackLang.HolProg 64 :=
.seq NamedBody669_305 NamedBody669_312

def NamedBody669_314 : StackLang.HolProg 64 :=
.seq NamedBody669_304 NamedBody669_313

def NamedBody669_315 : StackLang.HolProg 64 :=
.seq NamedBody669_303 NamedBody669_314

def NamedBody669_316 : StackLang.HolProg 64 :=
.seq NamedBody669_302 NamedBody669_315

def NamedBody669_317 : StackLang.HolProg 64 :=
.seq NamedBody669_301 NamedBody669_316

def NamedBody669_318 : StackLang.HolProg 64 :=
.seq NamedBody669_300 NamedBody669_317

def NamedBody669_319 : StackLang.HolProg 64 :=
.seq NamedBody669_299 NamedBody669_318

def NamedBody669_320 : StackLang.HolProg 64 :=
.seq NamedBody669_298 NamedBody669_319

def NamedBody669_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_329 : StackLang.HolProg 64 :=
.seq NamedBody669_327 NamedBody669_328

def NamedBody669_330 : StackLang.HolProg 64 :=
.seq NamedBody669_326 NamedBody669_329

def NamedBody669_331 : StackLang.HolProg 64 :=
.seq NamedBody669_325 NamedBody669_330

def NamedBody669_332 : StackLang.HolProg 64 :=
.seq NamedBody669_324 NamedBody669_331

def NamedBody669_333 : StackLang.HolProg 64 :=
.seq NamedBody669_323 NamedBody669_332

def NamedBody669_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_336 : StackLang.HolProg 64 :=
.seq NamedBody669_334 NamedBody669_335

def NamedBody669_337 : StackLang.HolProg 64 :=
.call (some (NamedBody669_333, 1, 669, 8)) (Sum.inl 658) (some (NamedBody669_336, 669, 9))

def NamedBody669_338 : StackLang.HolProg 64 :=
.seq NamedBody669_322 NamedBody669_337

def NamedBody669_339 : StackLang.HolProg 64 :=
.seq NamedBody669_321 NamedBody669_338

def NamedBody669_340 : StackLang.HolProg 64 :=
.seq NamedBody669_320 NamedBody669_339

def NamedBody669_341 : StackLang.HolProg 64 :=
.seq NamedBody669_291 NamedBody669_340

def NamedBody669_342 : StackLang.HolProg 64 :=
.seq NamedBody669_288 NamedBody669_341

def NamedBody669_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody669_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_350 : StackLang.HolProg 64 :=
.seq NamedBody669_348 NamedBody669_349

def NamedBody669_351 : StackLang.HolProg 64 :=
.seq NamedBody669_347 NamedBody669_350

def NamedBody669_352 : StackLang.HolProg 64 :=
.seq NamedBody669_346 NamedBody669_351

def NamedBody669_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody669_354 : StackLang.HolProg 64 :=
.seq NamedBody669_352 NamedBody669_353

def NamedBody669_355 : StackLang.HolProg 64 :=
.seq NamedBody669_345 NamedBody669_354

def NamedBody669_356 : StackLang.HolProg 64 :=
.seq NamedBody669_344 NamedBody669_355

def NamedBody669_357 : StackLang.HolProg 64 :=
.seq NamedBody669_343 NamedBody669_356

def NamedBody669_358 : StackLang.HolProg 64 :=
.seq NamedBody669_342 NamedBody669_357

def NamedBody669_359 : StackLang.HolProg 64 :=
.seq NamedBody669_287 NamedBody669_358

def NamedBody669_360 : StackLang.HolProg 64 :=
.seq NamedBody669_286 NamedBody669_359

def NamedBody669_361 : StackLang.HolProg 64 :=
.seq NamedBody669_285 NamedBody669_360

def NamedBody669_362 : StackLang.HolProg 64 :=
.seq NamedBody669_204 NamedBody669_361

def NamedBody669_363 : StackLang.HolProg 64 :=
.seq NamedBody669_203 NamedBody669_362

def NamedBody669_364 : StackLang.HolProg 64 :=
.seq NamedBody669_202 NamedBody669_363

def NamedBody669_365 : StackLang.HolProg 64 :=
.seq NamedBody669_201 NamedBody669_364

def NamedBody669_366 : StackLang.HolProg 64 :=
.seq NamedBody669_200 NamedBody669_365

def NamedBody669_367 : StackLang.HolProg 64 :=
.seq NamedBody669_199 NamedBody669_366

def NamedBody669_368 : StackLang.HolProg 64 :=
.seq NamedBody669_198 NamedBody669_367

def NamedBody669_369 : StackLang.HolProg 64 :=
.seq NamedBody669_197 NamedBody669_368

def NamedBody669_370 : StackLang.HolProg 64 :=
.seq NamedBody669_196 NamedBody669_369

def NamedBody669_371 : StackLang.HolProg 64 :=
.seq NamedBody669_195 NamedBody669_370

def NamedBody669_372 : StackLang.HolProg 64 :=
.seq NamedBody669_194 NamedBody669_371

def NamedBody669_373 : StackLang.HolProg 64 :=
.seq NamedBody669_193 NamedBody669_372

def NamedBody669_374 : StackLang.HolProg 64 :=
.seq NamedBody669_192 NamedBody669_373

def NamedBody669_375 : StackLang.HolProg 64 :=
.seq NamedBody669_191 NamedBody669_374

def NamedBody669_376 : StackLang.HolProg 64 :=
.seq NamedBody669_190 NamedBody669_375

def NamedBody669_377 : StackLang.HolProg 64 :=
.seq NamedBody669_189 NamedBody669_376

def NamedBody669_378 : StackLang.HolProg 64 :=
.seq NamedBody669_188 NamedBody669_377

def NamedBody669_379 : StackLang.HolProg 64 :=
.seq NamedBody669_187 NamedBody669_378

def NamedBody669_380 : StackLang.HolProg 64 :=
.seq NamedBody669_186 NamedBody669_379

def NamedBody669_381 : StackLang.HolProg 64 :=
.seq NamedBody669_185 NamedBody669_380

def NamedBody669_382 : StackLang.HolProg 64 :=
.seq NamedBody669_184 NamedBody669_381

def NamedBody669_383 : StackLang.HolProg 64 :=
.seq NamedBody669_183 NamedBody669_382

def NamedBody669_384 : StackLang.HolProg 64 :=
.seq NamedBody669_182 NamedBody669_383

def NamedBody669_385 : StackLang.HolProg 64 :=
.seq NamedBody669_181 NamedBody669_384

def NamedBody669_386 : StackLang.HolProg 64 :=
.seq NamedBody669_180 NamedBody669_385

def NamedBody669_387 : StackLang.HolProg 64 :=
.seq NamedBody669_179 NamedBody669_386

def NamedBody669_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody669_391 : StackLang.HolProg 64 :=
.seq NamedBody669_389 NamedBody669_390

def NamedBody669_392 : StackLang.HolProg 64 :=
.seq NamedBody669_388 NamedBody669_391

def NamedBody669_393 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody669_387 NamedBody669_392

def NamedBody669_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody669_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_405 : StackLang.HolProg 64 :=
.seq NamedBody669_403 NamedBody669_404

def NamedBody669_406 : StackLang.HolProg 64 :=
.seq NamedBody669_402 NamedBody669_405

def NamedBody669_407 : StackLang.HolProg 64 :=
.seq NamedBody669_401 NamedBody669_406

def NamedBody669_408 : StackLang.HolProg 64 :=
.seq NamedBody669_400 NamedBody669_407

def NamedBody669_409 : StackLang.HolProg 64 :=
.seq NamedBody669_399 NamedBody669_408

def NamedBody669_410 : StackLang.HolProg 64 :=
.seq NamedBody669_398 NamedBody669_409

def NamedBody669_411 : StackLang.HolProg 64 :=
.seq NamedBody669_397 NamedBody669_410

def NamedBody669_412 : StackLang.HolProg 64 :=
.seq NamedBody669_396 NamedBody669_411

def NamedBody669_413 : StackLang.HolProg 64 :=
.seq NamedBody669_395 NamedBody669_412

def NamedBody669_414 : StackLang.HolProg 64 :=
.seq NamedBody669_394 NamedBody669_413

def NamedBody669_415 : StackLang.HolProg 64 :=
.seq NamedBody669_393 NamedBody669_414

def NamedBody669_416 : StackLang.HolProg 64 :=
.seq NamedBody669_178 NamedBody669_415

def NamedBody669_417 : StackLang.HolProg 64 :=
.seq NamedBody669_177 NamedBody669_416

def NamedBody669_418 : StackLang.HolProg 64 :=
.loop NamedBody669_417

def NamedBody669_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_430 : StackLang.HolProg 64 :=
.seq NamedBody669_428 NamedBody669_429

def NamedBody669_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_433 : StackLang.HolProg 64 :=
.seq NamedBody669_431 NamedBody669_432

def NamedBody669_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_436 : StackLang.HolProg 64 :=
.seq NamedBody669_434 NamedBody669_435

def NamedBody669_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_439 : StackLang.HolProg 64 :=
.seq NamedBody669_437 NamedBody669_438

def NamedBody669_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody669_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_442 : StackLang.HolProg 64 :=
.seq NamedBody669_440 NamedBody669_441

def NamedBody669_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody669_445 : StackLang.HolProg 64 :=
.seq NamedBody669_443 NamedBody669_444

def NamedBody669_446 : StackLang.HolProg 64 :=
.seq NamedBody669_442 NamedBody669_445

def NamedBody669_447 : StackLang.HolProg 64 :=
.seq NamedBody669_439 NamedBody669_446

def NamedBody669_448 : StackLang.HolProg 64 :=
.seq NamedBody669_436 NamedBody669_447

def NamedBody669_449 : StackLang.HolProg 64 :=
.seq NamedBody669_433 NamedBody669_448

def NamedBody669_450 : StackLang.HolProg 64 :=
.seq NamedBody669_430 NamedBody669_449

def NamedBody669_451 : StackLang.HolProg 64 :=
.seq NamedBody669_427 NamedBody669_450

def NamedBody669_452 : StackLang.HolProg 64 :=
.seq NamedBody669_426 NamedBody669_451

def NamedBody669_453 : StackLang.HolProg 64 :=
.seq NamedBody669_425 NamedBody669_452

def NamedBody669_454 : StackLang.HolProg 64 :=
.seq NamedBody669_424 NamedBody669_453

def NamedBody669_455 : StackLang.HolProg 64 :=
.seq NamedBody669_423 NamedBody669_454

def NamedBody669_456 : StackLang.HolProg 64 :=
.seq NamedBody669_422 NamedBody669_455

def NamedBody669_457 : StackLang.HolProg 64 :=
.seq NamedBody669_421 NamedBody669_456

def NamedBody669_458 : StackLang.HolProg 64 :=
.seq NamedBody669_420 NamedBody669_457

def NamedBody669_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2777#64)

def NamedBody669_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_462 : StackLang.HolProg 64 :=
.seq NamedBody669_460 NamedBody669_461

def NamedBody669_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_466 : StackLang.HolProg 64 :=
.seq NamedBody669_464 NamedBody669_465

def NamedBody669_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_468 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_466 NamedBody669_467

def NamedBody669_469 : StackLang.HolProg 64 :=
.seq NamedBody669_463 NamedBody669_468

def NamedBody669_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 11

def NamedBody669_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_479 : StackLang.HolProg 64 :=
.seq NamedBody669_477 NamedBody669_478

def NamedBody669_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_481 : StackLang.HolProg 64 :=
.seq NamedBody669_479 NamedBody669_480

def NamedBody669_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_483 : StackLang.HolProg 64 :=
.seq NamedBody669_481 NamedBody669_482

def NamedBody669_484 : StackLang.HolProg 64 :=
.seq NamedBody669_476 NamedBody669_483

def NamedBody669_485 : StackLang.HolProg 64 :=
.seq NamedBody669_475 NamedBody669_484

def NamedBody669_486 : StackLang.HolProg 64 :=
.seq NamedBody669_474 NamedBody669_485

def NamedBody669_487 : StackLang.HolProg 64 :=
.seq NamedBody669_473 NamedBody669_486

def NamedBody669_488 : StackLang.HolProg 64 :=
.seq NamedBody669_472 NamedBody669_487

def NamedBody669_489 : StackLang.HolProg 64 :=
.seq NamedBody669_471 NamedBody669_488

def NamedBody669_490 : StackLang.HolProg 64 :=
.seq NamedBody669_470 NamedBody669_489

def NamedBody669_491 : StackLang.HolProg 64 :=
.seq NamedBody669_469 NamedBody669_490

def NamedBody669_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_501 : StackLang.HolProg 64 :=
.seq NamedBody669_499 NamedBody669_500

def NamedBody669_502 : StackLang.HolProg 64 :=
.seq NamedBody669_498 NamedBody669_501

def NamedBody669_503 : StackLang.HolProg 64 :=
.seq NamedBody669_497 NamedBody669_502

def NamedBody669_504 : StackLang.HolProg 64 :=
.seq NamedBody669_496 NamedBody669_503

def NamedBody669_505 : StackLang.HolProg 64 :=
.seq NamedBody669_495 NamedBody669_504

def NamedBody669_506 : StackLang.HolProg 64 :=
.seq NamedBody669_494 NamedBody669_505

def NamedBody669_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_509 : StackLang.HolProg 64 :=
.seq NamedBody669_507 NamedBody669_508

def NamedBody669_510 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_511 : StackLang.HolProg 64 :=
.seq NamedBody669_509 NamedBody669_510

def NamedBody669_512 : StackLang.HolProg 64 :=
.call (some (NamedBody669_506, 1, 669, 10)) (Sum.inl 658) (some (NamedBody669_511, 669, 11))

def NamedBody669_513 : StackLang.HolProg 64 :=
.seq NamedBody669_493 NamedBody669_512

def NamedBody669_514 : StackLang.HolProg 64 :=
.seq NamedBody669_492 NamedBody669_513

def NamedBody669_515 : StackLang.HolProg 64 :=
.seq NamedBody669_491 NamedBody669_514

def NamedBody669_516 : StackLang.HolProg 64 :=
.seq NamedBody669_462 NamedBody669_515

def NamedBody669_517 : StackLang.HolProg 64 :=
.seq NamedBody669_459 NamedBody669_516

def NamedBody669_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody669_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody669_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody669_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody669_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody669_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody669_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody669_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody669_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody669_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody669_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody669_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody669_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody669_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_544 : StackLang.HolProg 64 :=
.seq NamedBody669_542 NamedBody669_543

def NamedBody669_545 : StackLang.HolProg 64 :=
.seq NamedBody669_541 NamedBody669_544

def NamedBody669_546 : StackLang.HolProg 64 :=
.seq NamedBody669_540 NamedBody669_545

def NamedBody669_547 : StackLang.HolProg 64 :=
.seq NamedBody669_539 NamedBody669_546

def NamedBody669_548 : StackLang.HolProg 64 :=
.seq NamedBody669_538 NamedBody669_547

def NamedBody669_549 : StackLang.HolProg 64 :=
.seq NamedBody669_537 NamedBody669_548

def NamedBody669_550 : StackLang.HolProg 64 :=
.seq NamedBody669_536 NamedBody669_549

def NamedBody669_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2778#64)

def NamedBody669_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_554 : StackLang.HolProg 64 :=
.seq NamedBody669_552 NamedBody669_553

def NamedBody669_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_558 : StackLang.HolProg 64 :=
.seq NamedBody669_556 NamedBody669_557

def NamedBody669_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_560 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_558 NamedBody669_559

def NamedBody669_561 : StackLang.HolProg 64 :=
.seq NamedBody669_555 NamedBody669_560

def NamedBody669_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 13

def NamedBody669_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_571 : StackLang.HolProg 64 :=
.seq NamedBody669_569 NamedBody669_570

def NamedBody669_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_573 : StackLang.HolProg 64 :=
.seq NamedBody669_571 NamedBody669_572

def NamedBody669_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_575 : StackLang.HolProg 64 :=
.seq NamedBody669_573 NamedBody669_574

def NamedBody669_576 : StackLang.HolProg 64 :=
.seq NamedBody669_568 NamedBody669_575

def NamedBody669_577 : StackLang.HolProg 64 :=
.seq NamedBody669_567 NamedBody669_576

def NamedBody669_578 : StackLang.HolProg 64 :=
.seq NamedBody669_566 NamedBody669_577

def NamedBody669_579 : StackLang.HolProg 64 :=
.seq NamedBody669_565 NamedBody669_578

def NamedBody669_580 : StackLang.HolProg 64 :=
.seq NamedBody669_564 NamedBody669_579

def NamedBody669_581 : StackLang.HolProg 64 :=
.seq NamedBody669_563 NamedBody669_580

def NamedBody669_582 : StackLang.HolProg 64 :=
.seq NamedBody669_562 NamedBody669_581

def NamedBody669_583 : StackLang.HolProg 64 :=
.seq NamedBody669_561 NamedBody669_582

def NamedBody669_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody669_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody669_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody669_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_597 : StackLang.HolProg 64 :=
.seq NamedBody669_595 NamedBody669_596

def NamedBody669_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_601 : StackLang.HolProg 64 :=
.seq NamedBody669_599 NamedBody669_600

def NamedBody669_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_605 : StackLang.HolProg 64 :=
.seq NamedBody669_603 NamedBody669_604

def NamedBody669_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody669_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_608 : StackLang.HolProg 64 :=
.seq NamedBody669_606 NamedBody669_607

def NamedBody669_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_610 : StackLang.HolProg 64 :=
.seq NamedBody669_608 NamedBody669_609

def NamedBody669_611 : StackLang.HolProg 64 :=
.seq NamedBody669_605 NamedBody669_610

def NamedBody669_612 : StackLang.HolProg 64 :=
.seq NamedBody669_602 NamedBody669_611

def NamedBody669_613 : StackLang.HolProg 64 :=
.seq NamedBody669_601 NamedBody669_612

def NamedBody669_614 : StackLang.HolProg 64 :=
.seq NamedBody669_598 NamedBody669_613

def NamedBody669_615 : StackLang.HolProg 64 :=
.seq NamedBody669_597 NamedBody669_614

def NamedBody669_616 : StackLang.HolProg 64 :=
.seq NamedBody669_594 NamedBody669_615

def NamedBody669_617 : StackLang.HolProg 64 :=
.seq NamedBody669_593 NamedBody669_616

def NamedBody669_618 : StackLang.HolProg 64 :=
.seq NamedBody669_592 NamedBody669_617

def NamedBody669_619 : StackLang.HolProg 64 :=
.seq NamedBody669_591 NamedBody669_618

def NamedBody669_620 : StackLang.HolProg 64 :=
.seq NamedBody669_590 NamedBody669_619

def NamedBody669_621 : StackLang.HolProg 64 :=
.seq NamedBody669_589 NamedBody669_620

def NamedBody669_622 : StackLang.HolProg 64 :=
.seq NamedBody669_588 NamedBody669_621

def NamedBody669_623 : StackLang.HolProg 64 :=
.seq NamedBody669_587 NamedBody669_622

def NamedBody669_624 : StackLang.HolProg 64 :=
.seq NamedBody669_586 NamedBody669_623

def NamedBody669_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_628 : StackLang.HolProg 64 :=
.seq NamedBody669_626 NamedBody669_627

def NamedBody669_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_632 : StackLang.HolProg 64 :=
.seq NamedBody669_630 NamedBody669_631

def NamedBody669_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody669_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_636 : StackLang.HolProg 64 :=
.seq NamedBody669_634 NamedBody669_635

def NamedBody669_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody669_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_639 : StackLang.HolProg 64 :=
.seq NamedBody669_637 NamedBody669_638

def NamedBody669_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_641 : StackLang.HolProg 64 :=
.seq NamedBody669_639 NamedBody669_640

def NamedBody669_642 : StackLang.HolProg 64 :=
.seq NamedBody669_636 NamedBody669_641

def NamedBody669_643 : StackLang.HolProg 64 :=
.seq NamedBody669_633 NamedBody669_642

def NamedBody669_644 : StackLang.HolProg 64 :=
.seq NamedBody669_632 NamedBody669_643

def NamedBody669_645 : StackLang.HolProg 64 :=
.seq NamedBody669_629 NamedBody669_644

def NamedBody669_646 : StackLang.HolProg 64 :=
.seq NamedBody669_628 NamedBody669_645

def NamedBody669_647 : StackLang.HolProg 64 :=
.seq NamedBody669_625 NamedBody669_646

def NamedBody669_648 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_649 : StackLang.HolProg 64 :=
.seq NamedBody669_647 NamedBody669_648

def NamedBody669_650 : StackLang.HolProg 64 :=
.call (some (NamedBody669_624, 1, 669, 12)) (Sum.inl 661) (some (NamedBody669_649, 669, 13))

def NamedBody669_651 : StackLang.HolProg 64 :=
.seq NamedBody669_585 NamedBody669_650

def NamedBody669_652 : StackLang.HolProg 64 :=
.seq NamedBody669_584 NamedBody669_651

def NamedBody669_653 : StackLang.HolProg 64 :=
.seq NamedBody669_583 NamedBody669_652

def NamedBody669_654 : StackLang.HolProg 64 :=
.seq NamedBody669_554 NamedBody669_653

def NamedBody669_655 : StackLang.HolProg 64 :=
.seq NamedBody669_551 NamedBody669_654

def NamedBody669_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody669_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2779#64)

def NamedBody669_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_661 : StackLang.HolProg 64 :=
.seq NamedBody669_659 NamedBody669_660

def NamedBody669_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_665 : StackLang.HolProg 64 :=
.seq NamedBody669_663 NamedBody669_664

def NamedBody669_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_667 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_665 NamedBody669_666

def NamedBody669_668 : StackLang.HolProg 64 :=
.seq NamedBody669_662 NamedBody669_667

def NamedBody669_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 15

def NamedBody669_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_678 : StackLang.HolProg 64 :=
.seq NamedBody669_676 NamedBody669_677

def NamedBody669_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_680 : StackLang.HolProg 64 :=
.seq NamedBody669_678 NamedBody669_679

def NamedBody669_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_682 : StackLang.HolProg 64 :=
.seq NamedBody669_680 NamedBody669_681

def NamedBody669_683 : StackLang.HolProg 64 :=
.seq NamedBody669_675 NamedBody669_682

def NamedBody669_684 : StackLang.HolProg 64 :=
.seq NamedBody669_674 NamedBody669_683

def NamedBody669_685 : StackLang.HolProg 64 :=
.seq NamedBody669_673 NamedBody669_684

def NamedBody669_686 : StackLang.HolProg 64 :=
.seq NamedBody669_672 NamedBody669_685

def NamedBody669_687 : StackLang.HolProg 64 :=
.seq NamedBody669_671 NamedBody669_686

def NamedBody669_688 : StackLang.HolProg 64 :=
.seq NamedBody669_670 NamedBody669_687

def NamedBody669_689 : StackLang.HolProg 64 :=
.seq NamedBody669_669 NamedBody669_688

def NamedBody669_690 : StackLang.HolProg 64 :=
.seq NamedBody669_668 NamedBody669_689

def NamedBody669_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody669_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_703 : StackLang.HolProg 64 :=
.seq NamedBody669_701 NamedBody669_702

def NamedBody669_704 : StackLang.HolProg 64 :=
.seq NamedBody669_700 NamedBody669_703

def NamedBody669_705 : StackLang.HolProg 64 :=
.seq NamedBody669_699 NamedBody669_704

def NamedBody669_706 : StackLang.HolProg 64 :=
.seq NamedBody669_698 NamedBody669_705

def NamedBody669_707 : StackLang.HolProg 64 :=
.seq NamedBody669_697 NamedBody669_706

def NamedBody669_708 : StackLang.HolProg 64 :=
.seq NamedBody669_696 NamedBody669_707

def NamedBody669_709 : StackLang.HolProg 64 :=
.seq NamedBody669_695 NamedBody669_708

def NamedBody669_710 : StackLang.HolProg 64 :=
.seq NamedBody669_694 NamedBody669_709

def NamedBody669_711 : StackLang.HolProg 64 :=
.seq NamedBody669_693 NamedBody669_710

def NamedBody669_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody669_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody669_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_717 : StackLang.HolProg 64 :=
.seq NamedBody669_715 NamedBody669_716

def NamedBody669_718 : StackLang.HolProg 64 :=
.seq NamedBody669_714 NamedBody669_717

def NamedBody669_719 : StackLang.HolProg 64 :=
.seq NamedBody669_713 NamedBody669_718

def NamedBody669_720 : StackLang.HolProg 64 :=
.seq NamedBody669_712 NamedBody669_719

def NamedBody669_721 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_722 : StackLang.HolProg 64 :=
.seq NamedBody669_720 NamedBody669_721

def NamedBody669_723 : StackLang.HolProg 64 :=
.call (some (NamedBody669_711, 1, 669, 14)) (Sum.inl 658) (some (NamedBody669_722, 669, 15))

def NamedBody669_724 : StackLang.HolProg 64 :=
.seq NamedBody669_692 NamedBody669_723

def NamedBody669_725 : StackLang.HolProg 64 :=
.seq NamedBody669_691 NamedBody669_724

def NamedBody669_726 : StackLang.HolProg 64 :=
.seq NamedBody669_690 NamedBody669_725

def NamedBody669_727 : StackLang.HolProg 64 :=
.seq NamedBody669_661 NamedBody669_726

def NamedBody669_728 : StackLang.HolProg 64 :=
.seq NamedBody669_658 NamedBody669_727

def NamedBody669_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_731 : StackLang.HolProg 64 :=
.seq NamedBody669_729 NamedBody669_730

def NamedBody669_732 : StackLang.HolProg 64 :=
.seq NamedBody669_728 NamedBody669_731

def NamedBody669_733 : StackLang.HolProg 64 :=
.seq NamedBody669_657 NamedBody669_732

def NamedBody669_734 : StackLang.HolProg 64 :=
.seq NamedBody669_656 NamedBody669_733

def NamedBody669_735 : StackLang.HolProg 64 :=
.seq NamedBody669_655 NamedBody669_734

def NamedBody669_736 : StackLang.HolProg 64 :=
.seq NamedBody669_550 NamedBody669_735

def NamedBody669_737 : StackLang.HolProg 64 :=
.seq NamedBody669_535 NamedBody669_736

def NamedBody669_738 : StackLang.HolProg 64 :=
.seq NamedBody669_534 NamedBody669_737

def NamedBody669_739 : StackLang.HolProg 64 :=
.seq NamedBody669_533 NamedBody669_738

def NamedBody669_740 : StackLang.HolProg 64 :=
.seq NamedBody669_532 NamedBody669_739

def NamedBody669_741 : StackLang.HolProg 64 :=
.seq NamedBody669_531 NamedBody669_740

def NamedBody669_742 : StackLang.HolProg 64 :=
.seq NamedBody669_530 NamedBody669_741

def NamedBody669_743 : StackLang.HolProg 64 :=
.seq NamedBody669_529 NamedBody669_742

def NamedBody669_744 : StackLang.HolProg 64 :=
.seq NamedBody669_528 NamedBody669_743

def NamedBody669_745 : StackLang.HolProg 64 :=
.seq NamedBody669_527 NamedBody669_744

def NamedBody669_746 : StackLang.HolProg 64 :=
.seq NamedBody669_526 NamedBody669_745

def NamedBody669_747 : StackLang.HolProg 64 :=
.seq NamedBody669_525 NamedBody669_746

def NamedBody669_748 : StackLang.HolProg 64 :=
.seq NamedBody669_524 NamedBody669_747

def NamedBody669_749 : StackLang.HolProg 64 :=
.seq NamedBody669_523 NamedBody669_748

def NamedBody669_750 : StackLang.HolProg 64 :=
.seq NamedBody669_522 NamedBody669_749

def NamedBody669_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody669_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody669_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_755 : StackLang.HolProg 64 :=
.seq NamedBody669_753 NamedBody669_754

def NamedBody669_756 : StackLang.HolProg 64 :=
.seq NamedBody669_752 NamedBody669_755

def NamedBody669_757 : StackLang.HolProg 64 :=
.seq NamedBody669_751 NamedBody669_756

def NamedBody669_758 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody669_750 NamedBody669_757

def NamedBody669_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody669_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody669_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody669_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody669_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody669_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody669_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody669_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody669_776 : StackLang.HolProg 64 :=
.seq NamedBody669_774 NamedBody669_775

def NamedBody669_777 : StackLang.HolProg 64 :=
.seq NamedBody669_773 NamedBody669_776

def NamedBody669_778 : StackLang.HolProg 64 :=
.seq NamedBody669_772 NamedBody669_777

def NamedBody669_779 : StackLang.HolProg 64 :=
.seq NamedBody669_771 NamedBody669_778

def NamedBody669_780 : StackLang.HolProg 64 :=
.seq NamedBody669_770 NamedBody669_779

def NamedBody669_781 : StackLang.HolProg 64 :=
.seq NamedBody669_769 NamedBody669_780

def NamedBody669_782 : StackLang.HolProg 64 :=
.seq NamedBody669_768 NamedBody669_781

def NamedBody669_783 : StackLang.HolProg 64 :=
.seq NamedBody669_767 NamedBody669_782

def NamedBody669_784 : StackLang.HolProg 64 :=
.seq NamedBody669_766 NamedBody669_783

def NamedBody669_785 : StackLang.HolProg 64 :=
.seq NamedBody669_765 NamedBody669_784

def NamedBody669_786 : StackLang.HolProg 64 :=
.seq NamedBody669_764 NamedBody669_785

def NamedBody669_787 : StackLang.HolProg 64 :=
.seq NamedBody669_763 NamedBody669_786

def NamedBody669_788 : StackLang.HolProg 64 :=
.seq NamedBody669_762 NamedBody669_787

def NamedBody669_789 : StackLang.HolProg 64 :=
.seq NamedBody669_761 NamedBody669_788

def NamedBody669_790 : StackLang.HolProg 64 :=
.seq NamedBody669_760 NamedBody669_789

def NamedBody669_791 : StackLang.HolProg 64 :=
.seq NamedBody669_759 NamedBody669_790

def NamedBody669_792 : StackLang.HolProg 64 :=
.seq NamedBody669_758 NamedBody669_791

def NamedBody669_793 : StackLang.HolProg 64 :=
.seq NamedBody669_521 NamedBody669_792

def NamedBody669_794 : StackLang.HolProg 64 :=
.seq NamedBody669_520 NamedBody669_793

def NamedBody669_795 : StackLang.HolProg 64 :=
.seq NamedBody669_519 NamedBody669_794

def NamedBody669_796 : StackLang.HolProg 64 :=
.seq NamedBody669_518 NamedBody669_795

def NamedBody669_797 : StackLang.HolProg 64 :=
.seq NamedBody669_517 NamedBody669_796

def NamedBody669_798 : StackLang.HolProg 64 :=
.seq NamedBody669_458 NamedBody669_797

def NamedBody669_799 : StackLang.HolProg 64 :=
.seq NamedBody669_419 NamedBody669_798

def NamedBody669_800 : StackLang.HolProg 64 :=
.seq NamedBody669_418 NamedBody669_799

def NamedBody669_801 : StackLang.HolProg 64 :=
.seq NamedBody669_176 NamedBody669_800

def NamedBody669_802 : StackLang.HolProg 64 :=
.seq NamedBody669_149 NamedBody669_801

def NamedBody669_803 : StackLang.HolProg 64 :=
.seq NamedBody669_148 NamedBody669_802

def NamedBody669_804 : StackLang.HolProg 64 :=
.seq NamedBody669_147 NamedBody669_803

def NamedBody669_805 : StackLang.HolProg 64 :=
.seq NamedBody669_136 NamedBody669_804

def NamedBody669_806 : StackLang.HolProg 64 :=
.seq NamedBody669_135 NamedBody669_805

def NamedBody669_807 : StackLang.HolProg 64 :=
.seq NamedBody669_134 NamedBody669_806

def NamedBody669_808 : StackLang.HolProg 64 :=
.seq NamedBody669_133 NamedBody669_807

def NamedBody669_809 : StackLang.HolProg 64 :=
.seq NamedBody669_132 NamedBody669_808

def NamedBody669_810 : StackLang.HolProg 64 :=
.seq NamedBody669_131 NamedBody669_809

def NamedBody669_811 : StackLang.HolProg 64 :=
.seq NamedBody669_130 NamedBody669_810

def NamedBody669_812 : StackLang.HolProg 64 :=
.seq NamedBody669_129 NamedBody669_811

def NamedBody669_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody669_815 : StackLang.HolProg 64 :=
.seq NamedBody669_813 NamedBody669_814

def NamedBody669_816 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody669_812 NamedBody669_815

def NamedBody669_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_822 : StackLang.HolProg 64 :=
.seq NamedBody669_820 NamedBody669_821

def NamedBody669_823 : StackLang.HolProg 64 :=
.seq NamedBody669_819 NamedBody669_822

def NamedBody669_824 : StackLang.HolProg 64 :=
.seq NamedBody669_818 NamedBody669_823

def NamedBody669_825 : StackLang.HolProg 64 :=
.seq NamedBody669_817 NamedBody669_824

def NamedBody669_826 : StackLang.HolProg 64 :=
.seq NamedBody669_816 NamedBody669_825

def NamedBody669_827 : StackLang.HolProg 64 :=
.seq NamedBody669_128 NamedBody669_826

def NamedBody669_828 : StackLang.HolProg 64 :=
.seq NamedBody669_127 NamedBody669_827

def NamedBody669_829 : StackLang.HolProg 64 :=
.loop NamedBody669_828

def NamedBody669_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2780#64)

def NamedBody669_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_835 : StackLang.HolProg 64 :=
.seq NamedBody669_833 NamedBody669_834

def NamedBody669_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_839 : StackLang.HolProg 64 :=
.seq NamedBody669_837 NamedBody669_838

def NamedBody669_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_841 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_839 NamedBody669_840

def NamedBody669_842 : StackLang.HolProg 64 :=
.seq NamedBody669_836 NamedBody669_841

def NamedBody669_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 17

def NamedBody669_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_852 : StackLang.HolProg 64 :=
.seq NamedBody669_850 NamedBody669_851

def NamedBody669_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_854 : StackLang.HolProg 64 :=
.seq NamedBody669_852 NamedBody669_853

def NamedBody669_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_856 : StackLang.HolProg 64 :=
.seq NamedBody669_854 NamedBody669_855

def NamedBody669_857 : StackLang.HolProg 64 :=
.seq NamedBody669_849 NamedBody669_856

def NamedBody669_858 : StackLang.HolProg 64 :=
.seq NamedBody669_848 NamedBody669_857

def NamedBody669_859 : StackLang.HolProg 64 :=
.seq NamedBody669_847 NamedBody669_858

def NamedBody669_860 : StackLang.HolProg 64 :=
.seq NamedBody669_846 NamedBody669_859

def NamedBody669_861 : StackLang.HolProg 64 :=
.seq NamedBody669_845 NamedBody669_860

def NamedBody669_862 : StackLang.HolProg 64 :=
.seq NamedBody669_844 NamedBody669_861

def NamedBody669_863 : StackLang.HolProg 64 :=
.seq NamedBody669_843 NamedBody669_862

def NamedBody669_864 : StackLang.HolProg 64 :=
.seq NamedBody669_842 NamedBody669_863

def NamedBody669_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_873 : StackLang.HolProg 64 :=
.seq NamedBody669_871 NamedBody669_872

def NamedBody669_874 : StackLang.HolProg 64 :=
.seq NamedBody669_870 NamedBody669_873

def NamedBody669_875 : StackLang.HolProg 64 :=
.seq NamedBody669_869 NamedBody669_874

def NamedBody669_876 : StackLang.HolProg 64 :=
.seq NamedBody669_868 NamedBody669_875

def NamedBody669_877 : StackLang.HolProg 64 :=
.seq NamedBody669_867 NamedBody669_876

def NamedBody669_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody669_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody669_880 : StackLang.HolProg 64 :=
.seq NamedBody669_878 NamedBody669_879

def NamedBody669_881 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_882 : StackLang.HolProg 64 :=
.seq NamedBody669_880 NamedBody669_881

def NamedBody669_883 : StackLang.HolProg 64 :=
.call (some (NamedBody669_877, 1, 669, 16)) (Sum.inl 667) (some (NamedBody669_882, 669, 17))

def NamedBody669_884 : StackLang.HolProg 64 :=
.seq NamedBody669_866 NamedBody669_883

def NamedBody669_885 : StackLang.HolProg 64 :=
.seq NamedBody669_865 NamedBody669_884

def NamedBody669_886 : StackLang.HolProg 64 :=
.seq NamedBody669_864 NamedBody669_885

def NamedBody669_887 : StackLang.HolProg 64 :=
.seq NamedBody669_835 NamedBody669_886

def NamedBody669_888 : StackLang.HolProg 64 :=
.seq NamedBody669_832 NamedBody669_887

def NamedBody669_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody669_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 384#64)

def NamedBody669_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2781#64)

def NamedBody669_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_896 : StackLang.HolProg 64 :=
.seq NamedBody669_894 NamedBody669_895

def NamedBody669_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_900 : StackLang.HolProg 64 :=
.seq NamedBody669_898 NamedBody669_899

def NamedBody669_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_902 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_900 NamedBody669_901

def NamedBody669_903 : StackLang.HolProg 64 :=
.seq NamedBody669_897 NamedBody669_902

def NamedBody669_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 19

def NamedBody669_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_913 : StackLang.HolProg 64 :=
.seq NamedBody669_911 NamedBody669_912

def NamedBody669_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_915 : StackLang.HolProg 64 :=
.seq NamedBody669_913 NamedBody669_914

def NamedBody669_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_917 : StackLang.HolProg 64 :=
.seq NamedBody669_915 NamedBody669_916

def NamedBody669_918 : StackLang.HolProg 64 :=
.seq NamedBody669_910 NamedBody669_917

def NamedBody669_919 : StackLang.HolProg 64 :=
.seq NamedBody669_909 NamedBody669_918

def NamedBody669_920 : StackLang.HolProg 64 :=
.seq NamedBody669_908 NamedBody669_919

def NamedBody669_921 : StackLang.HolProg 64 :=
.seq NamedBody669_907 NamedBody669_920

def NamedBody669_922 : StackLang.HolProg 64 :=
.seq NamedBody669_906 NamedBody669_921

def NamedBody669_923 : StackLang.HolProg 64 :=
.seq NamedBody669_905 NamedBody669_922

def NamedBody669_924 : StackLang.HolProg 64 :=
.seq NamedBody669_904 NamedBody669_923

def NamedBody669_925 : StackLang.HolProg 64 :=
.seq NamedBody669_903 NamedBody669_924

def NamedBody669_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_933 : StackLang.HolProg 64 :=
.seq NamedBody669_931 NamedBody669_932

def NamedBody669_934 : StackLang.HolProg 64 :=
.seq NamedBody669_930 NamedBody669_933

def NamedBody669_935 : StackLang.HolProg 64 :=
.seq NamedBody669_929 NamedBody669_934

def NamedBody669_936 : StackLang.HolProg 64 :=
.seq NamedBody669_928 NamedBody669_935

def NamedBody669_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody669_938 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_939 : StackLang.HolProg 64 :=
.seq NamedBody669_937 NamedBody669_938

def NamedBody669_940 : StackLang.HolProg 64 :=
.call (some (NamedBody669_936, 1, 669, 18)) (Sum.inl 77) (some (NamedBody669_939, 669, 19))

def NamedBody669_941 : StackLang.HolProg 64 :=
.seq NamedBody669_927 NamedBody669_940

def NamedBody669_942 : StackLang.HolProg 64 :=
.seq NamedBody669_926 NamedBody669_941

def NamedBody669_943 : StackLang.HolProg 64 :=
.seq NamedBody669_925 NamedBody669_942

def NamedBody669_944 : StackLang.HolProg 64 :=
.seq NamedBody669_896 NamedBody669_943

def NamedBody669_945 : StackLang.HolProg 64 :=
.seq NamedBody669_893 NamedBody669_944

def NamedBody669_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody669_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2782#64)

def NamedBody669_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_951 : StackLang.HolProg 64 :=
.seq NamedBody669_949 NamedBody669_950

def NamedBody669_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody669_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody669_955 : StackLang.HolProg 64 :=
.seq NamedBody669_953 NamedBody669_954

def NamedBody669_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_957 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody669_955 NamedBody669_956

def NamedBody669_958 : StackLang.HolProg 64 :=
.seq NamedBody669_952 NamedBody669_957

def NamedBody669_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody669_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody669_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 21

def NamedBody669_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody669_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody669_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody669_968 : StackLang.HolProg 64 :=
.seq NamedBody669_966 NamedBody669_967

def NamedBody669_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody669_970 : StackLang.HolProg 64 :=
.seq NamedBody669_968 NamedBody669_969

def NamedBody669_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_972 : StackLang.HolProg 64 :=
.seq NamedBody669_970 NamedBody669_971

def NamedBody669_973 : StackLang.HolProg 64 :=
.seq NamedBody669_965 NamedBody669_972

def NamedBody669_974 : StackLang.HolProg 64 :=
.seq NamedBody669_964 NamedBody669_973

def NamedBody669_975 : StackLang.HolProg 64 :=
.seq NamedBody669_963 NamedBody669_974

def NamedBody669_976 : StackLang.HolProg 64 :=
.seq NamedBody669_962 NamedBody669_975

def NamedBody669_977 : StackLang.HolProg 64 :=
.seq NamedBody669_961 NamedBody669_976

def NamedBody669_978 : StackLang.HolProg 64 :=
.seq NamedBody669_960 NamedBody669_977

def NamedBody669_979 : StackLang.HolProg 64 :=
.seq NamedBody669_959 NamedBody669_978

def NamedBody669_980 : StackLang.HolProg 64 :=
.seq NamedBody669_958 NamedBody669_979

def NamedBody669_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody669_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody669_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody669_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_988 : StackLang.HolProg 64 :=
.seq NamedBody669_986 NamedBody669_987

def NamedBody669_989 : StackLang.HolProg 64 :=
.seq NamedBody669_985 NamedBody669_988

def NamedBody669_990 : StackLang.HolProg 64 :=
.seq NamedBody669_984 NamedBody669_989

def NamedBody669_991 : StackLang.HolProg 64 :=
.seq NamedBody669_983 NamedBody669_990

def NamedBody669_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody669_993 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody669_994 : StackLang.HolProg 64 :=
.seq NamedBody669_992 NamedBody669_993

def NamedBody669_995 : StackLang.HolProg 64 :=
.call (some (NamedBody669_991, 1, 669, 20)) (Sum.inl 70) (some (NamedBody669_994, 669, 21))

def NamedBody669_996 : StackLang.HolProg 64 :=
.seq NamedBody669_982 NamedBody669_995

def NamedBody669_997 : StackLang.HolProg 64 :=
.seq NamedBody669_981 NamedBody669_996

def NamedBody669_998 : StackLang.HolProg 64 :=
.seq NamedBody669_980 NamedBody669_997

def NamedBody669_999 : StackLang.HolProg 64 :=
.seq NamedBody669_951 NamedBody669_998

def NamedBody669_1000 : StackLang.HolProg 64 :=
.seq NamedBody669_948 NamedBody669_999

def NamedBody669_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody669_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody669_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody669_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody669_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody669_1006 : StackLang.HolProg 64 :=
.seq NamedBody669_1004 NamedBody669_1005

def NamedBody669_1007 : StackLang.HolProg 64 :=
.seq NamedBody669_1003 NamedBody669_1006

def NamedBody669_1008 : StackLang.HolProg 64 :=
.seq NamedBody669_1002 NamedBody669_1007

def NamedBody669_1009 : StackLang.HolProg 64 :=
.seq NamedBody669_1001 NamedBody669_1008

def NamedBody669_1010 : StackLang.HolProg 64 :=
.seq NamedBody669_1000 NamedBody669_1009

def NamedBody669_1011 : StackLang.HolProg 64 :=
.seq NamedBody669_947 NamedBody669_1010

def NamedBody669_1012 : StackLang.HolProg 64 :=
.seq NamedBody669_946 NamedBody669_1011

def NamedBody669_1013 : StackLang.HolProg 64 :=
.seq NamedBody669_945 NamedBody669_1012

def NamedBody669_1014 : StackLang.HolProg 64 :=
.seq NamedBody669_892 NamedBody669_1013

def NamedBody669_1015 : StackLang.HolProg 64 :=
.seq NamedBody669_891 NamedBody669_1014

def NamedBody669_1016 : StackLang.HolProg 64 :=
.seq NamedBody669_890 NamedBody669_1015

def NamedBody669_1017 : StackLang.HolProg 64 :=
.seq NamedBody669_889 NamedBody669_1016

def NamedBody669_1018 : StackLang.HolProg 64 :=
.seq NamedBody669_888 NamedBody669_1017

def NamedBody669_1019 : StackLang.HolProg 64 :=
.seq NamedBody669_831 NamedBody669_1018

def NamedBody669_1020 : StackLang.HolProg 64 :=
.seq NamedBody669_830 NamedBody669_1019

def NamedBody669_1021 : StackLang.HolProg 64 :=
.seq NamedBody669_829 NamedBody669_1020

def NamedBody669_1022 : StackLang.HolProg 64 :=
.seq NamedBody669_126 NamedBody669_1021

def NamedBody669_1023 : StackLang.HolProg 64 :=
.seq NamedBody669_125 NamedBody669_1022

def NamedBody669_1024 : StackLang.HolProg 64 :=
.seq NamedBody669_124 NamedBody669_1023

def NamedBody669_1025 : StackLang.HolProg 64 :=
.seq NamedBody669_123 NamedBody669_1024

def NamedBody669_1026 : StackLang.HolProg 64 :=
.seq NamedBody669_122 NamedBody669_1025

def NamedBody669_1027 : StackLang.HolProg 64 :=
.seq NamedBody669_67 NamedBody669_1026

def NamedBody669_1028 : StackLang.HolProg 64 :=
.seq NamedBody669_66 NamedBody669_1027

def NamedBody669_1029 : StackLang.HolProg 64 :=
.seq NamedBody669_65 NamedBody669_1028

def NamedBody669_1030 : StackLang.HolProg 64 :=
.seq NamedBody669_64 NamedBody669_1029

def NamedBody669_1031 : StackLang.HolProg 64 :=
.seq NamedBody669_11 NamedBody669_1030

def NamedBody669_1032 : StackLang.HolProg 64 :=
.seq NamedBody669_6 NamedBody669_1031

def Named669 : Nat × StackLang.HolProg 64 := (669, NamedBody669_1032)
theorem Named669_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed669 = Named669 := by
  kernel_rfl
#print axioms Named669_eq
end InitECandidate.Proofs.BackendStages
