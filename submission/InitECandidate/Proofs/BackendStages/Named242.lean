import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed242
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody242_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody242_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody242_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody242_3 : StackLang.HolProg 64 :=
.seq NamedBody242_1 NamedBody242_2

def NamedBody242_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody242_3 NamedBody242_4

def NamedBody242_6 : StackLang.HolProg 64 :=
.seq NamedBody242_0 NamedBody242_5

def NamedBody242_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody242_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody242_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody242_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody242_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody242_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody242_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_17 : StackLang.HolProg 64 :=
.seq NamedBody242_15 NamedBody242_16

def NamedBody242_18 : StackLang.HolProg 64 :=
.seq NamedBody242_14 NamedBody242_17

def NamedBody242_19 : StackLang.HolProg 64 :=
.seq NamedBody242_13 NamedBody242_18

def NamedBody242_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 470#64)

def NamedBody242_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_23 : StackLang.HolProg 64 :=
.seq NamedBody242_21 NamedBody242_22

def NamedBody242_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody242_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody242_27 : StackLang.HolProg 64 :=
.seq NamedBody242_25 NamedBody242_26

def NamedBody242_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody242_27 NamedBody242_28

def NamedBody242_30 : StackLang.HolProg 64 :=
.seq NamedBody242_24 NamedBody242_29

def NamedBody242_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody242_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 3

def NamedBody242_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody242_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody242_40 : StackLang.HolProg 64 :=
.seq NamedBody242_38 NamedBody242_39

def NamedBody242_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody242_42 : StackLang.HolProg 64 :=
.seq NamedBody242_40 NamedBody242_41

def NamedBody242_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_44 : StackLang.HolProg 64 :=
.seq NamedBody242_42 NamedBody242_43

def NamedBody242_45 : StackLang.HolProg 64 :=
.seq NamedBody242_37 NamedBody242_44

def NamedBody242_46 : StackLang.HolProg 64 :=
.seq NamedBody242_36 NamedBody242_45

def NamedBody242_47 : StackLang.HolProg 64 :=
.seq NamedBody242_35 NamedBody242_46

def NamedBody242_48 : StackLang.HolProg 64 :=
.seq NamedBody242_34 NamedBody242_47

def NamedBody242_49 : StackLang.HolProg 64 :=
.seq NamedBody242_33 NamedBody242_48

def NamedBody242_50 : StackLang.HolProg 64 :=
.seq NamedBody242_32 NamedBody242_49

def NamedBody242_51 : StackLang.HolProg 64 :=
.seq NamedBody242_31 NamedBody242_50

def NamedBody242_52 : StackLang.HolProg 64 :=
.seq NamedBody242_30 NamedBody242_51

def NamedBody242_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody242_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_62 : StackLang.HolProg 64 :=
.seq NamedBody242_60 NamedBody242_61

def NamedBody242_63 : StackLang.HolProg 64 :=
.seq NamedBody242_59 NamedBody242_62

def NamedBody242_64 : StackLang.HolProg 64 :=
.seq NamedBody242_58 NamedBody242_63

def NamedBody242_65 : StackLang.HolProg 64 :=
.seq NamedBody242_57 NamedBody242_64

def NamedBody242_66 : StackLang.HolProg 64 :=
.seq NamedBody242_56 NamedBody242_65

def NamedBody242_67 : StackLang.HolProg 64 :=
.seq NamedBody242_55 NamedBody242_66

def NamedBody242_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody242_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_71 : StackLang.HolProg 64 :=
.seq NamedBody242_69 NamedBody242_70

def NamedBody242_72 : StackLang.HolProg 64 :=
.seq NamedBody242_68 NamedBody242_71

def NamedBody242_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody242_74 : StackLang.HolProg 64 :=
.seq NamedBody242_72 NamedBody242_73

def NamedBody242_75 : StackLang.HolProg 64 :=
.call (some (NamedBody242_67, 1, 242, 2)) (Sum.inl 78) (some (NamedBody242_74, 242, 3))

def NamedBody242_76 : StackLang.HolProg 64 :=
.seq NamedBody242_54 NamedBody242_75

def NamedBody242_77 : StackLang.HolProg 64 :=
.seq NamedBody242_53 NamedBody242_76

def NamedBody242_78 : StackLang.HolProg 64 :=
.seq NamedBody242_52 NamedBody242_77

def NamedBody242_79 : StackLang.HolProg 64 :=
.seq NamedBody242_23 NamedBody242_78

def NamedBody242_80 : StackLang.HolProg 64 :=
.seq NamedBody242_20 NamedBody242_79

def NamedBody242_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody242_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 471#64)

def NamedBody242_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_86 : StackLang.HolProg 64 :=
.seq NamedBody242_84 NamedBody242_85

def NamedBody242_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody242_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody242_90 : StackLang.HolProg 64 :=
.seq NamedBody242_88 NamedBody242_89

def NamedBody242_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody242_90 NamedBody242_91

def NamedBody242_93 : StackLang.HolProg 64 :=
.seq NamedBody242_87 NamedBody242_92

def NamedBody242_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody242_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 5

def NamedBody242_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody242_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody242_103 : StackLang.HolProg 64 :=
.seq NamedBody242_101 NamedBody242_102

def NamedBody242_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody242_105 : StackLang.HolProg 64 :=
.seq NamedBody242_103 NamedBody242_104

def NamedBody242_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_107 : StackLang.HolProg 64 :=
.seq NamedBody242_105 NamedBody242_106

def NamedBody242_108 : StackLang.HolProg 64 :=
.seq NamedBody242_100 NamedBody242_107

def NamedBody242_109 : StackLang.HolProg 64 :=
.seq NamedBody242_99 NamedBody242_108

def NamedBody242_110 : StackLang.HolProg 64 :=
.seq NamedBody242_98 NamedBody242_109

def NamedBody242_111 : StackLang.HolProg 64 :=
.seq NamedBody242_97 NamedBody242_110

def NamedBody242_112 : StackLang.HolProg 64 :=
.seq NamedBody242_96 NamedBody242_111

def NamedBody242_113 : StackLang.HolProg 64 :=
.seq NamedBody242_95 NamedBody242_112

def NamedBody242_114 : StackLang.HolProg 64 :=
.seq NamedBody242_94 NamedBody242_113

def NamedBody242_115 : StackLang.HolProg 64 :=
.seq NamedBody242_93 NamedBody242_114

def NamedBody242_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_123 : StackLang.HolProg 64 :=
.seq NamedBody242_121 NamedBody242_122

def NamedBody242_124 : StackLang.HolProg 64 :=
.seq NamedBody242_120 NamedBody242_123

def NamedBody242_125 : StackLang.HolProg 64 :=
.seq NamedBody242_119 NamedBody242_124

def NamedBody242_126 : StackLang.HolProg 64 :=
.seq NamedBody242_118 NamedBody242_125

def NamedBody242_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody242_129 : StackLang.HolProg 64 :=
.seq NamedBody242_127 NamedBody242_128

def NamedBody242_130 : StackLang.HolProg 64 :=
.call (some (NamedBody242_126, 1, 242, 4)) (Sum.inl 77) (some (NamedBody242_129, 242, 5))

def NamedBody242_131 : StackLang.HolProg 64 :=
.seq NamedBody242_117 NamedBody242_130

def NamedBody242_132 : StackLang.HolProg 64 :=
.seq NamedBody242_116 NamedBody242_131

def NamedBody242_133 : StackLang.HolProg 64 :=
.seq NamedBody242_115 NamedBody242_132

def NamedBody242_134 : StackLang.HolProg 64 :=
.seq NamedBody242_86 NamedBody242_133

def NamedBody242_135 : StackLang.HolProg 64 :=
.seq NamedBody242_83 NamedBody242_134

def NamedBody242_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody242_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody242_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody242_141 : StackLang.HolProg 64 :=
.seq NamedBody242_139 NamedBody242_140

def NamedBody242_142 : StackLang.HolProg 64 :=
.seq NamedBody242_138 NamedBody242_141

def NamedBody242_143 : StackLang.HolProg 64 :=
.seq NamedBody242_137 NamedBody242_142

def NamedBody242_144 : StackLang.HolProg 64 :=
.seq NamedBody242_136 NamedBody242_143

def NamedBody242_145 : StackLang.HolProg 64 :=
.seq NamedBody242_135 NamedBody242_144

def NamedBody242_146 : StackLang.HolProg 64 :=
.seq NamedBody242_82 NamedBody242_145

def NamedBody242_147 : StackLang.HolProg 64 :=
.seq NamedBody242_81 NamedBody242_146

def NamedBody242_148 : StackLang.HolProg 64 :=
.seq NamedBody242_80 NamedBody242_147

def NamedBody242_149 : StackLang.HolProg 64 :=
.seq NamedBody242_19 NamedBody242_148

def NamedBody242_150 : StackLang.HolProg 64 :=
.seq NamedBody242_12 NamedBody242_149

def NamedBody242_151 : StackLang.HolProg 64 :=
.seq NamedBody242_11 NamedBody242_150

def NamedBody242_152 : StackLang.HolProg 64 :=
.seq NamedBody242_10 NamedBody242_151

def NamedBody242_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody242_157 : StackLang.HolProg 64 :=
.seq NamedBody242_155 NamedBody242_156

def NamedBody242_158 : StackLang.HolProg 64 :=
.seq NamedBody242_154 NamedBody242_157

def NamedBody242_159 : StackLang.HolProg 64 :=
.seq NamedBody242_153 NamedBody242_158

def NamedBody242_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody242_152 NamedBody242_159

def NamedBody242_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 472#64)

def NamedBody242_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_167 : StackLang.HolProg 64 :=
.seq NamedBody242_165 NamedBody242_166

def NamedBody242_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody242_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody242_171 : StackLang.HolProg 64 :=
.seq NamedBody242_169 NamedBody242_170

def NamedBody242_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody242_171 NamedBody242_172

def NamedBody242_174 : StackLang.HolProg 64 :=
.seq NamedBody242_168 NamedBody242_173

def NamedBody242_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody242_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 7

def NamedBody242_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody242_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody242_184 : StackLang.HolProg 64 :=
.seq NamedBody242_182 NamedBody242_183

def NamedBody242_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody242_186 : StackLang.HolProg 64 :=
.seq NamedBody242_184 NamedBody242_185

def NamedBody242_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_188 : StackLang.HolProg 64 :=
.seq NamedBody242_186 NamedBody242_187

def NamedBody242_189 : StackLang.HolProg 64 :=
.seq NamedBody242_181 NamedBody242_188

def NamedBody242_190 : StackLang.HolProg 64 :=
.seq NamedBody242_180 NamedBody242_189

def NamedBody242_191 : StackLang.HolProg 64 :=
.seq NamedBody242_179 NamedBody242_190

def NamedBody242_192 : StackLang.HolProg 64 :=
.seq NamedBody242_178 NamedBody242_191

def NamedBody242_193 : StackLang.HolProg 64 :=
.seq NamedBody242_177 NamedBody242_192

def NamedBody242_194 : StackLang.HolProg 64 :=
.seq NamedBody242_176 NamedBody242_193

def NamedBody242_195 : StackLang.HolProg 64 :=
.seq NamedBody242_175 NamedBody242_194

def NamedBody242_196 : StackLang.HolProg 64 :=
.seq NamedBody242_174 NamedBody242_195

def NamedBody242_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody242_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_208 : StackLang.HolProg 64 :=
.seq NamedBody242_206 NamedBody242_207

def NamedBody242_209 : StackLang.HolProg 64 :=
.seq NamedBody242_205 NamedBody242_208

def NamedBody242_210 : StackLang.HolProg 64 :=
.seq NamedBody242_204 NamedBody242_209

def NamedBody242_211 : StackLang.HolProg 64 :=
.seq NamedBody242_203 NamedBody242_210

def NamedBody242_212 : StackLang.HolProg 64 :=
.seq NamedBody242_202 NamedBody242_211

def NamedBody242_213 : StackLang.HolProg 64 :=
.seq NamedBody242_201 NamedBody242_212

def NamedBody242_214 : StackLang.HolProg 64 :=
.seq NamedBody242_200 NamedBody242_213

def NamedBody242_215 : StackLang.HolProg 64 :=
.seq NamedBody242_199 NamedBody242_214

def NamedBody242_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_220 : StackLang.HolProg 64 :=
.seq NamedBody242_218 NamedBody242_219

def NamedBody242_221 : StackLang.HolProg 64 :=
.seq NamedBody242_217 NamedBody242_220

def NamedBody242_222 : StackLang.HolProg 64 :=
.seq NamedBody242_216 NamedBody242_221

def NamedBody242_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody242_224 : StackLang.HolProg 64 :=
.seq NamedBody242_222 NamedBody242_223

def NamedBody242_225 : StackLang.HolProg 64 :=
.call (some (NamedBody242_215, 1, 242, 6)) (Sum.inl 69) (some (NamedBody242_224, 242, 7))

def NamedBody242_226 : StackLang.HolProg 64 :=
.seq NamedBody242_198 NamedBody242_225

def NamedBody242_227 : StackLang.HolProg 64 :=
.seq NamedBody242_197 NamedBody242_226

def NamedBody242_228 : StackLang.HolProg 64 :=
.seq NamedBody242_196 NamedBody242_227

def NamedBody242_229 : StackLang.HolProg 64 :=
.seq NamedBody242_167 NamedBody242_228

def NamedBody242_230 : StackLang.HolProg 64 :=
.seq NamedBody242_164 NamedBody242_229

def NamedBody242_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody242_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_234 : StackLang.HolProg 64 :=
.seq NamedBody242_232 NamedBody242_233

def NamedBody242_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 473#64)

def NamedBody242_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_238 : StackLang.HolProg 64 :=
.seq NamedBody242_236 NamedBody242_237

def NamedBody242_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody242_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody242_242 : StackLang.HolProg 64 :=
.seq NamedBody242_240 NamedBody242_241

def NamedBody242_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody242_242 NamedBody242_243

def NamedBody242_245 : StackLang.HolProg 64 :=
.seq NamedBody242_239 NamedBody242_244

def NamedBody242_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody242_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 9

def NamedBody242_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody242_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody242_255 : StackLang.HolProg 64 :=
.seq NamedBody242_253 NamedBody242_254

def NamedBody242_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody242_257 : StackLang.HolProg 64 :=
.seq NamedBody242_255 NamedBody242_256

def NamedBody242_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_259 : StackLang.HolProg 64 :=
.seq NamedBody242_257 NamedBody242_258

def NamedBody242_260 : StackLang.HolProg 64 :=
.seq NamedBody242_252 NamedBody242_259

def NamedBody242_261 : StackLang.HolProg 64 :=
.seq NamedBody242_251 NamedBody242_260

def NamedBody242_262 : StackLang.HolProg 64 :=
.seq NamedBody242_250 NamedBody242_261

def NamedBody242_263 : StackLang.HolProg 64 :=
.seq NamedBody242_249 NamedBody242_262

def NamedBody242_264 : StackLang.HolProg 64 :=
.seq NamedBody242_248 NamedBody242_263

def NamedBody242_265 : StackLang.HolProg 64 :=
.seq NamedBody242_247 NamedBody242_264

def NamedBody242_266 : StackLang.HolProg 64 :=
.seq NamedBody242_246 NamedBody242_265

def NamedBody242_267 : StackLang.HolProg 64 :=
.seq NamedBody242_245 NamedBody242_266

def NamedBody242_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody242_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_276 : StackLang.HolProg 64 :=
.seq NamedBody242_274 NamedBody242_275

def NamedBody242_277 : StackLang.HolProg 64 :=
.seq NamedBody242_273 NamedBody242_276

def NamedBody242_278 : StackLang.HolProg 64 :=
.seq NamedBody242_272 NamedBody242_277

def NamedBody242_279 : StackLang.HolProg 64 :=
.seq NamedBody242_271 NamedBody242_278

def NamedBody242_280 : StackLang.HolProg 64 :=
.seq NamedBody242_270 NamedBody242_279

def NamedBody242_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody242_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody242_283 : StackLang.HolProg 64 :=
.seq NamedBody242_281 NamedBody242_282

def NamedBody242_284 : StackLang.HolProg 64 :=
.call (some (NamedBody242_280, 1, 242, 8)) (Sum.inl 241) (some (NamedBody242_283, 242, 9))

def NamedBody242_285 : StackLang.HolProg 64 :=
.seq NamedBody242_269 NamedBody242_284

def NamedBody242_286 : StackLang.HolProg 64 :=
.seq NamedBody242_268 NamedBody242_285

def NamedBody242_287 : StackLang.HolProg 64 :=
.seq NamedBody242_267 NamedBody242_286

def NamedBody242_288 : StackLang.HolProg 64 :=
.seq NamedBody242_238 NamedBody242_287

def NamedBody242_289 : StackLang.HolProg 64 :=
.seq NamedBody242_235 NamedBody242_288

def NamedBody242_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody242_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody242_293 : StackLang.HolProg 64 :=
.seq NamedBody242_291 NamedBody242_292

def NamedBody242_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 474#64)

def NamedBody242_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_297 : StackLang.HolProg 64 :=
.seq NamedBody242_295 NamedBody242_296

def NamedBody242_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody242_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody242_301 : StackLang.HolProg 64 :=
.seq NamedBody242_299 NamedBody242_300

def NamedBody242_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_303 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody242_301 NamedBody242_302

def NamedBody242_304 : StackLang.HolProg 64 :=
.seq NamedBody242_298 NamedBody242_303

def NamedBody242_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody242_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 11

def NamedBody242_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody242_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody242_314 : StackLang.HolProg 64 :=
.seq NamedBody242_312 NamedBody242_313

def NamedBody242_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody242_316 : StackLang.HolProg 64 :=
.seq NamedBody242_314 NamedBody242_315

def NamedBody242_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_318 : StackLang.HolProg 64 :=
.seq NamedBody242_316 NamedBody242_317

def NamedBody242_319 : StackLang.HolProg 64 :=
.seq NamedBody242_311 NamedBody242_318

def NamedBody242_320 : StackLang.HolProg 64 :=
.seq NamedBody242_310 NamedBody242_319

def NamedBody242_321 : StackLang.HolProg 64 :=
.seq NamedBody242_309 NamedBody242_320

def NamedBody242_322 : StackLang.HolProg 64 :=
.seq NamedBody242_308 NamedBody242_321

def NamedBody242_323 : StackLang.HolProg 64 :=
.seq NamedBody242_307 NamedBody242_322

def NamedBody242_324 : StackLang.HolProg 64 :=
.seq NamedBody242_306 NamedBody242_323

def NamedBody242_325 : StackLang.HolProg 64 :=
.seq NamedBody242_305 NamedBody242_324

def NamedBody242_326 : StackLang.HolProg 64 :=
.seq NamedBody242_304 NamedBody242_325

def NamedBody242_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_334 : StackLang.HolProg 64 :=
.seq NamedBody242_332 NamedBody242_333

def NamedBody242_335 : StackLang.HolProg 64 :=
.seq NamedBody242_331 NamedBody242_334

def NamedBody242_336 : StackLang.HolProg 64 :=
.seq NamedBody242_330 NamedBody242_335

def NamedBody242_337 : StackLang.HolProg 64 :=
.seq NamedBody242_329 NamedBody242_336

def NamedBody242_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody242_339 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody242_340 : StackLang.HolProg 64 :=
.seq NamedBody242_338 NamedBody242_339

def NamedBody242_341 : StackLang.HolProg 64 :=
.call (some (NamedBody242_337, 1, 242, 10)) (Sum.inl 235) (some (NamedBody242_340, 242, 11))

def NamedBody242_342 : StackLang.HolProg 64 :=
.seq NamedBody242_328 NamedBody242_341

def NamedBody242_343 : StackLang.HolProg 64 :=
.seq NamedBody242_327 NamedBody242_342

def NamedBody242_344 : StackLang.HolProg 64 :=
.seq NamedBody242_326 NamedBody242_343

def NamedBody242_345 : StackLang.HolProg 64 :=
.seq NamedBody242_297 NamedBody242_344

def NamedBody242_346 : StackLang.HolProg 64 :=
.seq NamedBody242_294 NamedBody242_345

def NamedBody242_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody242_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 475#64)

def NamedBody242_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_352 : StackLang.HolProg 64 :=
.seq NamedBody242_350 NamedBody242_351

def NamedBody242_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody242_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody242_356 : StackLang.HolProg 64 :=
.seq NamedBody242_354 NamedBody242_355

def NamedBody242_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_358 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody242_356 NamedBody242_357

def NamedBody242_359 : StackLang.HolProg 64 :=
.seq NamedBody242_353 NamedBody242_358

def NamedBody242_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody242_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody242_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 13

def NamedBody242_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody242_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody242_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody242_369 : StackLang.HolProg 64 :=
.seq NamedBody242_367 NamedBody242_368

def NamedBody242_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody242_371 : StackLang.HolProg 64 :=
.seq NamedBody242_369 NamedBody242_370

def NamedBody242_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_373 : StackLang.HolProg 64 :=
.seq NamedBody242_371 NamedBody242_372

def NamedBody242_374 : StackLang.HolProg 64 :=
.seq NamedBody242_366 NamedBody242_373

def NamedBody242_375 : StackLang.HolProg 64 :=
.seq NamedBody242_365 NamedBody242_374

def NamedBody242_376 : StackLang.HolProg 64 :=
.seq NamedBody242_364 NamedBody242_375

def NamedBody242_377 : StackLang.HolProg 64 :=
.seq NamedBody242_363 NamedBody242_376

def NamedBody242_378 : StackLang.HolProg 64 :=
.seq NamedBody242_362 NamedBody242_377

def NamedBody242_379 : StackLang.HolProg 64 :=
.seq NamedBody242_361 NamedBody242_378

def NamedBody242_380 : StackLang.HolProg 64 :=
.seq NamedBody242_360 NamedBody242_379

def NamedBody242_381 : StackLang.HolProg 64 :=
.seq NamedBody242_359 NamedBody242_380

def NamedBody242_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody242_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody242_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody242_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody242_389 : StackLang.HolProg 64 :=
.seq NamedBody242_387 NamedBody242_388

def NamedBody242_390 : StackLang.HolProg 64 :=
.seq NamedBody242_386 NamedBody242_389

def NamedBody242_391 : StackLang.HolProg 64 :=
.seq NamedBody242_385 NamedBody242_390

def NamedBody242_392 : StackLang.HolProg 64 :=
.seq NamedBody242_384 NamedBody242_391

def NamedBody242_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody242_394 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody242_395 : StackLang.HolProg 64 :=
.seq NamedBody242_393 NamedBody242_394

def NamedBody242_396 : StackLang.HolProg 64 :=
.call (some (NamedBody242_392, 1, 242, 12)) (Sum.inl 70) (some (NamedBody242_395, 242, 13))

def NamedBody242_397 : StackLang.HolProg 64 :=
.seq NamedBody242_383 NamedBody242_396

def NamedBody242_398 : StackLang.HolProg 64 :=
.seq NamedBody242_382 NamedBody242_397

def NamedBody242_399 : StackLang.HolProg 64 :=
.seq NamedBody242_381 NamedBody242_398

def NamedBody242_400 : StackLang.HolProg 64 :=
.seq NamedBody242_352 NamedBody242_399

def NamedBody242_401 : StackLang.HolProg 64 :=
.seq NamedBody242_349 NamedBody242_400

def NamedBody242_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody242_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody242_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody242_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody242_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody242_407 : StackLang.HolProg 64 :=
.seq NamedBody242_405 NamedBody242_406

def NamedBody242_408 : StackLang.HolProg 64 :=
.seq NamedBody242_404 NamedBody242_407

def NamedBody242_409 : StackLang.HolProg 64 :=
.seq NamedBody242_403 NamedBody242_408

def NamedBody242_410 : StackLang.HolProg 64 :=
.seq NamedBody242_402 NamedBody242_409

def NamedBody242_411 : StackLang.HolProg 64 :=
.seq NamedBody242_401 NamedBody242_410

def NamedBody242_412 : StackLang.HolProg 64 :=
.seq NamedBody242_348 NamedBody242_411

def NamedBody242_413 : StackLang.HolProg 64 :=
.seq NamedBody242_347 NamedBody242_412

def NamedBody242_414 : StackLang.HolProg 64 :=
.seq NamedBody242_346 NamedBody242_413

def NamedBody242_415 : StackLang.HolProg 64 :=
.seq NamedBody242_293 NamedBody242_414

def NamedBody242_416 : StackLang.HolProg 64 :=
.seq NamedBody242_290 NamedBody242_415

def NamedBody242_417 : StackLang.HolProg 64 :=
.seq NamedBody242_289 NamedBody242_416

def NamedBody242_418 : StackLang.HolProg 64 :=
.seq NamedBody242_234 NamedBody242_417

def NamedBody242_419 : StackLang.HolProg 64 :=
.seq NamedBody242_231 NamedBody242_418

def NamedBody242_420 : StackLang.HolProg 64 :=
.seq NamedBody242_230 NamedBody242_419

def NamedBody242_421 : StackLang.HolProg 64 :=
.seq NamedBody242_163 NamedBody242_420

def NamedBody242_422 : StackLang.HolProg 64 :=
.seq NamedBody242_162 NamedBody242_421

def NamedBody242_423 : StackLang.HolProg 64 :=
.seq NamedBody242_161 NamedBody242_422

def NamedBody242_424 : StackLang.HolProg 64 :=
.seq NamedBody242_160 NamedBody242_423

def NamedBody242_425 : StackLang.HolProg 64 :=
.seq NamedBody242_9 NamedBody242_424

def NamedBody242_426 : StackLang.HolProg 64 :=
.seq NamedBody242_8 NamedBody242_425

def NamedBody242_427 : StackLang.HolProg 64 :=
.seq NamedBody242_7 NamedBody242_426

def NamedBody242_428 : StackLang.HolProg 64 :=
.seq NamedBody242_6 NamedBody242_427

def Named242 : Nat × StackLang.HolProg 64 := (242, NamedBody242_428)
theorem Named242_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed242 = Named242 := by
  kernel_rfl
#print axioms Named242_eq
end InitECandidate.Proofs.BackendStages
