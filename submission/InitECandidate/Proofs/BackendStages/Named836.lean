import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed836
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody836_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def NamedBody836_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_3 : StackLang.HolProg 64 :=
.seq NamedBody836_1 NamedBody836_2

def NamedBody836_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_3 NamedBody836_4

def NamedBody836_6 : StackLang.HolProg 64 :=
.seq NamedBody836_0 NamedBody836_5

def NamedBody836_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody836_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody836_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody836_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551360#64))

def NamedBody836_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody836_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 88#64))

def NamedBody836_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 96#64))

def NamedBody836_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551344#64))

def NamedBody836_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 96#64)

def NamedBody836_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody836_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody836_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_26 : StackLang.HolProg 64 :=
.seq NamedBody836_24 NamedBody836_25

def NamedBody836_27 : StackLang.HolProg 64 :=
.seq NamedBody836_23 NamedBody836_26

def NamedBody836_28 : StackLang.HolProg 64 :=
.seq NamedBody836_22 NamedBody836_27

def NamedBody836_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4158#64)

def NamedBody836_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_32 : StackLang.HolProg 64 :=
.seq NamedBody836_30 NamedBody836_31

def NamedBody836_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_36 : StackLang.HolProg 64 :=
.seq NamedBody836_34 NamedBody836_35

def NamedBody836_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_38 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_36 NamedBody836_37

def NamedBody836_39 : StackLang.HolProg 64 :=
.seq NamedBody836_33 NamedBody836_38

def NamedBody836_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 3

def NamedBody836_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_49 : StackLang.HolProg 64 :=
.seq NamedBody836_47 NamedBody836_48

def NamedBody836_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_51 : StackLang.HolProg 64 :=
.seq NamedBody836_49 NamedBody836_50

def NamedBody836_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_53 : StackLang.HolProg 64 :=
.seq NamedBody836_51 NamedBody836_52

def NamedBody836_54 : StackLang.HolProg 64 :=
.seq NamedBody836_46 NamedBody836_53

def NamedBody836_55 : StackLang.HolProg 64 :=
.seq NamedBody836_45 NamedBody836_54

def NamedBody836_56 : StackLang.HolProg 64 :=
.seq NamedBody836_44 NamedBody836_55

def NamedBody836_57 : StackLang.HolProg 64 :=
.seq NamedBody836_43 NamedBody836_56

def NamedBody836_58 : StackLang.HolProg 64 :=
.seq NamedBody836_42 NamedBody836_57

def NamedBody836_59 : StackLang.HolProg 64 :=
.seq NamedBody836_41 NamedBody836_58

def NamedBody836_60 : StackLang.HolProg 64 :=
.seq NamedBody836_40 NamedBody836_59

def NamedBody836_61 : StackLang.HolProg 64 :=
.seq NamedBody836_39 NamedBody836_60

def NamedBody836_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_69 : StackLang.HolProg 64 :=
.seq NamedBody836_67 NamedBody836_68

def NamedBody836_70 : StackLang.HolProg 64 :=
.seq NamedBody836_66 NamedBody836_69

def NamedBody836_71 : StackLang.HolProg 64 :=
.seq NamedBody836_65 NamedBody836_70

def NamedBody836_72 : StackLang.HolProg 64 :=
.seq NamedBody836_64 NamedBody836_71

def NamedBody836_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_75 : StackLang.HolProg 64 :=
.seq NamedBody836_73 NamedBody836_74

def NamedBody836_76 : StackLang.HolProg 64 :=
.call (some (NamedBody836_72, 1, 836, 2)) (Sum.inl 484) (some (NamedBody836_75, 836, 3))

def NamedBody836_77 : StackLang.HolProg 64 :=
.seq NamedBody836_63 NamedBody836_76

def NamedBody836_78 : StackLang.HolProg 64 :=
.seq NamedBody836_62 NamedBody836_77

def NamedBody836_79 : StackLang.HolProg 64 :=
.seq NamedBody836_61 NamedBody836_78

def NamedBody836_80 : StackLang.HolProg 64 :=
.seq NamedBody836_32 NamedBody836_79

def NamedBody836_81 : StackLang.HolProg 64 :=
.seq NamedBody836_29 NamedBody836_80

def NamedBody836_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody836_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4159#64)

def NamedBody836_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_89 : StackLang.HolProg 64 :=
.seq NamedBody836_87 NamedBody836_88

def NamedBody836_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_93 : StackLang.HolProg 64 :=
.seq NamedBody836_91 NamedBody836_92

def NamedBody836_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_93 NamedBody836_94

def NamedBody836_96 : StackLang.HolProg 64 :=
.seq NamedBody836_90 NamedBody836_95

def NamedBody836_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 5

def NamedBody836_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_106 : StackLang.HolProg 64 :=
.seq NamedBody836_104 NamedBody836_105

def NamedBody836_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_108 : StackLang.HolProg 64 :=
.seq NamedBody836_106 NamedBody836_107

def NamedBody836_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_110 : StackLang.HolProg 64 :=
.seq NamedBody836_108 NamedBody836_109

def NamedBody836_111 : StackLang.HolProg 64 :=
.seq NamedBody836_103 NamedBody836_110

def NamedBody836_112 : StackLang.HolProg 64 :=
.seq NamedBody836_102 NamedBody836_111

def NamedBody836_113 : StackLang.HolProg 64 :=
.seq NamedBody836_101 NamedBody836_112

def NamedBody836_114 : StackLang.HolProg 64 :=
.seq NamedBody836_100 NamedBody836_113

def NamedBody836_115 : StackLang.HolProg 64 :=
.seq NamedBody836_99 NamedBody836_114

def NamedBody836_116 : StackLang.HolProg 64 :=
.seq NamedBody836_98 NamedBody836_115

def NamedBody836_117 : StackLang.HolProg 64 :=
.seq NamedBody836_97 NamedBody836_116

def NamedBody836_118 : StackLang.HolProg 64 :=
.seq NamedBody836_96 NamedBody836_117

def NamedBody836_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_126 : StackLang.HolProg 64 :=
.seq NamedBody836_124 NamedBody836_125

def NamedBody836_127 : StackLang.HolProg 64 :=
.seq NamedBody836_123 NamedBody836_126

def NamedBody836_128 : StackLang.HolProg 64 :=
.seq NamedBody836_122 NamedBody836_127

def NamedBody836_129 : StackLang.HolProg 64 :=
.seq NamedBody836_121 NamedBody836_128

def NamedBody836_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_132 : StackLang.HolProg 64 :=
.seq NamedBody836_130 NamedBody836_131

def NamedBody836_133 : StackLang.HolProg 64 :=
.call (some (NamedBody836_129, 1, 836, 4)) (Sum.inl 146) (some (NamedBody836_132, 836, 5))

def NamedBody836_134 : StackLang.HolProg 64 :=
.seq NamedBody836_120 NamedBody836_133

def NamedBody836_135 : StackLang.HolProg 64 :=
.seq NamedBody836_119 NamedBody836_134

def NamedBody836_136 : StackLang.HolProg 64 :=
.seq NamedBody836_118 NamedBody836_135

def NamedBody836_137 : StackLang.HolProg 64 :=
.seq NamedBody836_89 NamedBody836_136

def NamedBody836_138 : StackLang.HolProg 64 :=
.seq NamedBody836_86 NamedBody836_137

def NamedBody836_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4160#64)

def NamedBody836_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_144 : StackLang.HolProg 64 :=
.seq NamedBody836_142 NamedBody836_143

def NamedBody836_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_148 : StackLang.HolProg 64 :=
.seq NamedBody836_146 NamedBody836_147

def NamedBody836_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_148 NamedBody836_149

def NamedBody836_151 : StackLang.HolProg 64 :=
.seq NamedBody836_145 NamedBody836_150

def NamedBody836_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 7

def NamedBody836_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_161 : StackLang.HolProg 64 :=
.seq NamedBody836_159 NamedBody836_160

def NamedBody836_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_163 : StackLang.HolProg 64 :=
.seq NamedBody836_161 NamedBody836_162

def NamedBody836_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_165 : StackLang.HolProg 64 :=
.seq NamedBody836_163 NamedBody836_164

def NamedBody836_166 : StackLang.HolProg 64 :=
.seq NamedBody836_158 NamedBody836_165

def NamedBody836_167 : StackLang.HolProg 64 :=
.seq NamedBody836_157 NamedBody836_166

def NamedBody836_168 : StackLang.HolProg 64 :=
.seq NamedBody836_156 NamedBody836_167

def NamedBody836_169 : StackLang.HolProg 64 :=
.seq NamedBody836_155 NamedBody836_168

def NamedBody836_170 : StackLang.HolProg 64 :=
.seq NamedBody836_154 NamedBody836_169

def NamedBody836_171 : StackLang.HolProg 64 :=
.seq NamedBody836_153 NamedBody836_170

def NamedBody836_172 : StackLang.HolProg 64 :=
.seq NamedBody836_152 NamedBody836_171

def NamedBody836_173 : StackLang.HolProg 64 :=
.seq NamedBody836_151 NamedBody836_172

def NamedBody836_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_182 : StackLang.HolProg 64 :=
.seq NamedBody836_180 NamedBody836_181

def NamedBody836_183 : StackLang.HolProg 64 :=
.seq NamedBody836_179 NamedBody836_182

def NamedBody836_184 : StackLang.HolProg 64 :=
.seq NamedBody836_178 NamedBody836_183

def NamedBody836_185 : StackLang.HolProg 64 :=
.seq NamedBody836_177 NamedBody836_184

def NamedBody836_186 : StackLang.HolProg 64 :=
.seq NamedBody836_176 NamedBody836_185

def NamedBody836_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_189 : StackLang.HolProg 64 :=
.seq NamedBody836_187 NamedBody836_188

def NamedBody836_190 : StackLang.HolProg 64 :=
.call (some (NamedBody836_186, 1, 836, 6)) (Sum.inl 462) (some (NamedBody836_189, 836, 7))

def NamedBody836_191 : StackLang.HolProg 64 :=
.seq NamedBody836_175 NamedBody836_190

def NamedBody836_192 : StackLang.HolProg 64 :=
.seq NamedBody836_174 NamedBody836_191

def NamedBody836_193 : StackLang.HolProg 64 :=
.seq NamedBody836_173 NamedBody836_192

def NamedBody836_194 : StackLang.HolProg 64 :=
.seq NamedBody836_144 NamedBody836_193

def NamedBody836_195 : StackLang.HolProg 64 :=
.seq NamedBody836_141 NamedBody836_194

def NamedBody836_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1024#64)

def NamedBody836_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody836_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody836_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody836_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_205 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_206 : StackLang.HolProg 64 :=
.seq NamedBody836_204 NamedBody836_205

def NamedBody836_207 : StackLang.HolProg 64 :=
.seq NamedBody836_203 NamedBody836_206

def NamedBody836_208 : StackLang.HolProg 64 :=
.seq NamedBody836_202 NamedBody836_207

def NamedBody836_209 : StackLang.HolProg 64 :=
.seq NamedBody836_201 NamedBody836_208

def NamedBody836_210 : StackLang.HolProg 64 :=
.seq NamedBody836_200 NamedBody836_209

def NamedBody836_211 : StackLang.HolProg 64 :=
.seq NamedBody836_199 NamedBody836_210

def NamedBody836_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_213 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody836_211 NamedBody836_212

def NamedBody836_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody836_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody836_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_221 : StackLang.HolProg 64 :=
.seq NamedBody836_219 NamedBody836_220

def NamedBody836_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4161#64)

def NamedBody836_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_225 : StackLang.HolProg 64 :=
.seq NamedBody836_223 NamedBody836_224

def NamedBody836_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_229 : StackLang.HolProg 64 :=
.seq NamedBody836_227 NamedBody836_228

def NamedBody836_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_229 NamedBody836_230

def NamedBody836_232 : StackLang.HolProg 64 :=
.seq NamedBody836_226 NamedBody836_231

def NamedBody836_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 9

def NamedBody836_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_242 : StackLang.HolProg 64 :=
.seq NamedBody836_240 NamedBody836_241

def NamedBody836_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_244 : StackLang.HolProg 64 :=
.seq NamedBody836_242 NamedBody836_243

def NamedBody836_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_246 : StackLang.HolProg 64 :=
.seq NamedBody836_244 NamedBody836_245

def NamedBody836_247 : StackLang.HolProg 64 :=
.seq NamedBody836_239 NamedBody836_246

def NamedBody836_248 : StackLang.HolProg 64 :=
.seq NamedBody836_238 NamedBody836_247

def NamedBody836_249 : StackLang.HolProg 64 :=
.seq NamedBody836_237 NamedBody836_248

def NamedBody836_250 : StackLang.HolProg 64 :=
.seq NamedBody836_236 NamedBody836_249

def NamedBody836_251 : StackLang.HolProg 64 :=
.seq NamedBody836_235 NamedBody836_250

def NamedBody836_252 : StackLang.HolProg 64 :=
.seq NamedBody836_234 NamedBody836_251

def NamedBody836_253 : StackLang.HolProg 64 :=
.seq NamedBody836_233 NamedBody836_252

def NamedBody836_254 : StackLang.HolProg 64 :=
.seq NamedBody836_232 NamedBody836_253

def NamedBody836_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_262 : StackLang.HolProg 64 :=
.seq NamedBody836_260 NamedBody836_261

def NamedBody836_263 : StackLang.HolProg 64 :=
.seq NamedBody836_259 NamedBody836_262

def NamedBody836_264 : StackLang.HolProg 64 :=
.seq NamedBody836_258 NamedBody836_263

def NamedBody836_265 : StackLang.HolProg 64 :=
.seq NamedBody836_257 NamedBody836_264

def NamedBody836_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_268 : StackLang.HolProg 64 :=
.seq NamedBody836_266 NamedBody836_267

def NamedBody836_269 : StackLang.HolProg 64 :=
.call (some (NamedBody836_265, 1, 836, 8)) (Sum.inl 146) (some (NamedBody836_268, 836, 9))

def NamedBody836_270 : StackLang.HolProg 64 :=
.seq NamedBody836_256 NamedBody836_269

def NamedBody836_271 : StackLang.HolProg 64 :=
.seq NamedBody836_255 NamedBody836_270

def NamedBody836_272 : StackLang.HolProg 64 :=
.seq NamedBody836_254 NamedBody836_271

def NamedBody836_273 : StackLang.HolProg 64 :=
.seq NamedBody836_225 NamedBody836_272

def NamedBody836_274 : StackLang.HolProg 64 :=
.seq NamedBody836_222 NamedBody836_273

def NamedBody836_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4162#64)

def NamedBody836_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_280 : StackLang.HolProg 64 :=
.seq NamedBody836_278 NamedBody836_279

def NamedBody836_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_284 : StackLang.HolProg 64 :=
.seq NamedBody836_282 NamedBody836_283

def NamedBody836_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_284 NamedBody836_285

def NamedBody836_287 : StackLang.HolProg 64 :=
.seq NamedBody836_281 NamedBody836_286

def NamedBody836_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 11

def NamedBody836_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_297 : StackLang.HolProg 64 :=
.seq NamedBody836_295 NamedBody836_296

def NamedBody836_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_299 : StackLang.HolProg 64 :=
.seq NamedBody836_297 NamedBody836_298

def NamedBody836_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_301 : StackLang.HolProg 64 :=
.seq NamedBody836_299 NamedBody836_300

def NamedBody836_302 : StackLang.HolProg 64 :=
.seq NamedBody836_294 NamedBody836_301

def NamedBody836_303 : StackLang.HolProg 64 :=
.seq NamedBody836_293 NamedBody836_302

def NamedBody836_304 : StackLang.HolProg 64 :=
.seq NamedBody836_292 NamedBody836_303

def NamedBody836_305 : StackLang.HolProg 64 :=
.seq NamedBody836_291 NamedBody836_304

def NamedBody836_306 : StackLang.HolProg 64 :=
.seq NamedBody836_290 NamedBody836_305

def NamedBody836_307 : StackLang.HolProg 64 :=
.seq NamedBody836_289 NamedBody836_306

def NamedBody836_308 : StackLang.HolProg 64 :=
.seq NamedBody836_288 NamedBody836_307

def NamedBody836_309 : StackLang.HolProg 64 :=
.seq NamedBody836_287 NamedBody836_308

def NamedBody836_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_318 : StackLang.HolProg 64 :=
.seq NamedBody836_316 NamedBody836_317

def NamedBody836_319 : StackLang.HolProg 64 :=
.seq NamedBody836_315 NamedBody836_318

def NamedBody836_320 : StackLang.HolProg 64 :=
.seq NamedBody836_314 NamedBody836_319

def NamedBody836_321 : StackLang.HolProg 64 :=
.seq NamedBody836_313 NamedBody836_320

def NamedBody836_322 : StackLang.HolProg 64 :=
.seq NamedBody836_312 NamedBody836_321

def NamedBody836_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_324 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_325 : StackLang.HolProg 64 :=
.seq NamedBody836_323 NamedBody836_324

def NamedBody836_326 : StackLang.HolProg 64 :=
.call (some (NamedBody836_322, 1, 836, 10)) (Sum.inl 462) (some (NamedBody836_325, 836, 11))

def NamedBody836_327 : StackLang.HolProg 64 :=
.seq NamedBody836_311 NamedBody836_326

def NamedBody836_328 : StackLang.HolProg 64 :=
.seq NamedBody836_310 NamedBody836_327

def NamedBody836_329 : StackLang.HolProg 64 :=
.seq NamedBody836_309 NamedBody836_328

def NamedBody836_330 : StackLang.HolProg 64 :=
.seq NamedBody836_280 NamedBody836_329

def NamedBody836_331 : StackLang.HolProg 64 :=
.seq NamedBody836_277 NamedBody836_330

def NamedBody836_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1024#64)

def NamedBody836_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody836_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody836_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody836_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_341 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_342 : StackLang.HolProg 64 :=
.seq NamedBody836_340 NamedBody836_341

def NamedBody836_343 : StackLang.HolProg 64 :=
.seq NamedBody836_339 NamedBody836_342

def NamedBody836_344 : StackLang.HolProg 64 :=
.seq NamedBody836_338 NamedBody836_343

def NamedBody836_345 : StackLang.HolProg 64 :=
.seq NamedBody836_337 NamedBody836_344

def NamedBody836_346 : StackLang.HolProg 64 :=
.seq NamedBody836_336 NamedBody836_345

def NamedBody836_347 : StackLang.HolProg 64 :=
.seq NamedBody836_335 NamedBody836_346

def NamedBody836_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_349 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody836_347 NamedBody836_348

def NamedBody836_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody836_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody836_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_357 : StackLang.HolProg 64 :=
.seq NamedBody836_355 NamedBody836_356

def NamedBody836_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4163#64)

def NamedBody836_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_361 : StackLang.HolProg 64 :=
.seq NamedBody836_359 NamedBody836_360

def NamedBody836_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_365 : StackLang.HolProg 64 :=
.seq NamedBody836_363 NamedBody836_364

def NamedBody836_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_367 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_365 NamedBody836_366

def NamedBody836_368 : StackLang.HolProg 64 :=
.seq NamedBody836_362 NamedBody836_367

def NamedBody836_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 13

def NamedBody836_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_378 : StackLang.HolProg 64 :=
.seq NamedBody836_376 NamedBody836_377

def NamedBody836_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_380 : StackLang.HolProg 64 :=
.seq NamedBody836_378 NamedBody836_379

def NamedBody836_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_382 : StackLang.HolProg 64 :=
.seq NamedBody836_380 NamedBody836_381

def NamedBody836_383 : StackLang.HolProg 64 :=
.seq NamedBody836_375 NamedBody836_382

def NamedBody836_384 : StackLang.HolProg 64 :=
.seq NamedBody836_374 NamedBody836_383

def NamedBody836_385 : StackLang.HolProg 64 :=
.seq NamedBody836_373 NamedBody836_384

def NamedBody836_386 : StackLang.HolProg 64 :=
.seq NamedBody836_372 NamedBody836_385

def NamedBody836_387 : StackLang.HolProg 64 :=
.seq NamedBody836_371 NamedBody836_386

def NamedBody836_388 : StackLang.HolProg 64 :=
.seq NamedBody836_370 NamedBody836_387

def NamedBody836_389 : StackLang.HolProg 64 :=
.seq NamedBody836_369 NamedBody836_388

def NamedBody836_390 : StackLang.HolProg 64 :=
.seq NamedBody836_368 NamedBody836_389

def NamedBody836_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_398 : StackLang.HolProg 64 :=
.seq NamedBody836_396 NamedBody836_397

def NamedBody836_399 : StackLang.HolProg 64 :=
.seq NamedBody836_395 NamedBody836_398

def NamedBody836_400 : StackLang.HolProg 64 :=
.seq NamedBody836_394 NamedBody836_399

def NamedBody836_401 : StackLang.HolProg 64 :=
.seq NamedBody836_393 NamedBody836_400

def NamedBody836_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_404 : StackLang.HolProg 64 :=
.seq NamedBody836_402 NamedBody836_403

def NamedBody836_405 : StackLang.HolProg 64 :=
.call (some (NamedBody836_401, 1, 836, 12)) (Sum.inl 146) (some (NamedBody836_404, 836, 13))

def NamedBody836_406 : StackLang.HolProg 64 :=
.seq NamedBody836_392 NamedBody836_405

def NamedBody836_407 : StackLang.HolProg 64 :=
.seq NamedBody836_391 NamedBody836_406

def NamedBody836_408 : StackLang.HolProg 64 :=
.seq NamedBody836_390 NamedBody836_407

def NamedBody836_409 : StackLang.HolProg 64 :=
.seq NamedBody836_361 NamedBody836_408

def NamedBody836_410 : StackLang.HolProg 64 :=
.seq NamedBody836_358 NamedBody836_409

def NamedBody836_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4164#64)

def NamedBody836_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_416 : StackLang.HolProg 64 :=
.seq NamedBody836_414 NamedBody836_415

def NamedBody836_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_420 : StackLang.HolProg 64 :=
.seq NamedBody836_418 NamedBody836_419

def NamedBody836_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_422 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_420 NamedBody836_421

def NamedBody836_423 : StackLang.HolProg 64 :=
.seq NamedBody836_417 NamedBody836_422

def NamedBody836_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 15

def NamedBody836_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_433 : StackLang.HolProg 64 :=
.seq NamedBody836_431 NamedBody836_432

def NamedBody836_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_435 : StackLang.HolProg 64 :=
.seq NamedBody836_433 NamedBody836_434

def NamedBody836_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_437 : StackLang.HolProg 64 :=
.seq NamedBody836_435 NamedBody836_436

def NamedBody836_438 : StackLang.HolProg 64 :=
.seq NamedBody836_430 NamedBody836_437

def NamedBody836_439 : StackLang.HolProg 64 :=
.seq NamedBody836_429 NamedBody836_438

def NamedBody836_440 : StackLang.HolProg 64 :=
.seq NamedBody836_428 NamedBody836_439

def NamedBody836_441 : StackLang.HolProg 64 :=
.seq NamedBody836_427 NamedBody836_440

def NamedBody836_442 : StackLang.HolProg 64 :=
.seq NamedBody836_426 NamedBody836_441

def NamedBody836_443 : StackLang.HolProg 64 :=
.seq NamedBody836_425 NamedBody836_442

def NamedBody836_444 : StackLang.HolProg 64 :=
.seq NamedBody836_424 NamedBody836_443

def NamedBody836_445 : StackLang.HolProg 64 :=
.seq NamedBody836_423 NamedBody836_444

def NamedBody836_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_455 : StackLang.HolProg 64 :=
.seq NamedBody836_453 NamedBody836_454

def NamedBody836_456 : StackLang.HolProg 64 :=
.seq NamedBody836_452 NamedBody836_455

def NamedBody836_457 : StackLang.HolProg 64 :=
.seq NamedBody836_451 NamedBody836_456

def NamedBody836_458 : StackLang.HolProg 64 :=
.seq NamedBody836_450 NamedBody836_457

def NamedBody836_459 : StackLang.HolProg 64 :=
.seq NamedBody836_449 NamedBody836_458

def NamedBody836_460 : StackLang.HolProg 64 :=
.seq NamedBody836_448 NamedBody836_459

def NamedBody836_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_463 : StackLang.HolProg 64 :=
.seq NamedBody836_461 NamedBody836_462

def NamedBody836_464 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_465 : StackLang.HolProg 64 :=
.seq NamedBody836_463 NamedBody836_464

def NamedBody836_466 : StackLang.HolProg 64 :=
.call (some (NamedBody836_460, 1, 836, 14)) (Sum.inl 462) (some (NamedBody836_465, 836, 15))

def NamedBody836_467 : StackLang.HolProg 64 :=
.seq NamedBody836_447 NamedBody836_466

def NamedBody836_468 : StackLang.HolProg 64 :=
.seq NamedBody836_446 NamedBody836_467

def NamedBody836_469 : StackLang.HolProg 64 :=
.seq NamedBody836_445 NamedBody836_468

def NamedBody836_470 : StackLang.HolProg 64 :=
.seq NamedBody836_416 NamedBody836_469

def NamedBody836_471 : StackLang.HolProg 64 :=
.seq NamedBody836_413 NamedBody836_470

def NamedBody836_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1024#64)

def NamedBody836_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody836_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody836_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody836_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_481 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_482 : StackLang.HolProg 64 :=
.seq NamedBody836_480 NamedBody836_481

def NamedBody836_483 : StackLang.HolProg 64 :=
.seq NamedBody836_479 NamedBody836_482

def NamedBody836_484 : StackLang.HolProg 64 :=
.seq NamedBody836_478 NamedBody836_483

def NamedBody836_485 : StackLang.HolProg 64 :=
.seq NamedBody836_477 NamedBody836_484

def NamedBody836_486 : StackLang.HolProg 64 :=
.seq NamedBody836_476 NamedBody836_485

def NamedBody836_487 : StackLang.HolProg 64 :=
.seq NamedBody836_475 NamedBody836_486

def NamedBody836_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_489 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody836_487 NamedBody836_488

def NamedBody836_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody836_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody836_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_500 : StackLang.HolProg 64 :=
.seq NamedBody836_498 NamedBody836_499

def NamedBody836_501 : StackLang.HolProg 64 :=
.seq NamedBody836_497 NamedBody836_500

def NamedBody836_502 : StackLang.HolProg 64 :=
.seq NamedBody836_496 NamedBody836_501

def NamedBody836_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4165#64)

def NamedBody836_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_506 : StackLang.HolProg 64 :=
.seq NamedBody836_504 NamedBody836_505

def NamedBody836_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_510 : StackLang.HolProg 64 :=
.seq NamedBody836_508 NamedBody836_509

def NamedBody836_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_512 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_510 NamedBody836_511

def NamedBody836_513 : StackLang.HolProg 64 :=
.seq NamedBody836_507 NamedBody836_512

def NamedBody836_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 17

def NamedBody836_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_523 : StackLang.HolProg 64 :=
.seq NamedBody836_521 NamedBody836_522

def NamedBody836_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_525 : StackLang.HolProg 64 :=
.seq NamedBody836_523 NamedBody836_524

def NamedBody836_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_527 : StackLang.HolProg 64 :=
.seq NamedBody836_525 NamedBody836_526

def NamedBody836_528 : StackLang.HolProg 64 :=
.seq NamedBody836_520 NamedBody836_527

def NamedBody836_529 : StackLang.HolProg 64 :=
.seq NamedBody836_519 NamedBody836_528

def NamedBody836_530 : StackLang.HolProg 64 :=
.seq NamedBody836_518 NamedBody836_529

def NamedBody836_531 : StackLang.HolProg 64 :=
.seq NamedBody836_517 NamedBody836_530

def NamedBody836_532 : StackLang.HolProg 64 :=
.seq NamedBody836_516 NamedBody836_531

def NamedBody836_533 : StackLang.HolProg 64 :=
.seq NamedBody836_515 NamedBody836_532

def NamedBody836_534 : StackLang.HolProg 64 :=
.seq NamedBody836_514 NamedBody836_533

def NamedBody836_535 : StackLang.HolProg 64 :=
.seq NamedBody836_513 NamedBody836_534

def NamedBody836_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_547 : StackLang.HolProg 64 :=
.seq NamedBody836_545 NamedBody836_546

def NamedBody836_548 : StackLang.HolProg 64 :=
.seq NamedBody836_544 NamedBody836_547

def NamedBody836_549 : StackLang.HolProg 64 :=
.seq NamedBody836_543 NamedBody836_548

def NamedBody836_550 : StackLang.HolProg 64 :=
.seq NamedBody836_542 NamedBody836_549

def NamedBody836_551 : StackLang.HolProg 64 :=
.seq NamedBody836_541 NamedBody836_550

def NamedBody836_552 : StackLang.HolProg 64 :=
.seq NamedBody836_540 NamedBody836_551

def NamedBody836_553 : StackLang.HolProg 64 :=
.seq NamedBody836_539 NamedBody836_552

def NamedBody836_554 : StackLang.HolProg 64 :=
.seq NamedBody836_538 NamedBody836_553

def NamedBody836_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_559 : StackLang.HolProg 64 :=
.seq NamedBody836_557 NamedBody836_558

def NamedBody836_560 : StackLang.HolProg 64 :=
.seq NamedBody836_556 NamedBody836_559

def NamedBody836_561 : StackLang.HolProg 64 :=
.seq NamedBody836_555 NamedBody836_560

def NamedBody836_562 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_563 : StackLang.HolProg 64 :=
.seq NamedBody836_561 NamedBody836_562

def NamedBody836_564 : StackLang.HolProg 64 :=
.call (some (NamedBody836_554, 1, 836, 16)) (Sum.inl 92) (some (NamedBody836_563, 836, 17))

def NamedBody836_565 : StackLang.HolProg 64 :=
.seq NamedBody836_537 NamedBody836_564

def NamedBody836_566 : StackLang.HolProg 64 :=
.seq NamedBody836_536 NamedBody836_565

def NamedBody836_567 : StackLang.HolProg 64 :=
.seq NamedBody836_535 NamedBody836_566

def NamedBody836_568 : StackLang.HolProg 64 :=
.seq NamedBody836_506 NamedBody836_567

def NamedBody836_569 : StackLang.HolProg 64 :=
.seq NamedBody836_503 NamedBody836_568

def NamedBody836_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_577 : StackLang.HolProg 64 :=
.seq NamedBody836_575 NamedBody836_576

def NamedBody836_578 : StackLang.HolProg 64 :=
.seq NamedBody836_574 NamedBody836_577

def NamedBody836_579 : StackLang.HolProg 64 :=
.seq NamedBody836_573 NamedBody836_578

def NamedBody836_580 : StackLang.HolProg 64 :=
.seq NamedBody836_572 NamedBody836_579

def NamedBody836_581 : StackLang.HolProg 64 :=
.seq NamedBody836_571 NamedBody836_580

def NamedBody836_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4166#64)

def NamedBody836_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_585 : StackLang.HolProg 64 :=
.seq NamedBody836_583 NamedBody836_584

def NamedBody836_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_589 : StackLang.HolProg 64 :=
.seq NamedBody836_587 NamedBody836_588

def NamedBody836_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_591 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_589 NamedBody836_590

def NamedBody836_592 : StackLang.HolProg 64 :=
.seq NamedBody836_586 NamedBody836_591

def NamedBody836_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 19

def NamedBody836_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_602 : StackLang.HolProg 64 :=
.seq NamedBody836_600 NamedBody836_601

def NamedBody836_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_604 : StackLang.HolProg 64 :=
.seq NamedBody836_602 NamedBody836_603

def NamedBody836_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_606 : StackLang.HolProg 64 :=
.seq NamedBody836_604 NamedBody836_605

def NamedBody836_607 : StackLang.HolProg 64 :=
.seq NamedBody836_599 NamedBody836_606

def NamedBody836_608 : StackLang.HolProg 64 :=
.seq NamedBody836_598 NamedBody836_607

def NamedBody836_609 : StackLang.HolProg 64 :=
.seq NamedBody836_597 NamedBody836_608

def NamedBody836_610 : StackLang.HolProg 64 :=
.seq NamedBody836_596 NamedBody836_609

def NamedBody836_611 : StackLang.HolProg 64 :=
.seq NamedBody836_595 NamedBody836_610

def NamedBody836_612 : StackLang.HolProg 64 :=
.seq NamedBody836_594 NamedBody836_611

def NamedBody836_613 : StackLang.HolProg 64 :=
.seq NamedBody836_593 NamedBody836_612

def NamedBody836_614 : StackLang.HolProg 64 :=
.seq NamedBody836_592 NamedBody836_613

def NamedBody836_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_624 : StackLang.HolProg 64 :=
.seq NamedBody836_622 NamedBody836_623

def NamedBody836_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_627 : StackLang.HolProg 64 :=
.seq NamedBody836_625 NamedBody836_626

def NamedBody836_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_629 : StackLang.HolProg 64 :=
.seq NamedBody836_627 NamedBody836_628

def NamedBody836_630 : StackLang.HolProg 64 :=
.seq NamedBody836_624 NamedBody836_629

def NamedBody836_631 : StackLang.HolProg 64 :=
.seq NamedBody836_621 NamedBody836_630

def NamedBody836_632 : StackLang.HolProg 64 :=
.seq NamedBody836_620 NamedBody836_631

def NamedBody836_633 : StackLang.HolProg 64 :=
.seq NamedBody836_619 NamedBody836_632

def NamedBody836_634 : StackLang.HolProg 64 :=
.seq NamedBody836_618 NamedBody836_633

def NamedBody836_635 : StackLang.HolProg 64 :=
.seq NamedBody836_617 NamedBody836_634

def NamedBody836_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_639 : StackLang.HolProg 64 :=
.seq NamedBody836_637 NamedBody836_638

def NamedBody836_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_642 : StackLang.HolProg 64 :=
.seq NamedBody836_640 NamedBody836_641

def NamedBody836_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_644 : StackLang.HolProg 64 :=
.seq NamedBody836_642 NamedBody836_643

def NamedBody836_645 : StackLang.HolProg 64 :=
.seq NamedBody836_639 NamedBody836_644

def NamedBody836_646 : StackLang.HolProg 64 :=
.seq NamedBody836_636 NamedBody836_645

def NamedBody836_647 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_648 : StackLang.HolProg 64 :=
.seq NamedBody836_646 NamedBody836_647

def NamedBody836_649 : StackLang.HolProg 64 :=
.call (some (NamedBody836_635, 1, 836, 18)) (Sum.inl 484) (some (NamedBody836_648, 836, 19))

def NamedBody836_650 : StackLang.HolProg 64 :=
.seq NamedBody836_616 NamedBody836_649

def NamedBody836_651 : StackLang.HolProg 64 :=
.seq NamedBody836_615 NamedBody836_650

def NamedBody836_652 : StackLang.HolProg 64 :=
.seq NamedBody836_614 NamedBody836_651

def NamedBody836_653 : StackLang.HolProg 64 :=
.seq NamedBody836_585 NamedBody836_652

def NamedBody836_654 : StackLang.HolProg 64 :=
.seq NamedBody836_582 NamedBody836_653

def NamedBody836_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4167#64)

def NamedBody836_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_660 : StackLang.HolProg 64 :=
.seq NamedBody836_658 NamedBody836_659

def NamedBody836_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_664 : StackLang.HolProg 64 :=
.seq NamedBody836_662 NamedBody836_663

def NamedBody836_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_666 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_664 NamedBody836_665

def NamedBody836_667 : StackLang.HolProg 64 :=
.seq NamedBody836_661 NamedBody836_666

def NamedBody836_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 21

def NamedBody836_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_677 : StackLang.HolProg 64 :=
.seq NamedBody836_675 NamedBody836_676

def NamedBody836_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_679 : StackLang.HolProg 64 :=
.seq NamedBody836_677 NamedBody836_678

def NamedBody836_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_681 : StackLang.HolProg 64 :=
.seq NamedBody836_679 NamedBody836_680

def NamedBody836_682 : StackLang.HolProg 64 :=
.seq NamedBody836_674 NamedBody836_681

def NamedBody836_683 : StackLang.HolProg 64 :=
.seq NamedBody836_673 NamedBody836_682

def NamedBody836_684 : StackLang.HolProg 64 :=
.seq NamedBody836_672 NamedBody836_683

def NamedBody836_685 : StackLang.HolProg 64 :=
.seq NamedBody836_671 NamedBody836_684

def NamedBody836_686 : StackLang.HolProg 64 :=
.seq NamedBody836_670 NamedBody836_685

def NamedBody836_687 : StackLang.HolProg 64 :=
.seq NamedBody836_669 NamedBody836_686

def NamedBody836_688 : StackLang.HolProg 64 :=
.seq NamedBody836_668 NamedBody836_687

def NamedBody836_689 : StackLang.HolProg 64 :=
.seq NamedBody836_667 NamedBody836_688

def NamedBody836_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody836_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody836_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody836_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_703 : StackLang.HolProg 64 :=
.seq NamedBody836_701 NamedBody836_702

def NamedBody836_704 : StackLang.HolProg 64 :=
.seq NamedBody836_700 NamedBody836_703

def NamedBody836_705 : StackLang.HolProg 64 :=
.seq NamedBody836_699 NamedBody836_704

def NamedBody836_706 : StackLang.HolProg 64 :=
.seq NamedBody836_698 NamedBody836_705

def NamedBody836_707 : StackLang.HolProg 64 :=
.seq NamedBody836_697 NamedBody836_706

def NamedBody836_708 : StackLang.HolProg 64 :=
.seq NamedBody836_696 NamedBody836_707

def NamedBody836_709 : StackLang.HolProg 64 :=
.seq NamedBody836_695 NamedBody836_708

def NamedBody836_710 : StackLang.HolProg 64 :=
.seq NamedBody836_694 NamedBody836_709

def NamedBody836_711 : StackLang.HolProg 64 :=
.seq NamedBody836_693 NamedBody836_710

def NamedBody836_712 : StackLang.HolProg 64 :=
.seq NamedBody836_692 NamedBody836_711

def NamedBody836_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_716 : StackLang.HolProg 64 :=
.seq NamedBody836_714 NamedBody836_715

def NamedBody836_717 : StackLang.HolProg 64 :=
.seq NamedBody836_713 NamedBody836_716

def NamedBody836_718 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_719 : StackLang.HolProg 64 :=
.seq NamedBody836_717 NamedBody836_718

def NamedBody836_720 : StackLang.HolProg 64 :=
.call (some (NamedBody836_712, 1, 836, 20)) (Sum.inl 146) (some (NamedBody836_719, 836, 21))

def NamedBody836_721 : StackLang.HolProg 64 :=
.seq NamedBody836_691 NamedBody836_720

def NamedBody836_722 : StackLang.HolProg 64 :=
.seq NamedBody836_690 NamedBody836_721

def NamedBody836_723 : StackLang.HolProg 64 :=
.seq NamedBody836_689 NamedBody836_722

def NamedBody836_724 : StackLang.HolProg 64 :=
.seq NamedBody836_660 NamedBody836_723

def NamedBody836_725 : StackLang.HolProg 64 :=
.seq NamedBody836_657 NamedBody836_724

def NamedBody836_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_731 : StackLang.HolProg 64 :=
.seq NamedBody836_729 NamedBody836_730

def NamedBody836_732 : StackLang.HolProg 64 :=
.seq NamedBody836_728 NamedBody836_731

def NamedBody836_733 : StackLang.HolProg 64 :=
.seq NamedBody836_727 NamedBody836_732

def NamedBody836_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4168#64)

def NamedBody836_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_737 : StackLang.HolProg 64 :=
.seq NamedBody836_735 NamedBody836_736

def NamedBody836_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_741 : StackLang.HolProg 64 :=
.seq NamedBody836_739 NamedBody836_740

def NamedBody836_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_743 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_741 NamedBody836_742

def NamedBody836_744 : StackLang.HolProg 64 :=
.seq NamedBody836_738 NamedBody836_743

def NamedBody836_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 23

def NamedBody836_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_754 : StackLang.HolProg 64 :=
.seq NamedBody836_752 NamedBody836_753

def NamedBody836_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_756 : StackLang.HolProg 64 :=
.seq NamedBody836_754 NamedBody836_755

def NamedBody836_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_758 : StackLang.HolProg 64 :=
.seq NamedBody836_756 NamedBody836_757

def NamedBody836_759 : StackLang.HolProg 64 :=
.seq NamedBody836_751 NamedBody836_758

def NamedBody836_760 : StackLang.HolProg 64 :=
.seq NamedBody836_750 NamedBody836_759

def NamedBody836_761 : StackLang.HolProg 64 :=
.seq NamedBody836_749 NamedBody836_760

def NamedBody836_762 : StackLang.HolProg 64 :=
.seq NamedBody836_748 NamedBody836_761

def NamedBody836_763 : StackLang.HolProg 64 :=
.seq NamedBody836_747 NamedBody836_762

def NamedBody836_764 : StackLang.HolProg 64 :=
.seq NamedBody836_746 NamedBody836_763

def NamedBody836_765 : StackLang.HolProg 64 :=
.seq NamedBody836_745 NamedBody836_764

def NamedBody836_766 : StackLang.HolProg 64 :=
.seq NamedBody836_744 NamedBody836_765

def NamedBody836_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_774 : StackLang.HolProg 64 :=
.seq NamedBody836_772 NamedBody836_773

def NamedBody836_775 : StackLang.HolProg 64 :=
.seq NamedBody836_771 NamedBody836_774

def NamedBody836_776 : StackLang.HolProg 64 :=
.seq NamedBody836_770 NamedBody836_775

def NamedBody836_777 : StackLang.HolProg 64 :=
.seq NamedBody836_769 NamedBody836_776

def NamedBody836_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_779 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_780 : StackLang.HolProg 64 :=
.seq NamedBody836_778 NamedBody836_779

def NamedBody836_781 : StackLang.HolProg 64 :=
.call (some (NamedBody836_777, 1, 836, 22)) (Sum.inl 835) (some (NamedBody836_780, 836, 23))

def NamedBody836_782 : StackLang.HolProg 64 :=
.seq NamedBody836_768 NamedBody836_781

def NamedBody836_783 : StackLang.HolProg 64 :=
.seq NamedBody836_767 NamedBody836_782

def NamedBody836_784 : StackLang.HolProg 64 :=
.seq NamedBody836_766 NamedBody836_783

def NamedBody836_785 : StackLang.HolProg 64 :=
.seq NamedBody836_737 NamedBody836_784

def NamedBody836_786 : StackLang.HolProg 64 :=
.seq NamedBody836_734 NamedBody836_785

def NamedBody836_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4169#64)

def NamedBody836_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_792 : StackLang.HolProg 64 :=
.seq NamedBody836_790 NamedBody836_791

def NamedBody836_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_796 : StackLang.HolProg 64 :=
.seq NamedBody836_794 NamedBody836_795

def NamedBody836_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_798 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_796 NamedBody836_797

def NamedBody836_799 : StackLang.HolProg 64 :=
.seq NamedBody836_793 NamedBody836_798

def NamedBody836_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 25

def NamedBody836_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_809 : StackLang.HolProg 64 :=
.seq NamedBody836_807 NamedBody836_808

def NamedBody836_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_811 : StackLang.HolProg 64 :=
.seq NamedBody836_809 NamedBody836_810

def NamedBody836_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_813 : StackLang.HolProg 64 :=
.seq NamedBody836_811 NamedBody836_812

def NamedBody836_814 : StackLang.HolProg 64 :=
.seq NamedBody836_806 NamedBody836_813

def NamedBody836_815 : StackLang.HolProg 64 :=
.seq NamedBody836_805 NamedBody836_814

def NamedBody836_816 : StackLang.HolProg 64 :=
.seq NamedBody836_804 NamedBody836_815

def NamedBody836_817 : StackLang.HolProg 64 :=
.seq NamedBody836_803 NamedBody836_816

def NamedBody836_818 : StackLang.HolProg 64 :=
.seq NamedBody836_802 NamedBody836_817

def NamedBody836_819 : StackLang.HolProg 64 :=
.seq NamedBody836_801 NamedBody836_818

def NamedBody836_820 : StackLang.HolProg 64 :=
.seq NamedBody836_800 NamedBody836_819

def NamedBody836_821 : StackLang.HolProg 64 :=
.seq NamedBody836_799 NamedBody836_820

def NamedBody836_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_830 : StackLang.HolProg 64 :=
.seq NamedBody836_828 NamedBody836_829

def NamedBody836_831 : StackLang.HolProg 64 :=
.seq NamedBody836_827 NamedBody836_830

def NamedBody836_832 : StackLang.HolProg 64 :=
.seq NamedBody836_826 NamedBody836_831

def NamedBody836_833 : StackLang.HolProg 64 :=
.seq NamedBody836_825 NamedBody836_832

def NamedBody836_834 : StackLang.HolProg 64 :=
.seq NamedBody836_824 NamedBody836_833

def NamedBody836_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_837 : StackLang.HolProg 64 :=
.seq NamedBody836_835 NamedBody836_836

def NamedBody836_838 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_839 : StackLang.HolProg 64 :=
.seq NamedBody836_837 NamedBody836_838

def NamedBody836_840 : StackLang.HolProg 64 :=
.call (some (NamedBody836_834, 1, 836, 24)) (Sum.inl 470) (some (NamedBody836_839, 836, 25))

def NamedBody836_841 : StackLang.HolProg 64 :=
.seq NamedBody836_823 NamedBody836_840

def NamedBody836_842 : StackLang.HolProg 64 :=
.seq NamedBody836_822 NamedBody836_841

def NamedBody836_843 : StackLang.HolProg 64 :=
.seq NamedBody836_821 NamedBody836_842

def NamedBody836_844 : StackLang.HolProg 64 :=
.seq NamedBody836_792 NamedBody836_843

def NamedBody836_845 : StackLang.HolProg 64 :=
.seq NamedBody836_789 NamedBody836_844

def NamedBody836_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody836_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody836_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_852 : StackLang.HolProg 64 :=
.seq NamedBody836_850 NamedBody836_851

def NamedBody836_853 : StackLang.HolProg 64 :=
.seq NamedBody836_849 NamedBody836_852

def NamedBody836_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody836_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_857 : StackLang.HolProg 64 :=
.seq NamedBody836_855 NamedBody836_856

def NamedBody836_858 : StackLang.HolProg 64 :=
.seq NamedBody836_854 NamedBody836_857

def NamedBody836_859 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody836_853 NamedBody836_858

def NamedBody836_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody836_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody836_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_866 : StackLang.HolProg 64 :=
.seq NamedBody836_864 NamedBody836_865

def NamedBody836_867 : StackLang.HolProg 64 :=
.seq NamedBody836_863 NamedBody836_866

def NamedBody836_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody836_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_871 : StackLang.HolProg 64 :=
.seq NamedBody836_869 NamedBody836_870

def NamedBody836_872 : StackLang.HolProg 64 :=
.seq NamedBody836_868 NamedBody836_871

def NamedBody836_873 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody836_867 NamedBody836_872

def NamedBody836_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody836_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody836_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody836_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_880 : StackLang.HolProg 64 :=
.seq NamedBody836_878 NamedBody836_879

def NamedBody836_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4170#64)

def NamedBody836_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_884 : StackLang.HolProg 64 :=
.seq NamedBody836_882 NamedBody836_883

def NamedBody836_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_888 : StackLang.HolProg 64 :=
.seq NamedBody836_886 NamedBody836_887

def NamedBody836_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_890 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_888 NamedBody836_889

def NamedBody836_891 : StackLang.HolProg 64 :=
.seq NamedBody836_885 NamedBody836_890

def NamedBody836_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 27

def NamedBody836_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_901 : StackLang.HolProg 64 :=
.seq NamedBody836_899 NamedBody836_900

def NamedBody836_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_903 : StackLang.HolProg 64 :=
.seq NamedBody836_901 NamedBody836_902

def NamedBody836_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_905 : StackLang.HolProg 64 :=
.seq NamedBody836_903 NamedBody836_904

def NamedBody836_906 : StackLang.HolProg 64 :=
.seq NamedBody836_898 NamedBody836_905

def NamedBody836_907 : StackLang.HolProg 64 :=
.seq NamedBody836_897 NamedBody836_906

def NamedBody836_908 : StackLang.HolProg 64 :=
.seq NamedBody836_896 NamedBody836_907

def NamedBody836_909 : StackLang.HolProg 64 :=
.seq NamedBody836_895 NamedBody836_908

def NamedBody836_910 : StackLang.HolProg 64 :=
.seq NamedBody836_894 NamedBody836_909

def NamedBody836_911 : StackLang.HolProg 64 :=
.seq NamedBody836_893 NamedBody836_910

def NamedBody836_912 : StackLang.HolProg 64 :=
.seq NamedBody836_892 NamedBody836_911

def NamedBody836_913 : StackLang.HolProg 64 :=
.seq NamedBody836_891 NamedBody836_912

def NamedBody836_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_922 : StackLang.HolProg 64 :=
.seq NamedBody836_920 NamedBody836_921

def NamedBody836_923 : StackLang.HolProg 64 :=
.seq NamedBody836_919 NamedBody836_922

def NamedBody836_924 : StackLang.HolProg 64 :=
.seq NamedBody836_918 NamedBody836_923

def NamedBody836_925 : StackLang.HolProg 64 :=
.seq NamedBody836_917 NamedBody836_924

def NamedBody836_926 : StackLang.HolProg 64 :=
.seq NamedBody836_916 NamedBody836_925

def NamedBody836_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_928 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_929 : StackLang.HolProg 64 :=
.seq NamedBody836_927 NamedBody836_928

def NamedBody836_930 : StackLang.HolProg 64 :=
.call (some (NamedBody836_926, 1, 836, 26)) (Sum.inl 68) (some (NamedBody836_929, 836, 27))

def NamedBody836_931 : StackLang.HolProg 64 :=
.seq NamedBody836_915 NamedBody836_930

def NamedBody836_932 : StackLang.HolProg 64 :=
.seq NamedBody836_914 NamedBody836_931

def NamedBody836_933 : StackLang.HolProg 64 :=
.seq NamedBody836_913 NamedBody836_932

def NamedBody836_934 : StackLang.HolProg 64 :=
.seq NamedBody836_884 NamedBody836_933

def NamedBody836_935 : StackLang.HolProg 64 :=
.seq NamedBody836_881 NamedBody836_934

def NamedBody836_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody836_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody836_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody836_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody836_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody836_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody836_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody836_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody836_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody836_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody836_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody836_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def NamedBody836_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody836_954 : StackLang.HolProg 64 :=
.seq NamedBody836_952 NamedBody836_953

def NamedBody836_955 : StackLang.HolProg 64 :=
.seq NamedBody836_951 NamedBody836_954

def NamedBody836_956 : StackLang.HolProg 64 :=
.seq NamedBody836_950 NamedBody836_955

def NamedBody836_957 : StackLang.HolProg 64 :=
.seq NamedBody836_949 NamedBody836_956

def NamedBody836_958 : StackLang.HolProg 64 :=
.seq NamedBody836_948 NamedBody836_957

def NamedBody836_959 : StackLang.HolProg 64 :=
.seq NamedBody836_947 NamedBody836_958

def NamedBody836_960 : StackLang.HolProg 64 :=
.seq NamedBody836_946 NamedBody836_959

def NamedBody836_961 : StackLang.HolProg 64 :=
.seq NamedBody836_945 NamedBody836_960

def NamedBody836_962 : StackLang.HolProg 64 :=
.seq NamedBody836_944 NamedBody836_961

def NamedBody836_963 : StackLang.HolProg 64 :=
.seq NamedBody836_943 NamedBody836_962

def NamedBody836_964 : StackLang.HolProg 64 :=
.seq NamedBody836_942 NamedBody836_963

def NamedBody836_965 : StackLang.HolProg 64 :=
.seq NamedBody836_941 NamedBody836_964

def NamedBody836_966 : StackLang.HolProg 64 :=
.seq NamedBody836_940 NamedBody836_965

def NamedBody836_967 : StackLang.HolProg 64 :=
.seq NamedBody836_939 NamedBody836_966

def NamedBody836_968 : StackLang.HolProg 64 :=
.seq NamedBody836_938 NamedBody836_967

def NamedBody836_969 : StackLang.HolProg 64 :=
.seq NamedBody836_937 NamedBody836_968

def NamedBody836_970 : StackLang.HolProg 64 :=
.seq NamedBody836_936 NamedBody836_969

def NamedBody836_971 : StackLang.HolProg 64 :=
.seq NamedBody836_935 NamedBody836_970

def NamedBody836_972 : StackLang.HolProg 64 :=
.seq NamedBody836_880 NamedBody836_971

def NamedBody836_973 : StackLang.HolProg 64 :=
.seq NamedBody836_877 NamedBody836_972

def NamedBody836_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_975 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody836_973 NamedBody836_974

def NamedBody836_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody836_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4171#64)

def NamedBody836_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_983 : StackLang.HolProg 64 :=
.seq NamedBody836_981 NamedBody836_982

def NamedBody836_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_987 : StackLang.HolProg 64 :=
.seq NamedBody836_985 NamedBody836_986

def NamedBody836_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_989 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_987 NamedBody836_988

def NamedBody836_990 : StackLang.HolProg 64 :=
.seq NamedBody836_984 NamedBody836_989

def NamedBody836_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 29

def NamedBody836_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1000 : StackLang.HolProg 64 :=
.seq NamedBody836_998 NamedBody836_999

def NamedBody836_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1002 : StackLang.HolProg 64 :=
.seq NamedBody836_1000 NamedBody836_1001

def NamedBody836_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1004 : StackLang.HolProg 64 :=
.seq NamedBody836_1002 NamedBody836_1003

def NamedBody836_1005 : StackLang.HolProg 64 :=
.seq NamedBody836_997 NamedBody836_1004

def NamedBody836_1006 : StackLang.HolProg 64 :=
.seq NamedBody836_996 NamedBody836_1005

def NamedBody836_1007 : StackLang.HolProg 64 :=
.seq NamedBody836_995 NamedBody836_1006

def NamedBody836_1008 : StackLang.HolProg 64 :=
.seq NamedBody836_994 NamedBody836_1007

def NamedBody836_1009 : StackLang.HolProg 64 :=
.seq NamedBody836_993 NamedBody836_1008

def NamedBody836_1010 : StackLang.HolProg 64 :=
.seq NamedBody836_992 NamedBody836_1009

def NamedBody836_1011 : StackLang.HolProg 64 :=
.seq NamedBody836_991 NamedBody836_1010

def NamedBody836_1012 : StackLang.HolProg 64 :=
.seq NamedBody836_990 NamedBody836_1011

def NamedBody836_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_1020 : StackLang.HolProg 64 :=
.seq NamedBody836_1018 NamedBody836_1019

def NamedBody836_1021 : StackLang.HolProg 64 :=
.seq NamedBody836_1017 NamedBody836_1020

def NamedBody836_1022 : StackLang.HolProg 64 :=
.seq NamedBody836_1016 NamedBody836_1021

def NamedBody836_1023 : StackLang.HolProg 64 :=
.seq NamedBody836_1015 NamedBody836_1022

def NamedBody836_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1025 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1026 : StackLang.HolProg 64 :=
.seq NamedBody836_1024 NamedBody836_1025

def NamedBody836_1027 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1023, 1, 836, 28)) (Sum.inl 68) (some (NamedBody836_1026, 836, 29))

def NamedBody836_1028 : StackLang.HolProg 64 :=
.seq NamedBody836_1014 NamedBody836_1027

def NamedBody836_1029 : StackLang.HolProg 64 :=
.seq NamedBody836_1013 NamedBody836_1028

def NamedBody836_1030 : StackLang.HolProg 64 :=
.seq NamedBody836_1012 NamedBody836_1029

def NamedBody836_1031 : StackLang.HolProg 64 :=
.seq NamedBody836_983 NamedBody836_1030

def NamedBody836_1032 : StackLang.HolProg 64 :=
.seq NamedBody836_980 NamedBody836_1031

def NamedBody836_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4172#64)

def NamedBody836_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1038 : StackLang.HolProg 64 :=
.seq NamedBody836_1036 NamedBody836_1037

def NamedBody836_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1042 : StackLang.HolProg 64 :=
.seq NamedBody836_1040 NamedBody836_1041

def NamedBody836_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1044 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1042 NamedBody836_1043

def NamedBody836_1045 : StackLang.HolProg 64 :=
.seq NamedBody836_1039 NamedBody836_1044

def NamedBody836_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 31

def NamedBody836_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1055 : StackLang.HolProg 64 :=
.seq NamedBody836_1053 NamedBody836_1054

def NamedBody836_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1057 : StackLang.HolProg 64 :=
.seq NamedBody836_1055 NamedBody836_1056

def NamedBody836_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1059 : StackLang.HolProg 64 :=
.seq NamedBody836_1057 NamedBody836_1058

def NamedBody836_1060 : StackLang.HolProg 64 :=
.seq NamedBody836_1052 NamedBody836_1059

def NamedBody836_1061 : StackLang.HolProg 64 :=
.seq NamedBody836_1051 NamedBody836_1060

def NamedBody836_1062 : StackLang.HolProg 64 :=
.seq NamedBody836_1050 NamedBody836_1061

def NamedBody836_1063 : StackLang.HolProg 64 :=
.seq NamedBody836_1049 NamedBody836_1062

def NamedBody836_1064 : StackLang.HolProg 64 :=
.seq NamedBody836_1048 NamedBody836_1063

def NamedBody836_1065 : StackLang.HolProg 64 :=
.seq NamedBody836_1047 NamedBody836_1064

def NamedBody836_1066 : StackLang.HolProg 64 :=
.seq NamedBody836_1046 NamedBody836_1065

def NamedBody836_1067 : StackLang.HolProg 64 :=
.seq NamedBody836_1045 NamedBody836_1066

def NamedBody836_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1076 : StackLang.HolProg 64 :=
.seq NamedBody836_1074 NamedBody836_1075

def NamedBody836_1077 : StackLang.HolProg 64 :=
.seq NamedBody836_1073 NamedBody836_1076

def NamedBody836_1078 : StackLang.HolProg 64 :=
.seq NamedBody836_1072 NamedBody836_1077

def NamedBody836_1079 : StackLang.HolProg 64 :=
.seq NamedBody836_1071 NamedBody836_1078

def NamedBody836_1080 : StackLang.HolProg 64 :=
.seq NamedBody836_1070 NamedBody836_1079

def NamedBody836_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1082 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1083 : StackLang.HolProg 64 :=
.seq NamedBody836_1081 NamedBody836_1082

def NamedBody836_1084 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1080, 1, 836, 30)) (Sum.inl 69) (some (NamedBody836_1083, 836, 31))

def NamedBody836_1085 : StackLang.HolProg 64 :=
.seq NamedBody836_1069 NamedBody836_1084

def NamedBody836_1086 : StackLang.HolProg 64 :=
.seq NamedBody836_1068 NamedBody836_1085

def NamedBody836_1087 : StackLang.HolProg 64 :=
.seq NamedBody836_1067 NamedBody836_1086

def NamedBody836_1088 : StackLang.HolProg 64 :=
.seq NamedBody836_1038 NamedBody836_1087

def NamedBody836_1089 : StackLang.HolProg 64 :=
.seq NamedBody836_1035 NamedBody836_1088

def NamedBody836_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody836_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody836_1095 : StackLang.HolProg 64 :=
.seq NamedBody836_1093 NamedBody836_1094

def NamedBody836_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4173#64)

def NamedBody836_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1099 : StackLang.HolProg 64 :=
.seq NamedBody836_1097 NamedBody836_1098

def NamedBody836_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1103 : StackLang.HolProg 64 :=
.seq NamedBody836_1101 NamedBody836_1102

def NamedBody836_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1103 NamedBody836_1104

def NamedBody836_1106 : StackLang.HolProg 64 :=
.seq NamedBody836_1100 NamedBody836_1105

def NamedBody836_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 33

def NamedBody836_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1116 : StackLang.HolProg 64 :=
.seq NamedBody836_1114 NamedBody836_1115

def NamedBody836_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1118 : StackLang.HolProg 64 :=
.seq NamedBody836_1116 NamedBody836_1117

def NamedBody836_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1120 : StackLang.HolProg 64 :=
.seq NamedBody836_1118 NamedBody836_1119

def NamedBody836_1121 : StackLang.HolProg 64 :=
.seq NamedBody836_1113 NamedBody836_1120

def NamedBody836_1122 : StackLang.HolProg 64 :=
.seq NamedBody836_1112 NamedBody836_1121

def NamedBody836_1123 : StackLang.HolProg 64 :=
.seq NamedBody836_1111 NamedBody836_1122

def NamedBody836_1124 : StackLang.HolProg 64 :=
.seq NamedBody836_1110 NamedBody836_1123

def NamedBody836_1125 : StackLang.HolProg 64 :=
.seq NamedBody836_1109 NamedBody836_1124

def NamedBody836_1126 : StackLang.HolProg 64 :=
.seq NamedBody836_1108 NamedBody836_1125

def NamedBody836_1127 : StackLang.HolProg 64 :=
.seq NamedBody836_1107 NamedBody836_1126

def NamedBody836_1128 : StackLang.HolProg 64 :=
.seq NamedBody836_1106 NamedBody836_1127

def NamedBody836_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1137 : StackLang.HolProg 64 :=
.seq NamedBody836_1135 NamedBody836_1136

def NamedBody836_1138 : StackLang.HolProg 64 :=
.seq NamedBody836_1134 NamedBody836_1137

def NamedBody836_1139 : StackLang.HolProg 64 :=
.seq NamedBody836_1133 NamedBody836_1138

def NamedBody836_1140 : StackLang.HolProg 64 :=
.seq NamedBody836_1132 NamedBody836_1139

def NamedBody836_1141 : StackLang.HolProg 64 :=
.seq NamedBody836_1131 NamedBody836_1140

def NamedBody836_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1144 : StackLang.HolProg 64 :=
.seq NamedBody836_1142 NamedBody836_1143

def NamedBody836_1145 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1141, 1, 836, 32)) (Sum.inl 68) (some (NamedBody836_1144, 836, 33))

def NamedBody836_1146 : StackLang.HolProg 64 :=
.seq NamedBody836_1130 NamedBody836_1145

def NamedBody836_1147 : StackLang.HolProg 64 :=
.seq NamedBody836_1129 NamedBody836_1146

def NamedBody836_1148 : StackLang.HolProg 64 :=
.seq NamedBody836_1128 NamedBody836_1147

def NamedBody836_1149 : StackLang.HolProg 64 :=
.seq NamedBody836_1099 NamedBody836_1148

def NamedBody836_1150 : StackLang.HolProg 64 :=
.seq NamedBody836_1096 NamedBody836_1149

def NamedBody836_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody836_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1156 : StackLang.HolProg 64 :=
.seq NamedBody836_1154 NamedBody836_1155

def NamedBody836_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4174#64)

def NamedBody836_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1160 : StackLang.HolProg 64 :=
.seq NamedBody836_1158 NamedBody836_1159

def NamedBody836_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1164 : StackLang.HolProg 64 :=
.seq NamedBody836_1162 NamedBody836_1163

def NamedBody836_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1164 NamedBody836_1165

def NamedBody836_1167 : StackLang.HolProg 64 :=
.seq NamedBody836_1161 NamedBody836_1166

def NamedBody836_1168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 35

def NamedBody836_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1177 : StackLang.HolProg 64 :=
.seq NamedBody836_1175 NamedBody836_1176

def NamedBody836_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1179 : StackLang.HolProg 64 :=
.seq NamedBody836_1177 NamedBody836_1178

def NamedBody836_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1181 : StackLang.HolProg 64 :=
.seq NamedBody836_1179 NamedBody836_1180

def NamedBody836_1182 : StackLang.HolProg 64 :=
.seq NamedBody836_1174 NamedBody836_1181

def NamedBody836_1183 : StackLang.HolProg 64 :=
.seq NamedBody836_1173 NamedBody836_1182

def NamedBody836_1184 : StackLang.HolProg 64 :=
.seq NamedBody836_1172 NamedBody836_1183

def NamedBody836_1185 : StackLang.HolProg 64 :=
.seq NamedBody836_1171 NamedBody836_1184

def NamedBody836_1186 : StackLang.HolProg 64 :=
.seq NamedBody836_1170 NamedBody836_1185

def NamedBody836_1187 : StackLang.HolProg 64 :=
.seq NamedBody836_1169 NamedBody836_1186

def NamedBody836_1188 : StackLang.HolProg 64 :=
.seq NamedBody836_1168 NamedBody836_1187

def NamedBody836_1189 : StackLang.HolProg 64 :=
.seq NamedBody836_1167 NamedBody836_1188

def NamedBody836_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1198 : StackLang.HolProg 64 :=
.seq NamedBody836_1196 NamedBody836_1197

def NamedBody836_1199 : StackLang.HolProg 64 :=
.seq NamedBody836_1195 NamedBody836_1198

def NamedBody836_1200 : StackLang.HolProg 64 :=
.seq NamedBody836_1194 NamedBody836_1199

def NamedBody836_1201 : StackLang.HolProg 64 :=
.seq NamedBody836_1193 NamedBody836_1200

def NamedBody836_1202 : StackLang.HolProg 64 :=
.seq NamedBody836_1192 NamedBody836_1201

def NamedBody836_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1205 : StackLang.HolProg 64 :=
.seq NamedBody836_1203 NamedBody836_1204

def NamedBody836_1206 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1202, 1, 836, 34)) (Sum.inl 68) (some (NamedBody836_1205, 836, 35))

def NamedBody836_1207 : StackLang.HolProg 64 :=
.seq NamedBody836_1191 NamedBody836_1206

def NamedBody836_1208 : StackLang.HolProg 64 :=
.seq NamedBody836_1190 NamedBody836_1207

def NamedBody836_1209 : StackLang.HolProg 64 :=
.seq NamedBody836_1189 NamedBody836_1208

def NamedBody836_1210 : StackLang.HolProg 64 :=
.seq NamedBody836_1160 NamedBody836_1209

def NamedBody836_1211 : StackLang.HolProg 64 :=
.seq NamedBody836_1157 NamedBody836_1210

def NamedBody836_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody836_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1217 : StackLang.HolProg 64 :=
.seq NamedBody836_1215 NamedBody836_1216

def NamedBody836_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4175#64)

def NamedBody836_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1221 : StackLang.HolProg 64 :=
.seq NamedBody836_1219 NamedBody836_1220

def NamedBody836_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1225 : StackLang.HolProg 64 :=
.seq NamedBody836_1223 NamedBody836_1224

def NamedBody836_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1225 NamedBody836_1226

def NamedBody836_1228 : StackLang.HolProg 64 :=
.seq NamedBody836_1222 NamedBody836_1227

def NamedBody836_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 37

def NamedBody836_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1238 : StackLang.HolProg 64 :=
.seq NamedBody836_1236 NamedBody836_1237

def NamedBody836_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1240 : StackLang.HolProg 64 :=
.seq NamedBody836_1238 NamedBody836_1239

def NamedBody836_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1242 : StackLang.HolProg 64 :=
.seq NamedBody836_1240 NamedBody836_1241

def NamedBody836_1243 : StackLang.HolProg 64 :=
.seq NamedBody836_1235 NamedBody836_1242

def NamedBody836_1244 : StackLang.HolProg 64 :=
.seq NamedBody836_1234 NamedBody836_1243

def NamedBody836_1245 : StackLang.HolProg 64 :=
.seq NamedBody836_1233 NamedBody836_1244

def NamedBody836_1246 : StackLang.HolProg 64 :=
.seq NamedBody836_1232 NamedBody836_1245

def NamedBody836_1247 : StackLang.HolProg 64 :=
.seq NamedBody836_1231 NamedBody836_1246

def NamedBody836_1248 : StackLang.HolProg 64 :=
.seq NamedBody836_1230 NamedBody836_1247

def NamedBody836_1249 : StackLang.HolProg 64 :=
.seq NamedBody836_1229 NamedBody836_1248

def NamedBody836_1250 : StackLang.HolProg 64 :=
.seq NamedBody836_1228 NamedBody836_1249

def NamedBody836_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody836_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1262 : StackLang.HolProg 64 :=
.seq NamedBody836_1260 NamedBody836_1261

def NamedBody836_1263 : StackLang.HolProg 64 :=
.seq NamedBody836_1259 NamedBody836_1262

def NamedBody836_1264 : StackLang.HolProg 64 :=
.seq NamedBody836_1258 NamedBody836_1263

def NamedBody836_1265 : StackLang.HolProg 64 :=
.seq NamedBody836_1257 NamedBody836_1264

def NamedBody836_1266 : StackLang.HolProg 64 :=
.seq NamedBody836_1256 NamedBody836_1265

def NamedBody836_1267 : StackLang.HolProg 64 :=
.seq NamedBody836_1255 NamedBody836_1266

def NamedBody836_1268 : StackLang.HolProg 64 :=
.seq NamedBody836_1254 NamedBody836_1267

def NamedBody836_1269 : StackLang.HolProg 64 :=
.seq NamedBody836_1253 NamedBody836_1268

def NamedBody836_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1274 : StackLang.HolProg 64 :=
.seq NamedBody836_1272 NamedBody836_1273

def NamedBody836_1275 : StackLang.HolProg 64 :=
.seq NamedBody836_1271 NamedBody836_1274

def NamedBody836_1276 : StackLang.HolProg 64 :=
.seq NamedBody836_1270 NamedBody836_1275

def NamedBody836_1277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1278 : StackLang.HolProg 64 :=
.seq NamedBody836_1276 NamedBody836_1277

def NamedBody836_1279 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1269, 1, 836, 36)) (Sum.inl 68) (some (NamedBody836_1278, 836, 37))

def NamedBody836_1280 : StackLang.HolProg 64 :=
.seq NamedBody836_1252 NamedBody836_1279

def NamedBody836_1281 : StackLang.HolProg 64 :=
.seq NamedBody836_1251 NamedBody836_1280

def NamedBody836_1282 : StackLang.HolProg 64 :=
.seq NamedBody836_1250 NamedBody836_1281

def NamedBody836_1283 : StackLang.HolProg 64 :=
.seq NamedBody836_1221 NamedBody836_1282

def NamedBody836_1284 : StackLang.HolProg 64 :=
.seq NamedBody836_1218 NamedBody836_1283

def NamedBody836_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 96#64)

def NamedBody836_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody836_1293 : StackLang.HolProg 64 :=
.seq NamedBody836_1291 NamedBody836_1292

def NamedBody836_1294 : StackLang.HolProg 64 :=
.seq NamedBody836_1290 NamedBody836_1293

def NamedBody836_1295 : StackLang.HolProg 64 :=
.seq NamedBody836_1289 NamedBody836_1294

def NamedBody836_1296 : StackLang.HolProg 64 :=
.seq NamedBody836_1288 NamedBody836_1295

def NamedBody836_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4176#64)

def NamedBody836_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1300 : StackLang.HolProg 64 :=
.seq NamedBody836_1298 NamedBody836_1299

def NamedBody836_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1304 : StackLang.HolProg 64 :=
.seq NamedBody836_1302 NamedBody836_1303

def NamedBody836_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1306 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1304 NamedBody836_1305

def NamedBody836_1307 : StackLang.HolProg 64 :=
.seq NamedBody836_1301 NamedBody836_1306

def NamedBody836_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 39

def NamedBody836_1311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1317 : StackLang.HolProg 64 :=
.seq NamedBody836_1315 NamedBody836_1316

def NamedBody836_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1319 : StackLang.HolProg 64 :=
.seq NamedBody836_1317 NamedBody836_1318

def NamedBody836_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1321 : StackLang.HolProg 64 :=
.seq NamedBody836_1319 NamedBody836_1320

def NamedBody836_1322 : StackLang.HolProg 64 :=
.seq NamedBody836_1314 NamedBody836_1321

def NamedBody836_1323 : StackLang.HolProg 64 :=
.seq NamedBody836_1313 NamedBody836_1322

def NamedBody836_1324 : StackLang.HolProg 64 :=
.seq NamedBody836_1312 NamedBody836_1323

def NamedBody836_1325 : StackLang.HolProg 64 :=
.seq NamedBody836_1311 NamedBody836_1324

def NamedBody836_1326 : StackLang.HolProg 64 :=
.seq NamedBody836_1310 NamedBody836_1325

def NamedBody836_1327 : StackLang.HolProg 64 :=
.seq NamedBody836_1309 NamedBody836_1326

def NamedBody836_1328 : StackLang.HolProg 64 :=
.seq NamedBody836_1308 NamedBody836_1327

def NamedBody836_1329 : StackLang.HolProg 64 :=
.seq NamedBody836_1307 NamedBody836_1328

def NamedBody836_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1341 : StackLang.HolProg 64 :=
.seq NamedBody836_1339 NamedBody836_1340

def NamedBody836_1342 : StackLang.HolProg 64 :=
.seq NamedBody836_1338 NamedBody836_1341

def NamedBody836_1343 : StackLang.HolProg 64 :=
.seq NamedBody836_1337 NamedBody836_1342

def NamedBody836_1344 : StackLang.HolProg 64 :=
.seq NamedBody836_1336 NamedBody836_1343

def NamedBody836_1345 : StackLang.HolProg 64 :=
.seq NamedBody836_1335 NamedBody836_1344

def NamedBody836_1346 : StackLang.HolProg 64 :=
.seq NamedBody836_1334 NamedBody836_1345

def NamedBody836_1347 : StackLang.HolProg 64 :=
.seq NamedBody836_1333 NamedBody836_1346

def NamedBody836_1348 : StackLang.HolProg 64 :=
.seq NamedBody836_1332 NamedBody836_1347

def NamedBody836_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1354 : StackLang.HolProg 64 :=
.seq NamedBody836_1352 NamedBody836_1353

def NamedBody836_1355 : StackLang.HolProg 64 :=
.seq NamedBody836_1351 NamedBody836_1354

def NamedBody836_1356 : StackLang.HolProg 64 :=
.seq NamedBody836_1350 NamedBody836_1355

def NamedBody836_1357 : StackLang.HolProg 64 :=
.seq NamedBody836_1349 NamedBody836_1356

def NamedBody836_1358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1359 : StackLang.HolProg 64 :=
.seq NamedBody836_1357 NamedBody836_1358

def NamedBody836_1360 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1348, 1, 836, 38)) (Sum.inl 484) (some (NamedBody836_1359, 836, 39))

def NamedBody836_1361 : StackLang.HolProg 64 :=
.seq NamedBody836_1331 NamedBody836_1360

def NamedBody836_1362 : StackLang.HolProg 64 :=
.seq NamedBody836_1330 NamedBody836_1361

def NamedBody836_1363 : StackLang.HolProg 64 :=
.seq NamedBody836_1329 NamedBody836_1362

def NamedBody836_1364 : StackLang.HolProg 64 :=
.seq NamedBody836_1300 NamedBody836_1363

def NamedBody836_1365 : StackLang.HolProg 64 :=
.seq NamedBody836_1297 NamedBody836_1364

def NamedBody836_1366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1373 : StackLang.HolProg 64 :=
.seq NamedBody836_1371 NamedBody836_1372

def NamedBody836_1374 : StackLang.HolProg 64 :=
.seq NamedBody836_1370 NamedBody836_1373

def NamedBody836_1375 : StackLang.HolProg 64 :=
.seq NamedBody836_1369 NamedBody836_1374

def NamedBody836_1376 : StackLang.HolProg 64 :=
.seq NamedBody836_1368 NamedBody836_1375

def NamedBody836_1377 : StackLang.HolProg 64 :=
.seq NamedBody836_1367 NamedBody836_1376

def NamedBody836_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4177#64)

def NamedBody836_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1381 : StackLang.HolProg 64 :=
.seq NamedBody836_1379 NamedBody836_1380

def NamedBody836_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1385 : StackLang.HolProg 64 :=
.seq NamedBody836_1383 NamedBody836_1384

def NamedBody836_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1387 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1385 NamedBody836_1386

def NamedBody836_1388 : StackLang.HolProg 64 :=
.seq NamedBody836_1382 NamedBody836_1387

def NamedBody836_1389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 41

def NamedBody836_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1398 : StackLang.HolProg 64 :=
.seq NamedBody836_1396 NamedBody836_1397

def NamedBody836_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1400 : StackLang.HolProg 64 :=
.seq NamedBody836_1398 NamedBody836_1399

def NamedBody836_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1402 : StackLang.HolProg 64 :=
.seq NamedBody836_1400 NamedBody836_1401

def NamedBody836_1403 : StackLang.HolProg 64 :=
.seq NamedBody836_1395 NamedBody836_1402

def NamedBody836_1404 : StackLang.HolProg 64 :=
.seq NamedBody836_1394 NamedBody836_1403

def NamedBody836_1405 : StackLang.HolProg 64 :=
.seq NamedBody836_1393 NamedBody836_1404

def NamedBody836_1406 : StackLang.HolProg 64 :=
.seq NamedBody836_1392 NamedBody836_1405

def NamedBody836_1407 : StackLang.HolProg 64 :=
.seq NamedBody836_1391 NamedBody836_1406

def NamedBody836_1408 : StackLang.HolProg 64 :=
.seq NamedBody836_1390 NamedBody836_1407

def NamedBody836_1409 : StackLang.HolProg 64 :=
.seq NamedBody836_1389 NamedBody836_1408

def NamedBody836_1410 : StackLang.HolProg 64 :=
.seq NamedBody836_1388 NamedBody836_1409

def NamedBody836_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1422 : StackLang.HolProg 64 :=
.seq NamedBody836_1420 NamedBody836_1421

def NamedBody836_1423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody836_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody836_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1427 : StackLang.HolProg 64 :=
.seq NamedBody836_1425 NamedBody836_1426

def NamedBody836_1428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody836_1431 : StackLang.HolProg 64 :=
.seq NamedBody836_1429 NamedBody836_1430

def NamedBody836_1432 : StackLang.HolProg 64 :=
.seq NamedBody836_1428 NamedBody836_1431

def NamedBody836_1433 : StackLang.HolProg 64 :=
.seq NamedBody836_1427 NamedBody836_1432

def NamedBody836_1434 : StackLang.HolProg 64 :=
.seq NamedBody836_1424 NamedBody836_1433

def NamedBody836_1435 : StackLang.HolProg 64 :=
.seq NamedBody836_1423 NamedBody836_1434

def NamedBody836_1436 : StackLang.HolProg 64 :=
.seq NamedBody836_1422 NamedBody836_1435

def NamedBody836_1437 : StackLang.HolProg 64 :=
.seq NamedBody836_1419 NamedBody836_1436

def NamedBody836_1438 : StackLang.HolProg 64 :=
.seq NamedBody836_1418 NamedBody836_1437

def NamedBody836_1439 : StackLang.HolProg 64 :=
.seq NamedBody836_1417 NamedBody836_1438

def NamedBody836_1440 : StackLang.HolProg 64 :=
.seq NamedBody836_1416 NamedBody836_1439

def NamedBody836_1441 : StackLang.HolProg 64 :=
.seq NamedBody836_1415 NamedBody836_1440

def NamedBody836_1442 : StackLang.HolProg 64 :=
.seq NamedBody836_1414 NamedBody836_1441

def NamedBody836_1443 : StackLang.HolProg 64 :=
.seq NamedBody836_1413 NamedBody836_1442

def NamedBody836_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1449 : StackLang.HolProg 64 :=
.seq NamedBody836_1447 NamedBody836_1448

def NamedBody836_1450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody836_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody836_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1454 : StackLang.HolProg 64 :=
.seq NamedBody836_1452 NamedBody836_1453

def NamedBody836_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody836_1458 : StackLang.HolProg 64 :=
.seq NamedBody836_1456 NamedBody836_1457

def NamedBody836_1459 : StackLang.HolProg 64 :=
.seq NamedBody836_1455 NamedBody836_1458

def NamedBody836_1460 : StackLang.HolProg 64 :=
.seq NamedBody836_1454 NamedBody836_1459

def NamedBody836_1461 : StackLang.HolProg 64 :=
.seq NamedBody836_1451 NamedBody836_1460

def NamedBody836_1462 : StackLang.HolProg 64 :=
.seq NamedBody836_1450 NamedBody836_1461

def NamedBody836_1463 : StackLang.HolProg 64 :=
.seq NamedBody836_1449 NamedBody836_1462

def NamedBody836_1464 : StackLang.HolProg 64 :=
.seq NamedBody836_1446 NamedBody836_1463

def NamedBody836_1465 : StackLang.HolProg 64 :=
.seq NamedBody836_1445 NamedBody836_1464

def NamedBody836_1466 : StackLang.HolProg 64 :=
.seq NamedBody836_1444 NamedBody836_1465

def NamedBody836_1467 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1468 : StackLang.HolProg 64 :=
.seq NamedBody836_1466 NamedBody836_1467

def NamedBody836_1469 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1443, 1, 836, 40)) (Sum.inl 484) (some (NamedBody836_1468, 836, 41))

def NamedBody836_1470 : StackLang.HolProg 64 :=
.seq NamedBody836_1412 NamedBody836_1469

def NamedBody836_1471 : StackLang.HolProg 64 :=
.seq NamedBody836_1411 NamedBody836_1470

def NamedBody836_1472 : StackLang.HolProg 64 :=
.seq NamedBody836_1410 NamedBody836_1471

def NamedBody836_1473 : StackLang.HolProg 64 :=
.seq NamedBody836_1381 NamedBody836_1472

def NamedBody836_1474 : StackLang.HolProg 64 :=
.seq NamedBody836_1378 NamedBody836_1473

def NamedBody836_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody836_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody836_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1481 : StackLang.HolProg 64 :=
.seq NamedBody836_1479 NamedBody836_1480

def NamedBody836_1482 : StackLang.HolProg 64 :=
.seq NamedBody836_1478 NamedBody836_1481

def NamedBody836_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4178#64)

def NamedBody836_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1486 : StackLang.HolProg 64 :=
.seq NamedBody836_1484 NamedBody836_1485

def NamedBody836_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1490 : StackLang.HolProg 64 :=
.seq NamedBody836_1488 NamedBody836_1489

def NamedBody836_1491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1492 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1490 NamedBody836_1491

def NamedBody836_1493 : StackLang.HolProg 64 :=
.seq NamedBody836_1487 NamedBody836_1492

def NamedBody836_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 43

def NamedBody836_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1503 : StackLang.HolProg 64 :=
.seq NamedBody836_1501 NamedBody836_1502

def NamedBody836_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1505 : StackLang.HolProg 64 :=
.seq NamedBody836_1503 NamedBody836_1504

def NamedBody836_1506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1507 : StackLang.HolProg 64 :=
.seq NamedBody836_1505 NamedBody836_1506

def NamedBody836_1508 : StackLang.HolProg 64 :=
.seq NamedBody836_1500 NamedBody836_1507

def NamedBody836_1509 : StackLang.HolProg 64 :=
.seq NamedBody836_1499 NamedBody836_1508

def NamedBody836_1510 : StackLang.HolProg 64 :=
.seq NamedBody836_1498 NamedBody836_1509

def NamedBody836_1511 : StackLang.HolProg 64 :=
.seq NamedBody836_1497 NamedBody836_1510

def NamedBody836_1512 : StackLang.HolProg 64 :=
.seq NamedBody836_1496 NamedBody836_1511

def NamedBody836_1513 : StackLang.HolProg 64 :=
.seq NamedBody836_1495 NamedBody836_1512

def NamedBody836_1514 : StackLang.HolProg 64 :=
.seq NamedBody836_1494 NamedBody836_1513

def NamedBody836_1515 : StackLang.HolProg 64 :=
.seq NamedBody836_1493 NamedBody836_1514

def NamedBody836_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_1530 : StackLang.HolProg 64 :=
.seq NamedBody836_1528 NamedBody836_1529

def NamedBody836_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody836_1532 : StackLang.HolProg 64 :=
.seq NamedBody836_1530 NamedBody836_1531

def NamedBody836_1533 : StackLang.HolProg 64 :=
.seq NamedBody836_1527 NamedBody836_1532

def NamedBody836_1534 : StackLang.HolProg 64 :=
.seq NamedBody836_1526 NamedBody836_1533

def NamedBody836_1535 : StackLang.HolProg 64 :=
.seq NamedBody836_1525 NamedBody836_1534

def NamedBody836_1536 : StackLang.HolProg 64 :=
.seq NamedBody836_1524 NamedBody836_1535

def NamedBody836_1537 : StackLang.HolProg 64 :=
.seq NamedBody836_1523 NamedBody836_1536

def NamedBody836_1538 : StackLang.HolProg 64 :=
.seq NamedBody836_1522 NamedBody836_1537

def NamedBody836_1539 : StackLang.HolProg 64 :=
.seq NamedBody836_1521 NamedBody836_1538

def NamedBody836_1540 : StackLang.HolProg 64 :=
.seq NamedBody836_1520 NamedBody836_1539

def NamedBody836_1541 : StackLang.HolProg 64 :=
.seq NamedBody836_1519 NamedBody836_1540

def NamedBody836_1542 : StackLang.HolProg 64 :=
.seq NamedBody836_1518 NamedBody836_1541

def NamedBody836_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_1546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody836_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody836_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody836_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody836_1550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_1551 : StackLang.HolProg 64 :=
.seq NamedBody836_1549 NamedBody836_1550

def NamedBody836_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody836_1553 : StackLang.HolProg 64 :=
.seq NamedBody836_1551 NamedBody836_1552

def NamedBody836_1554 : StackLang.HolProg 64 :=
.seq NamedBody836_1548 NamedBody836_1553

def NamedBody836_1555 : StackLang.HolProg 64 :=
.seq NamedBody836_1547 NamedBody836_1554

def NamedBody836_1556 : StackLang.HolProg 64 :=
.seq NamedBody836_1546 NamedBody836_1555

def NamedBody836_1557 : StackLang.HolProg 64 :=
.seq NamedBody836_1545 NamedBody836_1556

def NamedBody836_1558 : StackLang.HolProg 64 :=
.seq NamedBody836_1544 NamedBody836_1557

def NamedBody836_1559 : StackLang.HolProg 64 :=
.seq NamedBody836_1543 NamedBody836_1558

def NamedBody836_1560 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1561 : StackLang.HolProg 64 :=
.seq NamedBody836_1559 NamedBody836_1560

def NamedBody836_1562 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1542, 1, 836, 42)) (Sum.inl 484) (some (NamedBody836_1561, 836, 43))

def NamedBody836_1563 : StackLang.HolProg 64 :=
.seq NamedBody836_1517 NamedBody836_1562

def NamedBody836_1564 : StackLang.HolProg 64 :=
.seq NamedBody836_1516 NamedBody836_1563

def NamedBody836_1565 : StackLang.HolProg 64 :=
.seq NamedBody836_1515 NamedBody836_1564

def NamedBody836_1566 : StackLang.HolProg 64 :=
.seq NamedBody836_1486 NamedBody836_1565

def NamedBody836_1567 : StackLang.HolProg 64 :=
.seq NamedBody836_1483 NamedBody836_1566

def NamedBody836_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1572 : StackLang.HolProg 64 :=
.seq NamedBody836_1570 NamedBody836_1571

def NamedBody836_1573 : StackLang.HolProg 64 :=
.seq NamedBody836_1569 NamedBody836_1572

def NamedBody836_1574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4179#64)

def NamedBody836_1576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1577 : StackLang.HolProg 64 :=
.seq NamedBody836_1575 NamedBody836_1576

def NamedBody836_1578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1581 : StackLang.HolProg 64 :=
.seq NamedBody836_1579 NamedBody836_1580

def NamedBody836_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1583 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1581 NamedBody836_1582

def NamedBody836_1584 : StackLang.HolProg 64 :=
.seq NamedBody836_1578 NamedBody836_1583

def NamedBody836_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 45

def NamedBody836_1588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1594 : StackLang.HolProg 64 :=
.seq NamedBody836_1592 NamedBody836_1593

def NamedBody836_1595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1596 : StackLang.HolProg 64 :=
.seq NamedBody836_1594 NamedBody836_1595

def NamedBody836_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1598 : StackLang.HolProg 64 :=
.seq NamedBody836_1596 NamedBody836_1597

def NamedBody836_1599 : StackLang.HolProg 64 :=
.seq NamedBody836_1591 NamedBody836_1598

def NamedBody836_1600 : StackLang.HolProg 64 :=
.seq NamedBody836_1590 NamedBody836_1599

def NamedBody836_1601 : StackLang.HolProg 64 :=
.seq NamedBody836_1589 NamedBody836_1600

def NamedBody836_1602 : StackLang.HolProg 64 :=
.seq NamedBody836_1588 NamedBody836_1601

def NamedBody836_1603 : StackLang.HolProg 64 :=
.seq NamedBody836_1587 NamedBody836_1602

def NamedBody836_1604 : StackLang.HolProg 64 :=
.seq NamedBody836_1586 NamedBody836_1603

def NamedBody836_1605 : StackLang.HolProg 64 :=
.seq NamedBody836_1585 NamedBody836_1604

def NamedBody836_1606 : StackLang.HolProg 64 :=
.seq NamedBody836_1584 NamedBody836_1605

def NamedBody836_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_1614 : StackLang.HolProg 64 :=
.seq NamedBody836_1612 NamedBody836_1613

def NamedBody836_1615 : StackLang.HolProg 64 :=
.seq NamedBody836_1611 NamedBody836_1614

def NamedBody836_1616 : StackLang.HolProg 64 :=
.seq NamedBody836_1610 NamedBody836_1615

def NamedBody836_1617 : StackLang.HolProg 64 :=
.seq NamedBody836_1609 NamedBody836_1616

def NamedBody836_1618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody836_1619 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1620 : StackLang.HolProg 64 :=
.seq NamedBody836_1618 NamedBody836_1619

def NamedBody836_1621 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1617, 1, 836, 44)) (Sum.inl 641) (some (NamedBody836_1620, 836, 45))

def NamedBody836_1622 : StackLang.HolProg 64 :=
.seq NamedBody836_1608 NamedBody836_1621

def NamedBody836_1623 : StackLang.HolProg 64 :=
.seq NamedBody836_1607 NamedBody836_1622

def NamedBody836_1624 : StackLang.HolProg 64 :=
.seq NamedBody836_1606 NamedBody836_1623

def NamedBody836_1625 : StackLang.HolProg 64 :=
.seq NamedBody836_1577 NamedBody836_1624

def NamedBody836_1626 : StackLang.HolProg 64 :=
.seq NamedBody836_1574 NamedBody836_1625

def NamedBody836_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody836_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4180#64)

def NamedBody836_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1632 : StackLang.HolProg 64 :=
.seq NamedBody836_1630 NamedBody836_1631

def NamedBody836_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody836_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody836_1636 : StackLang.HolProg 64 :=
.seq NamedBody836_1634 NamedBody836_1635

def NamedBody836_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1638 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody836_1636 NamedBody836_1637

def NamedBody836_1639 : StackLang.HolProg 64 :=
.seq NamedBody836_1633 NamedBody836_1638

def NamedBody836_1640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody836_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody836_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 47

def NamedBody836_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody836_1644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody836_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody836_1649 : StackLang.HolProg 64 :=
.seq NamedBody836_1647 NamedBody836_1648

def NamedBody836_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody836_1651 : StackLang.HolProg 64 :=
.seq NamedBody836_1649 NamedBody836_1650

def NamedBody836_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1653 : StackLang.HolProg 64 :=
.seq NamedBody836_1651 NamedBody836_1652

def NamedBody836_1654 : StackLang.HolProg 64 :=
.seq NamedBody836_1646 NamedBody836_1653

def NamedBody836_1655 : StackLang.HolProg 64 :=
.seq NamedBody836_1645 NamedBody836_1654

def NamedBody836_1656 : StackLang.HolProg 64 :=
.seq NamedBody836_1644 NamedBody836_1655

def NamedBody836_1657 : StackLang.HolProg 64 :=
.seq NamedBody836_1643 NamedBody836_1656

def NamedBody836_1658 : StackLang.HolProg 64 :=
.seq NamedBody836_1642 NamedBody836_1657

def NamedBody836_1659 : StackLang.HolProg 64 :=
.seq NamedBody836_1641 NamedBody836_1658

def NamedBody836_1660 : StackLang.HolProg 64 :=
.seq NamedBody836_1640 NamedBody836_1659

def NamedBody836_1661 : StackLang.HolProg 64 :=
.seq NamedBody836_1639 NamedBody836_1660

def NamedBody836_1662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody836_1666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody836_1667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody836_1668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody836_1669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1671 : StackLang.HolProg 64 :=
.seq NamedBody836_1669 NamedBody836_1670

def NamedBody836_1672 : StackLang.HolProg 64 :=
.seq NamedBody836_1668 NamedBody836_1671

def NamedBody836_1673 : StackLang.HolProg 64 :=
.seq NamedBody836_1667 NamedBody836_1672

def NamedBody836_1674 : StackLang.HolProg 64 :=
.seq NamedBody836_1666 NamedBody836_1673

def NamedBody836_1675 : StackLang.HolProg 64 :=
.seq NamedBody836_1665 NamedBody836_1674

def NamedBody836_1676 : StackLang.HolProg 64 :=
.seq NamedBody836_1664 NamedBody836_1675

def NamedBody836_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody836_1678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody836_1679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody836_1680 : StackLang.HolProg 64 :=
.seq NamedBody836_1678 NamedBody836_1679

def NamedBody836_1681 : StackLang.HolProg 64 :=
.seq NamedBody836_1677 NamedBody836_1680

def NamedBody836_1682 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody836_1683 : StackLang.HolProg 64 :=
.seq NamedBody836_1681 NamedBody836_1682

def NamedBody836_1684 : StackLang.HolProg 64 :=
.call (some (NamedBody836_1676, 1, 836, 46)) (Sum.inl 70) (some (NamedBody836_1683, 836, 47))

def NamedBody836_1685 : StackLang.HolProg 64 :=
.seq NamedBody836_1663 NamedBody836_1684

def NamedBody836_1686 : StackLang.HolProg 64 :=
.seq NamedBody836_1662 NamedBody836_1685

def NamedBody836_1687 : StackLang.HolProg 64 :=
.seq NamedBody836_1661 NamedBody836_1686

def NamedBody836_1688 : StackLang.HolProg 64 :=
.seq NamedBody836_1632 NamedBody836_1687

def NamedBody836_1689 : StackLang.HolProg 64 :=
.seq NamedBody836_1629 NamedBody836_1688

def NamedBody836_1690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody836_1691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody836_1692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody836_1693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody836_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody836_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody836_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody836_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody836_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody836_1701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody836_1703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody836_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody836_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def NamedBody836_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody836_1707 : StackLang.HolProg 64 :=
.seq NamedBody836_1705 NamedBody836_1706

def NamedBody836_1708 : StackLang.HolProg 64 :=
.seq NamedBody836_1704 NamedBody836_1707

def NamedBody836_1709 : StackLang.HolProg 64 :=
.seq NamedBody836_1703 NamedBody836_1708

def NamedBody836_1710 : StackLang.HolProg 64 :=
.seq NamedBody836_1702 NamedBody836_1709

def NamedBody836_1711 : StackLang.HolProg 64 :=
.seq NamedBody836_1701 NamedBody836_1710

def NamedBody836_1712 : StackLang.HolProg 64 :=
.seq NamedBody836_1700 NamedBody836_1711

def NamedBody836_1713 : StackLang.HolProg 64 :=
.seq NamedBody836_1699 NamedBody836_1712

def NamedBody836_1714 : StackLang.HolProg 64 :=
.seq NamedBody836_1698 NamedBody836_1713

def NamedBody836_1715 : StackLang.HolProg 64 :=
.seq NamedBody836_1697 NamedBody836_1714

def NamedBody836_1716 : StackLang.HolProg 64 :=
.seq NamedBody836_1696 NamedBody836_1715

def NamedBody836_1717 : StackLang.HolProg 64 :=
.seq NamedBody836_1695 NamedBody836_1716

def NamedBody836_1718 : StackLang.HolProg 64 :=
.seq NamedBody836_1694 NamedBody836_1717

def NamedBody836_1719 : StackLang.HolProg 64 :=
.seq NamedBody836_1693 NamedBody836_1718

def NamedBody836_1720 : StackLang.HolProg 64 :=
.seq NamedBody836_1692 NamedBody836_1719

def NamedBody836_1721 : StackLang.HolProg 64 :=
.seq NamedBody836_1691 NamedBody836_1720

def NamedBody836_1722 : StackLang.HolProg 64 :=
.seq NamedBody836_1690 NamedBody836_1721

def NamedBody836_1723 : StackLang.HolProg 64 :=
.seq NamedBody836_1689 NamedBody836_1722

def NamedBody836_1724 : StackLang.HolProg 64 :=
.seq NamedBody836_1628 NamedBody836_1723

def NamedBody836_1725 : StackLang.HolProg 64 :=
.seq NamedBody836_1627 NamedBody836_1724

def NamedBody836_1726 : StackLang.HolProg 64 :=
.seq NamedBody836_1626 NamedBody836_1725

def NamedBody836_1727 : StackLang.HolProg 64 :=
.seq NamedBody836_1573 NamedBody836_1726

def NamedBody836_1728 : StackLang.HolProg 64 :=
.seq NamedBody836_1568 NamedBody836_1727

def NamedBody836_1729 : StackLang.HolProg 64 :=
.seq NamedBody836_1567 NamedBody836_1728

def NamedBody836_1730 : StackLang.HolProg 64 :=
.seq NamedBody836_1482 NamedBody836_1729

def NamedBody836_1731 : StackLang.HolProg 64 :=
.seq NamedBody836_1477 NamedBody836_1730

def NamedBody836_1732 : StackLang.HolProg 64 :=
.seq NamedBody836_1476 NamedBody836_1731

def NamedBody836_1733 : StackLang.HolProg 64 :=
.seq NamedBody836_1475 NamedBody836_1732

def NamedBody836_1734 : StackLang.HolProg 64 :=
.seq NamedBody836_1474 NamedBody836_1733

def NamedBody836_1735 : StackLang.HolProg 64 :=
.seq NamedBody836_1377 NamedBody836_1734

def NamedBody836_1736 : StackLang.HolProg 64 :=
.seq NamedBody836_1366 NamedBody836_1735

def NamedBody836_1737 : StackLang.HolProg 64 :=
.seq NamedBody836_1365 NamedBody836_1736

def NamedBody836_1738 : StackLang.HolProg 64 :=
.seq NamedBody836_1296 NamedBody836_1737

def NamedBody836_1739 : StackLang.HolProg 64 :=
.seq NamedBody836_1287 NamedBody836_1738

def NamedBody836_1740 : StackLang.HolProg 64 :=
.seq NamedBody836_1286 NamedBody836_1739

def NamedBody836_1741 : StackLang.HolProg 64 :=
.seq NamedBody836_1285 NamedBody836_1740

def NamedBody836_1742 : StackLang.HolProg 64 :=
.seq NamedBody836_1284 NamedBody836_1741

def NamedBody836_1743 : StackLang.HolProg 64 :=
.seq NamedBody836_1217 NamedBody836_1742

def NamedBody836_1744 : StackLang.HolProg 64 :=
.seq NamedBody836_1214 NamedBody836_1743

def NamedBody836_1745 : StackLang.HolProg 64 :=
.seq NamedBody836_1213 NamedBody836_1744

def NamedBody836_1746 : StackLang.HolProg 64 :=
.seq NamedBody836_1212 NamedBody836_1745

def NamedBody836_1747 : StackLang.HolProg 64 :=
.seq NamedBody836_1211 NamedBody836_1746

def NamedBody836_1748 : StackLang.HolProg 64 :=
.seq NamedBody836_1156 NamedBody836_1747

def NamedBody836_1749 : StackLang.HolProg 64 :=
.seq NamedBody836_1153 NamedBody836_1748

def NamedBody836_1750 : StackLang.HolProg 64 :=
.seq NamedBody836_1152 NamedBody836_1749

def NamedBody836_1751 : StackLang.HolProg 64 :=
.seq NamedBody836_1151 NamedBody836_1750

def NamedBody836_1752 : StackLang.HolProg 64 :=
.seq NamedBody836_1150 NamedBody836_1751

def NamedBody836_1753 : StackLang.HolProg 64 :=
.seq NamedBody836_1095 NamedBody836_1752

def NamedBody836_1754 : StackLang.HolProg 64 :=
.seq NamedBody836_1092 NamedBody836_1753

def NamedBody836_1755 : StackLang.HolProg 64 :=
.seq NamedBody836_1091 NamedBody836_1754

def NamedBody836_1756 : StackLang.HolProg 64 :=
.seq NamedBody836_1090 NamedBody836_1755

def NamedBody836_1757 : StackLang.HolProg 64 :=
.seq NamedBody836_1089 NamedBody836_1756

def NamedBody836_1758 : StackLang.HolProg 64 :=
.seq NamedBody836_1034 NamedBody836_1757

def NamedBody836_1759 : StackLang.HolProg 64 :=
.seq NamedBody836_1033 NamedBody836_1758

def NamedBody836_1760 : StackLang.HolProg 64 :=
.seq NamedBody836_1032 NamedBody836_1759

def NamedBody836_1761 : StackLang.HolProg 64 :=
.seq NamedBody836_979 NamedBody836_1760

def NamedBody836_1762 : StackLang.HolProg 64 :=
.seq NamedBody836_978 NamedBody836_1761

def NamedBody836_1763 : StackLang.HolProg 64 :=
.seq NamedBody836_977 NamedBody836_1762

def NamedBody836_1764 : StackLang.HolProg 64 :=
.seq NamedBody836_976 NamedBody836_1763

def NamedBody836_1765 : StackLang.HolProg 64 :=
.seq NamedBody836_975 NamedBody836_1764

def NamedBody836_1766 : StackLang.HolProg 64 :=
.seq NamedBody836_876 NamedBody836_1765

def NamedBody836_1767 : StackLang.HolProg 64 :=
.seq NamedBody836_875 NamedBody836_1766

def NamedBody836_1768 : StackLang.HolProg 64 :=
.seq NamedBody836_874 NamedBody836_1767

def NamedBody836_1769 : StackLang.HolProg 64 :=
.seq NamedBody836_873 NamedBody836_1768

def NamedBody836_1770 : StackLang.HolProg 64 :=
.seq NamedBody836_862 NamedBody836_1769

def NamedBody836_1771 : StackLang.HolProg 64 :=
.seq NamedBody836_861 NamedBody836_1770

def NamedBody836_1772 : StackLang.HolProg 64 :=
.seq NamedBody836_860 NamedBody836_1771

def NamedBody836_1773 : StackLang.HolProg 64 :=
.seq NamedBody836_859 NamedBody836_1772

def NamedBody836_1774 : StackLang.HolProg 64 :=
.seq NamedBody836_848 NamedBody836_1773

def NamedBody836_1775 : StackLang.HolProg 64 :=
.seq NamedBody836_847 NamedBody836_1774

def NamedBody836_1776 : StackLang.HolProg 64 :=
.seq NamedBody836_846 NamedBody836_1775

def NamedBody836_1777 : StackLang.HolProg 64 :=
.seq NamedBody836_845 NamedBody836_1776

def NamedBody836_1778 : StackLang.HolProg 64 :=
.seq NamedBody836_788 NamedBody836_1777

def NamedBody836_1779 : StackLang.HolProg 64 :=
.seq NamedBody836_787 NamedBody836_1778

def NamedBody836_1780 : StackLang.HolProg 64 :=
.seq NamedBody836_786 NamedBody836_1779

def NamedBody836_1781 : StackLang.HolProg 64 :=
.seq NamedBody836_733 NamedBody836_1780

def NamedBody836_1782 : StackLang.HolProg 64 :=
.seq NamedBody836_726 NamedBody836_1781

def NamedBody836_1783 : StackLang.HolProg 64 :=
.seq NamedBody836_725 NamedBody836_1782

def NamedBody836_1784 : StackLang.HolProg 64 :=
.seq NamedBody836_656 NamedBody836_1783

def NamedBody836_1785 : StackLang.HolProg 64 :=
.seq NamedBody836_655 NamedBody836_1784

def NamedBody836_1786 : StackLang.HolProg 64 :=
.seq NamedBody836_654 NamedBody836_1785

def NamedBody836_1787 : StackLang.HolProg 64 :=
.seq NamedBody836_581 NamedBody836_1786

def NamedBody836_1788 : StackLang.HolProg 64 :=
.seq NamedBody836_570 NamedBody836_1787

def NamedBody836_1789 : StackLang.HolProg 64 :=
.seq NamedBody836_569 NamedBody836_1788

def NamedBody836_1790 : StackLang.HolProg 64 :=
.seq NamedBody836_502 NamedBody836_1789

def NamedBody836_1791 : StackLang.HolProg 64 :=
.seq NamedBody836_495 NamedBody836_1790

def NamedBody836_1792 : StackLang.HolProg 64 :=
.seq NamedBody836_494 NamedBody836_1791

def NamedBody836_1793 : StackLang.HolProg 64 :=
.seq NamedBody836_493 NamedBody836_1792

def NamedBody836_1794 : StackLang.HolProg 64 :=
.seq NamedBody836_492 NamedBody836_1793

def NamedBody836_1795 : StackLang.HolProg 64 :=
.seq NamedBody836_491 NamedBody836_1794

def NamedBody836_1796 : StackLang.HolProg 64 :=
.seq NamedBody836_490 NamedBody836_1795

def NamedBody836_1797 : StackLang.HolProg 64 :=
.seq NamedBody836_489 NamedBody836_1796

def NamedBody836_1798 : StackLang.HolProg 64 :=
.seq NamedBody836_474 NamedBody836_1797

def NamedBody836_1799 : StackLang.HolProg 64 :=
.seq NamedBody836_473 NamedBody836_1798

def NamedBody836_1800 : StackLang.HolProg 64 :=
.seq NamedBody836_472 NamedBody836_1799

def NamedBody836_1801 : StackLang.HolProg 64 :=
.seq NamedBody836_471 NamedBody836_1800

def NamedBody836_1802 : StackLang.HolProg 64 :=
.seq NamedBody836_412 NamedBody836_1801

def NamedBody836_1803 : StackLang.HolProg 64 :=
.seq NamedBody836_411 NamedBody836_1802

def NamedBody836_1804 : StackLang.HolProg 64 :=
.seq NamedBody836_410 NamedBody836_1803

def NamedBody836_1805 : StackLang.HolProg 64 :=
.seq NamedBody836_357 NamedBody836_1804

def NamedBody836_1806 : StackLang.HolProg 64 :=
.seq NamedBody836_354 NamedBody836_1805

def NamedBody836_1807 : StackLang.HolProg 64 :=
.seq NamedBody836_353 NamedBody836_1806

def NamedBody836_1808 : StackLang.HolProg 64 :=
.seq NamedBody836_352 NamedBody836_1807

def NamedBody836_1809 : StackLang.HolProg 64 :=
.seq NamedBody836_351 NamedBody836_1808

def NamedBody836_1810 : StackLang.HolProg 64 :=
.seq NamedBody836_350 NamedBody836_1809

def NamedBody836_1811 : StackLang.HolProg 64 :=
.seq NamedBody836_349 NamedBody836_1810

def NamedBody836_1812 : StackLang.HolProg 64 :=
.seq NamedBody836_334 NamedBody836_1811

def NamedBody836_1813 : StackLang.HolProg 64 :=
.seq NamedBody836_333 NamedBody836_1812

def NamedBody836_1814 : StackLang.HolProg 64 :=
.seq NamedBody836_332 NamedBody836_1813

def NamedBody836_1815 : StackLang.HolProg 64 :=
.seq NamedBody836_331 NamedBody836_1814

def NamedBody836_1816 : StackLang.HolProg 64 :=
.seq NamedBody836_276 NamedBody836_1815

def NamedBody836_1817 : StackLang.HolProg 64 :=
.seq NamedBody836_275 NamedBody836_1816

def NamedBody836_1818 : StackLang.HolProg 64 :=
.seq NamedBody836_274 NamedBody836_1817

def NamedBody836_1819 : StackLang.HolProg 64 :=
.seq NamedBody836_221 NamedBody836_1818

def NamedBody836_1820 : StackLang.HolProg 64 :=
.seq NamedBody836_218 NamedBody836_1819

def NamedBody836_1821 : StackLang.HolProg 64 :=
.seq NamedBody836_217 NamedBody836_1820

def NamedBody836_1822 : StackLang.HolProg 64 :=
.seq NamedBody836_216 NamedBody836_1821

def NamedBody836_1823 : StackLang.HolProg 64 :=
.seq NamedBody836_215 NamedBody836_1822

def NamedBody836_1824 : StackLang.HolProg 64 :=
.seq NamedBody836_214 NamedBody836_1823

def NamedBody836_1825 : StackLang.HolProg 64 :=
.seq NamedBody836_213 NamedBody836_1824

def NamedBody836_1826 : StackLang.HolProg 64 :=
.seq NamedBody836_198 NamedBody836_1825

def NamedBody836_1827 : StackLang.HolProg 64 :=
.seq NamedBody836_197 NamedBody836_1826

def NamedBody836_1828 : StackLang.HolProg 64 :=
.seq NamedBody836_196 NamedBody836_1827

def NamedBody836_1829 : StackLang.HolProg 64 :=
.seq NamedBody836_195 NamedBody836_1828

def NamedBody836_1830 : StackLang.HolProg 64 :=
.seq NamedBody836_140 NamedBody836_1829

def NamedBody836_1831 : StackLang.HolProg 64 :=
.seq NamedBody836_139 NamedBody836_1830

def NamedBody836_1832 : StackLang.HolProg 64 :=
.seq NamedBody836_138 NamedBody836_1831

def NamedBody836_1833 : StackLang.HolProg 64 :=
.seq NamedBody836_85 NamedBody836_1832

def NamedBody836_1834 : StackLang.HolProg 64 :=
.seq NamedBody836_84 NamedBody836_1833

def NamedBody836_1835 : StackLang.HolProg 64 :=
.seq NamedBody836_83 NamedBody836_1834

def NamedBody836_1836 : StackLang.HolProg 64 :=
.seq NamedBody836_82 NamedBody836_1835

def NamedBody836_1837 : StackLang.HolProg 64 :=
.seq NamedBody836_81 NamedBody836_1836

def NamedBody836_1838 : StackLang.HolProg 64 :=
.seq NamedBody836_28 NamedBody836_1837

def NamedBody836_1839 : StackLang.HolProg 64 :=
.seq NamedBody836_21 NamedBody836_1838

def NamedBody836_1840 : StackLang.HolProg 64 :=
.seq NamedBody836_20 NamedBody836_1839

def NamedBody836_1841 : StackLang.HolProg 64 :=
.seq NamedBody836_19 NamedBody836_1840

def NamedBody836_1842 : StackLang.HolProg 64 :=
.seq NamedBody836_18 NamedBody836_1841

def NamedBody836_1843 : StackLang.HolProg 64 :=
.seq NamedBody836_17 NamedBody836_1842

def NamedBody836_1844 : StackLang.HolProg 64 :=
.seq NamedBody836_16 NamedBody836_1843

def NamedBody836_1845 : StackLang.HolProg 64 :=
.seq NamedBody836_15 NamedBody836_1844

def NamedBody836_1846 : StackLang.HolProg 64 :=
.seq NamedBody836_14 NamedBody836_1845

def NamedBody836_1847 : StackLang.HolProg 64 :=
.seq NamedBody836_13 NamedBody836_1846

def NamedBody836_1848 : StackLang.HolProg 64 :=
.seq NamedBody836_12 NamedBody836_1847

def NamedBody836_1849 : StackLang.HolProg 64 :=
.seq NamedBody836_11 NamedBody836_1848

def NamedBody836_1850 : StackLang.HolProg 64 :=
.seq NamedBody836_10 NamedBody836_1849

def NamedBody836_1851 : StackLang.HolProg 64 :=
.seq NamedBody836_9 NamedBody836_1850

def NamedBody836_1852 : StackLang.HolProg 64 :=
.seq NamedBody836_8 NamedBody836_1851

def NamedBody836_1853 : StackLang.HolProg 64 :=
.seq NamedBody836_7 NamedBody836_1852

def NamedBody836_1854 : StackLang.HolProg 64 :=
.seq NamedBody836_6 NamedBody836_1853

def Named836 : Nat × StackLang.HolProg 64 := (836, NamedBody836_1854)
theorem Named836_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed836 = Named836 := by
  kernel_rfl
#print axioms Named836_eq
end InitECandidate.Proofs.BackendStages
