import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed241
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody241_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody241_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody241_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody241_3 : StackLang.HolProg 64 :=
.seq NamedBody241_1 NamedBody241_2

def NamedBody241_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody241_3 NamedBody241_4

def NamedBody241_6 : StackLang.HolProg 64 :=
.seq NamedBody241_0 NamedBody241_5

def NamedBody241_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody241_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def NamedBody241_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody241_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody241_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody241_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody241_16 : StackLang.HolProg 64 :=
.seq NamedBody241_14 NamedBody241_15

def NamedBody241_17 : StackLang.HolProg 64 :=
.seq NamedBody241_13 NamedBody241_16

def NamedBody241_18 : StackLang.HolProg 64 :=
.seq NamedBody241_12 NamedBody241_17

def NamedBody241_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 467#64)

def NamedBody241_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody241_22 : StackLang.HolProg 64 :=
.seq NamedBody241_20 NamedBody241_21

def NamedBody241_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody241_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody241_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody241_26 : StackLang.HolProg 64 :=
.seq NamedBody241_24 NamedBody241_25

def NamedBody241_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody241_26 NamedBody241_27

def NamedBody241_29 : StackLang.HolProg 64 :=
.seq NamedBody241_23 NamedBody241_28

def NamedBody241_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody241_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody241_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 3

def NamedBody241_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody241_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody241_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody241_39 : StackLang.HolProg 64 :=
.seq NamedBody241_37 NamedBody241_38

def NamedBody241_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody241_41 : StackLang.HolProg 64 :=
.seq NamedBody241_39 NamedBody241_40

def NamedBody241_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_43 : StackLang.HolProg 64 :=
.seq NamedBody241_41 NamedBody241_42

def NamedBody241_44 : StackLang.HolProg 64 :=
.seq NamedBody241_36 NamedBody241_43

def NamedBody241_45 : StackLang.HolProg 64 :=
.seq NamedBody241_35 NamedBody241_44

def NamedBody241_46 : StackLang.HolProg 64 :=
.seq NamedBody241_34 NamedBody241_45

def NamedBody241_47 : StackLang.HolProg 64 :=
.seq NamedBody241_33 NamedBody241_46

def NamedBody241_48 : StackLang.HolProg 64 :=
.seq NamedBody241_32 NamedBody241_47

def NamedBody241_49 : StackLang.HolProg 64 :=
.seq NamedBody241_31 NamedBody241_48

def NamedBody241_50 : StackLang.HolProg 64 :=
.seq NamedBody241_30 NamedBody241_49

def NamedBody241_51 : StackLang.HolProg 64 :=
.seq NamedBody241_29 NamedBody241_50

def NamedBody241_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody241_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody241_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_61 : StackLang.HolProg 64 :=
.seq NamedBody241_59 NamedBody241_60

def NamedBody241_62 : StackLang.HolProg 64 :=
.seq NamedBody241_58 NamedBody241_61

def NamedBody241_63 : StackLang.HolProg 64 :=
.seq NamedBody241_57 NamedBody241_62

def NamedBody241_64 : StackLang.HolProg 64 :=
.seq NamedBody241_56 NamedBody241_63

def NamedBody241_65 : StackLang.HolProg 64 :=
.seq NamedBody241_55 NamedBody241_64

def NamedBody241_66 : StackLang.HolProg 64 :=
.seq NamedBody241_54 NamedBody241_65

def NamedBody241_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_69 : StackLang.HolProg 64 :=
.seq NamedBody241_67 NamedBody241_68

def NamedBody241_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody241_71 : StackLang.HolProg 64 :=
.seq NamedBody241_69 NamedBody241_70

def NamedBody241_72 : StackLang.HolProg 64 :=
.call (some (NamedBody241_66, 1, 241, 2)) (Sum.inl 68) (some (NamedBody241_71, 241, 3))

def NamedBody241_73 : StackLang.HolProg 64 :=
.seq NamedBody241_53 NamedBody241_72

def NamedBody241_74 : StackLang.HolProg 64 :=
.seq NamedBody241_52 NamedBody241_73

def NamedBody241_75 : StackLang.HolProg 64 :=
.seq NamedBody241_51 NamedBody241_74

def NamedBody241_76 : StackLang.HolProg 64 :=
.seq NamedBody241_22 NamedBody241_75

def NamedBody241_77 : StackLang.HolProg 64 :=
.seq NamedBody241_19 NamedBody241_76

def NamedBody241_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody241_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody241_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_82 : StackLang.HolProg 64 :=
.seq NamedBody241_80 NamedBody241_81

def NamedBody241_83 : StackLang.HolProg 64 :=
.seq NamedBody241_79 NamedBody241_82

def NamedBody241_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 468#64)

def NamedBody241_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody241_87 : StackLang.HolProg 64 :=
.seq NamedBody241_85 NamedBody241_86

def NamedBody241_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody241_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody241_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody241_91 : StackLang.HolProg 64 :=
.seq NamedBody241_89 NamedBody241_90

def NamedBody241_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody241_91 NamedBody241_92

def NamedBody241_94 : StackLang.HolProg 64 :=
.seq NamedBody241_88 NamedBody241_93

def NamedBody241_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody241_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody241_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 5

def NamedBody241_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody241_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody241_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody241_104 : StackLang.HolProg 64 :=
.seq NamedBody241_102 NamedBody241_103

def NamedBody241_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody241_106 : StackLang.HolProg 64 :=
.seq NamedBody241_104 NamedBody241_105

def NamedBody241_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_108 : StackLang.HolProg 64 :=
.seq NamedBody241_106 NamedBody241_107

def NamedBody241_109 : StackLang.HolProg 64 :=
.seq NamedBody241_101 NamedBody241_108

def NamedBody241_110 : StackLang.HolProg 64 :=
.seq NamedBody241_100 NamedBody241_109

def NamedBody241_111 : StackLang.HolProg 64 :=
.seq NamedBody241_99 NamedBody241_110

def NamedBody241_112 : StackLang.HolProg 64 :=
.seq NamedBody241_98 NamedBody241_111

def NamedBody241_113 : StackLang.HolProg 64 :=
.seq NamedBody241_97 NamedBody241_112

def NamedBody241_114 : StackLang.HolProg 64 :=
.seq NamedBody241_96 NamedBody241_113

def NamedBody241_115 : StackLang.HolProg 64 :=
.seq NamedBody241_95 NamedBody241_114

def NamedBody241_116 : StackLang.HolProg 64 :=
.seq NamedBody241_94 NamedBody241_115

def NamedBody241_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody241_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody241_126 : StackLang.HolProg 64 :=
.seq NamedBody241_124 NamedBody241_125

def NamedBody241_127 : StackLang.HolProg 64 :=
.seq NamedBody241_123 NamedBody241_126

def NamedBody241_128 : StackLang.HolProg 64 :=
.seq NamedBody241_122 NamedBody241_127

def NamedBody241_129 : StackLang.HolProg 64 :=
.seq NamedBody241_121 NamedBody241_128

def NamedBody241_130 : StackLang.HolProg 64 :=
.seq NamedBody241_120 NamedBody241_129

def NamedBody241_131 : StackLang.HolProg 64 :=
.seq NamedBody241_119 NamedBody241_130

def NamedBody241_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody241_135 : StackLang.HolProg 64 :=
.seq NamedBody241_133 NamedBody241_134

def NamedBody241_136 : StackLang.HolProg 64 :=
.seq NamedBody241_132 NamedBody241_135

def NamedBody241_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody241_138 : StackLang.HolProg 64 :=
.seq NamedBody241_136 NamedBody241_137

def NamedBody241_139 : StackLang.HolProg 64 :=
.call (some (NamedBody241_131, 1, 241, 4)) (Sum.inl 77) (some (NamedBody241_138, 241, 5))

def NamedBody241_140 : StackLang.HolProg 64 :=
.seq NamedBody241_118 NamedBody241_139

def NamedBody241_141 : StackLang.HolProg 64 :=
.seq NamedBody241_117 NamedBody241_140

def NamedBody241_142 : StackLang.HolProg 64 :=
.seq NamedBody241_116 NamedBody241_141

def NamedBody241_143 : StackLang.HolProg 64 :=
.seq NamedBody241_87 NamedBody241_142

def NamedBody241_144 : StackLang.HolProg 64 :=
.seq NamedBody241_84 NamedBody241_143

def NamedBody241_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody241_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody241_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody241_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody241_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_154 : StackLang.HolProg 64 :=
.seq NamedBody241_152 NamedBody241_153

def NamedBody241_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 469#64)

def NamedBody241_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody241_158 : StackLang.HolProg 64 :=
.seq NamedBody241_156 NamedBody241_157

def NamedBody241_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody241_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody241_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody241_162 : StackLang.HolProg 64 :=
.seq NamedBody241_160 NamedBody241_161

def NamedBody241_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody241_162 NamedBody241_163

def NamedBody241_165 : StackLang.HolProg 64 :=
.seq NamedBody241_159 NamedBody241_164

def NamedBody241_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody241_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody241_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 7

def NamedBody241_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody241_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody241_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody241_175 : StackLang.HolProg 64 :=
.seq NamedBody241_173 NamedBody241_174

def NamedBody241_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody241_177 : StackLang.HolProg 64 :=
.seq NamedBody241_175 NamedBody241_176

def NamedBody241_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_179 : StackLang.HolProg 64 :=
.seq NamedBody241_177 NamedBody241_178

def NamedBody241_180 : StackLang.HolProg 64 :=
.seq NamedBody241_172 NamedBody241_179

def NamedBody241_181 : StackLang.HolProg 64 :=
.seq NamedBody241_171 NamedBody241_180

def NamedBody241_182 : StackLang.HolProg 64 :=
.seq NamedBody241_170 NamedBody241_181

def NamedBody241_183 : StackLang.HolProg 64 :=
.seq NamedBody241_169 NamedBody241_182

def NamedBody241_184 : StackLang.HolProg 64 :=
.seq NamedBody241_168 NamedBody241_183

def NamedBody241_185 : StackLang.HolProg 64 :=
.seq NamedBody241_167 NamedBody241_184

def NamedBody241_186 : StackLang.HolProg 64 :=
.seq NamedBody241_166 NamedBody241_185

def NamedBody241_187 : StackLang.HolProg 64 :=
.seq NamedBody241_165 NamedBody241_186

def NamedBody241_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody241_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody241_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody241_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody241_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_197 : StackLang.HolProg 64 :=
.seq NamedBody241_195 NamedBody241_196

def NamedBody241_198 : StackLang.HolProg 64 :=
.seq NamedBody241_194 NamedBody241_197

def NamedBody241_199 : StackLang.HolProg 64 :=
.seq NamedBody241_193 NamedBody241_198

def NamedBody241_200 : StackLang.HolProg 64 :=
.seq NamedBody241_192 NamedBody241_199

def NamedBody241_201 : StackLang.HolProg 64 :=
.seq NamedBody241_191 NamedBody241_200

def NamedBody241_202 : StackLang.HolProg 64 :=
.seq NamedBody241_190 NamedBody241_201

def NamedBody241_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody241_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody241_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody241_206 : StackLang.HolProg 64 :=
.seq NamedBody241_204 NamedBody241_205

def NamedBody241_207 : StackLang.HolProg 64 :=
.seq NamedBody241_203 NamedBody241_206

def NamedBody241_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody241_209 : StackLang.HolProg 64 :=
.seq NamedBody241_207 NamedBody241_208

def NamedBody241_210 : StackLang.HolProg 64 :=
.call (some (NamedBody241_202, 1, 241, 6)) (Sum.inl 78) (some (NamedBody241_209, 241, 7))

def NamedBody241_211 : StackLang.HolProg 64 :=
.seq NamedBody241_189 NamedBody241_210

def NamedBody241_212 : StackLang.HolProg 64 :=
.seq NamedBody241_188 NamedBody241_211

def NamedBody241_213 : StackLang.HolProg 64 :=
.seq NamedBody241_187 NamedBody241_212

def NamedBody241_214 : StackLang.HolProg 64 :=
.seq NamedBody241_158 NamedBody241_213

def NamedBody241_215 : StackLang.HolProg 64 :=
.seq NamedBody241_155 NamedBody241_214

def NamedBody241_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody241_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody241_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody241_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody241_220 : StackLang.HolProg 64 :=
.seq NamedBody241_218 NamedBody241_219

def NamedBody241_221 : StackLang.HolProg 64 :=
.seq NamedBody241_217 NamedBody241_220

def NamedBody241_222 : StackLang.HolProg 64 :=
.seq NamedBody241_216 NamedBody241_221

def NamedBody241_223 : StackLang.HolProg 64 :=
.seq NamedBody241_215 NamedBody241_222

def NamedBody241_224 : StackLang.HolProg 64 :=
.seq NamedBody241_154 NamedBody241_223

def NamedBody241_225 : StackLang.HolProg 64 :=
.seq NamedBody241_151 NamedBody241_224

def NamedBody241_226 : StackLang.HolProg 64 :=
.seq NamedBody241_150 NamedBody241_225

def NamedBody241_227 : StackLang.HolProg 64 :=
.seq NamedBody241_149 NamedBody241_226

def NamedBody241_228 : StackLang.HolProg 64 :=
.seq NamedBody241_148 NamedBody241_227

def NamedBody241_229 : StackLang.HolProg 64 :=
.seq NamedBody241_147 NamedBody241_228

def NamedBody241_230 : StackLang.HolProg 64 :=
.seq NamedBody241_146 NamedBody241_229

def NamedBody241_231 : StackLang.HolProg 64 :=
.seq NamedBody241_145 NamedBody241_230

def NamedBody241_232 : StackLang.HolProg 64 :=
.seq NamedBody241_144 NamedBody241_231

def NamedBody241_233 : StackLang.HolProg 64 :=
.seq NamedBody241_83 NamedBody241_232

def NamedBody241_234 : StackLang.HolProg 64 :=
.seq NamedBody241_78 NamedBody241_233

def NamedBody241_235 : StackLang.HolProg 64 :=
.seq NamedBody241_77 NamedBody241_234

def NamedBody241_236 : StackLang.HolProg 64 :=
.seq NamedBody241_18 NamedBody241_235

def NamedBody241_237 : StackLang.HolProg 64 :=
.seq NamedBody241_11 NamedBody241_236

def NamedBody241_238 : StackLang.HolProg 64 :=
.seq NamedBody241_10 NamedBody241_237

def NamedBody241_239 : StackLang.HolProg 64 :=
.seq NamedBody241_9 NamedBody241_238

def NamedBody241_240 : StackLang.HolProg 64 :=
.seq NamedBody241_8 NamedBody241_239

def NamedBody241_241 : StackLang.HolProg 64 :=
.seq NamedBody241_7 NamedBody241_240

def NamedBody241_242 : StackLang.HolProg 64 :=
.seq NamedBody241_6 NamedBody241_241

def Named241 : Nat × StackLang.HolProg 64 := (241, NamedBody241_242)
theorem Named241_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed241 = Named241 := by
  kernel_rfl
#print axioms Named241_eq
end InitECandidate.Proofs.BackendStages
