import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed331
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody331_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody331_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody331_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody331_3 : StackLang.HolProg 64 :=
.seq NamedBody331_1 NamedBody331_2

def NamedBody331_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody331_3 NamedBody331_4

def NamedBody331_6 : StackLang.HolProg 64 :=
.seq NamedBody331_0 NamedBody331_5

def NamedBody331_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody331_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody331_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody331_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody331_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody331_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody331_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody331_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551488#64))

def NamedBody331_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody331_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody331_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 937#64)

def NamedBody331_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody331_22 : StackLang.HolProg 64 :=
.seq NamedBody331_20 NamedBody331_21

def NamedBody331_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody331_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody331_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody331_26 : StackLang.HolProg 64 :=
.seq NamedBody331_24 NamedBody331_25

def NamedBody331_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody331_26 NamedBody331_27

def NamedBody331_29 : StackLang.HolProg 64 :=
.seq NamedBody331_23 NamedBody331_28

def NamedBody331_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody331_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody331_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 3

def NamedBody331_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody331_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody331_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody331_39 : StackLang.HolProg 64 :=
.seq NamedBody331_37 NamedBody331_38

def NamedBody331_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody331_41 : StackLang.HolProg 64 :=
.seq NamedBody331_39 NamedBody331_40

def NamedBody331_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_43 : StackLang.HolProg 64 :=
.seq NamedBody331_41 NamedBody331_42

def NamedBody331_44 : StackLang.HolProg 64 :=
.seq NamedBody331_36 NamedBody331_43

def NamedBody331_45 : StackLang.HolProg 64 :=
.seq NamedBody331_35 NamedBody331_44

def NamedBody331_46 : StackLang.HolProg 64 :=
.seq NamedBody331_34 NamedBody331_45

def NamedBody331_47 : StackLang.HolProg 64 :=
.seq NamedBody331_33 NamedBody331_46

def NamedBody331_48 : StackLang.HolProg 64 :=
.seq NamedBody331_32 NamedBody331_47

def NamedBody331_49 : StackLang.HolProg 64 :=
.seq NamedBody331_31 NamedBody331_48

def NamedBody331_50 : StackLang.HolProg 64 :=
.seq NamedBody331_30 NamedBody331_49

def NamedBody331_51 : StackLang.HolProg 64 :=
.seq NamedBody331_29 NamedBody331_50

def NamedBody331_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody331_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody331_59 : StackLang.HolProg 64 :=
.seq NamedBody331_57 NamedBody331_58

def NamedBody331_60 : StackLang.HolProg 64 :=
.seq NamedBody331_56 NamedBody331_59

def NamedBody331_61 : StackLang.HolProg 64 :=
.seq NamedBody331_55 NamedBody331_60

def NamedBody331_62 : StackLang.HolProg 64 :=
.seq NamedBody331_54 NamedBody331_61

def NamedBody331_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody331_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody331_65 : StackLang.HolProg 64 :=
.seq NamedBody331_63 NamedBody331_64

def NamedBody331_66 : StackLang.HolProg 64 :=
.call (some (NamedBody331_62, 1, 331, 2)) (Sum.inl 77) (some (NamedBody331_65, 331, 3))

def NamedBody331_67 : StackLang.HolProg 64 :=
.seq NamedBody331_53 NamedBody331_66

def NamedBody331_68 : StackLang.HolProg 64 :=
.seq NamedBody331_52 NamedBody331_67

def NamedBody331_69 : StackLang.HolProg 64 :=
.seq NamedBody331_51 NamedBody331_68

def NamedBody331_70 : StackLang.HolProg 64 :=
.seq NamedBody331_22 NamedBody331_69

def NamedBody331_71 : StackLang.HolProg 64 :=
.seq NamedBody331_19 NamedBody331_70

def NamedBody331_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody331_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody331_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody331_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody331_77 : StackLang.HolProg 64 :=
.seq NamedBody331_75 NamedBody331_76

def NamedBody331_78 : StackLang.HolProg 64 :=
.seq NamedBody331_74 NamedBody331_77

def NamedBody331_79 : StackLang.HolProg 64 :=
.seq NamedBody331_73 NamedBody331_78

def NamedBody331_80 : StackLang.HolProg 64 :=
.seq NamedBody331_72 NamedBody331_79

def NamedBody331_81 : StackLang.HolProg 64 :=
.seq NamedBody331_71 NamedBody331_80

def NamedBody331_82 : StackLang.HolProg 64 :=
.seq NamedBody331_18 NamedBody331_81

def NamedBody331_83 : StackLang.HolProg 64 :=
.seq NamedBody331_17 NamedBody331_82

def NamedBody331_84 : StackLang.HolProg 64 :=
.seq NamedBody331_16 NamedBody331_83

def NamedBody331_85 : StackLang.HolProg 64 :=
.seq NamedBody331_15 NamedBody331_84

def NamedBody331_86 : StackLang.HolProg 64 :=
.seq NamedBody331_14 NamedBody331_85

def NamedBody331_87 : StackLang.HolProg 64 :=
.seq NamedBody331_13 NamedBody331_86

def NamedBody331_88 : StackLang.HolProg 64 :=
.seq NamedBody331_12 NamedBody331_87

def NamedBody331_89 : StackLang.HolProg 64 :=
.seq NamedBody331_11 NamedBody331_88

def NamedBody331_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody331_92 : StackLang.HolProg 64 :=
.seq NamedBody331_90 NamedBody331_91

def NamedBody331_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody331_89 NamedBody331_92

def NamedBody331_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody331_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody331_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody331_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 938#64)

def NamedBody331_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody331_100 : StackLang.HolProg 64 :=
.seq NamedBody331_98 NamedBody331_99

def NamedBody331_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody331_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody331_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody331_104 : StackLang.HolProg 64 :=
.seq NamedBody331_102 NamedBody331_103

def NamedBody331_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody331_104 NamedBody331_105

def NamedBody331_107 : StackLang.HolProg 64 :=
.seq NamedBody331_101 NamedBody331_106

def NamedBody331_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody331_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody331_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 5

def NamedBody331_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody331_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody331_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody331_117 : StackLang.HolProg 64 :=
.seq NamedBody331_115 NamedBody331_116

def NamedBody331_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody331_119 : StackLang.HolProg 64 :=
.seq NamedBody331_117 NamedBody331_118

def NamedBody331_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_121 : StackLang.HolProg 64 :=
.seq NamedBody331_119 NamedBody331_120

def NamedBody331_122 : StackLang.HolProg 64 :=
.seq NamedBody331_114 NamedBody331_121

def NamedBody331_123 : StackLang.HolProg 64 :=
.seq NamedBody331_113 NamedBody331_122

def NamedBody331_124 : StackLang.HolProg 64 :=
.seq NamedBody331_112 NamedBody331_123

def NamedBody331_125 : StackLang.HolProg 64 :=
.seq NamedBody331_111 NamedBody331_124

def NamedBody331_126 : StackLang.HolProg 64 :=
.seq NamedBody331_110 NamedBody331_125

def NamedBody331_127 : StackLang.HolProg 64 :=
.seq NamedBody331_109 NamedBody331_126

def NamedBody331_128 : StackLang.HolProg 64 :=
.seq NamedBody331_108 NamedBody331_127

def NamedBody331_129 : StackLang.HolProg 64 :=
.seq NamedBody331_107 NamedBody331_128

def NamedBody331_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody331_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody331_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_138 : StackLang.HolProg 64 :=
.seq NamedBody331_136 NamedBody331_137

def NamedBody331_139 : StackLang.HolProg 64 :=
.seq NamedBody331_135 NamedBody331_138

def NamedBody331_140 : StackLang.HolProg 64 :=
.seq NamedBody331_134 NamedBody331_139

def NamedBody331_141 : StackLang.HolProg 64 :=
.seq NamedBody331_133 NamedBody331_140

def NamedBody331_142 : StackLang.HolProg 64 :=
.seq NamedBody331_132 NamedBody331_141

def NamedBody331_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody331_145 : StackLang.HolProg 64 :=
.seq NamedBody331_143 NamedBody331_144

def NamedBody331_146 : StackLang.HolProg 64 :=
.call (some (NamedBody331_142, 1, 331, 4)) (Sum.inl 330) (some (NamedBody331_145, 331, 5))

def NamedBody331_147 : StackLang.HolProg 64 :=
.seq NamedBody331_131 NamedBody331_146

def NamedBody331_148 : StackLang.HolProg 64 :=
.seq NamedBody331_130 NamedBody331_147

def NamedBody331_149 : StackLang.HolProg 64 :=
.seq NamedBody331_129 NamedBody331_148

def NamedBody331_150 : StackLang.HolProg 64 :=
.seq NamedBody331_100 NamedBody331_149

def NamedBody331_151 : StackLang.HolProg 64 :=
.seq NamedBody331_97 NamedBody331_150

def NamedBody331_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody331_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody331_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody331_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 939#64)

def NamedBody331_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody331_159 : StackLang.HolProg 64 :=
.seq NamedBody331_157 NamedBody331_158

def NamedBody331_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody331_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody331_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody331_163 : StackLang.HolProg 64 :=
.seq NamedBody331_161 NamedBody331_162

def NamedBody331_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody331_163 NamedBody331_164

def NamedBody331_166 : StackLang.HolProg 64 :=
.seq NamedBody331_160 NamedBody331_165

def NamedBody331_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody331_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody331_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 7

def NamedBody331_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody331_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody331_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody331_176 : StackLang.HolProg 64 :=
.seq NamedBody331_174 NamedBody331_175

def NamedBody331_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody331_178 : StackLang.HolProg 64 :=
.seq NamedBody331_176 NamedBody331_177

def NamedBody331_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_180 : StackLang.HolProg 64 :=
.seq NamedBody331_178 NamedBody331_179

def NamedBody331_181 : StackLang.HolProg 64 :=
.seq NamedBody331_173 NamedBody331_180

def NamedBody331_182 : StackLang.HolProg 64 :=
.seq NamedBody331_172 NamedBody331_181

def NamedBody331_183 : StackLang.HolProg 64 :=
.seq NamedBody331_171 NamedBody331_182

def NamedBody331_184 : StackLang.HolProg 64 :=
.seq NamedBody331_170 NamedBody331_183

def NamedBody331_185 : StackLang.HolProg 64 :=
.seq NamedBody331_169 NamedBody331_184

def NamedBody331_186 : StackLang.HolProg 64 :=
.seq NamedBody331_168 NamedBody331_185

def NamedBody331_187 : StackLang.HolProg 64 :=
.seq NamedBody331_167 NamedBody331_186

def NamedBody331_188 : StackLang.HolProg 64 :=
.seq NamedBody331_166 NamedBody331_187

def NamedBody331_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody331_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody331_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody331_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody331_196 : StackLang.HolProg 64 :=
.seq NamedBody331_194 NamedBody331_195

def NamedBody331_197 : StackLang.HolProg 64 :=
.seq NamedBody331_193 NamedBody331_196

def NamedBody331_198 : StackLang.HolProg 64 :=
.seq NamedBody331_192 NamedBody331_197

def NamedBody331_199 : StackLang.HolProg 64 :=
.seq NamedBody331_191 NamedBody331_198

def NamedBody331_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody331_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody331_202 : StackLang.HolProg 64 :=
.seq NamedBody331_200 NamedBody331_201

def NamedBody331_203 : StackLang.HolProg 64 :=
.call (some (NamedBody331_199, 1, 331, 6)) (Sum.inl 77) (some (NamedBody331_202, 331, 7))

def NamedBody331_204 : StackLang.HolProg 64 :=
.seq NamedBody331_190 NamedBody331_203

def NamedBody331_205 : StackLang.HolProg 64 :=
.seq NamedBody331_189 NamedBody331_204

def NamedBody331_206 : StackLang.HolProg 64 :=
.seq NamedBody331_188 NamedBody331_205

def NamedBody331_207 : StackLang.HolProg 64 :=
.seq NamedBody331_159 NamedBody331_206

def NamedBody331_208 : StackLang.HolProg 64 :=
.seq NamedBody331_156 NamedBody331_207

def NamedBody331_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody331_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody331_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody331_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody331_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody331_214 : StackLang.HolProg 64 :=
.seq NamedBody331_212 NamedBody331_213

def NamedBody331_215 : StackLang.HolProg 64 :=
.seq NamedBody331_211 NamedBody331_214

def NamedBody331_216 : StackLang.HolProg 64 :=
.seq NamedBody331_210 NamedBody331_215

def NamedBody331_217 : StackLang.HolProg 64 :=
.seq NamedBody331_209 NamedBody331_216

def NamedBody331_218 : StackLang.HolProg 64 :=
.seq NamedBody331_208 NamedBody331_217

def NamedBody331_219 : StackLang.HolProg 64 :=
.seq NamedBody331_155 NamedBody331_218

def NamedBody331_220 : StackLang.HolProg 64 :=
.seq NamedBody331_154 NamedBody331_219

def NamedBody331_221 : StackLang.HolProg 64 :=
.seq NamedBody331_153 NamedBody331_220

def NamedBody331_222 : StackLang.HolProg 64 :=
.seq NamedBody331_152 NamedBody331_221

def NamedBody331_223 : StackLang.HolProg 64 :=
.seq NamedBody331_151 NamedBody331_222

def NamedBody331_224 : StackLang.HolProg 64 :=
.seq NamedBody331_96 NamedBody331_223

def NamedBody331_225 : StackLang.HolProg 64 :=
.seq NamedBody331_95 NamedBody331_224

def NamedBody331_226 : StackLang.HolProg 64 :=
.seq NamedBody331_94 NamedBody331_225

def NamedBody331_227 : StackLang.HolProg 64 :=
.seq NamedBody331_93 NamedBody331_226

def NamedBody331_228 : StackLang.HolProg 64 :=
.seq NamedBody331_10 NamedBody331_227

def NamedBody331_229 : StackLang.HolProg 64 :=
.seq NamedBody331_9 NamedBody331_228

def NamedBody331_230 : StackLang.HolProg 64 :=
.seq NamedBody331_8 NamedBody331_229

def NamedBody331_231 : StackLang.HolProg 64 :=
.seq NamedBody331_7 NamedBody331_230

def NamedBody331_232 : StackLang.HolProg 64 :=
.seq NamedBody331_6 NamedBody331_231

def Named331 : Nat × StackLang.HolProg 64 := (331, NamedBody331_232)
theorem Named331_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed331 = Named331 := by
  kernel_rfl
#print axioms Named331_eq
end InitECandidate.Proofs.BackendStages
