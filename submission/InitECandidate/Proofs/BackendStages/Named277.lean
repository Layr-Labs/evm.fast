import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed277
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody277_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody277_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody277_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody277_3 : StackLang.HolProg 64 :=
.seq NamedBody277_1 NamedBody277_2

def NamedBody277_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody277_3 NamedBody277_4

def NamedBody277_6 : StackLang.HolProg 64 :=
.seq NamedBody277_0 NamedBody277_5

def NamedBody277_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody277_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody277_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_10 : StackLang.HolProg 64 :=
.seq NamedBody277_8 NamedBody277_9

def NamedBody277_11 : StackLang.HolProg 64 :=
.seq NamedBody277_7 NamedBody277_10

def NamedBody277_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 722#64)

def NamedBody277_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_15 : StackLang.HolProg 64 :=
.seq NamedBody277_13 NamedBody277_14

def NamedBody277_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody277_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody277_19 : StackLang.HolProg 64 :=
.seq NamedBody277_17 NamedBody277_18

def NamedBody277_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody277_19 NamedBody277_20

def NamedBody277_22 : StackLang.HolProg 64 :=
.seq NamedBody277_16 NamedBody277_21

def NamedBody277_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody277_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 3

def NamedBody277_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody277_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody277_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody277_32 : StackLang.HolProg 64 :=
.seq NamedBody277_30 NamedBody277_31

def NamedBody277_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody277_34 : StackLang.HolProg 64 :=
.seq NamedBody277_32 NamedBody277_33

def NamedBody277_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_36 : StackLang.HolProg 64 :=
.seq NamedBody277_34 NamedBody277_35

def NamedBody277_37 : StackLang.HolProg 64 :=
.seq NamedBody277_29 NamedBody277_36

def NamedBody277_38 : StackLang.HolProg 64 :=
.seq NamedBody277_28 NamedBody277_37

def NamedBody277_39 : StackLang.HolProg 64 :=
.seq NamedBody277_27 NamedBody277_38

def NamedBody277_40 : StackLang.HolProg 64 :=
.seq NamedBody277_26 NamedBody277_39

def NamedBody277_41 : StackLang.HolProg 64 :=
.seq NamedBody277_25 NamedBody277_40

def NamedBody277_42 : StackLang.HolProg 64 :=
.seq NamedBody277_24 NamedBody277_41

def NamedBody277_43 : StackLang.HolProg 64 :=
.seq NamedBody277_23 NamedBody277_42

def NamedBody277_44 : StackLang.HolProg 64 :=
.seq NamedBody277_22 NamedBody277_43

def NamedBody277_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody277_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_53 : StackLang.HolProg 64 :=
.seq NamedBody277_51 NamedBody277_52

def NamedBody277_54 : StackLang.HolProg 64 :=
.seq NamedBody277_50 NamedBody277_53

def NamedBody277_55 : StackLang.HolProg 64 :=
.seq NamedBody277_49 NamedBody277_54

def NamedBody277_56 : StackLang.HolProg 64 :=
.seq NamedBody277_48 NamedBody277_55

def NamedBody277_57 : StackLang.HolProg 64 :=
.seq NamedBody277_47 NamedBody277_56

def NamedBody277_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody277_60 : StackLang.HolProg 64 :=
.seq NamedBody277_58 NamedBody277_59

def NamedBody277_61 : StackLang.HolProg 64 :=
.call (some (NamedBody277_57, 1, 277, 2)) (Sum.inl 69) (some (NamedBody277_60, 277, 3))

def NamedBody277_62 : StackLang.HolProg 64 :=
.seq NamedBody277_46 NamedBody277_61

def NamedBody277_63 : StackLang.HolProg 64 :=
.seq NamedBody277_45 NamedBody277_62

def NamedBody277_64 : StackLang.HolProg 64 :=
.seq NamedBody277_44 NamedBody277_63

def NamedBody277_65 : StackLang.HolProg 64 :=
.seq NamedBody277_15 NamedBody277_64

def NamedBody277_66 : StackLang.HolProg 64 :=
.seq NamedBody277_12 NamedBody277_65

def NamedBody277_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody277_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody277_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_70 : StackLang.HolProg 64 :=
.seq NamedBody277_68 NamedBody277_69

def NamedBody277_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 723#64)

def NamedBody277_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_74 : StackLang.HolProg 64 :=
.seq NamedBody277_72 NamedBody277_73

def NamedBody277_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody277_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody277_78 : StackLang.HolProg 64 :=
.seq NamedBody277_76 NamedBody277_77

def NamedBody277_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody277_78 NamedBody277_79

def NamedBody277_81 : StackLang.HolProg 64 :=
.seq NamedBody277_75 NamedBody277_80

def NamedBody277_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody277_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 5

def NamedBody277_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody277_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody277_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody277_91 : StackLang.HolProg 64 :=
.seq NamedBody277_89 NamedBody277_90

def NamedBody277_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody277_93 : StackLang.HolProg 64 :=
.seq NamedBody277_91 NamedBody277_92

def NamedBody277_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_95 : StackLang.HolProg 64 :=
.seq NamedBody277_93 NamedBody277_94

def NamedBody277_96 : StackLang.HolProg 64 :=
.seq NamedBody277_88 NamedBody277_95

def NamedBody277_97 : StackLang.HolProg 64 :=
.seq NamedBody277_87 NamedBody277_96

def NamedBody277_98 : StackLang.HolProg 64 :=
.seq NamedBody277_86 NamedBody277_97

def NamedBody277_99 : StackLang.HolProg 64 :=
.seq NamedBody277_85 NamedBody277_98

def NamedBody277_100 : StackLang.HolProg 64 :=
.seq NamedBody277_84 NamedBody277_99

def NamedBody277_101 : StackLang.HolProg 64 :=
.seq NamedBody277_83 NamedBody277_100

def NamedBody277_102 : StackLang.HolProg 64 :=
.seq NamedBody277_82 NamedBody277_101

def NamedBody277_103 : StackLang.HolProg 64 :=
.seq NamedBody277_81 NamedBody277_102

def NamedBody277_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody277_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody277_112 : StackLang.HolProg 64 :=
.seq NamedBody277_110 NamedBody277_111

def NamedBody277_113 : StackLang.HolProg 64 :=
.seq NamedBody277_109 NamedBody277_112

def NamedBody277_114 : StackLang.HolProg 64 :=
.seq NamedBody277_108 NamedBody277_113

def NamedBody277_115 : StackLang.HolProg 64 :=
.seq NamedBody277_107 NamedBody277_114

def NamedBody277_116 : StackLang.HolProg 64 :=
.seq NamedBody277_106 NamedBody277_115

def NamedBody277_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody277_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody277_119 : StackLang.HolProg 64 :=
.seq NamedBody277_117 NamedBody277_118

def NamedBody277_120 : StackLang.HolProg 64 :=
.call (some (NamedBody277_116, 1, 277, 4)) (Sum.inl 276) (some (NamedBody277_119, 277, 5))

def NamedBody277_121 : StackLang.HolProg 64 :=
.seq NamedBody277_105 NamedBody277_120

def NamedBody277_122 : StackLang.HolProg 64 :=
.seq NamedBody277_104 NamedBody277_121

def NamedBody277_123 : StackLang.HolProg 64 :=
.seq NamedBody277_103 NamedBody277_122

def NamedBody277_124 : StackLang.HolProg 64 :=
.seq NamedBody277_74 NamedBody277_123

def NamedBody277_125 : StackLang.HolProg 64 :=
.seq NamedBody277_71 NamedBody277_124

def NamedBody277_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody277_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody277_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 724#64)

def NamedBody277_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_131 : StackLang.HolProg 64 :=
.seq NamedBody277_129 NamedBody277_130

def NamedBody277_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody277_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody277_135 : StackLang.HolProg 64 :=
.seq NamedBody277_133 NamedBody277_134

def NamedBody277_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody277_135 NamedBody277_136

def NamedBody277_138 : StackLang.HolProg 64 :=
.seq NamedBody277_132 NamedBody277_137

def NamedBody277_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody277_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 7

def NamedBody277_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody277_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody277_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody277_148 : StackLang.HolProg 64 :=
.seq NamedBody277_146 NamedBody277_147

def NamedBody277_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody277_150 : StackLang.HolProg 64 :=
.seq NamedBody277_148 NamedBody277_149

def NamedBody277_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_152 : StackLang.HolProg 64 :=
.seq NamedBody277_150 NamedBody277_151

def NamedBody277_153 : StackLang.HolProg 64 :=
.seq NamedBody277_145 NamedBody277_152

def NamedBody277_154 : StackLang.HolProg 64 :=
.seq NamedBody277_144 NamedBody277_153

def NamedBody277_155 : StackLang.HolProg 64 :=
.seq NamedBody277_143 NamedBody277_154

def NamedBody277_156 : StackLang.HolProg 64 :=
.seq NamedBody277_142 NamedBody277_155

def NamedBody277_157 : StackLang.HolProg 64 :=
.seq NamedBody277_141 NamedBody277_156

def NamedBody277_158 : StackLang.HolProg 64 :=
.seq NamedBody277_140 NamedBody277_157

def NamedBody277_159 : StackLang.HolProg 64 :=
.seq NamedBody277_139 NamedBody277_158

def NamedBody277_160 : StackLang.HolProg 64 :=
.seq NamedBody277_138 NamedBody277_159

def NamedBody277_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_168 : StackLang.HolProg 64 :=
.seq NamedBody277_166 NamedBody277_167

def NamedBody277_169 : StackLang.HolProg 64 :=
.seq NamedBody277_165 NamedBody277_168

def NamedBody277_170 : StackLang.HolProg 64 :=
.seq NamedBody277_164 NamedBody277_169

def NamedBody277_171 : StackLang.HolProg 64 :=
.seq NamedBody277_163 NamedBody277_170

def NamedBody277_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody277_174 : StackLang.HolProg 64 :=
.seq NamedBody277_172 NamedBody277_173

def NamedBody277_175 : StackLang.HolProg 64 :=
.call (some (NamedBody277_171, 1, 277, 6)) (Sum.inl 158) (some (NamedBody277_174, 277, 7))

def NamedBody277_176 : StackLang.HolProg 64 :=
.seq NamedBody277_162 NamedBody277_175

def NamedBody277_177 : StackLang.HolProg 64 :=
.seq NamedBody277_161 NamedBody277_176

def NamedBody277_178 : StackLang.HolProg 64 :=
.seq NamedBody277_160 NamedBody277_177

def NamedBody277_179 : StackLang.HolProg 64 :=
.seq NamedBody277_131 NamedBody277_178

def NamedBody277_180 : StackLang.HolProg 64 :=
.seq NamedBody277_128 NamedBody277_179

def NamedBody277_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody277_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody277_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 725#64)

def NamedBody277_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_186 : StackLang.HolProg 64 :=
.seq NamedBody277_184 NamedBody277_185

def NamedBody277_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody277_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody277_190 : StackLang.HolProg 64 :=
.seq NamedBody277_188 NamedBody277_189

def NamedBody277_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody277_190 NamedBody277_191

def NamedBody277_193 : StackLang.HolProg 64 :=
.seq NamedBody277_187 NamedBody277_192

def NamedBody277_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody277_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody277_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 9

def NamedBody277_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody277_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody277_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody277_203 : StackLang.HolProg 64 :=
.seq NamedBody277_201 NamedBody277_202

def NamedBody277_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody277_205 : StackLang.HolProg 64 :=
.seq NamedBody277_203 NamedBody277_204

def NamedBody277_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_207 : StackLang.HolProg 64 :=
.seq NamedBody277_205 NamedBody277_206

def NamedBody277_208 : StackLang.HolProg 64 :=
.seq NamedBody277_200 NamedBody277_207

def NamedBody277_209 : StackLang.HolProg 64 :=
.seq NamedBody277_199 NamedBody277_208

def NamedBody277_210 : StackLang.HolProg 64 :=
.seq NamedBody277_198 NamedBody277_209

def NamedBody277_211 : StackLang.HolProg 64 :=
.seq NamedBody277_197 NamedBody277_210

def NamedBody277_212 : StackLang.HolProg 64 :=
.seq NamedBody277_196 NamedBody277_211

def NamedBody277_213 : StackLang.HolProg 64 :=
.seq NamedBody277_195 NamedBody277_212

def NamedBody277_214 : StackLang.HolProg 64 :=
.seq NamedBody277_194 NamedBody277_213

def NamedBody277_215 : StackLang.HolProg 64 :=
.seq NamedBody277_193 NamedBody277_214

def NamedBody277_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody277_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody277_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody277_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody277_223 : StackLang.HolProg 64 :=
.seq NamedBody277_221 NamedBody277_222

def NamedBody277_224 : StackLang.HolProg 64 :=
.seq NamedBody277_220 NamedBody277_223

def NamedBody277_225 : StackLang.HolProg 64 :=
.seq NamedBody277_219 NamedBody277_224

def NamedBody277_226 : StackLang.HolProg 64 :=
.seq NamedBody277_218 NamedBody277_225

def NamedBody277_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody277_228 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody277_229 : StackLang.HolProg 64 :=
.seq NamedBody277_227 NamedBody277_228

def NamedBody277_230 : StackLang.HolProg 64 :=
.call (some (NamedBody277_226, 1, 277, 8)) (Sum.inl 70) (some (NamedBody277_229, 277, 9))

def NamedBody277_231 : StackLang.HolProg 64 :=
.seq NamedBody277_217 NamedBody277_230

def NamedBody277_232 : StackLang.HolProg 64 :=
.seq NamedBody277_216 NamedBody277_231

def NamedBody277_233 : StackLang.HolProg 64 :=
.seq NamedBody277_215 NamedBody277_232

def NamedBody277_234 : StackLang.HolProg 64 :=
.seq NamedBody277_186 NamedBody277_233

def NamedBody277_235 : StackLang.HolProg 64 :=
.seq NamedBody277_183 NamedBody277_234

def NamedBody277_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody277_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody277_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody277_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody277_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody277_241 : StackLang.HolProg 64 :=
.seq NamedBody277_239 NamedBody277_240

def NamedBody277_242 : StackLang.HolProg 64 :=
.seq NamedBody277_238 NamedBody277_241

def NamedBody277_243 : StackLang.HolProg 64 :=
.seq NamedBody277_237 NamedBody277_242

def NamedBody277_244 : StackLang.HolProg 64 :=
.seq NamedBody277_236 NamedBody277_243

def NamedBody277_245 : StackLang.HolProg 64 :=
.seq NamedBody277_235 NamedBody277_244

def NamedBody277_246 : StackLang.HolProg 64 :=
.seq NamedBody277_182 NamedBody277_245

def NamedBody277_247 : StackLang.HolProg 64 :=
.seq NamedBody277_181 NamedBody277_246

def NamedBody277_248 : StackLang.HolProg 64 :=
.seq NamedBody277_180 NamedBody277_247

def NamedBody277_249 : StackLang.HolProg 64 :=
.seq NamedBody277_127 NamedBody277_248

def NamedBody277_250 : StackLang.HolProg 64 :=
.seq NamedBody277_126 NamedBody277_249

def NamedBody277_251 : StackLang.HolProg 64 :=
.seq NamedBody277_125 NamedBody277_250

def NamedBody277_252 : StackLang.HolProg 64 :=
.seq NamedBody277_70 NamedBody277_251

def NamedBody277_253 : StackLang.HolProg 64 :=
.seq NamedBody277_67 NamedBody277_252

def NamedBody277_254 : StackLang.HolProg 64 :=
.seq NamedBody277_66 NamedBody277_253

def NamedBody277_255 : StackLang.HolProg 64 :=
.seq NamedBody277_11 NamedBody277_254

def NamedBody277_256 : StackLang.HolProg 64 :=
.seq NamedBody277_6 NamedBody277_255

def Named277 : Nat × StackLang.HolProg 64 := (277, NamedBody277_256)
theorem Named277_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed277 = Named277 := by
  kernel_rfl
#print axioms Named277_eq
end InitECandidate.Proofs.BackendStages
