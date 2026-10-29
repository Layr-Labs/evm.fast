import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed703
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody703_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody703_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody703_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody703_3 : StackLang.HolProg 64 :=
.seq NamedBody703_1 NamedBody703_2

def NamedBody703_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody703_3 NamedBody703_4

def NamedBody703_6 : StackLang.HolProg 64 :=
.seq NamedBody703_0 NamedBody703_5

def NamedBody703_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody703_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody703_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody703_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody703_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody703_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 96#64))

def NamedBody703_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 192#64)

def NamedBody703_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody703_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_19 : StackLang.HolProg 64 :=
.seq NamedBody703_17 NamedBody703_18

def NamedBody703_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3146#64)

def NamedBody703_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_23 : StackLang.HolProg 64 :=
.seq NamedBody703_21 NamedBody703_22

def NamedBody703_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody703_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody703_27 : StackLang.HolProg 64 :=
.seq NamedBody703_25 NamedBody703_26

def NamedBody703_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody703_27 NamedBody703_28

def NamedBody703_30 : StackLang.HolProg 64 :=
.seq NamedBody703_24 NamedBody703_29

def NamedBody703_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody703_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 3

def NamedBody703_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody703_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody703_40 : StackLang.HolProg 64 :=
.seq NamedBody703_38 NamedBody703_39

def NamedBody703_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody703_42 : StackLang.HolProg 64 :=
.seq NamedBody703_40 NamedBody703_41

def NamedBody703_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_44 : StackLang.HolProg 64 :=
.seq NamedBody703_42 NamedBody703_43

def NamedBody703_45 : StackLang.HolProg 64 :=
.seq NamedBody703_37 NamedBody703_44

def NamedBody703_46 : StackLang.HolProg 64 :=
.seq NamedBody703_36 NamedBody703_45

def NamedBody703_47 : StackLang.HolProg 64 :=
.seq NamedBody703_35 NamedBody703_46

def NamedBody703_48 : StackLang.HolProg 64 :=
.seq NamedBody703_34 NamedBody703_47

def NamedBody703_49 : StackLang.HolProg 64 :=
.seq NamedBody703_33 NamedBody703_48

def NamedBody703_50 : StackLang.HolProg 64 :=
.seq NamedBody703_32 NamedBody703_49

def NamedBody703_51 : StackLang.HolProg 64 :=
.seq NamedBody703_31 NamedBody703_50

def NamedBody703_52 : StackLang.HolProg 64 :=
.seq NamedBody703_30 NamedBody703_51

def NamedBody703_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody703_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody703_61 : StackLang.HolProg 64 :=
.seq NamedBody703_59 NamedBody703_60

def NamedBody703_62 : StackLang.HolProg 64 :=
.seq NamedBody703_58 NamedBody703_61

def NamedBody703_63 : StackLang.HolProg 64 :=
.seq NamedBody703_57 NamedBody703_62

def NamedBody703_64 : StackLang.HolProg 64 :=
.seq NamedBody703_56 NamedBody703_63

def NamedBody703_65 : StackLang.HolProg 64 :=
.seq NamedBody703_55 NamedBody703_64

def NamedBody703_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody703_68 : StackLang.HolProg 64 :=
.seq NamedBody703_66 NamedBody703_67

def NamedBody703_69 : StackLang.HolProg 64 :=
.call (some (NamedBody703_65, 1, 703, 2)) (Sum.inl 94) (some (NamedBody703_68, 703, 3))

def NamedBody703_70 : StackLang.HolProg 64 :=
.seq NamedBody703_54 NamedBody703_69

def NamedBody703_71 : StackLang.HolProg 64 :=
.seq NamedBody703_53 NamedBody703_70

def NamedBody703_72 : StackLang.HolProg 64 :=
.seq NamedBody703_52 NamedBody703_71

def NamedBody703_73 : StackLang.HolProg 64 :=
.seq NamedBody703_23 NamedBody703_72

def NamedBody703_74 : StackLang.HolProg 64 :=
.seq NamedBody703_20 NamedBody703_73

def NamedBody703_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 34000#64)

def NamedBody703_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody703_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody703_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 45000#64)

def NamedBody703_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody703_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody703_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_85 : StackLang.HolProg 64 :=
.seq NamedBody703_83 NamedBody703_84

def NamedBody703_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3147#64)

def NamedBody703_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_89 : StackLang.HolProg 64 :=
.seq NamedBody703_87 NamedBody703_88

def NamedBody703_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody703_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody703_93 : StackLang.HolProg 64 :=
.seq NamedBody703_91 NamedBody703_92

def NamedBody703_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody703_93 NamedBody703_94

def NamedBody703_96 : StackLang.HolProg 64 :=
.seq NamedBody703_90 NamedBody703_95

def NamedBody703_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody703_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 5

def NamedBody703_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody703_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody703_106 : StackLang.HolProg 64 :=
.seq NamedBody703_104 NamedBody703_105

def NamedBody703_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody703_108 : StackLang.HolProg 64 :=
.seq NamedBody703_106 NamedBody703_107

def NamedBody703_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_110 : StackLang.HolProg 64 :=
.seq NamedBody703_108 NamedBody703_109

def NamedBody703_111 : StackLang.HolProg 64 :=
.seq NamedBody703_103 NamedBody703_110

def NamedBody703_112 : StackLang.HolProg 64 :=
.seq NamedBody703_102 NamedBody703_111

def NamedBody703_113 : StackLang.HolProg 64 :=
.seq NamedBody703_101 NamedBody703_112

def NamedBody703_114 : StackLang.HolProg 64 :=
.seq NamedBody703_100 NamedBody703_113

def NamedBody703_115 : StackLang.HolProg 64 :=
.seq NamedBody703_99 NamedBody703_114

def NamedBody703_116 : StackLang.HolProg 64 :=
.seq NamedBody703_98 NamedBody703_115

def NamedBody703_117 : StackLang.HolProg 64 :=
.seq NamedBody703_97 NamedBody703_116

def NamedBody703_118 : StackLang.HolProg 64 :=
.seq NamedBody703_96 NamedBody703_117

def NamedBody703_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody703_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_128 : StackLang.HolProg 64 :=
.seq NamedBody703_126 NamedBody703_127

def NamedBody703_129 : StackLang.HolProg 64 :=
.seq NamedBody703_125 NamedBody703_128

def NamedBody703_130 : StackLang.HolProg 64 :=
.seq NamedBody703_124 NamedBody703_129

def NamedBody703_131 : StackLang.HolProg 64 :=
.seq NamedBody703_123 NamedBody703_130

def NamedBody703_132 : StackLang.HolProg 64 :=
.seq NamedBody703_122 NamedBody703_131

def NamedBody703_133 : StackLang.HolProg 64 :=
.seq NamedBody703_121 NamedBody703_132

def NamedBody703_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody703_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_137 : StackLang.HolProg 64 :=
.seq NamedBody703_135 NamedBody703_136

def NamedBody703_138 : StackLang.HolProg 64 :=
.seq NamedBody703_134 NamedBody703_137

def NamedBody703_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody703_140 : StackLang.HolProg 64 :=
.seq NamedBody703_138 NamedBody703_139

def NamedBody703_141 : StackLang.HolProg 64 :=
.call (some (NamedBody703_133, 1, 703, 4)) (Sum.inl 470) (some (NamedBody703_140, 703, 5))

def NamedBody703_142 : StackLang.HolProg 64 :=
.seq NamedBody703_120 NamedBody703_141

def NamedBody703_143 : StackLang.HolProg 64 :=
.seq NamedBody703_119 NamedBody703_142

def NamedBody703_144 : StackLang.HolProg 64 :=
.seq NamedBody703_118 NamedBody703_143

def NamedBody703_145 : StackLang.HolProg 64 :=
.seq NamedBody703_89 NamedBody703_144

def NamedBody703_146 : StackLang.HolProg 64 :=
.seq NamedBody703_86 NamedBody703_145

def NamedBody703_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody703_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody703_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody703_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody703_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_156 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody703_157 : StackLang.HolProg 64 :=
.seq NamedBody703_155 NamedBody703_156

def NamedBody703_158 : StackLang.HolProg 64 :=
.seq NamedBody703_154 NamedBody703_157

def NamedBody703_159 : StackLang.HolProg 64 :=
.seq NamedBody703_153 NamedBody703_158

def NamedBody703_160 : StackLang.HolProg 64 :=
.seq NamedBody703_152 NamedBody703_159

def NamedBody703_161 : StackLang.HolProg 64 :=
.seq NamedBody703_151 NamedBody703_160

def NamedBody703_162 : StackLang.HolProg 64 :=
.seq NamedBody703_150 NamedBody703_161

def NamedBody703_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody703_162 NamedBody703_163

def NamedBody703_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody703_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3148#64)

def NamedBody703_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_173 : StackLang.HolProg 64 :=
.seq NamedBody703_171 NamedBody703_172

def NamedBody703_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody703_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody703_177 : StackLang.HolProg 64 :=
.seq NamedBody703_175 NamedBody703_176

def NamedBody703_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody703_177 NamedBody703_178

def NamedBody703_180 : StackLang.HolProg 64 :=
.seq NamedBody703_174 NamedBody703_179

def NamedBody703_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody703_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 7

def NamedBody703_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody703_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody703_190 : StackLang.HolProg 64 :=
.seq NamedBody703_188 NamedBody703_189

def NamedBody703_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody703_192 : StackLang.HolProg 64 :=
.seq NamedBody703_190 NamedBody703_191

def NamedBody703_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_194 : StackLang.HolProg 64 :=
.seq NamedBody703_192 NamedBody703_193

def NamedBody703_195 : StackLang.HolProg 64 :=
.seq NamedBody703_187 NamedBody703_194

def NamedBody703_196 : StackLang.HolProg 64 :=
.seq NamedBody703_186 NamedBody703_195

def NamedBody703_197 : StackLang.HolProg 64 :=
.seq NamedBody703_185 NamedBody703_196

def NamedBody703_198 : StackLang.HolProg 64 :=
.seq NamedBody703_184 NamedBody703_197

def NamedBody703_199 : StackLang.HolProg 64 :=
.seq NamedBody703_183 NamedBody703_198

def NamedBody703_200 : StackLang.HolProg 64 :=
.seq NamedBody703_182 NamedBody703_199

def NamedBody703_201 : StackLang.HolProg 64 :=
.seq NamedBody703_181 NamedBody703_200

def NamedBody703_202 : StackLang.HolProg 64 :=
.seq NamedBody703_180 NamedBody703_201

def NamedBody703_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody703_210 : StackLang.HolProg 64 :=
.seq NamedBody703_208 NamedBody703_209

def NamedBody703_211 : StackLang.HolProg 64 :=
.seq NamedBody703_207 NamedBody703_210

def NamedBody703_212 : StackLang.HolProg 64 :=
.seq NamedBody703_206 NamedBody703_211

def NamedBody703_213 : StackLang.HolProg 64 :=
.seq NamedBody703_205 NamedBody703_212

def NamedBody703_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_215 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody703_216 : StackLang.HolProg 64 :=
.seq NamedBody703_214 NamedBody703_215

def NamedBody703_217 : StackLang.HolProg 64 :=
.call (some (NamedBody703_213, 1, 703, 6)) (Sum.inl 700) (some (NamedBody703_216, 703, 7))

def NamedBody703_218 : StackLang.HolProg 64 :=
.seq NamedBody703_204 NamedBody703_217

def NamedBody703_219 : StackLang.HolProg 64 :=
.seq NamedBody703_203 NamedBody703_218

def NamedBody703_220 : StackLang.HolProg 64 :=
.seq NamedBody703_202 NamedBody703_219

def NamedBody703_221 : StackLang.HolProg 64 :=
.seq NamedBody703_173 NamedBody703_220

def NamedBody703_222 : StackLang.HolProg 64 :=
.seq NamedBody703_170 NamedBody703_221

def NamedBody703_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody703_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody703_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody703_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody703_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody703_233 : StackLang.HolProg 64 :=
.seq NamedBody703_231 NamedBody703_232

def NamedBody703_234 : StackLang.HolProg 64 :=
.seq NamedBody703_230 NamedBody703_233

def NamedBody703_235 : StackLang.HolProg 64 :=
.seq NamedBody703_229 NamedBody703_234

def NamedBody703_236 : StackLang.HolProg 64 :=
.seq NamedBody703_228 NamedBody703_235

def NamedBody703_237 : StackLang.HolProg 64 :=
.seq NamedBody703_227 NamedBody703_236

def NamedBody703_238 : StackLang.HolProg 64 :=
.seq NamedBody703_226 NamedBody703_237

def NamedBody703_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody703_238 NamedBody703_239

def NamedBody703_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody703_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3149#64)

def NamedBody703_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_248 : StackLang.HolProg 64 :=
.seq NamedBody703_246 NamedBody703_247

def NamedBody703_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody703_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody703_252 : StackLang.HolProg 64 :=
.seq NamedBody703_250 NamedBody703_251

def NamedBody703_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody703_252 NamedBody703_253

def NamedBody703_255 : StackLang.HolProg 64 :=
.seq NamedBody703_249 NamedBody703_254

def NamedBody703_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody703_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 9

def NamedBody703_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody703_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody703_265 : StackLang.HolProg 64 :=
.seq NamedBody703_263 NamedBody703_264

def NamedBody703_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody703_267 : StackLang.HolProg 64 :=
.seq NamedBody703_265 NamedBody703_266

def NamedBody703_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_269 : StackLang.HolProg 64 :=
.seq NamedBody703_267 NamedBody703_268

def NamedBody703_270 : StackLang.HolProg 64 :=
.seq NamedBody703_262 NamedBody703_269

def NamedBody703_271 : StackLang.HolProg 64 :=
.seq NamedBody703_261 NamedBody703_270

def NamedBody703_272 : StackLang.HolProg 64 :=
.seq NamedBody703_260 NamedBody703_271

def NamedBody703_273 : StackLang.HolProg 64 :=
.seq NamedBody703_259 NamedBody703_272

def NamedBody703_274 : StackLang.HolProg 64 :=
.seq NamedBody703_258 NamedBody703_273

def NamedBody703_275 : StackLang.HolProg 64 :=
.seq NamedBody703_257 NamedBody703_274

def NamedBody703_276 : StackLang.HolProg 64 :=
.seq NamedBody703_256 NamedBody703_275

def NamedBody703_277 : StackLang.HolProg 64 :=
.seq NamedBody703_255 NamedBody703_276

def NamedBody703_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody703_285 : StackLang.HolProg 64 :=
.seq NamedBody703_283 NamedBody703_284

def NamedBody703_286 : StackLang.HolProg 64 :=
.seq NamedBody703_282 NamedBody703_285

def NamedBody703_287 : StackLang.HolProg 64 :=
.seq NamedBody703_281 NamedBody703_286

def NamedBody703_288 : StackLang.HolProg 64 :=
.seq NamedBody703_280 NamedBody703_287

def NamedBody703_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody703_291 : StackLang.HolProg 64 :=
.seq NamedBody703_289 NamedBody703_290

def NamedBody703_292 : StackLang.HolProg 64 :=
.call (some (NamedBody703_288, 1, 703, 8)) (Sum.inl 68) (some (NamedBody703_291, 703, 9))

def NamedBody703_293 : StackLang.HolProg 64 :=
.seq NamedBody703_279 NamedBody703_292

def NamedBody703_294 : StackLang.HolProg 64 :=
.seq NamedBody703_278 NamedBody703_293

def NamedBody703_295 : StackLang.HolProg 64 :=
.seq NamedBody703_277 NamedBody703_294

def NamedBody703_296 : StackLang.HolProg 64 :=
.seq NamedBody703_248 NamedBody703_295

def NamedBody703_297 : StackLang.HolProg 64 :=
.seq NamedBody703_245 NamedBody703_296

def NamedBody703_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody703_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody703_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody703_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3150#64)

def NamedBody703_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_305 : StackLang.HolProg 64 :=
.seq NamedBody703_303 NamedBody703_304

def NamedBody703_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody703_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody703_309 : StackLang.HolProg 64 :=
.seq NamedBody703_307 NamedBody703_308

def NamedBody703_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_311 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody703_309 NamedBody703_310

def NamedBody703_312 : StackLang.HolProg 64 :=
.seq NamedBody703_306 NamedBody703_311

def NamedBody703_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody703_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody703_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 11

def NamedBody703_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody703_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody703_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody703_322 : StackLang.HolProg 64 :=
.seq NamedBody703_320 NamedBody703_321

def NamedBody703_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody703_324 : StackLang.HolProg 64 :=
.seq NamedBody703_322 NamedBody703_323

def NamedBody703_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_326 : StackLang.HolProg 64 :=
.seq NamedBody703_324 NamedBody703_325

def NamedBody703_327 : StackLang.HolProg 64 :=
.seq NamedBody703_319 NamedBody703_326

def NamedBody703_328 : StackLang.HolProg 64 :=
.seq NamedBody703_318 NamedBody703_327

def NamedBody703_329 : StackLang.HolProg 64 :=
.seq NamedBody703_317 NamedBody703_328

def NamedBody703_330 : StackLang.HolProg 64 :=
.seq NamedBody703_316 NamedBody703_329

def NamedBody703_331 : StackLang.HolProg 64 :=
.seq NamedBody703_315 NamedBody703_330

def NamedBody703_332 : StackLang.HolProg 64 :=
.seq NamedBody703_314 NamedBody703_331

def NamedBody703_333 : StackLang.HolProg 64 :=
.seq NamedBody703_313 NamedBody703_332

def NamedBody703_334 : StackLang.HolProg 64 :=
.seq NamedBody703_312 NamedBody703_333

def NamedBody703_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody703_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody703_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody703_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody703_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_344 : StackLang.HolProg 64 :=
.seq NamedBody703_342 NamedBody703_343

def NamedBody703_345 : StackLang.HolProg 64 :=
.seq NamedBody703_341 NamedBody703_344

def NamedBody703_346 : StackLang.HolProg 64 :=
.seq NamedBody703_340 NamedBody703_345

def NamedBody703_347 : StackLang.HolProg 64 :=
.seq NamedBody703_339 NamedBody703_346

def NamedBody703_348 : StackLang.HolProg 64 :=
.seq NamedBody703_338 NamedBody703_347

def NamedBody703_349 : StackLang.HolProg 64 :=
.seq NamedBody703_337 NamedBody703_348

def NamedBody703_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody703_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody703_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody703_353 : StackLang.HolProg 64 :=
.seq NamedBody703_351 NamedBody703_352

def NamedBody703_354 : StackLang.HolProg 64 :=
.seq NamedBody703_350 NamedBody703_353

def NamedBody703_355 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody703_356 : StackLang.HolProg 64 :=
.seq NamedBody703_354 NamedBody703_355

def NamedBody703_357 : StackLang.HolProg 64 :=
.call (some (NamedBody703_349, 1, 703, 10)) (Sum.inl 78) (some (NamedBody703_356, 703, 11))

def NamedBody703_358 : StackLang.HolProg 64 :=
.seq NamedBody703_336 NamedBody703_357

def NamedBody703_359 : StackLang.HolProg 64 :=
.seq NamedBody703_335 NamedBody703_358

def NamedBody703_360 : StackLang.HolProg 64 :=
.seq NamedBody703_334 NamedBody703_359

def NamedBody703_361 : StackLang.HolProg 64 :=
.seq NamedBody703_305 NamedBody703_360

def NamedBody703_362 : StackLang.HolProg 64 :=
.seq NamedBody703_302 NamedBody703_361

def NamedBody703_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody703_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def NamedBody703_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody703_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody703_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody703_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody703_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody703_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody703_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody703_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody703_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody703_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody703_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody703_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody703_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody703_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody703_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody703_385 : StackLang.HolProg 64 :=
.seq NamedBody703_383 NamedBody703_384

def NamedBody703_386 : StackLang.HolProg 64 :=
.seq NamedBody703_382 NamedBody703_385

def NamedBody703_387 : StackLang.HolProg 64 :=
.seq NamedBody703_381 NamedBody703_386

def NamedBody703_388 : StackLang.HolProg 64 :=
.seq NamedBody703_380 NamedBody703_387

def NamedBody703_389 : StackLang.HolProg 64 :=
.seq NamedBody703_379 NamedBody703_388

def NamedBody703_390 : StackLang.HolProg 64 :=
.seq NamedBody703_378 NamedBody703_389

def NamedBody703_391 : StackLang.HolProg 64 :=
.seq NamedBody703_377 NamedBody703_390

def NamedBody703_392 : StackLang.HolProg 64 :=
.seq NamedBody703_376 NamedBody703_391

def NamedBody703_393 : StackLang.HolProg 64 :=
.seq NamedBody703_375 NamedBody703_392

def NamedBody703_394 : StackLang.HolProg 64 :=
.seq NamedBody703_374 NamedBody703_393

def NamedBody703_395 : StackLang.HolProg 64 :=
.seq NamedBody703_373 NamedBody703_394

def NamedBody703_396 : StackLang.HolProg 64 :=
.seq NamedBody703_372 NamedBody703_395

def NamedBody703_397 : StackLang.HolProg 64 :=
.seq NamedBody703_371 NamedBody703_396

def NamedBody703_398 : StackLang.HolProg 64 :=
.seq NamedBody703_370 NamedBody703_397

def NamedBody703_399 : StackLang.HolProg 64 :=
.seq NamedBody703_369 NamedBody703_398

def NamedBody703_400 : StackLang.HolProg 64 :=
.seq NamedBody703_368 NamedBody703_399

def NamedBody703_401 : StackLang.HolProg 64 :=
.seq NamedBody703_367 NamedBody703_400

def NamedBody703_402 : StackLang.HolProg 64 :=
.seq NamedBody703_366 NamedBody703_401

def NamedBody703_403 : StackLang.HolProg 64 :=
.seq NamedBody703_365 NamedBody703_402

def NamedBody703_404 : StackLang.HolProg 64 :=
.seq NamedBody703_364 NamedBody703_403

def NamedBody703_405 : StackLang.HolProg 64 :=
.seq NamedBody703_363 NamedBody703_404

def NamedBody703_406 : StackLang.HolProg 64 :=
.seq NamedBody703_362 NamedBody703_405

def NamedBody703_407 : StackLang.HolProg 64 :=
.seq NamedBody703_301 NamedBody703_406

def NamedBody703_408 : StackLang.HolProg 64 :=
.seq NamedBody703_300 NamedBody703_407

def NamedBody703_409 : StackLang.HolProg 64 :=
.seq NamedBody703_299 NamedBody703_408

def NamedBody703_410 : StackLang.HolProg 64 :=
.seq NamedBody703_298 NamedBody703_409

def NamedBody703_411 : StackLang.HolProg 64 :=
.seq NamedBody703_297 NamedBody703_410

def NamedBody703_412 : StackLang.HolProg 64 :=
.seq NamedBody703_244 NamedBody703_411

def NamedBody703_413 : StackLang.HolProg 64 :=
.seq NamedBody703_243 NamedBody703_412

def NamedBody703_414 : StackLang.HolProg 64 :=
.seq NamedBody703_242 NamedBody703_413

def NamedBody703_415 : StackLang.HolProg 64 :=
.seq NamedBody703_241 NamedBody703_414

def NamedBody703_416 : StackLang.HolProg 64 :=
.seq NamedBody703_240 NamedBody703_415

def NamedBody703_417 : StackLang.HolProg 64 :=
.seq NamedBody703_225 NamedBody703_416

def NamedBody703_418 : StackLang.HolProg 64 :=
.seq NamedBody703_224 NamedBody703_417

def NamedBody703_419 : StackLang.HolProg 64 :=
.seq NamedBody703_223 NamedBody703_418

def NamedBody703_420 : StackLang.HolProg 64 :=
.seq NamedBody703_222 NamedBody703_419

def NamedBody703_421 : StackLang.HolProg 64 :=
.seq NamedBody703_169 NamedBody703_420

def NamedBody703_422 : StackLang.HolProg 64 :=
.seq NamedBody703_168 NamedBody703_421

def NamedBody703_423 : StackLang.HolProg 64 :=
.seq NamedBody703_167 NamedBody703_422

def NamedBody703_424 : StackLang.HolProg 64 :=
.seq NamedBody703_166 NamedBody703_423

def NamedBody703_425 : StackLang.HolProg 64 :=
.seq NamedBody703_165 NamedBody703_424

def NamedBody703_426 : StackLang.HolProg 64 :=
.seq NamedBody703_164 NamedBody703_425

def NamedBody703_427 : StackLang.HolProg 64 :=
.seq NamedBody703_149 NamedBody703_426

def NamedBody703_428 : StackLang.HolProg 64 :=
.seq NamedBody703_148 NamedBody703_427

def NamedBody703_429 : StackLang.HolProg 64 :=
.seq NamedBody703_147 NamedBody703_428

def NamedBody703_430 : StackLang.HolProg 64 :=
.seq NamedBody703_146 NamedBody703_429

def NamedBody703_431 : StackLang.HolProg 64 :=
.seq NamedBody703_85 NamedBody703_430

def NamedBody703_432 : StackLang.HolProg 64 :=
.seq NamedBody703_82 NamedBody703_431

def NamedBody703_433 : StackLang.HolProg 64 :=
.seq NamedBody703_81 NamedBody703_432

def NamedBody703_434 : StackLang.HolProg 64 :=
.seq NamedBody703_80 NamedBody703_433

def NamedBody703_435 : StackLang.HolProg 64 :=
.seq NamedBody703_79 NamedBody703_434

def NamedBody703_436 : StackLang.HolProg 64 :=
.seq NamedBody703_78 NamedBody703_435

def NamedBody703_437 : StackLang.HolProg 64 :=
.seq NamedBody703_77 NamedBody703_436

def NamedBody703_438 : StackLang.HolProg 64 :=
.seq NamedBody703_76 NamedBody703_437

def NamedBody703_439 : StackLang.HolProg 64 :=
.seq NamedBody703_75 NamedBody703_438

def NamedBody703_440 : StackLang.HolProg 64 :=
.seq NamedBody703_74 NamedBody703_439

def NamedBody703_441 : StackLang.HolProg 64 :=
.seq NamedBody703_19 NamedBody703_440

def NamedBody703_442 : StackLang.HolProg 64 :=
.seq NamedBody703_16 NamedBody703_441

def NamedBody703_443 : StackLang.HolProg 64 :=
.seq NamedBody703_15 NamedBody703_442

def NamedBody703_444 : StackLang.HolProg 64 :=
.seq NamedBody703_14 NamedBody703_443

def NamedBody703_445 : StackLang.HolProg 64 :=
.seq NamedBody703_13 NamedBody703_444

def NamedBody703_446 : StackLang.HolProg 64 :=
.seq NamedBody703_12 NamedBody703_445

def NamedBody703_447 : StackLang.HolProg 64 :=
.seq NamedBody703_11 NamedBody703_446

def NamedBody703_448 : StackLang.HolProg 64 :=
.seq NamedBody703_10 NamedBody703_447

def NamedBody703_449 : StackLang.HolProg 64 :=
.seq NamedBody703_9 NamedBody703_448

def NamedBody703_450 : StackLang.HolProg 64 :=
.seq NamedBody703_8 NamedBody703_449

def NamedBody703_451 : StackLang.HolProg 64 :=
.seq NamedBody703_7 NamedBody703_450

def NamedBody703_452 : StackLang.HolProg 64 :=
.seq NamedBody703_6 NamedBody703_451

def Named703 : Nat × StackLang.HolProg 64 := (703, NamedBody703_452)
theorem Named703_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed703 = Named703 := by
  kernel_rfl
#print axioms Named703_eq
end InitECandidate.Proofs.BackendStages
