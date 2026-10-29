import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed466
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody466_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody466_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody466_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody466_3 : StackLang.HolProg 64 :=
.seq NamedBody466_1 NamedBody466_2

def NamedBody466_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody466_3 NamedBody466_4

def NamedBody466_6 : StackLang.HolProg 64 :=
.seq NamedBody466_0 NamedBody466_5

def NamedBody466_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody466_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody466_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody466_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody466_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody466_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 240#64)))

def NamedBody466_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody466_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody466_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody466_18 : StackLang.HolProg 64 :=
.seq NamedBody466_16 NamedBody466_17

def NamedBody466_19 : StackLang.HolProg 64 :=
.seq NamedBody466_15 NamedBody466_18

def NamedBody466_20 : StackLang.HolProg 64 :=
.seq NamedBody466_14 NamedBody466_19

def NamedBody466_21 : StackLang.HolProg 64 :=
.seq NamedBody466_13 NamedBody466_20

def NamedBody466_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1490#64)

def NamedBody466_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody466_25 : StackLang.HolProg 64 :=
.seq NamedBody466_23 NamedBody466_24

def NamedBody466_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody466_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody466_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody466_29 : StackLang.HolProg 64 :=
.seq NamedBody466_27 NamedBody466_28

def NamedBody466_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody466_29 NamedBody466_30

def NamedBody466_32 : StackLang.HolProg 64 :=
.seq NamedBody466_26 NamedBody466_31

def NamedBody466_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody466_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody466_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 3

def NamedBody466_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody466_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody466_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody466_42 : StackLang.HolProg 64 :=
.seq NamedBody466_40 NamedBody466_41

def NamedBody466_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody466_44 : StackLang.HolProg 64 :=
.seq NamedBody466_42 NamedBody466_43

def NamedBody466_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_46 : StackLang.HolProg 64 :=
.seq NamedBody466_44 NamedBody466_45

def NamedBody466_47 : StackLang.HolProg 64 :=
.seq NamedBody466_39 NamedBody466_46

def NamedBody466_48 : StackLang.HolProg 64 :=
.seq NamedBody466_38 NamedBody466_47

def NamedBody466_49 : StackLang.HolProg 64 :=
.seq NamedBody466_37 NamedBody466_48

def NamedBody466_50 : StackLang.HolProg 64 :=
.seq NamedBody466_36 NamedBody466_49

def NamedBody466_51 : StackLang.HolProg 64 :=
.seq NamedBody466_35 NamedBody466_50

def NamedBody466_52 : StackLang.HolProg 64 :=
.seq NamedBody466_34 NamedBody466_51

def NamedBody466_53 : StackLang.HolProg 64 :=
.seq NamedBody466_33 NamedBody466_52

def NamedBody466_54 : StackLang.HolProg 64 :=
.seq NamedBody466_32 NamedBody466_53

def NamedBody466_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody466_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_64 : StackLang.HolProg 64 :=
.seq NamedBody466_62 NamedBody466_63

def NamedBody466_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody466_66 : StackLang.HolProg 64 :=
.seq NamedBody466_64 NamedBody466_65

def NamedBody466_67 : StackLang.HolProg 64 :=
.seq NamedBody466_61 NamedBody466_66

def NamedBody466_68 : StackLang.HolProg 64 :=
.seq NamedBody466_60 NamedBody466_67

def NamedBody466_69 : StackLang.HolProg 64 :=
.seq NamedBody466_59 NamedBody466_68

def NamedBody466_70 : StackLang.HolProg 64 :=
.seq NamedBody466_58 NamedBody466_69

def NamedBody466_71 : StackLang.HolProg 64 :=
.seq NamedBody466_57 NamedBody466_70

def NamedBody466_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_75 : StackLang.HolProg 64 :=
.seq NamedBody466_73 NamedBody466_74

def NamedBody466_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody466_77 : StackLang.HolProg 64 :=
.seq NamedBody466_75 NamedBody466_76

def NamedBody466_78 : StackLang.HolProg 64 :=
.seq NamedBody466_72 NamedBody466_77

def NamedBody466_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody466_80 : StackLang.HolProg 64 :=
.seq NamedBody466_78 NamedBody466_79

def NamedBody466_81 : StackLang.HolProg 64 :=
.call (some (NamedBody466_71, 1, 466, 2)) (Sum.inl 88) (some (NamedBody466_80, 466, 3))

def NamedBody466_82 : StackLang.HolProg 64 :=
.seq NamedBody466_56 NamedBody466_81

def NamedBody466_83 : StackLang.HolProg 64 :=
.seq NamedBody466_55 NamedBody466_82

def NamedBody466_84 : StackLang.HolProg 64 :=
.seq NamedBody466_54 NamedBody466_83

def NamedBody466_85 : StackLang.HolProg 64 :=
.seq NamedBody466_25 NamedBody466_84

def NamedBody466_86 : StackLang.HolProg 64 :=
.seq NamedBody466_22 NamedBody466_85

def NamedBody466_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody466_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody466_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1491#64)

def NamedBody466_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody466_94 : StackLang.HolProg 64 :=
.seq NamedBody466_92 NamedBody466_93

def NamedBody466_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody466_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody466_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody466_98 : StackLang.HolProg 64 :=
.seq NamedBody466_96 NamedBody466_97

def NamedBody466_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_100 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody466_98 NamedBody466_99

def NamedBody466_101 : StackLang.HolProg 64 :=
.seq NamedBody466_95 NamedBody466_100

def NamedBody466_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody466_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody466_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 5

def NamedBody466_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody466_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody466_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody466_111 : StackLang.HolProg 64 :=
.seq NamedBody466_109 NamedBody466_110

def NamedBody466_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody466_113 : StackLang.HolProg 64 :=
.seq NamedBody466_111 NamedBody466_112

def NamedBody466_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_115 : StackLang.HolProg 64 :=
.seq NamedBody466_113 NamedBody466_114

def NamedBody466_116 : StackLang.HolProg 64 :=
.seq NamedBody466_108 NamedBody466_115

def NamedBody466_117 : StackLang.HolProg 64 :=
.seq NamedBody466_107 NamedBody466_116

def NamedBody466_118 : StackLang.HolProg 64 :=
.seq NamedBody466_106 NamedBody466_117

def NamedBody466_119 : StackLang.HolProg 64 :=
.seq NamedBody466_105 NamedBody466_118

def NamedBody466_120 : StackLang.HolProg 64 :=
.seq NamedBody466_104 NamedBody466_119

def NamedBody466_121 : StackLang.HolProg 64 :=
.seq NamedBody466_103 NamedBody466_120

def NamedBody466_122 : StackLang.HolProg 64 :=
.seq NamedBody466_102 NamedBody466_121

def NamedBody466_123 : StackLang.HolProg 64 :=
.seq NamedBody466_101 NamedBody466_122

def NamedBody466_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody466_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_132 : StackLang.HolProg 64 :=
.seq NamedBody466_130 NamedBody466_131

def NamedBody466_133 : StackLang.HolProg 64 :=
.seq NamedBody466_129 NamedBody466_132

def NamedBody466_134 : StackLang.HolProg 64 :=
.seq NamedBody466_128 NamedBody466_133

def NamedBody466_135 : StackLang.HolProg 64 :=
.seq NamedBody466_127 NamedBody466_134

def NamedBody466_136 : StackLang.HolProg 64 :=
.seq NamedBody466_126 NamedBody466_135

def NamedBody466_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_139 : StackLang.HolProg 64 :=
.seq NamedBody466_137 NamedBody466_138

def NamedBody466_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody466_141 : StackLang.HolProg 64 :=
.seq NamedBody466_139 NamedBody466_140

def NamedBody466_142 : StackLang.HolProg 64 :=
.call (some (NamedBody466_136, 1, 466, 4)) (Sum.inl 89) (some (NamedBody466_141, 466, 5))

def NamedBody466_143 : StackLang.HolProg 64 :=
.seq NamedBody466_125 NamedBody466_142

def NamedBody466_144 : StackLang.HolProg 64 :=
.seq NamedBody466_124 NamedBody466_143

def NamedBody466_145 : StackLang.HolProg 64 :=
.seq NamedBody466_123 NamedBody466_144

def NamedBody466_146 : StackLang.HolProg 64 :=
.seq NamedBody466_94 NamedBody466_145

def NamedBody466_147 : StackLang.HolProg 64 :=
.seq NamedBody466_91 NamedBody466_146

def NamedBody466_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody466_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def NamedBody466_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1492#64)

def NamedBody466_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody466_155 : StackLang.HolProg 64 :=
.seq NamedBody466_153 NamedBody466_154

def NamedBody466_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody466_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody466_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody466_159 : StackLang.HolProg 64 :=
.seq NamedBody466_157 NamedBody466_158

def NamedBody466_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody466_159 NamedBody466_160

def NamedBody466_162 : StackLang.HolProg 64 :=
.seq NamedBody466_156 NamedBody466_161

def NamedBody466_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody466_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody466_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 7

def NamedBody466_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody466_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody466_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody466_172 : StackLang.HolProg 64 :=
.seq NamedBody466_170 NamedBody466_171

def NamedBody466_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody466_174 : StackLang.HolProg 64 :=
.seq NamedBody466_172 NamedBody466_173

def NamedBody466_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_176 : StackLang.HolProg 64 :=
.seq NamedBody466_174 NamedBody466_175

def NamedBody466_177 : StackLang.HolProg 64 :=
.seq NamedBody466_169 NamedBody466_176

def NamedBody466_178 : StackLang.HolProg 64 :=
.seq NamedBody466_168 NamedBody466_177

def NamedBody466_179 : StackLang.HolProg 64 :=
.seq NamedBody466_167 NamedBody466_178

def NamedBody466_180 : StackLang.HolProg 64 :=
.seq NamedBody466_166 NamedBody466_179

def NamedBody466_181 : StackLang.HolProg 64 :=
.seq NamedBody466_165 NamedBody466_180

def NamedBody466_182 : StackLang.HolProg 64 :=
.seq NamedBody466_164 NamedBody466_181

def NamedBody466_183 : StackLang.HolProg 64 :=
.seq NamedBody466_163 NamedBody466_182

def NamedBody466_184 : StackLang.HolProg 64 :=
.seq NamedBody466_162 NamedBody466_183

def NamedBody466_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody466_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody466_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody466_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody466_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody466_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_193 : StackLang.HolProg 64 :=
.seq NamedBody466_191 NamedBody466_192

def NamedBody466_194 : StackLang.HolProg 64 :=
.seq NamedBody466_190 NamedBody466_193

def NamedBody466_195 : StackLang.HolProg 64 :=
.seq NamedBody466_189 NamedBody466_194

def NamedBody466_196 : StackLang.HolProg 64 :=
.seq NamedBody466_188 NamedBody466_195

def NamedBody466_197 : StackLang.HolProg 64 :=
.seq NamedBody466_187 NamedBody466_196

def NamedBody466_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody466_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody466_200 : StackLang.HolProg 64 :=
.seq NamedBody466_198 NamedBody466_199

def NamedBody466_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody466_202 : StackLang.HolProg 64 :=
.seq NamedBody466_200 NamedBody466_201

def NamedBody466_203 : StackLang.HolProg 64 :=
.call (some (NamedBody466_197, 1, 466, 6)) (Sum.inl 89) (some (NamedBody466_202, 466, 7))

def NamedBody466_204 : StackLang.HolProg 64 :=
.seq NamedBody466_186 NamedBody466_203

def NamedBody466_205 : StackLang.HolProg 64 :=
.seq NamedBody466_185 NamedBody466_204

def NamedBody466_206 : StackLang.HolProg 64 :=
.seq NamedBody466_184 NamedBody466_205

def NamedBody466_207 : StackLang.HolProg 64 :=
.seq NamedBody466_155 NamedBody466_206

def NamedBody466_208 : StackLang.HolProg 64 :=
.seq NamedBody466_152 NamedBody466_207

def NamedBody466_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody466_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody466_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody466_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody466_213 : StackLang.HolProg 64 :=
.seq NamedBody466_211 NamedBody466_212

def NamedBody466_214 : StackLang.HolProg 64 :=
.seq NamedBody466_210 NamedBody466_213

def NamedBody466_215 : StackLang.HolProg 64 :=
.seq NamedBody466_209 NamedBody466_214

def NamedBody466_216 : StackLang.HolProg 64 :=
.seq NamedBody466_208 NamedBody466_215

def NamedBody466_217 : StackLang.HolProg 64 :=
.seq NamedBody466_151 NamedBody466_216

def NamedBody466_218 : StackLang.HolProg 64 :=
.seq NamedBody466_150 NamedBody466_217

def NamedBody466_219 : StackLang.HolProg 64 :=
.seq NamedBody466_149 NamedBody466_218

def NamedBody466_220 : StackLang.HolProg 64 :=
.seq NamedBody466_148 NamedBody466_219

def NamedBody466_221 : StackLang.HolProg 64 :=
.seq NamedBody466_147 NamedBody466_220

def NamedBody466_222 : StackLang.HolProg 64 :=
.seq NamedBody466_90 NamedBody466_221

def NamedBody466_223 : StackLang.HolProg 64 :=
.seq NamedBody466_89 NamedBody466_222

def NamedBody466_224 : StackLang.HolProg 64 :=
.seq NamedBody466_88 NamedBody466_223

def NamedBody466_225 : StackLang.HolProg 64 :=
.seq NamedBody466_87 NamedBody466_224

def NamedBody466_226 : StackLang.HolProg 64 :=
.seq NamedBody466_86 NamedBody466_225

def NamedBody466_227 : StackLang.HolProg 64 :=
.seq NamedBody466_21 NamedBody466_226

def NamedBody466_228 : StackLang.HolProg 64 :=
.seq NamedBody466_12 NamedBody466_227

def NamedBody466_229 : StackLang.HolProg 64 :=
.seq NamedBody466_11 NamedBody466_228

def NamedBody466_230 : StackLang.HolProg 64 :=
.seq NamedBody466_10 NamedBody466_229

def NamedBody466_231 : StackLang.HolProg 64 :=
.seq NamedBody466_9 NamedBody466_230

def NamedBody466_232 : StackLang.HolProg 64 :=
.seq NamedBody466_8 NamedBody466_231

def NamedBody466_233 : StackLang.HolProg 64 :=
.seq NamedBody466_7 NamedBody466_232

def NamedBody466_234 : StackLang.HolProg 64 :=
.seq NamedBody466_6 NamedBody466_233

def Named466 : Nat × StackLang.HolProg 64 := (466, NamedBody466_234)
theorem Named466_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed466 = Named466 := by
  kernel_rfl
#print axioms Named466_eq
end InitECandidate.Proofs.BackendStages
