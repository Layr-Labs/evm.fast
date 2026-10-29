import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed472
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody472_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody472_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody472_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody472_3 : StackLang.HolProg 64 :=
.seq NamedBody472_1 NamedBody472_2

def NamedBody472_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody472_3 NamedBody472_4

def NamedBody472_6 : StackLang.HolProg 64 :=
.seq NamedBody472_0 NamedBody472_5

def NamedBody472_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody472_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody472_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody472_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody472_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 192#64))

def NamedBody472_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody472_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody472_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody472_16 : StackLang.HolProg 64 :=
.seq NamedBody472_14 NamedBody472_15

def NamedBody472_17 : StackLang.HolProg 64 :=
.seq NamedBody472_13 NamedBody472_16

def NamedBody472_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1495#64)

def NamedBody472_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody472_21 : StackLang.HolProg 64 :=
.seq NamedBody472_19 NamedBody472_20

def NamedBody472_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody472_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody472_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody472_25 : StackLang.HolProg 64 :=
.seq NamedBody472_23 NamedBody472_24

def NamedBody472_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody472_25 NamedBody472_26

def NamedBody472_28 : StackLang.HolProg 64 :=
.seq NamedBody472_22 NamedBody472_27

def NamedBody472_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody472_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody472_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 472 3

def NamedBody472_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody472_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody472_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody472_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody472_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody472_38 : StackLang.HolProg 64 :=
.seq NamedBody472_36 NamedBody472_37

def NamedBody472_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody472_40 : StackLang.HolProg 64 :=
.seq NamedBody472_38 NamedBody472_39

def NamedBody472_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody472_42 : StackLang.HolProg 64 :=
.seq NamedBody472_40 NamedBody472_41

def NamedBody472_43 : StackLang.HolProg 64 :=
.seq NamedBody472_35 NamedBody472_42

def NamedBody472_44 : StackLang.HolProg 64 :=
.seq NamedBody472_34 NamedBody472_43

def NamedBody472_45 : StackLang.HolProg 64 :=
.seq NamedBody472_33 NamedBody472_44

def NamedBody472_46 : StackLang.HolProg 64 :=
.seq NamedBody472_32 NamedBody472_45

def NamedBody472_47 : StackLang.HolProg 64 :=
.seq NamedBody472_31 NamedBody472_46

def NamedBody472_48 : StackLang.HolProg 64 :=
.seq NamedBody472_30 NamedBody472_47

def NamedBody472_49 : StackLang.HolProg 64 :=
.seq NamedBody472_29 NamedBody472_48

def NamedBody472_50 : StackLang.HolProg 64 :=
.seq NamedBody472_28 NamedBody472_49

def NamedBody472_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody472_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody472_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody472_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody472_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody472_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody472_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody472_61 : StackLang.HolProg 64 :=
.seq NamedBody472_59 NamedBody472_60

def NamedBody472_62 : StackLang.HolProg 64 :=
.seq NamedBody472_58 NamedBody472_61

def NamedBody472_63 : StackLang.HolProg 64 :=
.seq NamedBody472_57 NamedBody472_62

def NamedBody472_64 : StackLang.HolProg 64 :=
.seq NamedBody472_56 NamedBody472_63

def NamedBody472_65 : StackLang.HolProg 64 :=
.seq NamedBody472_55 NamedBody472_64

def NamedBody472_66 : StackLang.HolProg 64 :=
.seq NamedBody472_54 NamedBody472_65

def NamedBody472_67 : StackLang.HolProg 64 :=
.seq NamedBody472_53 NamedBody472_66

def NamedBody472_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody472_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody472_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody472_71 : StackLang.HolProg 64 :=
.seq NamedBody472_69 NamedBody472_70

def NamedBody472_72 : StackLang.HolProg 64 :=
.seq NamedBody472_68 NamedBody472_71

def NamedBody472_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody472_74 : StackLang.HolProg 64 :=
.seq NamedBody472_72 NamedBody472_73

def NamedBody472_75 : StackLang.HolProg 64 :=
.call (some (NamedBody472_67, 1, 472, 2)) (Sum.inl 92) (some (NamedBody472_74, 472, 3))

def NamedBody472_76 : StackLang.HolProg 64 :=
.seq NamedBody472_52 NamedBody472_75

def NamedBody472_77 : StackLang.HolProg 64 :=
.seq NamedBody472_51 NamedBody472_76

def NamedBody472_78 : StackLang.HolProg 64 :=
.seq NamedBody472_50 NamedBody472_77

def NamedBody472_79 : StackLang.HolProg 64 :=
.seq NamedBody472_21 NamedBody472_78

def NamedBody472_80 : StackLang.HolProg 64 :=
.seq NamedBody472_18 NamedBody472_79

def NamedBody472_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody472_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody472_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody472_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody472_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody472_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody472_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def NamedBody472_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody472_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody472_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody472_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody472_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody472_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody472_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody472_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody472_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody472_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 72#64))

def NamedBody472_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody472_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody472_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody472_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody472_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody472_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody472_113 : StackLang.HolProg 64 :=
.seq NamedBody472_111 NamedBody472_112

def NamedBody472_114 : StackLang.HolProg 64 :=
.seq NamedBody472_110 NamedBody472_113

def NamedBody472_115 : StackLang.HolProg 64 :=
.seq NamedBody472_109 NamedBody472_114

def NamedBody472_116 : StackLang.HolProg 64 :=
.seq NamedBody472_108 NamedBody472_115

def NamedBody472_117 : StackLang.HolProg 64 :=
.seq NamedBody472_107 NamedBody472_116

def NamedBody472_118 : StackLang.HolProg 64 :=
.seq NamedBody472_106 NamedBody472_117

def NamedBody472_119 : StackLang.HolProg 64 :=
.seq NamedBody472_105 NamedBody472_118

def NamedBody472_120 : StackLang.HolProg 64 :=
.seq NamedBody472_104 NamedBody472_119

def NamedBody472_121 : StackLang.HolProg 64 :=
.seq NamedBody472_103 NamedBody472_120

def NamedBody472_122 : StackLang.HolProg 64 :=
.seq NamedBody472_102 NamedBody472_121

def NamedBody472_123 : StackLang.HolProg 64 :=
.seq NamedBody472_101 NamedBody472_122

def NamedBody472_124 : StackLang.HolProg 64 :=
.seq NamedBody472_100 NamedBody472_123

def NamedBody472_125 : StackLang.HolProg 64 :=
.seq NamedBody472_99 NamedBody472_124

def NamedBody472_126 : StackLang.HolProg 64 :=
.seq NamedBody472_98 NamedBody472_125

def NamedBody472_127 : StackLang.HolProg 64 :=
.seq NamedBody472_97 NamedBody472_126

def NamedBody472_128 : StackLang.HolProg 64 :=
.seq NamedBody472_96 NamedBody472_127

def NamedBody472_129 : StackLang.HolProg 64 :=
.seq NamedBody472_95 NamedBody472_128

def NamedBody472_130 : StackLang.HolProg 64 :=
.seq NamedBody472_94 NamedBody472_129

def NamedBody472_131 : StackLang.HolProg 64 :=
.seq NamedBody472_93 NamedBody472_130

def NamedBody472_132 : StackLang.HolProg 64 :=
.seq NamedBody472_92 NamedBody472_131

def NamedBody472_133 : StackLang.HolProg 64 :=
.seq NamedBody472_91 NamedBody472_132

def NamedBody472_134 : StackLang.HolProg 64 :=
.seq NamedBody472_90 NamedBody472_133

def NamedBody472_135 : StackLang.HolProg 64 :=
.seq NamedBody472_89 NamedBody472_134

def NamedBody472_136 : StackLang.HolProg 64 :=
.seq NamedBody472_88 NamedBody472_135

def NamedBody472_137 : StackLang.HolProg 64 :=
.seq NamedBody472_87 NamedBody472_136

def NamedBody472_138 : StackLang.HolProg 64 :=
.seq NamedBody472_86 NamedBody472_137

def NamedBody472_139 : StackLang.HolProg 64 :=
.seq NamedBody472_85 NamedBody472_138

def NamedBody472_140 : StackLang.HolProg 64 :=
.seq NamedBody472_84 NamedBody472_139

def NamedBody472_141 : StackLang.HolProg 64 :=
.seq NamedBody472_83 NamedBody472_140

def NamedBody472_142 : StackLang.HolProg 64 :=
.seq NamedBody472_82 NamedBody472_141

def NamedBody472_143 : StackLang.HolProg 64 :=
.seq NamedBody472_81 NamedBody472_142

def NamedBody472_144 : StackLang.HolProg 64 :=
.seq NamedBody472_80 NamedBody472_143

def NamedBody472_145 : StackLang.HolProg 64 :=
.seq NamedBody472_17 NamedBody472_144

def NamedBody472_146 : StackLang.HolProg 64 :=
.seq NamedBody472_12 NamedBody472_145

def NamedBody472_147 : StackLang.HolProg 64 :=
.seq NamedBody472_11 NamedBody472_146

def NamedBody472_148 : StackLang.HolProg 64 :=
.seq NamedBody472_10 NamedBody472_147

def NamedBody472_149 : StackLang.HolProg 64 :=
.seq NamedBody472_9 NamedBody472_148

def NamedBody472_150 : StackLang.HolProg 64 :=
.seq NamedBody472_8 NamedBody472_149

def NamedBody472_151 : StackLang.HolProg 64 :=
.seq NamedBody472_7 NamedBody472_150

def NamedBody472_152 : StackLang.HolProg 64 :=
.seq NamedBody472_6 NamedBody472_151

def Named472 : Nat × StackLang.HolProg 64 := (472, NamedBody472_152)
theorem Named472_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed472 = Named472 := by
  kernel_rfl
#print axioms Named472_eq
end InitECandidate.Proofs.BackendStages
