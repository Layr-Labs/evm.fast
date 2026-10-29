import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc331
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody331_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody331_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody331_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody331_3 : StackLang.HolProg 64 :=
.seq RemovedBody331_1 RemovedBody331_2

def RemovedBody331_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody331_3 RemovedBody331_4

def RemovedBody331_6 : StackLang.HolProg 64 :=
.seq RemovedBody331_0 RemovedBody331_5

def RemovedBody331_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody331_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody331_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody331_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody331_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody331_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody331_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody331_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551488#64))

def RemovedBody331_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody331_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody331_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 937#64)

def RemovedBody331_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody331_22 : StackLang.HolProg 64 :=
.seq RemovedBody331_20 RemovedBody331_21

def RemovedBody331_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody331_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody331_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody331_26 : StackLang.HolProg 64 :=
.seq RemovedBody331_24 RemovedBody331_25

def RemovedBody331_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody331_26 RemovedBody331_27

def RemovedBody331_29 : StackLang.HolProg 64 :=
.seq RemovedBody331_23 RemovedBody331_28

def RemovedBody331_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody331_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody331_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 3

def RemovedBody331_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody331_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody331_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody331_39 : StackLang.HolProg 64 :=
.seq RemovedBody331_37 RemovedBody331_38

def RemovedBody331_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody331_41 : StackLang.HolProg 64 :=
.seq RemovedBody331_39 RemovedBody331_40

def RemovedBody331_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_43 : StackLang.HolProg 64 :=
.seq RemovedBody331_41 RemovedBody331_42

def RemovedBody331_44 : StackLang.HolProg 64 :=
.seq RemovedBody331_36 RemovedBody331_43

def RemovedBody331_45 : StackLang.HolProg 64 :=
.seq RemovedBody331_35 RemovedBody331_44

def RemovedBody331_46 : StackLang.HolProg 64 :=
.seq RemovedBody331_34 RemovedBody331_45

def RemovedBody331_47 : StackLang.HolProg 64 :=
.seq RemovedBody331_33 RemovedBody331_46

def RemovedBody331_48 : StackLang.HolProg 64 :=
.seq RemovedBody331_32 RemovedBody331_47

def RemovedBody331_49 : StackLang.HolProg 64 :=
.seq RemovedBody331_31 RemovedBody331_48

def RemovedBody331_50 : StackLang.HolProg 64 :=
.seq RemovedBody331_30 RemovedBody331_49

def RemovedBody331_51 : StackLang.HolProg 64 :=
.seq RemovedBody331_29 RemovedBody331_50

def RemovedBody331_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody331_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody331_59 : StackLang.HolProg 64 :=
.seq RemovedBody331_57 RemovedBody331_58

def RemovedBody331_60 : StackLang.HolProg 64 :=
.seq RemovedBody331_56 RemovedBody331_59

def RemovedBody331_61 : StackLang.HolProg 64 :=
.seq RemovedBody331_55 RemovedBody331_60

def RemovedBody331_62 : StackLang.HolProg 64 :=
.seq RemovedBody331_54 RemovedBody331_61

def RemovedBody331_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody331_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody331_65 : StackLang.HolProg 64 :=
.seq RemovedBody331_63 RemovedBody331_64

def RemovedBody331_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody331_62, 0, 331, 2)) (Sum.inl 77) (some (RemovedBody331_65, 331, 3))

def RemovedBody331_67 : StackLang.HolProg 64 :=
.seq RemovedBody331_53 RemovedBody331_66

def RemovedBody331_68 : StackLang.HolProg 64 :=
.seq RemovedBody331_52 RemovedBody331_67

def RemovedBody331_69 : StackLang.HolProg 64 :=
.seq RemovedBody331_51 RemovedBody331_68

def RemovedBody331_70 : StackLang.HolProg 64 :=
.seq RemovedBody331_22 RemovedBody331_69

def RemovedBody331_71 : StackLang.HolProg 64 :=
.seq RemovedBody331_19 RemovedBody331_70

def RemovedBody331_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody331_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody331_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody331_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody331_77 : StackLang.HolProg 64 :=
.seq RemovedBody331_75 RemovedBody331_76

def RemovedBody331_78 : StackLang.HolProg 64 :=
.seq RemovedBody331_74 RemovedBody331_77

def RemovedBody331_79 : StackLang.HolProg 64 :=
.seq RemovedBody331_73 RemovedBody331_78

def RemovedBody331_80 : StackLang.HolProg 64 :=
.seq RemovedBody331_72 RemovedBody331_79

def RemovedBody331_81 : StackLang.HolProg 64 :=
.seq RemovedBody331_71 RemovedBody331_80

def RemovedBody331_82 : StackLang.HolProg 64 :=
.seq RemovedBody331_18 RemovedBody331_81

def RemovedBody331_83 : StackLang.HolProg 64 :=
.seq RemovedBody331_17 RemovedBody331_82

def RemovedBody331_84 : StackLang.HolProg 64 :=
.seq RemovedBody331_16 RemovedBody331_83

def RemovedBody331_85 : StackLang.HolProg 64 :=
.seq RemovedBody331_15 RemovedBody331_84

def RemovedBody331_86 : StackLang.HolProg 64 :=
.seq RemovedBody331_14 RemovedBody331_85

def RemovedBody331_87 : StackLang.HolProg 64 :=
.seq RemovedBody331_13 RemovedBody331_86

def RemovedBody331_88 : StackLang.HolProg 64 :=
.seq RemovedBody331_12 RemovedBody331_87

def RemovedBody331_89 : StackLang.HolProg 64 :=
.seq RemovedBody331_11 RemovedBody331_88

def RemovedBody331_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody331_92 : StackLang.HolProg 64 :=
.seq RemovedBody331_90 RemovedBody331_91

def RemovedBody331_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody331_89 RemovedBody331_92

def RemovedBody331_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody331_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody331_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody331_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 938#64)

def RemovedBody331_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody331_100 : StackLang.HolProg 64 :=
.seq RemovedBody331_98 RemovedBody331_99

def RemovedBody331_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody331_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody331_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody331_104 : StackLang.HolProg 64 :=
.seq RemovedBody331_102 RemovedBody331_103

def RemovedBody331_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody331_104 RemovedBody331_105

def RemovedBody331_107 : StackLang.HolProg 64 :=
.seq RemovedBody331_101 RemovedBody331_106

def RemovedBody331_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody331_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody331_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 5

def RemovedBody331_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody331_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody331_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody331_117 : StackLang.HolProg 64 :=
.seq RemovedBody331_115 RemovedBody331_116

def RemovedBody331_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody331_119 : StackLang.HolProg 64 :=
.seq RemovedBody331_117 RemovedBody331_118

def RemovedBody331_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_121 : StackLang.HolProg 64 :=
.seq RemovedBody331_119 RemovedBody331_120

def RemovedBody331_122 : StackLang.HolProg 64 :=
.seq RemovedBody331_114 RemovedBody331_121

def RemovedBody331_123 : StackLang.HolProg 64 :=
.seq RemovedBody331_113 RemovedBody331_122

def RemovedBody331_124 : StackLang.HolProg 64 :=
.seq RemovedBody331_112 RemovedBody331_123

def RemovedBody331_125 : StackLang.HolProg 64 :=
.seq RemovedBody331_111 RemovedBody331_124

def RemovedBody331_126 : StackLang.HolProg 64 :=
.seq RemovedBody331_110 RemovedBody331_125

def RemovedBody331_127 : StackLang.HolProg 64 :=
.seq RemovedBody331_109 RemovedBody331_126

def RemovedBody331_128 : StackLang.HolProg 64 :=
.seq RemovedBody331_108 RemovedBody331_127

def RemovedBody331_129 : StackLang.HolProg 64 :=
.seq RemovedBody331_107 RemovedBody331_128

def RemovedBody331_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody331_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody331_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_138 : StackLang.HolProg 64 :=
.seq RemovedBody331_136 RemovedBody331_137

def RemovedBody331_139 : StackLang.HolProg 64 :=
.seq RemovedBody331_135 RemovedBody331_138

def RemovedBody331_140 : StackLang.HolProg 64 :=
.seq RemovedBody331_134 RemovedBody331_139

def RemovedBody331_141 : StackLang.HolProg 64 :=
.seq RemovedBody331_133 RemovedBody331_140

def RemovedBody331_142 : StackLang.HolProg 64 :=
.seq RemovedBody331_132 RemovedBody331_141

def RemovedBody331_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody331_145 : StackLang.HolProg 64 :=
.seq RemovedBody331_143 RemovedBody331_144

def RemovedBody331_146 : StackLang.HolProg 64 :=
.call (some (RemovedBody331_142, 0, 331, 4)) (Sum.inl 330) (some (RemovedBody331_145, 331, 5))

def RemovedBody331_147 : StackLang.HolProg 64 :=
.seq RemovedBody331_131 RemovedBody331_146

def RemovedBody331_148 : StackLang.HolProg 64 :=
.seq RemovedBody331_130 RemovedBody331_147

def RemovedBody331_149 : StackLang.HolProg 64 :=
.seq RemovedBody331_129 RemovedBody331_148

def RemovedBody331_150 : StackLang.HolProg 64 :=
.seq RemovedBody331_100 RemovedBody331_149

def RemovedBody331_151 : StackLang.HolProg 64 :=
.seq RemovedBody331_97 RemovedBody331_150

def RemovedBody331_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody331_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody331_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody331_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 939#64)

def RemovedBody331_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody331_159 : StackLang.HolProg 64 :=
.seq RemovedBody331_157 RemovedBody331_158

def RemovedBody331_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody331_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody331_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody331_163 : StackLang.HolProg 64 :=
.seq RemovedBody331_161 RemovedBody331_162

def RemovedBody331_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody331_163 RemovedBody331_164

def RemovedBody331_166 : StackLang.HolProg 64 :=
.seq RemovedBody331_160 RemovedBody331_165

def RemovedBody331_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody331_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody331_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 7

def RemovedBody331_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody331_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody331_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody331_176 : StackLang.HolProg 64 :=
.seq RemovedBody331_174 RemovedBody331_175

def RemovedBody331_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody331_178 : StackLang.HolProg 64 :=
.seq RemovedBody331_176 RemovedBody331_177

def RemovedBody331_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_180 : StackLang.HolProg 64 :=
.seq RemovedBody331_178 RemovedBody331_179

def RemovedBody331_181 : StackLang.HolProg 64 :=
.seq RemovedBody331_173 RemovedBody331_180

def RemovedBody331_182 : StackLang.HolProg 64 :=
.seq RemovedBody331_172 RemovedBody331_181

def RemovedBody331_183 : StackLang.HolProg 64 :=
.seq RemovedBody331_171 RemovedBody331_182

def RemovedBody331_184 : StackLang.HolProg 64 :=
.seq RemovedBody331_170 RemovedBody331_183

def RemovedBody331_185 : StackLang.HolProg 64 :=
.seq RemovedBody331_169 RemovedBody331_184

def RemovedBody331_186 : StackLang.HolProg 64 :=
.seq RemovedBody331_168 RemovedBody331_185

def RemovedBody331_187 : StackLang.HolProg 64 :=
.seq RemovedBody331_167 RemovedBody331_186

def RemovedBody331_188 : StackLang.HolProg 64 :=
.seq RemovedBody331_166 RemovedBody331_187

def RemovedBody331_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody331_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody331_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody331_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody331_196 : StackLang.HolProg 64 :=
.seq RemovedBody331_194 RemovedBody331_195

def RemovedBody331_197 : StackLang.HolProg 64 :=
.seq RemovedBody331_193 RemovedBody331_196

def RemovedBody331_198 : StackLang.HolProg 64 :=
.seq RemovedBody331_192 RemovedBody331_197

def RemovedBody331_199 : StackLang.HolProg 64 :=
.seq RemovedBody331_191 RemovedBody331_198

def RemovedBody331_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody331_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody331_202 : StackLang.HolProg 64 :=
.seq RemovedBody331_200 RemovedBody331_201

def RemovedBody331_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody331_199, 0, 331, 6)) (Sum.inl 77) (some (RemovedBody331_202, 331, 7))

def RemovedBody331_204 : StackLang.HolProg 64 :=
.seq RemovedBody331_190 RemovedBody331_203

def RemovedBody331_205 : StackLang.HolProg 64 :=
.seq RemovedBody331_189 RemovedBody331_204

def RemovedBody331_206 : StackLang.HolProg 64 :=
.seq RemovedBody331_188 RemovedBody331_205

def RemovedBody331_207 : StackLang.HolProg 64 :=
.seq RemovedBody331_159 RemovedBody331_206

def RemovedBody331_208 : StackLang.HolProg 64 :=
.seq RemovedBody331_156 RemovedBody331_207

def RemovedBody331_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody331_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody331_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody331_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody331_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody331_214 : StackLang.HolProg 64 :=
.seq RemovedBody331_212 RemovedBody331_213

def RemovedBody331_215 : StackLang.HolProg 64 :=
.seq RemovedBody331_211 RemovedBody331_214

def RemovedBody331_216 : StackLang.HolProg 64 :=
.seq RemovedBody331_210 RemovedBody331_215

def RemovedBody331_217 : StackLang.HolProg 64 :=
.seq RemovedBody331_209 RemovedBody331_216

def RemovedBody331_218 : StackLang.HolProg 64 :=
.seq RemovedBody331_208 RemovedBody331_217

def RemovedBody331_219 : StackLang.HolProg 64 :=
.seq RemovedBody331_155 RemovedBody331_218

def RemovedBody331_220 : StackLang.HolProg 64 :=
.seq RemovedBody331_154 RemovedBody331_219

def RemovedBody331_221 : StackLang.HolProg 64 :=
.seq RemovedBody331_153 RemovedBody331_220

def RemovedBody331_222 : StackLang.HolProg 64 :=
.seq RemovedBody331_152 RemovedBody331_221

def RemovedBody331_223 : StackLang.HolProg 64 :=
.seq RemovedBody331_151 RemovedBody331_222

def RemovedBody331_224 : StackLang.HolProg 64 :=
.seq RemovedBody331_96 RemovedBody331_223

def RemovedBody331_225 : StackLang.HolProg 64 :=
.seq RemovedBody331_95 RemovedBody331_224

def RemovedBody331_226 : StackLang.HolProg 64 :=
.seq RemovedBody331_94 RemovedBody331_225

def RemovedBody331_227 : StackLang.HolProg 64 :=
.seq RemovedBody331_93 RemovedBody331_226

def RemovedBody331_228 : StackLang.HolProg 64 :=
.seq RemovedBody331_10 RemovedBody331_227

def RemovedBody331_229 : StackLang.HolProg 64 :=
.seq RemovedBody331_9 RemovedBody331_228

def RemovedBody331_230 : StackLang.HolProg 64 :=
.seq RemovedBody331_8 RemovedBody331_229

def RemovedBody331_231 : StackLang.HolProg 64 :=
.seq RemovedBody331_7 RemovedBody331_230

def RemovedBody331_232 : StackLang.HolProg 64 :=
.seq RemovedBody331_6 RemovedBody331_231

def Removed331 : Nat × StackLang.HolProg 64 := (331, RemovedBody331_232)
theorem Removed331_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc331 = Removed331 := by
  kernel_rfl
#print axioms Removed331_eq
end InitECandidate.Proofs.BackendStages
