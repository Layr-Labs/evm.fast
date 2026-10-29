import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed605
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody605_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody605_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody605_3 : StackLang.HolProg 64 :=
.seq NamedBody605_1 NamedBody605_2

def NamedBody605_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody605_3 NamedBody605_4

def NamedBody605_6 : StackLang.HolProg 64 :=
.seq NamedBody605_0 NamedBody605_5

def NamedBody605_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody605_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody605_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody605_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody605_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody605_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody605_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 152#64))

def NamedBody605_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody605_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody605_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody605_21 : StackLang.HolProg 64 :=
.seq NamedBody605_19 NamedBody605_20

def NamedBody605_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2315#64)

def NamedBody605_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody605_25 : StackLang.HolProg 64 :=
.seq NamedBody605_23 NamedBody605_24

def NamedBody605_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody605_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody605_29 : StackLang.HolProg 64 :=
.seq NamedBody605_27 NamedBody605_28

def NamedBody605_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody605_29 NamedBody605_30

def NamedBody605_32 : StackLang.HolProg 64 :=
.seq NamedBody605_26 NamedBody605_31

def NamedBody605_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody605_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody605_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 3

def NamedBody605_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody605_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody605_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody605_42 : StackLang.HolProg 64 :=
.seq NamedBody605_40 NamedBody605_41

def NamedBody605_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody605_44 : StackLang.HolProg 64 :=
.seq NamedBody605_42 NamedBody605_43

def NamedBody605_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_46 : StackLang.HolProg 64 :=
.seq NamedBody605_44 NamedBody605_45

def NamedBody605_47 : StackLang.HolProg 64 :=
.seq NamedBody605_39 NamedBody605_46

def NamedBody605_48 : StackLang.HolProg 64 :=
.seq NamedBody605_38 NamedBody605_47

def NamedBody605_49 : StackLang.HolProg 64 :=
.seq NamedBody605_37 NamedBody605_48

def NamedBody605_50 : StackLang.HolProg 64 :=
.seq NamedBody605_36 NamedBody605_49

def NamedBody605_51 : StackLang.HolProg 64 :=
.seq NamedBody605_35 NamedBody605_50

def NamedBody605_52 : StackLang.HolProg 64 :=
.seq NamedBody605_34 NamedBody605_51

def NamedBody605_53 : StackLang.HolProg 64 :=
.seq NamedBody605_33 NamedBody605_52

def NamedBody605_54 : StackLang.HolProg 64 :=
.seq NamedBody605_32 NamedBody605_53

def NamedBody605_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_62 : StackLang.HolProg 64 :=
.seq NamedBody605_60 NamedBody605_61

def NamedBody605_63 : StackLang.HolProg 64 :=
.seq NamedBody605_59 NamedBody605_62

def NamedBody605_64 : StackLang.HolProg 64 :=
.seq NamedBody605_58 NamedBody605_63

def NamedBody605_65 : StackLang.HolProg 64 :=
.seq NamedBody605_57 NamedBody605_64

def NamedBody605_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody605_68 : StackLang.HolProg 64 :=
.seq NamedBody605_66 NamedBody605_67

def NamedBody605_69 : StackLang.HolProg 64 :=
.call (some (NamedBody605_65, 1, 605, 2)) (Sum.inl 593) (some (NamedBody605_68, 605, 3))

def NamedBody605_70 : StackLang.HolProg 64 :=
.seq NamedBody605_56 NamedBody605_69

def NamedBody605_71 : StackLang.HolProg 64 :=
.seq NamedBody605_55 NamedBody605_70

def NamedBody605_72 : StackLang.HolProg 64 :=
.seq NamedBody605_54 NamedBody605_71

def NamedBody605_73 : StackLang.HolProg 64 :=
.seq NamedBody605_25 NamedBody605_72

def NamedBody605_74 : StackLang.HolProg 64 :=
.seq NamedBody605_22 NamedBody605_73

def NamedBody605_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody605_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody605_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody605_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody605_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody605_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2316#64)

def NamedBody605_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody605_84 : StackLang.HolProg 64 :=
.seq NamedBody605_82 NamedBody605_83

def NamedBody605_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody605_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody605_88 : StackLang.HolProg 64 :=
.seq NamedBody605_86 NamedBody605_87

def NamedBody605_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody605_88 NamedBody605_89

def NamedBody605_91 : StackLang.HolProg 64 :=
.seq NamedBody605_85 NamedBody605_90

def NamedBody605_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody605_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody605_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 5

def NamedBody605_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody605_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody605_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody605_101 : StackLang.HolProg 64 :=
.seq NamedBody605_99 NamedBody605_100

def NamedBody605_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody605_103 : StackLang.HolProg 64 :=
.seq NamedBody605_101 NamedBody605_102

def NamedBody605_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_105 : StackLang.HolProg 64 :=
.seq NamedBody605_103 NamedBody605_104

def NamedBody605_106 : StackLang.HolProg 64 :=
.seq NamedBody605_98 NamedBody605_105

def NamedBody605_107 : StackLang.HolProg 64 :=
.seq NamedBody605_97 NamedBody605_106

def NamedBody605_108 : StackLang.HolProg 64 :=
.seq NamedBody605_96 NamedBody605_107

def NamedBody605_109 : StackLang.HolProg 64 :=
.seq NamedBody605_95 NamedBody605_108

def NamedBody605_110 : StackLang.HolProg 64 :=
.seq NamedBody605_94 NamedBody605_109

def NamedBody605_111 : StackLang.HolProg 64 :=
.seq NamedBody605_93 NamedBody605_110

def NamedBody605_112 : StackLang.HolProg 64 :=
.seq NamedBody605_92 NamedBody605_111

def NamedBody605_113 : StackLang.HolProg 64 :=
.seq NamedBody605_91 NamedBody605_112

def NamedBody605_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody605_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody605_122 : StackLang.HolProg 64 :=
.seq NamedBody605_120 NamedBody605_121

def NamedBody605_123 : StackLang.HolProg 64 :=
.seq NamedBody605_119 NamedBody605_122

def NamedBody605_124 : StackLang.HolProg 64 :=
.seq NamedBody605_118 NamedBody605_123

def NamedBody605_125 : StackLang.HolProg 64 :=
.seq NamedBody605_117 NamedBody605_124

def NamedBody605_126 : StackLang.HolProg 64 :=
.seq NamedBody605_116 NamedBody605_125

def NamedBody605_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody605_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody605_129 : StackLang.HolProg 64 :=
.seq NamedBody605_127 NamedBody605_128

def NamedBody605_130 : StackLang.HolProg 64 :=
.call (some (NamedBody605_126, 1, 605, 4)) (Sum.inl 473) (some (NamedBody605_129, 605, 5))

def NamedBody605_131 : StackLang.HolProg 64 :=
.seq NamedBody605_115 NamedBody605_130

def NamedBody605_132 : StackLang.HolProg 64 :=
.seq NamedBody605_114 NamedBody605_131

def NamedBody605_133 : StackLang.HolProg 64 :=
.seq NamedBody605_113 NamedBody605_132

def NamedBody605_134 : StackLang.HolProg 64 :=
.seq NamedBody605_84 NamedBody605_133

def NamedBody605_135 : StackLang.HolProg 64 :=
.seq NamedBody605_81 NamedBody605_134

def NamedBody605_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody605_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody605_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody605_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody605_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody605_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def NamedBody605_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody605_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody605_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody605_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 72#64))

def NamedBody605_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody605_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody605_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody605_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody605_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody605_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_158 : StackLang.HolProg 64 :=
.seq NamedBody605_156 NamedBody605_157

def NamedBody605_159 : StackLang.HolProg 64 :=
.seq NamedBody605_155 NamedBody605_158

def NamedBody605_160 : StackLang.HolProg 64 :=
.seq NamedBody605_154 NamedBody605_159

def NamedBody605_161 : StackLang.HolProg 64 :=
.seq NamedBody605_153 NamedBody605_160

def NamedBody605_162 : StackLang.HolProg 64 :=
.seq NamedBody605_152 NamedBody605_161

def NamedBody605_163 : StackLang.HolProg 64 :=
.seq NamedBody605_151 NamedBody605_162

def NamedBody605_164 : StackLang.HolProg 64 :=
.seq NamedBody605_150 NamedBody605_163

def NamedBody605_165 : StackLang.HolProg 64 :=
.seq NamedBody605_149 NamedBody605_164

def NamedBody605_166 : StackLang.HolProg 64 :=
.seq NamedBody605_148 NamedBody605_165

def NamedBody605_167 : StackLang.HolProg 64 :=
.seq NamedBody605_147 NamedBody605_166

def NamedBody605_168 : StackLang.HolProg 64 :=
.seq NamedBody605_146 NamedBody605_167

def NamedBody605_169 : StackLang.HolProg 64 :=
.seq NamedBody605_145 NamedBody605_168

def NamedBody605_170 : StackLang.HolProg 64 :=
.seq NamedBody605_144 NamedBody605_169

def NamedBody605_171 : StackLang.HolProg 64 :=
.seq NamedBody605_143 NamedBody605_170

def NamedBody605_172 : StackLang.HolProg 64 :=
.seq NamedBody605_142 NamedBody605_171

def NamedBody605_173 : StackLang.HolProg 64 :=
.seq NamedBody605_141 NamedBody605_172

def NamedBody605_174 : StackLang.HolProg 64 :=
.seq NamedBody605_140 NamedBody605_173

def NamedBody605_175 : StackLang.HolProg 64 :=
.seq NamedBody605_139 NamedBody605_174

def NamedBody605_176 : StackLang.HolProg 64 :=
.seq NamedBody605_138 NamedBody605_175

def NamedBody605_177 : StackLang.HolProg 64 :=
.seq NamedBody605_137 NamedBody605_176

def NamedBody605_178 : StackLang.HolProg 64 :=
.seq NamedBody605_136 NamedBody605_177

def NamedBody605_179 : StackLang.HolProg 64 :=
.seq NamedBody605_135 NamedBody605_178

def NamedBody605_180 : StackLang.HolProg 64 :=
.seq NamedBody605_80 NamedBody605_179

def NamedBody605_181 : StackLang.HolProg 64 :=
.seq NamedBody605_79 NamedBody605_180

def NamedBody605_182 : StackLang.HolProg 64 :=
.seq NamedBody605_78 NamedBody605_181

def NamedBody605_183 : StackLang.HolProg 64 :=
.seq NamedBody605_77 NamedBody605_182

def NamedBody605_184 : StackLang.HolProg 64 :=
.seq NamedBody605_76 NamedBody605_183

def NamedBody605_185 : StackLang.HolProg 64 :=
.seq NamedBody605_75 NamedBody605_184

def NamedBody605_186 : StackLang.HolProg 64 :=
.seq NamedBody605_74 NamedBody605_185

def NamedBody605_187 : StackLang.HolProg 64 :=
.seq NamedBody605_21 NamedBody605_186

def NamedBody605_188 : StackLang.HolProg 64 :=
.seq NamedBody605_18 NamedBody605_187

def NamedBody605_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody605_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_191 : StackLang.HolProg 64 :=
.seq NamedBody605_189 NamedBody605_190

def NamedBody605_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody605_188 NamedBody605_191

def NamedBody605_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody605_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2317#64)

def NamedBody605_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody605_198 : StackLang.HolProg 64 :=
.seq NamedBody605_196 NamedBody605_197

def NamedBody605_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody605_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody605_202 : StackLang.HolProg 64 :=
.seq NamedBody605_200 NamedBody605_201

def NamedBody605_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody605_202 NamedBody605_203

def NamedBody605_205 : StackLang.HolProg 64 :=
.seq NamedBody605_199 NamedBody605_204

def NamedBody605_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody605_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody605_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 7

def NamedBody605_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody605_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody605_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody605_215 : StackLang.HolProg 64 :=
.seq NamedBody605_213 NamedBody605_214

def NamedBody605_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody605_217 : StackLang.HolProg 64 :=
.seq NamedBody605_215 NamedBody605_216

def NamedBody605_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_219 : StackLang.HolProg 64 :=
.seq NamedBody605_217 NamedBody605_218

def NamedBody605_220 : StackLang.HolProg 64 :=
.seq NamedBody605_212 NamedBody605_219

def NamedBody605_221 : StackLang.HolProg 64 :=
.seq NamedBody605_211 NamedBody605_220

def NamedBody605_222 : StackLang.HolProg 64 :=
.seq NamedBody605_210 NamedBody605_221

def NamedBody605_223 : StackLang.HolProg 64 :=
.seq NamedBody605_209 NamedBody605_222

def NamedBody605_224 : StackLang.HolProg 64 :=
.seq NamedBody605_208 NamedBody605_223

def NamedBody605_225 : StackLang.HolProg 64 :=
.seq NamedBody605_207 NamedBody605_224

def NamedBody605_226 : StackLang.HolProg 64 :=
.seq NamedBody605_206 NamedBody605_225

def NamedBody605_227 : StackLang.HolProg 64 :=
.seq NamedBody605_205 NamedBody605_226

def NamedBody605_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody605_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_235 : StackLang.HolProg 64 :=
.seq NamedBody605_233 NamedBody605_234

def NamedBody605_236 : StackLang.HolProg 64 :=
.seq NamedBody605_232 NamedBody605_235

def NamedBody605_237 : StackLang.HolProg 64 :=
.seq NamedBody605_231 NamedBody605_236

def NamedBody605_238 : StackLang.HolProg 64 :=
.seq NamedBody605_230 NamedBody605_237

def NamedBody605_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody605_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody605_241 : StackLang.HolProg 64 :=
.seq NamedBody605_239 NamedBody605_240

def NamedBody605_242 : StackLang.HolProg 64 :=
.call (some (NamedBody605_238, 1, 605, 6)) (Sum.inl 594) (some (NamedBody605_241, 605, 7))

def NamedBody605_243 : StackLang.HolProg 64 :=
.seq NamedBody605_229 NamedBody605_242

def NamedBody605_244 : StackLang.HolProg 64 :=
.seq NamedBody605_228 NamedBody605_243

def NamedBody605_245 : StackLang.HolProg 64 :=
.seq NamedBody605_227 NamedBody605_244

def NamedBody605_246 : StackLang.HolProg 64 :=
.seq NamedBody605_198 NamedBody605_245

def NamedBody605_247 : StackLang.HolProg 64 :=
.seq NamedBody605_195 NamedBody605_246

def NamedBody605_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody605_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody605_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody605_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody605_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody605_253 : StackLang.HolProg 64 :=
.seq NamedBody605_251 NamedBody605_252

def NamedBody605_254 : StackLang.HolProg 64 :=
.seq NamedBody605_250 NamedBody605_253

def NamedBody605_255 : StackLang.HolProg 64 :=
.seq NamedBody605_249 NamedBody605_254

def NamedBody605_256 : StackLang.HolProg 64 :=
.seq NamedBody605_248 NamedBody605_255

def NamedBody605_257 : StackLang.HolProg 64 :=
.seq NamedBody605_247 NamedBody605_256

def NamedBody605_258 : StackLang.HolProg 64 :=
.seq NamedBody605_194 NamedBody605_257

def NamedBody605_259 : StackLang.HolProg 64 :=
.seq NamedBody605_193 NamedBody605_258

def NamedBody605_260 : StackLang.HolProg 64 :=
.seq NamedBody605_192 NamedBody605_259

def NamedBody605_261 : StackLang.HolProg 64 :=
.seq NamedBody605_17 NamedBody605_260

def NamedBody605_262 : StackLang.HolProg 64 :=
.seq NamedBody605_16 NamedBody605_261

def NamedBody605_263 : StackLang.HolProg 64 :=
.seq NamedBody605_15 NamedBody605_262

def NamedBody605_264 : StackLang.HolProg 64 :=
.seq NamedBody605_14 NamedBody605_263

def NamedBody605_265 : StackLang.HolProg 64 :=
.seq NamedBody605_13 NamedBody605_264

def NamedBody605_266 : StackLang.HolProg 64 :=
.seq NamedBody605_12 NamedBody605_265

def NamedBody605_267 : StackLang.HolProg 64 :=
.seq NamedBody605_11 NamedBody605_266

def NamedBody605_268 : StackLang.HolProg 64 :=
.seq NamedBody605_10 NamedBody605_267

def NamedBody605_269 : StackLang.HolProg 64 :=
.seq NamedBody605_9 NamedBody605_268

def NamedBody605_270 : StackLang.HolProg 64 :=
.seq NamedBody605_8 NamedBody605_269

def NamedBody605_271 : StackLang.HolProg 64 :=
.seq NamedBody605_7 NamedBody605_270

def NamedBody605_272 : StackLang.HolProg 64 :=
.seq NamedBody605_6 NamedBody605_271

def Named605 : Nat × StackLang.HolProg 64 := (605, NamedBody605_272)
theorem Named605_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed605 = Named605 := by
  kernel_rfl
#print axioms Named605_eq
end InitECandidate.Proofs.BackendStages
