import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed236
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody236_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody236_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody236_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody236_3 : StackLang.HolProg 64 :=
.seq NamedBody236_1 NamedBody236_2

def NamedBody236_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody236_3 NamedBody236_4

def NamedBody236_6 : StackLang.HolProg 64 :=
.seq NamedBody236_0 NamedBody236_5

def NamedBody236_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody236_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody236_9 : StackLang.HolProg 64 :=
.seq NamedBody236_7 NamedBody236_8

def NamedBody236_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody236_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody236_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody236_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551512#64))

def NamedBody236_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody236_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody236_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody236_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody236_19 : StackLang.HolProg 64 :=
.seq NamedBody236_17 NamedBody236_18

def NamedBody236_20 : StackLang.HolProg 64 :=
.seq NamedBody236_16 NamedBody236_19

def NamedBody236_21 : StackLang.HolProg 64 :=
.seq NamedBody236_15 NamedBody236_20

def NamedBody236_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 444#64)

def NamedBody236_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody236_25 : StackLang.HolProg 64 :=
.seq NamedBody236_23 NamedBody236_24

def NamedBody236_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody236_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody236_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody236_29 : StackLang.HolProg 64 :=
.seq NamedBody236_27 NamedBody236_28

def NamedBody236_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody236_29 NamedBody236_30

def NamedBody236_32 : StackLang.HolProg 64 :=
.seq NamedBody236_26 NamedBody236_31

def NamedBody236_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody236_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody236_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 3

def NamedBody236_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody236_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody236_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody236_42 : StackLang.HolProg 64 :=
.seq NamedBody236_40 NamedBody236_41

def NamedBody236_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody236_44 : StackLang.HolProg 64 :=
.seq NamedBody236_42 NamedBody236_43

def NamedBody236_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_46 : StackLang.HolProg 64 :=
.seq NamedBody236_44 NamedBody236_45

def NamedBody236_47 : StackLang.HolProg 64 :=
.seq NamedBody236_39 NamedBody236_46

def NamedBody236_48 : StackLang.HolProg 64 :=
.seq NamedBody236_38 NamedBody236_47

def NamedBody236_49 : StackLang.HolProg 64 :=
.seq NamedBody236_37 NamedBody236_48

def NamedBody236_50 : StackLang.HolProg 64 :=
.seq NamedBody236_36 NamedBody236_49

def NamedBody236_51 : StackLang.HolProg 64 :=
.seq NamedBody236_35 NamedBody236_50

def NamedBody236_52 : StackLang.HolProg 64 :=
.seq NamedBody236_34 NamedBody236_51

def NamedBody236_53 : StackLang.HolProg 64 :=
.seq NamedBody236_33 NamedBody236_52

def NamedBody236_54 : StackLang.HolProg 64 :=
.seq NamedBody236_32 NamedBody236_53

def NamedBody236_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody236_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody236_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody236_64 : StackLang.HolProg 64 :=
.seq NamedBody236_62 NamedBody236_63

def NamedBody236_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody236_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_67 : StackLang.HolProg 64 :=
.seq NamedBody236_65 NamedBody236_66

def NamedBody236_68 : StackLang.HolProg 64 :=
.seq NamedBody236_64 NamedBody236_67

def NamedBody236_69 : StackLang.HolProg 64 :=
.seq NamedBody236_61 NamedBody236_68

def NamedBody236_70 : StackLang.HolProg 64 :=
.seq NamedBody236_60 NamedBody236_69

def NamedBody236_71 : StackLang.HolProg 64 :=
.seq NamedBody236_59 NamedBody236_70

def NamedBody236_72 : StackLang.HolProg 64 :=
.seq NamedBody236_58 NamedBody236_71

def NamedBody236_73 : StackLang.HolProg 64 :=
.seq NamedBody236_57 NamedBody236_72

def NamedBody236_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody236_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody236_77 : StackLang.HolProg 64 :=
.seq NamedBody236_75 NamedBody236_76

def NamedBody236_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody236_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_80 : StackLang.HolProg 64 :=
.seq NamedBody236_78 NamedBody236_79

def NamedBody236_81 : StackLang.HolProg 64 :=
.seq NamedBody236_77 NamedBody236_80

def NamedBody236_82 : StackLang.HolProg 64 :=
.seq NamedBody236_74 NamedBody236_81

def NamedBody236_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody236_84 : StackLang.HolProg 64 :=
.seq NamedBody236_82 NamedBody236_83

def NamedBody236_85 : StackLang.HolProg 64 :=
.call (some (NamedBody236_73, 1, 236, 2)) (Sum.inl 78) (some (NamedBody236_84, 236, 3))

def NamedBody236_86 : StackLang.HolProg 64 :=
.seq NamedBody236_56 NamedBody236_85

def NamedBody236_87 : StackLang.HolProg 64 :=
.seq NamedBody236_55 NamedBody236_86

def NamedBody236_88 : StackLang.HolProg 64 :=
.seq NamedBody236_54 NamedBody236_87

def NamedBody236_89 : StackLang.HolProg 64 :=
.seq NamedBody236_25 NamedBody236_88

def NamedBody236_90 : StackLang.HolProg 64 :=
.seq NamedBody236_22 NamedBody236_89

def NamedBody236_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody236_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody236_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody236_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody236_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551512#64))

def NamedBody236_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 445#64)

def NamedBody236_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody236_100 : StackLang.HolProg 64 :=
.seq NamedBody236_98 NamedBody236_99

def NamedBody236_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody236_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody236_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody236_104 : StackLang.HolProg 64 :=
.seq NamedBody236_102 NamedBody236_103

def NamedBody236_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody236_104 NamedBody236_105

def NamedBody236_107 : StackLang.HolProg 64 :=
.seq NamedBody236_101 NamedBody236_106

def NamedBody236_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody236_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody236_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 5

def NamedBody236_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody236_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody236_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody236_117 : StackLang.HolProg 64 :=
.seq NamedBody236_115 NamedBody236_116

def NamedBody236_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody236_119 : StackLang.HolProg 64 :=
.seq NamedBody236_117 NamedBody236_118

def NamedBody236_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_121 : StackLang.HolProg 64 :=
.seq NamedBody236_119 NamedBody236_120

def NamedBody236_122 : StackLang.HolProg 64 :=
.seq NamedBody236_114 NamedBody236_121

def NamedBody236_123 : StackLang.HolProg 64 :=
.seq NamedBody236_113 NamedBody236_122

def NamedBody236_124 : StackLang.HolProg 64 :=
.seq NamedBody236_112 NamedBody236_123

def NamedBody236_125 : StackLang.HolProg 64 :=
.seq NamedBody236_111 NamedBody236_124

def NamedBody236_126 : StackLang.HolProg 64 :=
.seq NamedBody236_110 NamedBody236_125

def NamedBody236_127 : StackLang.HolProg 64 :=
.seq NamedBody236_109 NamedBody236_126

def NamedBody236_128 : StackLang.HolProg 64 :=
.seq NamedBody236_108 NamedBody236_127

def NamedBody236_129 : StackLang.HolProg 64 :=
.seq NamedBody236_107 NamedBody236_128

def NamedBody236_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody236_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody236_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_138 : StackLang.HolProg 64 :=
.seq NamedBody236_136 NamedBody236_137

def NamedBody236_139 : StackLang.HolProg 64 :=
.seq NamedBody236_135 NamedBody236_138

def NamedBody236_140 : StackLang.HolProg 64 :=
.seq NamedBody236_134 NamedBody236_139

def NamedBody236_141 : StackLang.HolProg 64 :=
.seq NamedBody236_133 NamedBody236_140

def NamedBody236_142 : StackLang.HolProg 64 :=
.seq NamedBody236_132 NamedBody236_141

def NamedBody236_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody236_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_145 : StackLang.HolProg 64 :=
.seq NamedBody236_143 NamedBody236_144

def NamedBody236_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody236_147 : StackLang.HolProg 64 :=
.seq NamedBody236_145 NamedBody236_146

def NamedBody236_148 : StackLang.HolProg 64 :=
.call (some (NamedBody236_142, 1, 236, 4)) (Sum.inl 87) (some (NamedBody236_147, 236, 5))

def NamedBody236_149 : StackLang.HolProg 64 :=
.seq NamedBody236_131 NamedBody236_148

def NamedBody236_150 : StackLang.HolProg 64 :=
.seq NamedBody236_130 NamedBody236_149

def NamedBody236_151 : StackLang.HolProg 64 :=
.seq NamedBody236_129 NamedBody236_150

def NamedBody236_152 : StackLang.HolProg 64 :=
.seq NamedBody236_100 NamedBody236_151

def NamedBody236_153 : StackLang.HolProg 64 :=
.seq NamedBody236_97 NamedBody236_152

def NamedBody236_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody236_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody236_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody236_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody236_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody236_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551512#64))

def NamedBody236_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 446#64)

def NamedBody236_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody236_164 : StackLang.HolProg 64 :=
.seq NamedBody236_162 NamedBody236_163

def NamedBody236_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody236_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody236_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody236_168 : StackLang.HolProg 64 :=
.seq NamedBody236_166 NamedBody236_167

def NamedBody236_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody236_168 NamedBody236_169

def NamedBody236_171 : StackLang.HolProg 64 :=
.seq NamedBody236_165 NamedBody236_170

def NamedBody236_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody236_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody236_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 7

def NamedBody236_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody236_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody236_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody236_181 : StackLang.HolProg 64 :=
.seq NamedBody236_179 NamedBody236_180

def NamedBody236_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody236_183 : StackLang.HolProg 64 :=
.seq NamedBody236_181 NamedBody236_182

def NamedBody236_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_185 : StackLang.HolProg 64 :=
.seq NamedBody236_183 NamedBody236_184

def NamedBody236_186 : StackLang.HolProg 64 :=
.seq NamedBody236_178 NamedBody236_185

def NamedBody236_187 : StackLang.HolProg 64 :=
.seq NamedBody236_177 NamedBody236_186

def NamedBody236_188 : StackLang.HolProg 64 :=
.seq NamedBody236_176 NamedBody236_187

def NamedBody236_189 : StackLang.HolProg 64 :=
.seq NamedBody236_175 NamedBody236_188

def NamedBody236_190 : StackLang.HolProg 64 :=
.seq NamedBody236_174 NamedBody236_189

def NamedBody236_191 : StackLang.HolProg 64 :=
.seq NamedBody236_173 NamedBody236_190

def NamedBody236_192 : StackLang.HolProg 64 :=
.seq NamedBody236_172 NamedBody236_191

def NamedBody236_193 : StackLang.HolProg 64 :=
.seq NamedBody236_171 NamedBody236_192

def NamedBody236_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody236_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody236_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody236_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody236_201 : StackLang.HolProg 64 :=
.seq NamedBody236_199 NamedBody236_200

def NamedBody236_202 : StackLang.HolProg 64 :=
.seq NamedBody236_198 NamedBody236_201

def NamedBody236_203 : StackLang.HolProg 64 :=
.seq NamedBody236_197 NamedBody236_202

def NamedBody236_204 : StackLang.HolProg 64 :=
.seq NamedBody236_196 NamedBody236_203

def NamedBody236_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody236_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody236_207 : StackLang.HolProg 64 :=
.seq NamedBody236_205 NamedBody236_206

def NamedBody236_208 : StackLang.HolProg 64 :=
.call (some (NamedBody236_204, 1, 236, 6)) (Sum.inl 154) (some (NamedBody236_207, 236, 7))

def NamedBody236_209 : StackLang.HolProg 64 :=
.seq NamedBody236_195 NamedBody236_208

def NamedBody236_210 : StackLang.HolProg 64 :=
.seq NamedBody236_194 NamedBody236_209

def NamedBody236_211 : StackLang.HolProg 64 :=
.seq NamedBody236_193 NamedBody236_210

def NamedBody236_212 : StackLang.HolProg 64 :=
.seq NamedBody236_164 NamedBody236_211

def NamedBody236_213 : StackLang.HolProg 64 :=
.seq NamedBody236_161 NamedBody236_212

def NamedBody236_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody236_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody236_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody236_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody236_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody236_219 : StackLang.HolProg 64 :=
.seq NamedBody236_217 NamedBody236_218

def NamedBody236_220 : StackLang.HolProg 64 :=
.seq NamedBody236_216 NamedBody236_219

def NamedBody236_221 : StackLang.HolProg 64 :=
.seq NamedBody236_215 NamedBody236_220

def NamedBody236_222 : StackLang.HolProg 64 :=
.seq NamedBody236_214 NamedBody236_221

def NamedBody236_223 : StackLang.HolProg 64 :=
.seq NamedBody236_213 NamedBody236_222

def NamedBody236_224 : StackLang.HolProg 64 :=
.seq NamedBody236_160 NamedBody236_223

def NamedBody236_225 : StackLang.HolProg 64 :=
.seq NamedBody236_159 NamedBody236_224

def NamedBody236_226 : StackLang.HolProg 64 :=
.seq NamedBody236_158 NamedBody236_225

def NamedBody236_227 : StackLang.HolProg 64 :=
.seq NamedBody236_157 NamedBody236_226

def NamedBody236_228 : StackLang.HolProg 64 :=
.seq NamedBody236_156 NamedBody236_227

def NamedBody236_229 : StackLang.HolProg 64 :=
.seq NamedBody236_155 NamedBody236_228

def NamedBody236_230 : StackLang.HolProg 64 :=
.seq NamedBody236_154 NamedBody236_229

def NamedBody236_231 : StackLang.HolProg 64 :=
.seq NamedBody236_153 NamedBody236_230

def NamedBody236_232 : StackLang.HolProg 64 :=
.seq NamedBody236_96 NamedBody236_231

def NamedBody236_233 : StackLang.HolProg 64 :=
.seq NamedBody236_95 NamedBody236_232

def NamedBody236_234 : StackLang.HolProg 64 :=
.seq NamedBody236_94 NamedBody236_233

def NamedBody236_235 : StackLang.HolProg 64 :=
.seq NamedBody236_93 NamedBody236_234

def NamedBody236_236 : StackLang.HolProg 64 :=
.seq NamedBody236_92 NamedBody236_235

def NamedBody236_237 : StackLang.HolProg 64 :=
.seq NamedBody236_91 NamedBody236_236

def NamedBody236_238 : StackLang.HolProg 64 :=
.seq NamedBody236_90 NamedBody236_237

def NamedBody236_239 : StackLang.HolProg 64 :=
.seq NamedBody236_21 NamedBody236_238

def NamedBody236_240 : StackLang.HolProg 64 :=
.seq NamedBody236_14 NamedBody236_239

def NamedBody236_241 : StackLang.HolProg 64 :=
.seq NamedBody236_13 NamedBody236_240

def NamedBody236_242 : StackLang.HolProg 64 :=
.seq NamedBody236_12 NamedBody236_241

def NamedBody236_243 : StackLang.HolProg 64 :=
.seq NamedBody236_11 NamedBody236_242

def NamedBody236_244 : StackLang.HolProg 64 :=
.seq NamedBody236_10 NamedBody236_243

def NamedBody236_245 : StackLang.HolProg 64 :=
.seq NamedBody236_9 NamedBody236_244

def NamedBody236_246 : StackLang.HolProg 64 :=
.seq NamedBody236_6 NamedBody236_245

def Named236 : Nat × StackLang.HolProg 64 := (236, NamedBody236_246)
theorem Named236_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed236 = Named236 := by
  kernel_rfl
#print axioms Named236_eq
end InitECandidate.Proofs.BackendStages
