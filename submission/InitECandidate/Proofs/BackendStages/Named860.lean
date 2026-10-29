import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed860
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody860_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody860_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_3 : StackLang.HolProg 64 :=
.seq NamedBody860_1 NamedBody860_2

def NamedBody860_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_3 NamedBody860_4

def NamedBody860_6 : StackLang.HolProg 64 :=
.seq NamedBody860_0 NamedBody860_5

def NamedBody860_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody860_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_11 : StackLang.HolProg 64 :=
.seq NamedBody860_9 NamedBody860_10

def NamedBody860_12 : StackLang.HolProg 64 :=
.seq NamedBody860_8 NamedBody860_11

def NamedBody860_13 : StackLang.HolProg 64 :=
.seq NamedBody860_7 NamedBody860_12

def NamedBody860_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4366#64)

def NamedBody860_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_17 : StackLang.HolProg 64 :=
.seq NamedBody860_15 NamedBody860_16

def NamedBody860_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_21 : StackLang.HolProg 64 :=
.seq NamedBody860_19 NamedBody860_20

def NamedBody860_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_21 NamedBody860_22

def NamedBody860_24 : StackLang.HolProg 64 :=
.seq NamedBody860_18 NamedBody860_23

def NamedBody860_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 3

def NamedBody860_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_34 : StackLang.HolProg 64 :=
.seq NamedBody860_32 NamedBody860_33

def NamedBody860_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_36 : StackLang.HolProg 64 :=
.seq NamedBody860_34 NamedBody860_35

def NamedBody860_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_38 : StackLang.HolProg 64 :=
.seq NamedBody860_36 NamedBody860_37

def NamedBody860_39 : StackLang.HolProg 64 :=
.seq NamedBody860_31 NamedBody860_38

def NamedBody860_40 : StackLang.HolProg 64 :=
.seq NamedBody860_30 NamedBody860_39

def NamedBody860_41 : StackLang.HolProg 64 :=
.seq NamedBody860_29 NamedBody860_40

def NamedBody860_42 : StackLang.HolProg 64 :=
.seq NamedBody860_28 NamedBody860_41

def NamedBody860_43 : StackLang.HolProg 64 :=
.seq NamedBody860_27 NamedBody860_42

def NamedBody860_44 : StackLang.HolProg 64 :=
.seq NamedBody860_26 NamedBody860_43

def NamedBody860_45 : StackLang.HolProg 64 :=
.seq NamedBody860_25 NamedBody860_44

def NamedBody860_46 : StackLang.HolProg 64 :=
.seq NamedBody860_24 NamedBody860_45

def NamedBody860_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_54 : StackLang.HolProg 64 :=
.seq NamedBody860_52 NamedBody860_53

def NamedBody860_55 : StackLang.HolProg 64 :=
.seq NamedBody860_51 NamedBody860_54

def NamedBody860_56 : StackLang.HolProg 64 :=
.seq NamedBody860_50 NamedBody860_55

def NamedBody860_57 : StackLang.HolProg 64 :=
.seq NamedBody860_49 NamedBody860_56

def NamedBody860_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_60 : StackLang.HolProg 64 :=
.seq NamedBody860_58 NamedBody860_59

def NamedBody860_61 : StackLang.HolProg 64 :=
.call (some (NamedBody860_57, 1, 860, 2)) (Sum.inl 387) (some (NamedBody860_60, 860, 3))

def NamedBody860_62 : StackLang.HolProg 64 :=
.seq NamedBody860_48 NamedBody860_61

def NamedBody860_63 : StackLang.HolProg 64 :=
.seq NamedBody860_47 NamedBody860_62

def NamedBody860_64 : StackLang.HolProg 64 :=
.seq NamedBody860_46 NamedBody860_63

def NamedBody860_65 : StackLang.HolProg 64 :=
.seq NamedBody860_17 NamedBody860_64

def NamedBody860_66 : StackLang.HolProg 64 :=
.seq NamedBody860_14 NamedBody860_65

def NamedBody860_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody860_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_70 : StackLang.HolProg 64 :=
.seq NamedBody860_68 NamedBody860_69

def NamedBody860_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4367#64)

def NamedBody860_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_74 : StackLang.HolProg 64 :=
.seq NamedBody860_72 NamedBody860_73

def NamedBody860_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_78 : StackLang.HolProg 64 :=
.seq NamedBody860_76 NamedBody860_77

def NamedBody860_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_78 NamedBody860_79

def NamedBody860_81 : StackLang.HolProg 64 :=
.seq NamedBody860_75 NamedBody860_80

def NamedBody860_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 5

def NamedBody860_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_91 : StackLang.HolProg 64 :=
.seq NamedBody860_89 NamedBody860_90

def NamedBody860_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_93 : StackLang.HolProg 64 :=
.seq NamedBody860_91 NamedBody860_92

def NamedBody860_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_95 : StackLang.HolProg 64 :=
.seq NamedBody860_93 NamedBody860_94

def NamedBody860_96 : StackLang.HolProg 64 :=
.seq NamedBody860_88 NamedBody860_95

def NamedBody860_97 : StackLang.HolProg 64 :=
.seq NamedBody860_87 NamedBody860_96

def NamedBody860_98 : StackLang.HolProg 64 :=
.seq NamedBody860_86 NamedBody860_97

def NamedBody860_99 : StackLang.HolProg 64 :=
.seq NamedBody860_85 NamedBody860_98

def NamedBody860_100 : StackLang.HolProg 64 :=
.seq NamedBody860_84 NamedBody860_99

def NamedBody860_101 : StackLang.HolProg 64 :=
.seq NamedBody860_83 NamedBody860_100

def NamedBody860_102 : StackLang.HolProg 64 :=
.seq NamedBody860_82 NamedBody860_101

def NamedBody860_103 : StackLang.HolProg 64 :=
.seq NamedBody860_81 NamedBody860_102

def NamedBody860_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody860_111 : StackLang.HolProg 64 :=
.seq NamedBody860_109 NamedBody860_110

def NamedBody860_112 : StackLang.HolProg 64 :=
.seq NamedBody860_108 NamedBody860_111

def NamedBody860_113 : StackLang.HolProg 64 :=
.seq NamedBody860_107 NamedBody860_112

def NamedBody860_114 : StackLang.HolProg 64 :=
.seq NamedBody860_106 NamedBody860_113

def NamedBody860_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_117 : StackLang.HolProg 64 :=
.seq NamedBody860_115 NamedBody860_116

def NamedBody860_118 : StackLang.HolProg 64 :=
.call (some (NamedBody860_114, 1, 860, 4)) (Sum.inl 565) (some (NamedBody860_117, 860, 5))

def NamedBody860_119 : StackLang.HolProg 64 :=
.seq NamedBody860_105 NamedBody860_118

def NamedBody860_120 : StackLang.HolProg 64 :=
.seq NamedBody860_104 NamedBody860_119

def NamedBody860_121 : StackLang.HolProg 64 :=
.seq NamedBody860_103 NamedBody860_120

def NamedBody860_122 : StackLang.HolProg 64 :=
.seq NamedBody860_74 NamedBody860_121

def NamedBody860_123 : StackLang.HolProg 64 :=
.seq NamedBody860_71 NamedBody860_122

def NamedBody860_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_127 : StackLang.HolProg 64 :=
.seq NamedBody860_125 NamedBody860_126

def NamedBody860_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4368#64)

def NamedBody860_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_131 : StackLang.HolProg 64 :=
.seq NamedBody860_129 NamedBody860_130

def NamedBody860_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_135 : StackLang.HolProg 64 :=
.seq NamedBody860_133 NamedBody860_134

def NamedBody860_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_135 NamedBody860_136

def NamedBody860_138 : StackLang.HolProg 64 :=
.seq NamedBody860_132 NamedBody860_137

def NamedBody860_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 7

def NamedBody860_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_148 : StackLang.HolProg 64 :=
.seq NamedBody860_146 NamedBody860_147

def NamedBody860_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_150 : StackLang.HolProg 64 :=
.seq NamedBody860_148 NamedBody860_149

def NamedBody860_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_152 : StackLang.HolProg 64 :=
.seq NamedBody860_150 NamedBody860_151

def NamedBody860_153 : StackLang.HolProg 64 :=
.seq NamedBody860_145 NamedBody860_152

def NamedBody860_154 : StackLang.HolProg 64 :=
.seq NamedBody860_144 NamedBody860_153

def NamedBody860_155 : StackLang.HolProg 64 :=
.seq NamedBody860_143 NamedBody860_154

def NamedBody860_156 : StackLang.HolProg 64 :=
.seq NamedBody860_142 NamedBody860_155

def NamedBody860_157 : StackLang.HolProg 64 :=
.seq NamedBody860_141 NamedBody860_156

def NamedBody860_158 : StackLang.HolProg 64 :=
.seq NamedBody860_140 NamedBody860_157

def NamedBody860_159 : StackLang.HolProg 64 :=
.seq NamedBody860_139 NamedBody860_158

def NamedBody860_160 : StackLang.HolProg 64 :=
.seq NamedBody860_138 NamedBody860_159

def NamedBody860_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody860_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_169 : StackLang.HolProg 64 :=
.seq NamedBody860_167 NamedBody860_168

def NamedBody860_170 : StackLang.HolProg 64 :=
.seq NamedBody860_166 NamedBody860_169

def NamedBody860_171 : StackLang.HolProg 64 :=
.seq NamedBody860_165 NamedBody860_170

def NamedBody860_172 : StackLang.HolProg 64 :=
.seq NamedBody860_164 NamedBody860_171

def NamedBody860_173 : StackLang.HolProg 64 :=
.seq NamedBody860_163 NamedBody860_172

def NamedBody860_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_176 : StackLang.HolProg 64 :=
.seq NamedBody860_174 NamedBody860_175

def NamedBody860_177 : StackLang.HolProg 64 :=
.call (some (NamedBody860_173, 1, 860, 6)) (Sum.inl 859) (some (NamedBody860_176, 860, 7))

def NamedBody860_178 : StackLang.HolProg 64 :=
.seq NamedBody860_162 NamedBody860_177

def NamedBody860_179 : StackLang.HolProg 64 :=
.seq NamedBody860_161 NamedBody860_178

def NamedBody860_180 : StackLang.HolProg 64 :=
.seq NamedBody860_160 NamedBody860_179

def NamedBody860_181 : StackLang.HolProg 64 :=
.seq NamedBody860_131 NamedBody860_180

def NamedBody860_182 : StackLang.HolProg 64 :=
.seq NamedBody860_128 NamedBody860_181

def NamedBody860_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody860_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody860_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody860_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551312#64))

def NamedBody860_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody860_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody860_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody860_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody860_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551208#64))

def NamedBody860_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 48#64))

def NamedBody860_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 56#64))

def NamedBody860_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 64#64))

def NamedBody860_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 72#64))

def NamedBody860_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody860_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody860_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody860_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody860_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody860_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 30000000#64)

def NamedBody860_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody860_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1566720#64)

def NamedBody860_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody860_226 : StackLang.HolProg 64 :=
.seq NamedBody860_224 NamedBody860_225

def NamedBody860_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4369#64)

def NamedBody860_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_230 : StackLang.HolProg 64 :=
.seq NamedBody860_228 NamedBody860_229

def NamedBody860_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_234 : StackLang.HolProg 64 :=
.seq NamedBody860_232 NamedBody860_233

def NamedBody860_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_236 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_234 NamedBody860_235

def NamedBody860_237 : StackLang.HolProg 64 :=
.seq NamedBody860_231 NamedBody860_236

def NamedBody860_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 9

def NamedBody860_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_247 : StackLang.HolProg 64 :=
.seq NamedBody860_245 NamedBody860_246

def NamedBody860_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_249 : StackLang.HolProg 64 :=
.seq NamedBody860_247 NamedBody860_248

def NamedBody860_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_251 : StackLang.HolProg 64 :=
.seq NamedBody860_249 NamedBody860_250

def NamedBody860_252 : StackLang.HolProg 64 :=
.seq NamedBody860_244 NamedBody860_251

def NamedBody860_253 : StackLang.HolProg 64 :=
.seq NamedBody860_243 NamedBody860_252

def NamedBody860_254 : StackLang.HolProg 64 :=
.seq NamedBody860_242 NamedBody860_253

def NamedBody860_255 : StackLang.HolProg 64 :=
.seq NamedBody860_241 NamedBody860_254

def NamedBody860_256 : StackLang.HolProg 64 :=
.seq NamedBody860_240 NamedBody860_255

def NamedBody860_257 : StackLang.HolProg 64 :=
.seq NamedBody860_239 NamedBody860_256

def NamedBody860_258 : StackLang.HolProg 64 :=
.seq NamedBody860_238 NamedBody860_257

def NamedBody860_259 : StackLang.HolProg 64 :=
.seq NamedBody860_237 NamedBody860_258

def NamedBody860_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody860_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody860_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_273 : StackLang.HolProg 64 :=
.seq NamedBody860_271 NamedBody860_272

def NamedBody860_274 : StackLang.HolProg 64 :=
.seq NamedBody860_270 NamedBody860_273

def NamedBody860_275 : StackLang.HolProg 64 :=
.seq NamedBody860_269 NamedBody860_274

def NamedBody860_276 : StackLang.HolProg 64 :=
.seq NamedBody860_268 NamedBody860_275

def NamedBody860_277 : StackLang.HolProg 64 :=
.seq NamedBody860_267 NamedBody860_276

def NamedBody860_278 : StackLang.HolProg 64 :=
.seq NamedBody860_266 NamedBody860_277

def NamedBody860_279 : StackLang.HolProg 64 :=
.seq NamedBody860_265 NamedBody860_278

def NamedBody860_280 : StackLang.HolProg 64 :=
.seq NamedBody860_264 NamedBody860_279

def NamedBody860_281 : StackLang.HolProg 64 :=
.seq NamedBody860_263 NamedBody860_280

def NamedBody860_282 : StackLang.HolProg 64 :=
.seq NamedBody860_262 NamedBody860_281

def NamedBody860_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody860_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_289 : StackLang.HolProg 64 :=
.seq NamedBody860_287 NamedBody860_288

def NamedBody860_290 : StackLang.HolProg 64 :=
.seq NamedBody860_286 NamedBody860_289

def NamedBody860_291 : StackLang.HolProg 64 :=
.seq NamedBody860_285 NamedBody860_290

def NamedBody860_292 : StackLang.HolProg 64 :=
.seq NamedBody860_284 NamedBody860_291

def NamedBody860_293 : StackLang.HolProg 64 :=
.seq NamedBody860_283 NamedBody860_292

def NamedBody860_294 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_295 : StackLang.HolProg 64 :=
.seq NamedBody860_293 NamedBody860_294

def NamedBody860_296 : StackLang.HolProg 64 :=
.call (some (NamedBody860_282, 1, 860, 8)) (Sum.inl 487) (some (NamedBody860_295, 860, 9))

def NamedBody860_297 : StackLang.HolProg 64 :=
.seq NamedBody860_261 NamedBody860_296

def NamedBody860_298 : StackLang.HolProg 64 :=
.seq NamedBody860_260 NamedBody860_297

def NamedBody860_299 : StackLang.HolProg 64 :=
.seq NamedBody860_259 NamedBody860_298

def NamedBody860_300 : StackLang.HolProg 64 :=
.seq NamedBody860_230 NamedBody860_299

def NamedBody860_301 : StackLang.HolProg 64 :=
.seq NamedBody860_227 NamedBody860_300

def NamedBody860_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody860_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody860_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody860_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551208#64))

def NamedBody860_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody860_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody860_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody860_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody860_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551312#64))

def NamedBody860_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody860_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody860_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody860_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 30000000#64)

def NamedBody860_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody860_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1566720#64)

def NamedBody860_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody860_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody860_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def NamedBody860_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody860_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody860_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 8#64)

def NamedBody860_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 20#64)

def NamedBody860_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4370#64)

def NamedBody860_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_364 : StackLang.HolProg 64 :=
.seq NamedBody860_362 NamedBody860_363

def NamedBody860_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_368 : StackLang.HolProg 64 :=
.seq NamedBody860_366 NamedBody860_367

def NamedBody860_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_370 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_368 NamedBody860_369

def NamedBody860_371 : StackLang.HolProg 64 :=
.seq NamedBody860_365 NamedBody860_370

def NamedBody860_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 11

def NamedBody860_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_381 : StackLang.HolProg 64 :=
.seq NamedBody860_379 NamedBody860_380

def NamedBody860_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_383 : StackLang.HolProg 64 :=
.seq NamedBody860_381 NamedBody860_382

def NamedBody860_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_385 : StackLang.HolProg 64 :=
.seq NamedBody860_383 NamedBody860_384

def NamedBody860_386 : StackLang.HolProg 64 :=
.seq NamedBody860_378 NamedBody860_385

def NamedBody860_387 : StackLang.HolProg 64 :=
.seq NamedBody860_377 NamedBody860_386

def NamedBody860_388 : StackLang.HolProg 64 :=
.seq NamedBody860_376 NamedBody860_387

def NamedBody860_389 : StackLang.HolProg 64 :=
.seq NamedBody860_375 NamedBody860_388

def NamedBody860_390 : StackLang.HolProg 64 :=
.seq NamedBody860_374 NamedBody860_389

def NamedBody860_391 : StackLang.HolProg 64 :=
.seq NamedBody860_373 NamedBody860_390

def NamedBody860_392 : StackLang.HolProg 64 :=
.seq NamedBody860_372 NamedBody860_391

def NamedBody860_393 : StackLang.HolProg 64 :=
.seq NamedBody860_371 NamedBody860_392

def NamedBody860_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody860_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_402 : StackLang.HolProg 64 :=
.seq NamedBody860_400 NamedBody860_401

def NamedBody860_403 : StackLang.HolProg 64 :=
.seq NamedBody860_399 NamedBody860_402

def NamedBody860_404 : StackLang.HolProg 64 :=
.seq NamedBody860_398 NamedBody860_403

def NamedBody860_405 : StackLang.HolProg 64 :=
.seq NamedBody860_397 NamedBody860_404

def NamedBody860_406 : StackLang.HolProg 64 :=
.seq NamedBody860_396 NamedBody860_405

def NamedBody860_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_408 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_409 : StackLang.HolProg 64 :=
.seq NamedBody860_407 NamedBody860_408

def NamedBody860_410 : StackLang.HolProg 64 :=
.call (some (NamedBody860_406, 1, 860, 10)) (Sum.inl 182) (some (NamedBody860_409, 860, 11))

def NamedBody860_411 : StackLang.HolProg 64 :=
.seq NamedBody860_395 NamedBody860_410

def NamedBody860_412 : StackLang.HolProg 64 :=
.seq NamedBody860_394 NamedBody860_411

def NamedBody860_413 : StackLang.HolProg 64 :=
.seq NamedBody860_393 NamedBody860_412

def NamedBody860_414 : StackLang.HolProg 64 :=
.seq NamedBody860_364 NamedBody860_413

def NamedBody860_415 : StackLang.HolProg 64 :=
.seq NamedBody860_361 NamedBody860_414

def NamedBody860_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def NamedBody860_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 8#64)

def NamedBody860_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 52#64)

def NamedBody860_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4371#64)

def NamedBody860_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_427 : StackLang.HolProg 64 :=
.seq NamedBody860_425 NamedBody860_426

def NamedBody860_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_431 : StackLang.HolProg 64 :=
.seq NamedBody860_429 NamedBody860_430

def NamedBody860_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_433 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_431 NamedBody860_432

def NamedBody860_434 : StackLang.HolProg 64 :=
.seq NamedBody860_428 NamedBody860_433

def NamedBody860_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 13

def NamedBody860_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_444 : StackLang.HolProg 64 :=
.seq NamedBody860_442 NamedBody860_443

def NamedBody860_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_446 : StackLang.HolProg 64 :=
.seq NamedBody860_444 NamedBody860_445

def NamedBody860_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_448 : StackLang.HolProg 64 :=
.seq NamedBody860_446 NamedBody860_447

def NamedBody860_449 : StackLang.HolProg 64 :=
.seq NamedBody860_441 NamedBody860_448

def NamedBody860_450 : StackLang.HolProg 64 :=
.seq NamedBody860_440 NamedBody860_449

def NamedBody860_451 : StackLang.HolProg 64 :=
.seq NamedBody860_439 NamedBody860_450

def NamedBody860_452 : StackLang.HolProg 64 :=
.seq NamedBody860_438 NamedBody860_451

def NamedBody860_453 : StackLang.HolProg 64 :=
.seq NamedBody860_437 NamedBody860_452

def NamedBody860_454 : StackLang.HolProg 64 :=
.seq NamedBody860_436 NamedBody860_453

def NamedBody860_455 : StackLang.HolProg 64 :=
.seq NamedBody860_435 NamedBody860_454

def NamedBody860_456 : StackLang.HolProg 64 :=
.seq NamedBody860_434 NamedBody860_455

def NamedBody860_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody860_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_465 : StackLang.HolProg 64 :=
.seq NamedBody860_463 NamedBody860_464

def NamedBody860_466 : StackLang.HolProg 64 :=
.seq NamedBody860_462 NamedBody860_465

def NamedBody860_467 : StackLang.HolProg 64 :=
.seq NamedBody860_461 NamedBody860_466

def NamedBody860_468 : StackLang.HolProg 64 :=
.seq NamedBody860_460 NamedBody860_467

def NamedBody860_469 : StackLang.HolProg 64 :=
.seq NamedBody860_459 NamedBody860_468

def NamedBody860_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_471 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_472 : StackLang.HolProg 64 :=
.seq NamedBody860_470 NamedBody860_471

def NamedBody860_473 : StackLang.HolProg 64 :=
.call (some (NamedBody860_469, 1, 860, 12)) (Sum.inl 182) (some (NamedBody860_472, 860, 13))

def NamedBody860_474 : StackLang.HolProg 64 :=
.seq NamedBody860_458 NamedBody860_473

def NamedBody860_475 : StackLang.HolProg 64 :=
.seq NamedBody860_457 NamedBody860_474

def NamedBody860_476 : StackLang.HolProg 64 :=
.seq NamedBody860_456 NamedBody860_475

def NamedBody860_477 : StackLang.HolProg 64 :=
.seq NamedBody860_427 NamedBody860_476

def NamedBody860_478 : StackLang.HolProg 64 :=
.seq NamedBody860_424 NamedBody860_477

def NamedBody860_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody860_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody860_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody860_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4372#64)

def NamedBody860_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_488 : StackLang.HolProg 64 :=
.seq NamedBody860_486 NamedBody860_487

def NamedBody860_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_492 : StackLang.HolProg 64 :=
.seq NamedBody860_490 NamedBody860_491

def NamedBody860_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_494 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_492 NamedBody860_493

def NamedBody860_495 : StackLang.HolProg 64 :=
.seq NamedBody860_489 NamedBody860_494

def NamedBody860_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 15

def NamedBody860_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_505 : StackLang.HolProg 64 :=
.seq NamedBody860_503 NamedBody860_504

def NamedBody860_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_507 : StackLang.HolProg 64 :=
.seq NamedBody860_505 NamedBody860_506

def NamedBody860_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_509 : StackLang.HolProg 64 :=
.seq NamedBody860_507 NamedBody860_508

def NamedBody860_510 : StackLang.HolProg 64 :=
.seq NamedBody860_502 NamedBody860_509

def NamedBody860_511 : StackLang.HolProg 64 :=
.seq NamedBody860_501 NamedBody860_510

def NamedBody860_512 : StackLang.HolProg 64 :=
.seq NamedBody860_500 NamedBody860_511

def NamedBody860_513 : StackLang.HolProg 64 :=
.seq NamedBody860_499 NamedBody860_512

def NamedBody860_514 : StackLang.HolProg 64 :=
.seq NamedBody860_498 NamedBody860_513

def NamedBody860_515 : StackLang.HolProg 64 :=
.seq NamedBody860_497 NamedBody860_514

def NamedBody860_516 : StackLang.HolProg 64 :=
.seq NamedBody860_496 NamedBody860_515

def NamedBody860_517 : StackLang.HolProg 64 :=
.seq NamedBody860_495 NamedBody860_516

def NamedBody860_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody860_525 : StackLang.HolProg 64 :=
.seq NamedBody860_523 NamedBody860_524

def NamedBody860_526 : StackLang.HolProg 64 :=
.seq NamedBody860_522 NamedBody860_525

def NamedBody860_527 : StackLang.HolProg 64 :=
.seq NamedBody860_521 NamedBody860_526

def NamedBody860_528 : StackLang.HolProg 64 :=
.seq NamedBody860_520 NamedBody860_527

def NamedBody860_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_530 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_531 : StackLang.HolProg 64 :=
.seq NamedBody860_529 NamedBody860_530

def NamedBody860_532 : StackLang.HolProg 64 :=
.call (some (NamedBody860_528, 1, 860, 14)) (Sum.inl 625) (some (NamedBody860_531, 860, 15))

def NamedBody860_533 : StackLang.HolProg 64 :=
.seq NamedBody860_519 NamedBody860_532

def NamedBody860_534 : StackLang.HolProg 64 :=
.seq NamedBody860_518 NamedBody860_533

def NamedBody860_535 : StackLang.HolProg 64 :=
.seq NamedBody860_517 NamedBody860_534

def NamedBody860_536 : StackLang.HolProg 64 :=
.seq NamedBody860_488 NamedBody860_535

def NamedBody860_537 : StackLang.HolProg 64 :=
.seq NamedBody860_485 NamedBody860_536

def NamedBody860_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4373#64)

def NamedBody860_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_543 : StackLang.HolProg 64 :=
.seq NamedBody860_541 NamedBody860_542

def NamedBody860_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_547 : StackLang.HolProg 64 :=
.seq NamedBody860_545 NamedBody860_546

def NamedBody860_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_549 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_547 NamedBody860_548

def NamedBody860_550 : StackLang.HolProg 64 :=
.seq NamedBody860_544 NamedBody860_549

def NamedBody860_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 17

def NamedBody860_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_560 : StackLang.HolProg 64 :=
.seq NamedBody860_558 NamedBody860_559

def NamedBody860_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_562 : StackLang.HolProg 64 :=
.seq NamedBody860_560 NamedBody860_561

def NamedBody860_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_564 : StackLang.HolProg 64 :=
.seq NamedBody860_562 NamedBody860_563

def NamedBody860_565 : StackLang.HolProg 64 :=
.seq NamedBody860_557 NamedBody860_564

def NamedBody860_566 : StackLang.HolProg 64 :=
.seq NamedBody860_556 NamedBody860_565

def NamedBody860_567 : StackLang.HolProg 64 :=
.seq NamedBody860_555 NamedBody860_566

def NamedBody860_568 : StackLang.HolProg 64 :=
.seq NamedBody860_554 NamedBody860_567

def NamedBody860_569 : StackLang.HolProg 64 :=
.seq NamedBody860_553 NamedBody860_568

def NamedBody860_570 : StackLang.HolProg 64 :=
.seq NamedBody860_552 NamedBody860_569

def NamedBody860_571 : StackLang.HolProg 64 :=
.seq NamedBody860_551 NamedBody860_570

def NamedBody860_572 : StackLang.HolProg 64 :=
.seq NamedBody860_550 NamedBody860_571

def NamedBody860_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_580 : StackLang.HolProg 64 :=
.seq NamedBody860_578 NamedBody860_579

def NamedBody860_581 : StackLang.HolProg 64 :=
.seq NamedBody860_577 NamedBody860_580

def NamedBody860_582 : StackLang.HolProg 64 :=
.seq NamedBody860_576 NamedBody860_581

def NamedBody860_583 : StackLang.HolProg 64 :=
.seq NamedBody860_575 NamedBody860_582

def NamedBody860_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_585 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_586 : StackLang.HolProg 64 :=
.seq NamedBody860_584 NamedBody860_585

def NamedBody860_587 : StackLang.HolProg 64 :=
.call (some (NamedBody860_583, 1, 860, 16)) (Sum.inl 455) (some (NamedBody860_586, 860, 17))

def NamedBody860_588 : StackLang.HolProg 64 :=
.seq NamedBody860_574 NamedBody860_587

def NamedBody860_589 : StackLang.HolProg 64 :=
.seq NamedBody860_573 NamedBody860_588

def NamedBody860_590 : StackLang.HolProg 64 :=
.seq NamedBody860_572 NamedBody860_589

def NamedBody860_591 : StackLang.HolProg 64 :=
.seq NamedBody860_543 NamedBody860_590

def NamedBody860_592 : StackLang.HolProg 64 :=
.seq NamedBody860_540 NamedBody860_591

def NamedBody860_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 80#64))

def NamedBody860_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody860_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody860_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody860_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody860_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_609 : StackLang.HolProg 64 :=
.seq NamedBody860_607 NamedBody860_608

def NamedBody860_610 : StackLang.HolProg 64 :=
.seq NamedBody860_606 NamedBody860_609

def NamedBody860_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4374#64)

def NamedBody860_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_614 : StackLang.HolProg 64 :=
.seq NamedBody860_612 NamedBody860_613

def NamedBody860_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_618 : StackLang.HolProg 64 :=
.seq NamedBody860_616 NamedBody860_617

def NamedBody860_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_620 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_618 NamedBody860_619

def NamedBody860_621 : StackLang.HolProg 64 :=
.seq NamedBody860_615 NamedBody860_620

def NamedBody860_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 19

def NamedBody860_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_631 : StackLang.HolProg 64 :=
.seq NamedBody860_629 NamedBody860_630

def NamedBody860_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_633 : StackLang.HolProg 64 :=
.seq NamedBody860_631 NamedBody860_632

def NamedBody860_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_635 : StackLang.HolProg 64 :=
.seq NamedBody860_633 NamedBody860_634

def NamedBody860_636 : StackLang.HolProg 64 :=
.seq NamedBody860_628 NamedBody860_635

def NamedBody860_637 : StackLang.HolProg 64 :=
.seq NamedBody860_627 NamedBody860_636

def NamedBody860_638 : StackLang.HolProg 64 :=
.seq NamedBody860_626 NamedBody860_637

def NamedBody860_639 : StackLang.HolProg 64 :=
.seq NamedBody860_625 NamedBody860_638

def NamedBody860_640 : StackLang.HolProg 64 :=
.seq NamedBody860_624 NamedBody860_639

def NamedBody860_641 : StackLang.HolProg 64 :=
.seq NamedBody860_623 NamedBody860_640

def NamedBody860_642 : StackLang.HolProg 64 :=
.seq NamedBody860_622 NamedBody860_641

def NamedBody860_643 : StackLang.HolProg 64 :=
.seq NamedBody860_621 NamedBody860_642

def NamedBody860_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody860_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_653 : StackLang.HolProg 64 :=
.seq NamedBody860_651 NamedBody860_652

def NamedBody860_654 : StackLang.HolProg 64 :=
.seq NamedBody860_650 NamedBody860_653

def NamedBody860_655 : StackLang.HolProg 64 :=
.seq NamedBody860_649 NamedBody860_654

def NamedBody860_656 : StackLang.HolProg 64 :=
.seq NamedBody860_648 NamedBody860_655

def NamedBody860_657 : StackLang.HolProg 64 :=
.seq NamedBody860_647 NamedBody860_656

def NamedBody860_658 : StackLang.HolProg 64 :=
.seq NamedBody860_646 NamedBody860_657

def NamedBody860_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_661 : StackLang.HolProg 64 :=
.seq NamedBody860_659 NamedBody860_660

def NamedBody860_662 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_663 : StackLang.HolProg 64 :=
.seq NamedBody860_661 NamedBody860_662

def NamedBody860_664 : StackLang.HolProg 64 :=
.call (some (NamedBody860_658, 1, 860, 18)) (Sum.inl 68) (some (NamedBody860_663, 860, 19))

def NamedBody860_665 : StackLang.HolProg 64 :=
.seq NamedBody860_645 NamedBody860_664

def NamedBody860_666 : StackLang.HolProg 64 :=
.seq NamedBody860_644 NamedBody860_665

def NamedBody860_667 : StackLang.HolProg 64 :=
.seq NamedBody860_643 NamedBody860_666

def NamedBody860_668 : StackLang.HolProg 64 :=
.seq NamedBody860_614 NamedBody860_667

def NamedBody860_669 : StackLang.HolProg 64 :=
.seq NamedBody860_611 NamedBody860_668

def NamedBody860_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody860_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody860_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_675 : StackLang.HolProg 64 :=
.seq NamedBody860_673 NamedBody860_674

def NamedBody860_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4375#64)

def NamedBody860_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_679 : StackLang.HolProg 64 :=
.seq NamedBody860_677 NamedBody860_678

def NamedBody860_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_683 : StackLang.HolProg 64 :=
.seq NamedBody860_681 NamedBody860_682

def NamedBody860_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_685 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_683 NamedBody860_684

def NamedBody860_686 : StackLang.HolProg 64 :=
.seq NamedBody860_680 NamedBody860_685

def NamedBody860_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 21

def NamedBody860_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_696 : StackLang.HolProg 64 :=
.seq NamedBody860_694 NamedBody860_695

def NamedBody860_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_698 : StackLang.HolProg 64 :=
.seq NamedBody860_696 NamedBody860_697

def NamedBody860_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_700 : StackLang.HolProg 64 :=
.seq NamedBody860_698 NamedBody860_699

def NamedBody860_701 : StackLang.HolProg 64 :=
.seq NamedBody860_693 NamedBody860_700

def NamedBody860_702 : StackLang.HolProg 64 :=
.seq NamedBody860_692 NamedBody860_701

def NamedBody860_703 : StackLang.HolProg 64 :=
.seq NamedBody860_691 NamedBody860_702

def NamedBody860_704 : StackLang.HolProg 64 :=
.seq NamedBody860_690 NamedBody860_703

def NamedBody860_705 : StackLang.HolProg 64 :=
.seq NamedBody860_689 NamedBody860_704

def NamedBody860_706 : StackLang.HolProg 64 :=
.seq NamedBody860_688 NamedBody860_705

def NamedBody860_707 : StackLang.HolProg 64 :=
.seq NamedBody860_687 NamedBody860_706

def NamedBody860_708 : StackLang.HolProg 64 :=
.seq NamedBody860_686 NamedBody860_707

def NamedBody860_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_718 : StackLang.HolProg 64 :=
.seq NamedBody860_716 NamedBody860_717

def NamedBody860_719 : StackLang.HolProg 64 :=
.seq NamedBody860_715 NamedBody860_718

def NamedBody860_720 : StackLang.HolProg 64 :=
.seq NamedBody860_714 NamedBody860_719

def NamedBody860_721 : StackLang.HolProg 64 :=
.seq NamedBody860_713 NamedBody860_720

def NamedBody860_722 : StackLang.HolProg 64 :=
.seq NamedBody860_712 NamedBody860_721

def NamedBody860_723 : StackLang.HolProg 64 :=
.seq NamedBody860_711 NamedBody860_722

def NamedBody860_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody860_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody860_727 : StackLang.HolProg 64 :=
.seq NamedBody860_725 NamedBody860_726

def NamedBody860_728 : StackLang.HolProg 64 :=
.seq NamedBody860_724 NamedBody860_727

def NamedBody860_729 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_730 : StackLang.HolProg 64 :=
.seq NamedBody860_728 NamedBody860_729

def NamedBody860_731 : StackLang.HolProg 64 :=
.call (some (NamedBody860_723, 1, 860, 20)) (Sum.inl 77) (some (NamedBody860_730, 860, 21))

def NamedBody860_732 : StackLang.HolProg 64 :=
.seq NamedBody860_710 NamedBody860_731

def NamedBody860_733 : StackLang.HolProg 64 :=
.seq NamedBody860_709 NamedBody860_732

def NamedBody860_734 : StackLang.HolProg 64 :=
.seq NamedBody860_708 NamedBody860_733

def NamedBody860_735 : StackLang.HolProg 64 :=
.seq NamedBody860_679 NamedBody860_734

def NamedBody860_736 : StackLang.HolProg 64 :=
.seq NamedBody860_676 NamedBody860_735

def NamedBody860_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody860_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody860_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_743 : StackLang.HolProg 64 :=
.seq NamedBody860_741 NamedBody860_742

def NamedBody860_744 : StackLang.HolProg 64 :=
.seq NamedBody860_740 NamedBody860_743

def NamedBody860_745 : StackLang.HolProg 64 :=
.seq NamedBody860_739 NamedBody860_744

def NamedBody860_746 : StackLang.HolProg 64 :=
.seq NamedBody860_738 NamedBody860_745

def NamedBody860_747 : StackLang.HolProg 64 :=
.seq NamedBody860_737 NamedBody860_746

def NamedBody860_748 : StackLang.HolProg 64 :=
.seq NamedBody860_736 NamedBody860_747

def NamedBody860_749 : StackLang.HolProg 64 :=
.seq NamedBody860_675 NamedBody860_748

def NamedBody860_750 : StackLang.HolProg 64 :=
.seq NamedBody860_672 NamedBody860_749

def NamedBody860_751 : StackLang.HolProg 64 :=
.seq NamedBody860_671 NamedBody860_750

def NamedBody860_752 : StackLang.HolProg 64 :=
.seq NamedBody860_670 NamedBody860_751

def NamedBody860_753 : StackLang.HolProg 64 :=
.seq NamedBody860_669 NamedBody860_752

def NamedBody860_754 : StackLang.HolProg 64 :=
.seq NamedBody860_610 NamedBody860_753

def NamedBody860_755 : StackLang.HolProg 64 :=
.seq NamedBody860_605 NamedBody860_754

def NamedBody860_756 : StackLang.HolProg 64 :=
.seq NamedBody860_604 NamedBody860_755

def NamedBody860_757 : StackLang.HolProg 64 :=
.seq NamedBody860_603 NamedBody860_756

def NamedBody860_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_760 : StackLang.HolProg 64 :=
.seq NamedBody860_758 NamedBody860_759

def NamedBody860_761 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody860_757 NamedBody860_760

def NamedBody860_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody860_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4376#64)

def NamedBody860_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_767 : StackLang.HolProg 64 :=
.seq NamedBody860_765 NamedBody860_766

def NamedBody860_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_771 : StackLang.HolProg 64 :=
.seq NamedBody860_769 NamedBody860_770

def NamedBody860_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_773 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_771 NamedBody860_772

def NamedBody860_774 : StackLang.HolProg 64 :=
.seq NamedBody860_768 NamedBody860_773

def NamedBody860_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 23

def NamedBody860_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_784 : StackLang.HolProg 64 :=
.seq NamedBody860_782 NamedBody860_783

def NamedBody860_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_786 : StackLang.HolProg 64 :=
.seq NamedBody860_784 NamedBody860_785

def NamedBody860_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_788 : StackLang.HolProg 64 :=
.seq NamedBody860_786 NamedBody860_787

def NamedBody860_789 : StackLang.HolProg 64 :=
.seq NamedBody860_781 NamedBody860_788

def NamedBody860_790 : StackLang.HolProg 64 :=
.seq NamedBody860_780 NamedBody860_789

def NamedBody860_791 : StackLang.HolProg 64 :=
.seq NamedBody860_779 NamedBody860_790

def NamedBody860_792 : StackLang.HolProg 64 :=
.seq NamedBody860_778 NamedBody860_791

def NamedBody860_793 : StackLang.HolProg 64 :=
.seq NamedBody860_777 NamedBody860_792

def NamedBody860_794 : StackLang.HolProg 64 :=
.seq NamedBody860_776 NamedBody860_793

def NamedBody860_795 : StackLang.HolProg 64 :=
.seq NamedBody860_775 NamedBody860_794

def NamedBody860_796 : StackLang.HolProg 64 :=
.seq NamedBody860_774 NamedBody860_795

def NamedBody860_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_804 : StackLang.HolProg 64 :=
.seq NamedBody860_802 NamedBody860_803

def NamedBody860_805 : StackLang.HolProg 64 :=
.seq NamedBody860_801 NamedBody860_804

def NamedBody860_806 : StackLang.HolProg 64 :=
.seq NamedBody860_800 NamedBody860_805

def NamedBody860_807 : StackLang.HolProg 64 :=
.seq NamedBody860_799 NamedBody860_806

def NamedBody860_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_809 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_810 : StackLang.HolProg 64 :=
.seq NamedBody860_808 NamedBody860_809

def NamedBody860_811 : StackLang.HolProg 64 :=
.call (some (NamedBody860_807, 1, 860, 22)) (Sum.inl 76) (some (NamedBody860_810, 860, 23))

def NamedBody860_812 : StackLang.HolProg 64 :=
.seq NamedBody860_798 NamedBody860_811

def NamedBody860_813 : StackLang.HolProg 64 :=
.seq NamedBody860_797 NamedBody860_812

def NamedBody860_814 : StackLang.HolProg 64 :=
.seq NamedBody860_796 NamedBody860_813

def NamedBody860_815 : StackLang.HolProg 64 :=
.seq NamedBody860_767 NamedBody860_814

def NamedBody860_816 : StackLang.HolProg 64 :=
.seq NamedBody860_764 NamedBody860_815

def NamedBody860_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody860_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4377#64)

def NamedBody860_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_824 : StackLang.HolProg 64 :=
.seq NamedBody860_822 NamedBody860_823

def NamedBody860_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody860_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody860_828 : StackLang.HolProg 64 :=
.seq NamedBody860_826 NamedBody860_827

def NamedBody860_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_830 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody860_828 NamedBody860_829

def NamedBody860_831 : StackLang.HolProg 64 :=
.seq NamedBody860_825 NamedBody860_830

def NamedBody860_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody860_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody860_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 860 25

def NamedBody860_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody860_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody860_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody860_841 : StackLang.HolProg 64 :=
.seq NamedBody860_839 NamedBody860_840

def NamedBody860_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody860_843 : StackLang.HolProg 64 :=
.seq NamedBody860_841 NamedBody860_842

def NamedBody860_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_845 : StackLang.HolProg 64 :=
.seq NamedBody860_843 NamedBody860_844

def NamedBody860_846 : StackLang.HolProg 64 :=
.seq NamedBody860_838 NamedBody860_845

def NamedBody860_847 : StackLang.HolProg 64 :=
.seq NamedBody860_837 NamedBody860_846

def NamedBody860_848 : StackLang.HolProg 64 :=
.seq NamedBody860_836 NamedBody860_847

def NamedBody860_849 : StackLang.HolProg 64 :=
.seq NamedBody860_835 NamedBody860_848

def NamedBody860_850 : StackLang.HolProg 64 :=
.seq NamedBody860_834 NamedBody860_849

def NamedBody860_851 : StackLang.HolProg 64 :=
.seq NamedBody860_833 NamedBody860_850

def NamedBody860_852 : StackLang.HolProg 64 :=
.seq NamedBody860_832 NamedBody860_851

def NamedBody860_853 : StackLang.HolProg 64 :=
.seq NamedBody860_831 NamedBody860_852

def NamedBody860_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody860_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody860_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody860_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody860_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_862 : StackLang.HolProg 64 :=
.seq NamedBody860_860 NamedBody860_861

def NamedBody860_863 : StackLang.HolProg 64 :=
.seq NamedBody860_859 NamedBody860_862

def NamedBody860_864 : StackLang.HolProg 64 :=
.seq NamedBody860_858 NamedBody860_863

def NamedBody860_865 : StackLang.HolProg 64 :=
.seq NamedBody860_857 NamedBody860_864

def NamedBody860_866 : StackLang.HolProg 64 :=
.seq NamedBody860_856 NamedBody860_865

def NamedBody860_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody860_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody860_869 : StackLang.HolProg 64 :=
.seq NamedBody860_867 NamedBody860_868

def NamedBody860_870 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody860_871 : StackLang.HolProg 64 :=
.seq NamedBody860_869 NamedBody860_870

def NamedBody860_872 : StackLang.HolProg 64 :=
.call (some (NamedBody860_866, 1, 860, 24)) (Sum.inl 73) (some (NamedBody860_871, 860, 25))

def NamedBody860_873 : StackLang.HolProg 64 :=
.seq NamedBody860_855 NamedBody860_872

def NamedBody860_874 : StackLang.HolProg 64 :=
.seq NamedBody860_854 NamedBody860_873

def NamedBody860_875 : StackLang.HolProg 64 :=
.seq NamedBody860_853 NamedBody860_874

def NamedBody860_876 : StackLang.HolProg 64 :=
.seq NamedBody860_824 NamedBody860_875

def NamedBody860_877 : StackLang.HolProg 64 :=
.seq NamedBody860_821 NamedBody860_876

def NamedBody860_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody860_880 : StackLang.HolProg 64 :=
.seq NamedBody860_878 NamedBody860_879

def NamedBody860_881 : StackLang.HolProg 64 :=
.seq NamedBody860_877 NamedBody860_880

def NamedBody860_882 : StackLang.HolProg 64 :=
.seq NamedBody860_820 NamedBody860_881

def NamedBody860_883 : StackLang.HolProg 64 :=
.seq NamedBody860_819 NamedBody860_882

def NamedBody860_884 : StackLang.HolProg 64 :=
.seq NamedBody860_818 NamedBody860_883

def NamedBody860_885 : StackLang.HolProg 64 :=
.seq NamedBody860_817 NamedBody860_884

def NamedBody860_886 : StackLang.HolProg 64 :=
.seq NamedBody860_816 NamedBody860_885

def NamedBody860_887 : StackLang.HolProg 64 :=
.seq NamedBody860_763 NamedBody860_886

def NamedBody860_888 : StackLang.HolProg 64 :=
.seq NamedBody860_762 NamedBody860_887

def NamedBody860_889 : StackLang.HolProg 64 :=
.seq NamedBody860_761 NamedBody860_888

def NamedBody860_890 : StackLang.HolProg 64 :=
.seq NamedBody860_602 NamedBody860_889

def NamedBody860_891 : StackLang.HolProg 64 :=
.seq NamedBody860_601 NamedBody860_890

def NamedBody860_892 : StackLang.HolProg 64 :=
.seq NamedBody860_600 NamedBody860_891

def NamedBody860_893 : StackLang.HolProg 64 :=
.seq NamedBody860_599 NamedBody860_892

def NamedBody860_894 : StackLang.HolProg 64 :=
.seq NamedBody860_598 NamedBody860_893

def NamedBody860_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody860_897 : StackLang.HolProg 64 :=
.seq NamedBody860_895 NamedBody860_896

def NamedBody860_898 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody860_894 NamedBody860_897

def NamedBody860_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody860_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody860_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody860_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody860_903 : StackLang.HolProg 64 :=
.seq NamedBody860_901 NamedBody860_902

def NamedBody860_904 : StackLang.HolProg 64 :=
.seq NamedBody860_900 NamedBody860_903

def NamedBody860_905 : StackLang.HolProg 64 :=
.seq NamedBody860_899 NamedBody860_904

def NamedBody860_906 : StackLang.HolProg 64 :=
.seq NamedBody860_898 NamedBody860_905

def NamedBody860_907 : StackLang.HolProg 64 :=
.seq NamedBody860_597 NamedBody860_906

def NamedBody860_908 : StackLang.HolProg 64 :=
.seq NamedBody860_596 NamedBody860_907

def NamedBody860_909 : StackLang.HolProg 64 :=
.seq NamedBody860_595 NamedBody860_908

def NamedBody860_910 : StackLang.HolProg 64 :=
.seq NamedBody860_594 NamedBody860_909

def NamedBody860_911 : StackLang.HolProg 64 :=
.seq NamedBody860_593 NamedBody860_910

def NamedBody860_912 : StackLang.HolProg 64 :=
.seq NamedBody860_592 NamedBody860_911

def NamedBody860_913 : StackLang.HolProg 64 :=
.seq NamedBody860_539 NamedBody860_912

def NamedBody860_914 : StackLang.HolProg 64 :=
.seq NamedBody860_538 NamedBody860_913

def NamedBody860_915 : StackLang.HolProg 64 :=
.seq NamedBody860_537 NamedBody860_914

def NamedBody860_916 : StackLang.HolProg 64 :=
.seq NamedBody860_484 NamedBody860_915

def NamedBody860_917 : StackLang.HolProg 64 :=
.seq NamedBody860_483 NamedBody860_916

def NamedBody860_918 : StackLang.HolProg 64 :=
.seq NamedBody860_482 NamedBody860_917

def NamedBody860_919 : StackLang.HolProg 64 :=
.seq NamedBody860_481 NamedBody860_918

def NamedBody860_920 : StackLang.HolProg 64 :=
.seq NamedBody860_480 NamedBody860_919

def NamedBody860_921 : StackLang.HolProg 64 :=
.seq NamedBody860_479 NamedBody860_920

def NamedBody860_922 : StackLang.HolProg 64 :=
.seq NamedBody860_478 NamedBody860_921

def NamedBody860_923 : StackLang.HolProg 64 :=
.seq NamedBody860_423 NamedBody860_922

def NamedBody860_924 : StackLang.HolProg 64 :=
.seq NamedBody860_422 NamedBody860_923

def NamedBody860_925 : StackLang.HolProg 64 :=
.seq NamedBody860_421 NamedBody860_924

def NamedBody860_926 : StackLang.HolProg 64 :=
.seq NamedBody860_420 NamedBody860_925

def NamedBody860_927 : StackLang.HolProg 64 :=
.seq NamedBody860_419 NamedBody860_926

def NamedBody860_928 : StackLang.HolProg 64 :=
.seq NamedBody860_418 NamedBody860_927

def NamedBody860_929 : StackLang.HolProg 64 :=
.seq NamedBody860_417 NamedBody860_928

def NamedBody860_930 : StackLang.HolProg 64 :=
.seq NamedBody860_416 NamedBody860_929

def NamedBody860_931 : StackLang.HolProg 64 :=
.seq NamedBody860_415 NamedBody860_930

def NamedBody860_932 : StackLang.HolProg 64 :=
.seq NamedBody860_360 NamedBody860_931

def NamedBody860_933 : StackLang.HolProg 64 :=
.seq NamedBody860_359 NamedBody860_932

def NamedBody860_934 : StackLang.HolProg 64 :=
.seq NamedBody860_358 NamedBody860_933

def NamedBody860_935 : StackLang.HolProg 64 :=
.seq NamedBody860_357 NamedBody860_934

def NamedBody860_936 : StackLang.HolProg 64 :=
.seq NamedBody860_356 NamedBody860_935

def NamedBody860_937 : StackLang.HolProg 64 :=
.seq NamedBody860_355 NamedBody860_936

def NamedBody860_938 : StackLang.HolProg 64 :=
.seq NamedBody860_354 NamedBody860_937

def NamedBody860_939 : StackLang.HolProg 64 :=
.seq NamedBody860_353 NamedBody860_938

def NamedBody860_940 : StackLang.HolProg 64 :=
.seq NamedBody860_352 NamedBody860_939

def NamedBody860_941 : StackLang.HolProg 64 :=
.seq NamedBody860_351 NamedBody860_940

def NamedBody860_942 : StackLang.HolProg 64 :=
.seq NamedBody860_350 NamedBody860_941

def NamedBody860_943 : StackLang.HolProg 64 :=
.seq NamedBody860_349 NamedBody860_942

def NamedBody860_944 : StackLang.HolProg 64 :=
.seq NamedBody860_348 NamedBody860_943

def NamedBody860_945 : StackLang.HolProg 64 :=
.seq NamedBody860_347 NamedBody860_944

def NamedBody860_946 : StackLang.HolProg 64 :=
.seq NamedBody860_346 NamedBody860_945

def NamedBody860_947 : StackLang.HolProg 64 :=
.seq NamedBody860_345 NamedBody860_946

def NamedBody860_948 : StackLang.HolProg 64 :=
.seq NamedBody860_344 NamedBody860_947

def NamedBody860_949 : StackLang.HolProg 64 :=
.seq NamedBody860_343 NamedBody860_948

def NamedBody860_950 : StackLang.HolProg 64 :=
.seq NamedBody860_342 NamedBody860_949

def NamedBody860_951 : StackLang.HolProg 64 :=
.seq NamedBody860_341 NamedBody860_950

def NamedBody860_952 : StackLang.HolProg 64 :=
.seq NamedBody860_340 NamedBody860_951

def NamedBody860_953 : StackLang.HolProg 64 :=
.seq NamedBody860_339 NamedBody860_952

def NamedBody860_954 : StackLang.HolProg 64 :=
.seq NamedBody860_338 NamedBody860_953

def NamedBody860_955 : StackLang.HolProg 64 :=
.seq NamedBody860_337 NamedBody860_954

def NamedBody860_956 : StackLang.HolProg 64 :=
.seq NamedBody860_336 NamedBody860_955

def NamedBody860_957 : StackLang.HolProg 64 :=
.seq NamedBody860_335 NamedBody860_956

def NamedBody860_958 : StackLang.HolProg 64 :=
.seq NamedBody860_334 NamedBody860_957

def NamedBody860_959 : StackLang.HolProg 64 :=
.seq NamedBody860_333 NamedBody860_958

def NamedBody860_960 : StackLang.HolProg 64 :=
.seq NamedBody860_332 NamedBody860_959

def NamedBody860_961 : StackLang.HolProg 64 :=
.seq NamedBody860_331 NamedBody860_960

def NamedBody860_962 : StackLang.HolProg 64 :=
.seq NamedBody860_330 NamedBody860_961

def NamedBody860_963 : StackLang.HolProg 64 :=
.seq NamedBody860_329 NamedBody860_962

def NamedBody860_964 : StackLang.HolProg 64 :=
.seq NamedBody860_328 NamedBody860_963

def NamedBody860_965 : StackLang.HolProg 64 :=
.seq NamedBody860_327 NamedBody860_964

def NamedBody860_966 : StackLang.HolProg 64 :=
.seq NamedBody860_326 NamedBody860_965

def NamedBody860_967 : StackLang.HolProg 64 :=
.seq NamedBody860_325 NamedBody860_966

def NamedBody860_968 : StackLang.HolProg 64 :=
.seq NamedBody860_324 NamedBody860_967

def NamedBody860_969 : StackLang.HolProg 64 :=
.seq NamedBody860_323 NamedBody860_968

def NamedBody860_970 : StackLang.HolProg 64 :=
.seq NamedBody860_322 NamedBody860_969

def NamedBody860_971 : StackLang.HolProg 64 :=
.seq NamedBody860_321 NamedBody860_970

def NamedBody860_972 : StackLang.HolProg 64 :=
.seq NamedBody860_320 NamedBody860_971

def NamedBody860_973 : StackLang.HolProg 64 :=
.seq NamedBody860_319 NamedBody860_972

def NamedBody860_974 : StackLang.HolProg 64 :=
.seq NamedBody860_318 NamedBody860_973

def NamedBody860_975 : StackLang.HolProg 64 :=
.seq NamedBody860_317 NamedBody860_974

def NamedBody860_976 : StackLang.HolProg 64 :=
.seq NamedBody860_316 NamedBody860_975

def NamedBody860_977 : StackLang.HolProg 64 :=
.seq NamedBody860_315 NamedBody860_976

def NamedBody860_978 : StackLang.HolProg 64 :=
.seq NamedBody860_314 NamedBody860_977

def NamedBody860_979 : StackLang.HolProg 64 :=
.seq NamedBody860_313 NamedBody860_978

def NamedBody860_980 : StackLang.HolProg 64 :=
.seq NamedBody860_312 NamedBody860_979

def NamedBody860_981 : StackLang.HolProg 64 :=
.seq NamedBody860_311 NamedBody860_980

def NamedBody860_982 : StackLang.HolProg 64 :=
.seq NamedBody860_310 NamedBody860_981

def NamedBody860_983 : StackLang.HolProg 64 :=
.seq NamedBody860_309 NamedBody860_982

def NamedBody860_984 : StackLang.HolProg 64 :=
.seq NamedBody860_308 NamedBody860_983

def NamedBody860_985 : StackLang.HolProg 64 :=
.seq NamedBody860_307 NamedBody860_984

def NamedBody860_986 : StackLang.HolProg 64 :=
.seq NamedBody860_306 NamedBody860_985

def NamedBody860_987 : StackLang.HolProg 64 :=
.seq NamedBody860_305 NamedBody860_986

def NamedBody860_988 : StackLang.HolProg 64 :=
.seq NamedBody860_304 NamedBody860_987

def NamedBody860_989 : StackLang.HolProg 64 :=
.seq NamedBody860_303 NamedBody860_988

def NamedBody860_990 : StackLang.HolProg 64 :=
.seq NamedBody860_302 NamedBody860_989

def NamedBody860_991 : StackLang.HolProg 64 :=
.seq NamedBody860_301 NamedBody860_990

def NamedBody860_992 : StackLang.HolProg 64 :=
.seq NamedBody860_226 NamedBody860_991

def NamedBody860_993 : StackLang.HolProg 64 :=
.seq NamedBody860_223 NamedBody860_992

def NamedBody860_994 : StackLang.HolProg 64 :=
.seq NamedBody860_222 NamedBody860_993

def NamedBody860_995 : StackLang.HolProg 64 :=
.seq NamedBody860_221 NamedBody860_994

def NamedBody860_996 : StackLang.HolProg 64 :=
.seq NamedBody860_220 NamedBody860_995

def NamedBody860_997 : StackLang.HolProg 64 :=
.seq NamedBody860_219 NamedBody860_996

def NamedBody860_998 : StackLang.HolProg 64 :=
.seq NamedBody860_218 NamedBody860_997

def NamedBody860_999 : StackLang.HolProg 64 :=
.seq NamedBody860_217 NamedBody860_998

def NamedBody860_1000 : StackLang.HolProg 64 :=
.seq NamedBody860_216 NamedBody860_999

def NamedBody860_1001 : StackLang.HolProg 64 :=
.seq NamedBody860_215 NamedBody860_1000

def NamedBody860_1002 : StackLang.HolProg 64 :=
.seq NamedBody860_214 NamedBody860_1001

def NamedBody860_1003 : StackLang.HolProg 64 :=
.seq NamedBody860_213 NamedBody860_1002

def NamedBody860_1004 : StackLang.HolProg 64 :=
.seq NamedBody860_212 NamedBody860_1003

def NamedBody860_1005 : StackLang.HolProg 64 :=
.seq NamedBody860_211 NamedBody860_1004

def NamedBody860_1006 : StackLang.HolProg 64 :=
.seq NamedBody860_210 NamedBody860_1005

def NamedBody860_1007 : StackLang.HolProg 64 :=
.seq NamedBody860_209 NamedBody860_1006

def NamedBody860_1008 : StackLang.HolProg 64 :=
.seq NamedBody860_208 NamedBody860_1007

def NamedBody860_1009 : StackLang.HolProg 64 :=
.seq NamedBody860_207 NamedBody860_1008

def NamedBody860_1010 : StackLang.HolProg 64 :=
.seq NamedBody860_206 NamedBody860_1009

def NamedBody860_1011 : StackLang.HolProg 64 :=
.seq NamedBody860_205 NamedBody860_1010

def NamedBody860_1012 : StackLang.HolProg 64 :=
.seq NamedBody860_204 NamedBody860_1011

def NamedBody860_1013 : StackLang.HolProg 64 :=
.seq NamedBody860_203 NamedBody860_1012

def NamedBody860_1014 : StackLang.HolProg 64 :=
.seq NamedBody860_202 NamedBody860_1013

def NamedBody860_1015 : StackLang.HolProg 64 :=
.seq NamedBody860_201 NamedBody860_1014

def NamedBody860_1016 : StackLang.HolProg 64 :=
.seq NamedBody860_200 NamedBody860_1015

def NamedBody860_1017 : StackLang.HolProg 64 :=
.seq NamedBody860_199 NamedBody860_1016

def NamedBody860_1018 : StackLang.HolProg 64 :=
.seq NamedBody860_198 NamedBody860_1017

def NamedBody860_1019 : StackLang.HolProg 64 :=
.seq NamedBody860_197 NamedBody860_1018

def NamedBody860_1020 : StackLang.HolProg 64 :=
.seq NamedBody860_196 NamedBody860_1019

def NamedBody860_1021 : StackLang.HolProg 64 :=
.seq NamedBody860_195 NamedBody860_1020

def NamedBody860_1022 : StackLang.HolProg 64 :=
.seq NamedBody860_194 NamedBody860_1021

def NamedBody860_1023 : StackLang.HolProg 64 :=
.seq NamedBody860_193 NamedBody860_1022

def NamedBody860_1024 : StackLang.HolProg 64 :=
.seq NamedBody860_192 NamedBody860_1023

def NamedBody860_1025 : StackLang.HolProg 64 :=
.seq NamedBody860_191 NamedBody860_1024

def NamedBody860_1026 : StackLang.HolProg 64 :=
.seq NamedBody860_190 NamedBody860_1025

def NamedBody860_1027 : StackLang.HolProg 64 :=
.seq NamedBody860_189 NamedBody860_1026

def NamedBody860_1028 : StackLang.HolProg 64 :=
.seq NamedBody860_188 NamedBody860_1027

def NamedBody860_1029 : StackLang.HolProg 64 :=
.seq NamedBody860_187 NamedBody860_1028

def NamedBody860_1030 : StackLang.HolProg 64 :=
.seq NamedBody860_186 NamedBody860_1029

def NamedBody860_1031 : StackLang.HolProg 64 :=
.seq NamedBody860_185 NamedBody860_1030

def NamedBody860_1032 : StackLang.HolProg 64 :=
.seq NamedBody860_184 NamedBody860_1031

def NamedBody860_1033 : StackLang.HolProg 64 :=
.seq NamedBody860_183 NamedBody860_1032

def NamedBody860_1034 : StackLang.HolProg 64 :=
.seq NamedBody860_182 NamedBody860_1033

def NamedBody860_1035 : StackLang.HolProg 64 :=
.seq NamedBody860_127 NamedBody860_1034

def NamedBody860_1036 : StackLang.HolProg 64 :=
.seq NamedBody860_124 NamedBody860_1035

def NamedBody860_1037 : StackLang.HolProg 64 :=
.seq NamedBody860_123 NamedBody860_1036

def NamedBody860_1038 : StackLang.HolProg 64 :=
.seq NamedBody860_70 NamedBody860_1037

def NamedBody860_1039 : StackLang.HolProg 64 :=
.seq NamedBody860_67 NamedBody860_1038

def NamedBody860_1040 : StackLang.HolProg 64 :=
.seq NamedBody860_66 NamedBody860_1039

def NamedBody860_1041 : StackLang.HolProg 64 :=
.seq NamedBody860_13 NamedBody860_1040

def NamedBody860_1042 : StackLang.HolProg 64 :=
.seq NamedBody860_6 NamedBody860_1041

def Named860 : Nat × StackLang.HolProg 64 := (860, NamedBody860_1042)
theorem Named860_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed860 = Named860 := by
  kernel_rfl
#print axioms Named860_eq
end InitECandidate.Proofs.BackendStages
