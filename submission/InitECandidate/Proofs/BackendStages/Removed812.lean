import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc812
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody812_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody812_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_3 : StackLang.HolProg 64 :=
.seq RemovedBody812_1 RemovedBody812_2

def RemovedBody812_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_3 RemovedBody812_4

def RemovedBody812_6 : StackLang.HolProg 64 :=
.seq RemovedBody812_0 RemovedBody812_5

def RemovedBody812_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody812_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_10 : StackLang.HolProg 64 :=
.seq RemovedBody812_8 RemovedBody812_9

def RemovedBody812_11 : StackLang.HolProg 64 :=
.seq RemovedBody812_7 RemovedBody812_10

def RemovedBody812_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4010#64)

def RemovedBody812_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_15 : StackLang.HolProg 64 :=
.seq RemovedBody812_13 RemovedBody812_14

def RemovedBody812_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_19 : StackLang.HolProg 64 :=
.seq RemovedBody812_17 RemovedBody812_18

def RemovedBody812_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_19 RemovedBody812_20

def RemovedBody812_22 : StackLang.HolProg 64 :=
.seq RemovedBody812_16 RemovedBody812_21

def RemovedBody812_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 3

def RemovedBody812_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_32 : StackLang.HolProg 64 :=
.seq RemovedBody812_30 RemovedBody812_31

def RemovedBody812_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_34 : StackLang.HolProg 64 :=
.seq RemovedBody812_32 RemovedBody812_33

def RemovedBody812_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_36 : StackLang.HolProg 64 :=
.seq RemovedBody812_34 RemovedBody812_35

def RemovedBody812_37 : StackLang.HolProg 64 :=
.seq RemovedBody812_29 RemovedBody812_36

def RemovedBody812_38 : StackLang.HolProg 64 :=
.seq RemovedBody812_28 RemovedBody812_37

def RemovedBody812_39 : StackLang.HolProg 64 :=
.seq RemovedBody812_27 RemovedBody812_38

def RemovedBody812_40 : StackLang.HolProg 64 :=
.seq RemovedBody812_26 RemovedBody812_39

def RemovedBody812_41 : StackLang.HolProg 64 :=
.seq RemovedBody812_25 RemovedBody812_40

def RemovedBody812_42 : StackLang.HolProg 64 :=
.seq RemovedBody812_24 RemovedBody812_41

def RemovedBody812_43 : StackLang.HolProg 64 :=
.seq RemovedBody812_23 RemovedBody812_42

def RemovedBody812_44 : StackLang.HolProg 64 :=
.seq RemovedBody812_22 RemovedBody812_43

def RemovedBody812_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody812_52 : StackLang.HolProg 64 :=
.seq RemovedBody812_50 RemovedBody812_51

def RemovedBody812_53 : StackLang.HolProg 64 :=
.seq RemovedBody812_49 RemovedBody812_52

def RemovedBody812_54 : StackLang.HolProg 64 :=
.seq RemovedBody812_48 RemovedBody812_53

def RemovedBody812_55 : StackLang.HolProg 64 :=
.seq RemovedBody812_47 RemovedBody812_54

def RemovedBody812_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_58 : StackLang.HolProg 64 :=
.seq RemovedBody812_56 RemovedBody812_57

def RemovedBody812_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_55, 0, 812, 2)) (Sum.inl 69) (some (RemovedBody812_58, 812, 3))

def RemovedBody812_60 : StackLang.HolProg 64 :=
.seq RemovedBody812_46 RemovedBody812_59

def RemovedBody812_61 : StackLang.HolProg 64 :=
.seq RemovedBody812_45 RemovedBody812_60

def RemovedBody812_62 : StackLang.HolProg 64 :=
.seq RemovedBody812_44 RemovedBody812_61

def RemovedBody812_63 : StackLang.HolProg 64 :=
.seq RemovedBody812_15 RemovedBody812_62

def RemovedBody812_64 : StackLang.HolProg 64 :=
.seq RemovedBody812_12 RemovedBody812_63

def RemovedBody812_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def RemovedBody812_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4011#64)

def RemovedBody812_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_71 : StackLang.HolProg 64 :=
.seq RemovedBody812_69 RemovedBody812_70

def RemovedBody812_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_75 : StackLang.HolProg 64 :=
.seq RemovedBody812_73 RemovedBody812_74

def RemovedBody812_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_75 RemovedBody812_76

def RemovedBody812_78 : StackLang.HolProg 64 :=
.seq RemovedBody812_72 RemovedBody812_77

def RemovedBody812_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 5

def RemovedBody812_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_88 : StackLang.HolProg 64 :=
.seq RemovedBody812_86 RemovedBody812_87

def RemovedBody812_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_90 : StackLang.HolProg 64 :=
.seq RemovedBody812_88 RemovedBody812_89

def RemovedBody812_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_92 : StackLang.HolProg 64 :=
.seq RemovedBody812_90 RemovedBody812_91

def RemovedBody812_93 : StackLang.HolProg 64 :=
.seq RemovedBody812_85 RemovedBody812_92

def RemovedBody812_94 : StackLang.HolProg 64 :=
.seq RemovedBody812_84 RemovedBody812_93

def RemovedBody812_95 : StackLang.HolProg 64 :=
.seq RemovedBody812_83 RemovedBody812_94

def RemovedBody812_96 : StackLang.HolProg 64 :=
.seq RemovedBody812_82 RemovedBody812_95

def RemovedBody812_97 : StackLang.HolProg 64 :=
.seq RemovedBody812_81 RemovedBody812_96

def RemovedBody812_98 : StackLang.HolProg 64 :=
.seq RemovedBody812_80 RemovedBody812_97

def RemovedBody812_99 : StackLang.HolProg 64 :=
.seq RemovedBody812_79 RemovedBody812_98

def RemovedBody812_100 : StackLang.HolProg 64 :=
.seq RemovedBody812_78 RemovedBody812_99

def RemovedBody812_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody812_108 : StackLang.HolProg 64 :=
.seq RemovedBody812_106 RemovedBody812_107

def RemovedBody812_109 : StackLang.HolProg 64 :=
.seq RemovedBody812_105 RemovedBody812_108

def RemovedBody812_110 : StackLang.HolProg 64 :=
.seq RemovedBody812_104 RemovedBody812_109

def RemovedBody812_111 : StackLang.HolProg 64 :=
.seq RemovedBody812_103 RemovedBody812_110

def RemovedBody812_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_114 : StackLang.HolProg 64 :=
.seq RemovedBody812_112 RemovedBody812_113

def RemovedBody812_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_111, 0, 812, 4)) (Sum.inl 68) (some (RemovedBody812_114, 812, 5))

def RemovedBody812_116 : StackLang.HolProg 64 :=
.seq RemovedBody812_102 RemovedBody812_115

def RemovedBody812_117 : StackLang.HolProg 64 :=
.seq RemovedBody812_101 RemovedBody812_116

def RemovedBody812_118 : StackLang.HolProg 64 :=
.seq RemovedBody812_100 RemovedBody812_117

def RemovedBody812_119 : StackLang.HolProg 64 :=
.seq RemovedBody812_71 RemovedBody812_118

def RemovedBody812_120 : StackLang.HolProg 64 :=
.seq RemovedBody812_68 RemovedBody812_119

def RemovedBody812_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def RemovedBody812_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4012#64)

def RemovedBody812_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_127 : StackLang.HolProg 64 :=
.seq RemovedBody812_125 RemovedBody812_126

def RemovedBody812_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_131 : StackLang.HolProg 64 :=
.seq RemovedBody812_129 RemovedBody812_130

def RemovedBody812_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_131 RemovedBody812_132

def RemovedBody812_134 : StackLang.HolProg 64 :=
.seq RemovedBody812_128 RemovedBody812_133

def RemovedBody812_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 7

def RemovedBody812_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_144 : StackLang.HolProg 64 :=
.seq RemovedBody812_142 RemovedBody812_143

def RemovedBody812_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_146 : StackLang.HolProg 64 :=
.seq RemovedBody812_144 RemovedBody812_145

def RemovedBody812_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_148 : StackLang.HolProg 64 :=
.seq RemovedBody812_146 RemovedBody812_147

def RemovedBody812_149 : StackLang.HolProg 64 :=
.seq RemovedBody812_141 RemovedBody812_148

def RemovedBody812_150 : StackLang.HolProg 64 :=
.seq RemovedBody812_140 RemovedBody812_149

def RemovedBody812_151 : StackLang.HolProg 64 :=
.seq RemovedBody812_139 RemovedBody812_150

def RemovedBody812_152 : StackLang.HolProg 64 :=
.seq RemovedBody812_138 RemovedBody812_151

def RemovedBody812_153 : StackLang.HolProg 64 :=
.seq RemovedBody812_137 RemovedBody812_152

def RemovedBody812_154 : StackLang.HolProg 64 :=
.seq RemovedBody812_136 RemovedBody812_153

def RemovedBody812_155 : StackLang.HolProg 64 :=
.seq RemovedBody812_135 RemovedBody812_154

def RemovedBody812_156 : StackLang.HolProg 64 :=
.seq RemovedBody812_134 RemovedBody812_155

def RemovedBody812_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody812_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_166 : StackLang.HolProg 64 :=
.seq RemovedBody812_164 RemovedBody812_165

def RemovedBody812_167 : StackLang.HolProg 64 :=
.seq RemovedBody812_163 RemovedBody812_166

def RemovedBody812_168 : StackLang.HolProg 64 :=
.seq RemovedBody812_162 RemovedBody812_167

def RemovedBody812_169 : StackLang.HolProg 64 :=
.seq RemovedBody812_161 RemovedBody812_168

def RemovedBody812_170 : StackLang.HolProg 64 :=
.seq RemovedBody812_160 RemovedBody812_169

def RemovedBody812_171 : StackLang.HolProg 64 :=
.seq RemovedBody812_159 RemovedBody812_170

def RemovedBody812_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_174 : StackLang.HolProg 64 :=
.seq RemovedBody812_172 RemovedBody812_173

def RemovedBody812_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_176 : StackLang.HolProg 64 :=
.seq RemovedBody812_174 RemovedBody812_175

def RemovedBody812_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_171, 0, 812, 6)) (Sum.inl 68) (some (RemovedBody812_176, 812, 7))

def RemovedBody812_178 : StackLang.HolProg 64 :=
.seq RemovedBody812_158 RemovedBody812_177

def RemovedBody812_179 : StackLang.HolProg 64 :=
.seq RemovedBody812_157 RemovedBody812_178

def RemovedBody812_180 : StackLang.HolProg 64 :=
.seq RemovedBody812_156 RemovedBody812_179

def RemovedBody812_181 : StackLang.HolProg 64 :=
.seq RemovedBody812_127 RemovedBody812_180

def RemovedBody812_182 : StackLang.HolProg 64 :=
.seq RemovedBody812_124 RemovedBody812_181

def RemovedBody812_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody812_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_188 : StackLang.HolProg 64 :=
.seq RemovedBody812_186 RemovedBody812_187

def RemovedBody812_189 : StackLang.HolProg 64 :=
.seq RemovedBody812_185 RemovedBody812_188

def RemovedBody812_190 : StackLang.HolProg 64 :=
.seq RemovedBody812_184 RemovedBody812_189

def RemovedBody812_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4013#64)

def RemovedBody812_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_194 : StackLang.HolProg 64 :=
.seq RemovedBody812_192 RemovedBody812_193

def RemovedBody812_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_198 : StackLang.HolProg 64 :=
.seq RemovedBody812_196 RemovedBody812_197

def RemovedBody812_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_198 RemovedBody812_199

def RemovedBody812_201 : StackLang.HolProg 64 :=
.seq RemovedBody812_195 RemovedBody812_200

def RemovedBody812_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 9

def RemovedBody812_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_211 : StackLang.HolProg 64 :=
.seq RemovedBody812_209 RemovedBody812_210

def RemovedBody812_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_213 : StackLang.HolProg 64 :=
.seq RemovedBody812_211 RemovedBody812_212

def RemovedBody812_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_215 : StackLang.HolProg 64 :=
.seq RemovedBody812_213 RemovedBody812_214

def RemovedBody812_216 : StackLang.HolProg 64 :=
.seq RemovedBody812_208 RemovedBody812_215

def RemovedBody812_217 : StackLang.HolProg 64 :=
.seq RemovedBody812_207 RemovedBody812_216

def RemovedBody812_218 : StackLang.HolProg 64 :=
.seq RemovedBody812_206 RemovedBody812_217

def RemovedBody812_219 : StackLang.HolProg 64 :=
.seq RemovedBody812_205 RemovedBody812_218

def RemovedBody812_220 : StackLang.HolProg 64 :=
.seq RemovedBody812_204 RemovedBody812_219

def RemovedBody812_221 : StackLang.HolProg 64 :=
.seq RemovedBody812_203 RemovedBody812_220

def RemovedBody812_222 : StackLang.HolProg 64 :=
.seq RemovedBody812_202 RemovedBody812_221

def RemovedBody812_223 : StackLang.HolProg 64 :=
.seq RemovedBody812_201 RemovedBody812_222

def RemovedBody812_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody812_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_235 : StackLang.HolProg 64 :=
.seq RemovedBody812_233 RemovedBody812_234

def RemovedBody812_236 : StackLang.HolProg 64 :=
.seq RemovedBody812_232 RemovedBody812_235

def RemovedBody812_237 : StackLang.HolProg 64 :=
.seq RemovedBody812_231 RemovedBody812_236

def RemovedBody812_238 : StackLang.HolProg 64 :=
.seq RemovedBody812_230 RemovedBody812_237

def RemovedBody812_239 : StackLang.HolProg 64 :=
.seq RemovedBody812_229 RemovedBody812_238

def RemovedBody812_240 : StackLang.HolProg 64 :=
.seq RemovedBody812_228 RemovedBody812_239

def RemovedBody812_241 : StackLang.HolProg 64 :=
.seq RemovedBody812_227 RemovedBody812_240

def RemovedBody812_242 : StackLang.HolProg 64 :=
.seq RemovedBody812_226 RemovedBody812_241

def RemovedBody812_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_247 : StackLang.HolProg 64 :=
.seq RemovedBody812_245 RemovedBody812_246

def RemovedBody812_248 : StackLang.HolProg 64 :=
.seq RemovedBody812_244 RemovedBody812_247

def RemovedBody812_249 : StackLang.HolProg 64 :=
.seq RemovedBody812_243 RemovedBody812_248

def RemovedBody812_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_251 : StackLang.HolProg 64 :=
.seq RemovedBody812_249 RemovedBody812_250

def RemovedBody812_252 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_242, 0, 812, 8)) (Sum.inl 787) (some (RemovedBody812_251, 812, 9))

def RemovedBody812_253 : StackLang.HolProg 64 :=
.seq RemovedBody812_225 RemovedBody812_252

def RemovedBody812_254 : StackLang.HolProg 64 :=
.seq RemovedBody812_224 RemovedBody812_253

def RemovedBody812_255 : StackLang.HolProg 64 :=
.seq RemovedBody812_223 RemovedBody812_254

def RemovedBody812_256 : StackLang.HolProg 64 :=
.seq RemovedBody812_194 RemovedBody812_255

def RemovedBody812_257 : StackLang.HolProg 64 :=
.seq RemovedBody812_191 RemovedBody812_256

def RemovedBody812_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody812_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 256#64)))

def RemovedBody812_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody812_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_266 : StackLang.HolProg 64 :=
.seq RemovedBody812_264 RemovedBody812_265

def RemovedBody812_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4014#64)

def RemovedBody812_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_270 : StackLang.HolProg 64 :=
.seq RemovedBody812_268 RemovedBody812_269

def RemovedBody812_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_274 : StackLang.HolProg 64 :=
.seq RemovedBody812_272 RemovedBody812_273

def RemovedBody812_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_274 RemovedBody812_275

def RemovedBody812_277 : StackLang.HolProg 64 :=
.seq RemovedBody812_271 RemovedBody812_276

def RemovedBody812_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 11

def RemovedBody812_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_287 : StackLang.HolProg 64 :=
.seq RemovedBody812_285 RemovedBody812_286

def RemovedBody812_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_289 : StackLang.HolProg 64 :=
.seq RemovedBody812_287 RemovedBody812_288

def RemovedBody812_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_291 : StackLang.HolProg 64 :=
.seq RemovedBody812_289 RemovedBody812_290

def RemovedBody812_292 : StackLang.HolProg 64 :=
.seq RemovedBody812_284 RemovedBody812_291

def RemovedBody812_293 : StackLang.HolProg 64 :=
.seq RemovedBody812_283 RemovedBody812_292

def RemovedBody812_294 : StackLang.HolProg 64 :=
.seq RemovedBody812_282 RemovedBody812_293

def RemovedBody812_295 : StackLang.HolProg 64 :=
.seq RemovedBody812_281 RemovedBody812_294

def RemovedBody812_296 : StackLang.HolProg 64 :=
.seq RemovedBody812_280 RemovedBody812_295

def RemovedBody812_297 : StackLang.HolProg 64 :=
.seq RemovedBody812_279 RemovedBody812_296

def RemovedBody812_298 : StackLang.HolProg 64 :=
.seq RemovedBody812_278 RemovedBody812_297

def RemovedBody812_299 : StackLang.HolProg 64 :=
.seq RemovedBody812_277 RemovedBody812_298

def RemovedBody812_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody812_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_311 : StackLang.HolProg 64 :=
.seq RemovedBody812_309 RemovedBody812_310

def RemovedBody812_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_314 : StackLang.HolProg 64 :=
.seq RemovedBody812_312 RemovedBody812_313

def RemovedBody812_315 : StackLang.HolProg 64 :=
.seq RemovedBody812_311 RemovedBody812_314

def RemovedBody812_316 : StackLang.HolProg 64 :=
.seq RemovedBody812_308 RemovedBody812_315

def RemovedBody812_317 : StackLang.HolProg 64 :=
.seq RemovedBody812_307 RemovedBody812_316

def RemovedBody812_318 : StackLang.HolProg 64 :=
.seq RemovedBody812_306 RemovedBody812_317

def RemovedBody812_319 : StackLang.HolProg 64 :=
.seq RemovedBody812_305 RemovedBody812_318

def RemovedBody812_320 : StackLang.HolProg 64 :=
.seq RemovedBody812_304 RemovedBody812_319

def RemovedBody812_321 : StackLang.HolProg 64 :=
.seq RemovedBody812_303 RemovedBody812_320

def RemovedBody812_322 : StackLang.HolProg 64 :=
.seq RemovedBody812_302 RemovedBody812_321

def RemovedBody812_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_327 : StackLang.HolProg 64 :=
.seq RemovedBody812_325 RemovedBody812_326

def RemovedBody812_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_330 : StackLang.HolProg 64 :=
.seq RemovedBody812_328 RemovedBody812_329

def RemovedBody812_331 : StackLang.HolProg 64 :=
.seq RemovedBody812_327 RemovedBody812_330

def RemovedBody812_332 : StackLang.HolProg 64 :=
.seq RemovedBody812_324 RemovedBody812_331

def RemovedBody812_333 : StackLang.HolProg 64 :=
.seq RemovedBody812_323 RemovedBody812_332

def RemovedBody812_334 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_335 : StackLang.HolProg 64 :=
.seq RemovedBody812_333 RemovedBody812_334

def RemovedBody812_336 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_322, 0, 812, 10)) (Sum.inl 787) (some (RemovedBody812_335, 812, 11))

def RemovedBody812_337 : StackLang.HolProg 64 :=
.seq RemovedBody812_301 RemovedBody812_336

def RemovedBody812_338 : StackLang.HolProg 64 :=
.seq RemovedBody812_300 RemovedBody812_337

def RemovedBody812_339 : StackLang.HolProg 64 :=
.seq RemovedBody812_299 RemovedBody812_338

def RemovedBody812_340 : StackLang.HolProg 64 :=
.seq RemovedBody812_270 RemovedBody812_339

def RemovedBody812_341 : StackLang.HolProg 64 :=
.seq RemovedBody812_267 RemovedBody812_340

def RemovedBody812_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_344 : StackLang.HolProg 64 :=
.seq RemovedBody812_342 RemovedBody812_343

def RemovedBody812_345 : StackLang.HolProg 64 :=
.seq RemovedBody812_341 RemovedBody812_344

def RemovedBody812_346 : StackLang.HolProg 64 :=
.seq RemovedBody812_266 RemovedBody812_345

def RemovedBody812_347 : StackLang.HolProg 64 :=
.seq RemovedBody812_263 RemovedBody812_346

def RemovedBody812_348 : StackLang.HolProg 64 :=
.seq RemovedBody812_262 RemovedBody812_347

def RemovedBody812_349 : StackLang.HolProg 64 :=
.seq RemovedBody812_261 RemovedBody812_348

def RemovedBody812_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_354 : StackLang.HolProg 64 :=
.seq RemovedBody812_352 RemovedBody812_353

def RemovedBody812_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_357 : StackLang.HolProg 64 :=
.seq RemovedBody812_355 RemovedBody812_356

def RemovedBody812_358 : StackLang.HolProg 64 :=
.seq RemovedBody812_354 RemovedBody812_357

def RemovedBody812_359 : StackLang.HolProg 64 :=
.seq RemovedBody812_351 RemovedBody812_358

def RemovedBody812_360 : StackLang.HolProg 64 :=
.seq RemovedBody812_350 RemovedBody812_359

def RemovedBody812_361 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody812_349 RemovedBody812_360

def RemovedBody812_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody812_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody812_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_369 : StackLang.HolProg 64 :=
.seq RemovedBody812_367 RemovedBody812_368

def RemovedBody812_370 : StackLang.HolProg 64 :=
.seq RemovedBody812_366 RemovedBody812_369

def RemovedBody812_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4015#64)

def RemovedBody812_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_374 : StackLang.HolProg 64 :=
.seq RemovedBody812_372 RemovedBody812_373

def RemovedBody812_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_378 : StackLang.HolProg 64 :=
.seq RemovedBody812_376 RemovedBody812_377

def RemovedBody812_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_380 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_378 RemovedBody812_379

def RemovedBody812_381 : StackLang.HolProg 64 :=
.seq RemovedBody812_375 RemovedBody812_380

def RemovedBody812_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 13

def RemovedBody812_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_391 : StackLang.HolProg 64 :=
.seq RemovedBody812_389 RemovedBody812_390

def RemovedBody812_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_393 : StackLang.HolProg 64 :=
.seq RemovedBody812_391 RemovedBody812_392

def RemovedBody812_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_395 : StackLang.HolProg 64 :=
.seq RemovedBody812_393 RemovedBody812_394

def RemovedBody812_396 : StackLang.HolProg 64 :=
.seq RemovedBody812_388 RemovedBody812_395

def RemovedBody812_397 : StackLang.HolProg 64 :=
.seq RemovedBody812_387 RemovedBody812_396

def RemovedBody812_398 : StackLang.HolProg 64 :=
.seq RemovedBody812_386 RemovedBody812_397

def RemovedBody812_399 : StackLang.HolProg 64 :=
.seq RemovedBody812_385 RemovedBody812_398

def RemovedBody812_400 : StackLang.HolProg 64 :=
.seq RemovedBody812_384 RemovedBody812_399

def RemovedBody812_401 : StackLang.HolProg 64 :=
.seq RemovedBody812_383 RemovedBody812_400

def RemovedBody812_402 : StackLang.HolProg 64 :=
.seq RemovedBody812_382 RemovedBody812_401

def RemovedBody812_403 : StackLang.HolProg 64 :=
.seq RemovedBody812_381 RemovedBody812_402

def RemovedBody812_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_411 : StackLang.HolProg 64 :=
.seq RemovedBody812_409 RemovedBody812_410

def RemovedBody812_412 : StackLang.HolProg 64 :=
.seq RemovedBody812_408 RemovedBody812_411

def RemovedBody812_413 : StackLang.HolProg 64 :=
.seq RemovedBody812_407 RemovedBody812_412

def RemovedBody812_414 : StackLang.HolProg 64 :=
.seq RemovedBody812_406 RemovedBody812_413

def RemovedBody812_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_417 : StackLang.HolProg 64 :=
.seq RemovedBody812_415 RemovedBody812_416

def RemovedBody812_418 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_414, 0, 812, 12)) (Sum.inl 70) (some (RemovedBody812_417, 812, 13))

def RemovedBody812_419 : StackLang.HolProg 64 :=
.seq RemovedBody812_405 RemovedBody812_418

def RemovedBody812_420 : StackLang.HolProg 64 :=
.seq RemovedBody812_404 RemovedBody812_419

def RemovedBody812_421 : StackLang.HolProg 64 :=
.seq RemovedBody812_403 RemovedBody812_420

def RemovedBody812_422 : StackLang.HolProg 64 :=
.seq RemovedBody812_374 RemovedBody812_421

def RemovedBody812_423 : StackLang.HolProg 64 :=
.seq RemovedBody812_371 RemovedBody812_422

def RemovedBody812_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody812_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody812_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody812_429 : StackLang.HolProg 64 :=
.seq RemovedBody812_427 RemovedBody812_428

def RemovedBody812_430 : StackLang.HolProg 64 :=
.seq RemovedBody812_426 RemovedBody812_429

def RemovedBody812_431 : StackLang.HolProg 64 :=
.seq RemovedBody812_425 RemovedBody812_430

def RemovedBody812_432 : StackLang.HolProg 64 :=
.seq RemovedBody812_424 RemovedBody812_431

def RemovedBody812_433 : StackLang.HolProg 64 :=
.seq RemovedBody812_423 RemovedBody812_432

def RemovedBody812_434 : StackLang.HolProg 64 :=
.seq RemovedBody812_370 RemovedBody812_433

def RemovedBody812_435 : StackLang.HolProg 64 :=
.seq RemovedBody812_365 RemovedBody812_434

def RemovedBody812_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody812_435 RemovedBody812_436

def RemovedBody812_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody812_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_442 : StackLang.HolProg 64 :=
.seq RemovedBody812_440 RemovedBody812_441

def RemovedBody812_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4016#64)

def RemovedBody812_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_446 : StackLang.HolProg 64 :=
.seq RemovedBody812_444 RemovedBody812_445

def RemovedBody812_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_450 : StackLang.HolProg 64 :=
.seq RemovedBody812_448 RemovedBody812_449

def RemovedBody812_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_452 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_450 RemovedBody812_451

def RemovedBody812_453 : StackLang.HolProg 64 :=
.seq RemovedBody812_447 RemovedBody812_452

def RemovedBody812_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 15

def RemovedBody812_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_463 : StackLang.HolProg 64 :=
.seq RemovedBody812_461 RemovedBody812_462

def RemovedBody812_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_465 : StackLang.HolProg 64 :=
.seq RemovedBody812_463 RemovedBody812_464

def RemovedBody812_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_467 : StackLang.HolProg 64 :=
.seq RemovedBody812_465 RemovedBody812_466

def RemovedBody812_468 : StackLang.HolProg 64 :=
.seq RemovedBody812_460 RemovedBody812_467

def RemovedBody812_469 : StackLang.HolProg 64 :=
.seq RemovedBody812_459 RemovedBody812_468

def RemovedBody812_470 : StackLang.HolProg 64 :=
.seq RemovedBody812_458 RemovedBody812_469

def RemovedBody812_471 : StackLang.HolProg 64 :=
.seq RemovedBody812_457 RemovedBody812_470

def RemovedBody812_472 : StackLang.HolProg 64 :=
.seq RemovedBody812_456 RemovedBody812_471

def RemovedBody812_473 : StackLang.HolProg 64 :=
.seq RemovedBody812_455 RemovedBody812_472

def RemovedBody812_474 : StackLang.HolProg 64 :=
.seq RemovedBody812_454 RemovedBody812_473

def RemovedBody812_475 : StackLang.HolProg 64 :=
.seq RemovedBody812_453 RemovedBody812_474

def RemovedBody812_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_486 : StackLang.HolProg 64 :=
.seq RemovedBody812_484 RemovedBody812_485

def RemovedBody812_487 : StackLang.HolProg 64 :=
.seq RemovedBody812_483 RemovedBody812_486

def RemovedBody812_488 : StackLang.HolProg 64 :=
.seq RemovedBody812_482 RemovedBody812_487

def RemovedBody812_489 : StackLang.HolProg 64 :=
.seq RemovedBody812_481 RemovedBody812_488

def RemovedBody812_490 : StackLang.HolProg 64 :=
.seq RemovedBody812_480 RemovedBody812_489

def RemovedBody812_491 : StackLang.HolProg 64 :=
.seq RemovedBody812_479 RemovedBody812_490

def RemovedBody812_492 : StackLang.HolProg 64 :=
.seq RemovedBody812_478 RemovedBody812_491

def RemovedBody812_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody812_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody812_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_497 : StackLang.HolProg 64 :=
.seq RemovedBody812_495 RemovedBody812_496

def RemovedBody812_498 : StackLang.HolProg 64 :=
.seq RemovedBody812_494 RemovedBody812_497

def RemovedBody812_499 : StackLang.HolProg 64 :=
.seq RemovedBody812_493 RemovedBody812_498

def RemovedBody812_500 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_501 : StackLang.HolProg 64 :=
.seq RemovedBody812_499 RemovedBody812_500

def RemovedBody812_502 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_492, 0, 812, 14)) (Sum.inl 783) (some (RemovedBody812_501, 812, 15))

def RemovedBody812_503 : StackLang.HolProg 64 :=
.seq RemovedBody812_477 RemovedBody812_502

def RemovedBody812_504 : StackLang.HolProg 64 :=
.seq RemovedBody812_476 RemovedBody812_503

def RemovedBody812_505 : StackLang.HolProg 64 :=
.seq RemovedBody812_475 RemovedBody812_504

def RemovedBody812_506 : StackLang.HolProg 64 :=
.seq RemovedBody812_446 RemovedBody812_505

def RemovedBody812_507 : StackLang.HolProg 64 :=
.seq RemovedBody812_443 RemovedBody812_506

def RemovedBody812_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody812_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4017#64)

def RemovedBody812_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_513 : StackLang.HolProg 64 :=
.seq RemovedBody812_511 RemovedBody812_512

def RemovedBody812_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_517 : StackLang.HolProg 64 :=
.seq RemovedBody812_515 RemovedBody812_516

def RemovedBody812_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_519 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_517 RemovedBody812_518

def RemovedBody812_520 : StackLang.HolProg 64 :=
.seq RemovedBody812_514 RemovedBody812_519

def RemovedBody812_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 17

def RemovedBody812_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_530 : StackLang.HolProg 64 :=
.seq RemovedBody812_528 RemovedBody812_529

def RemovedBody812_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_532 : StackLang.HolProg 64 :=
.seq RemovedBody812_530 RemovedBody812_531

def RemovedBody812_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_534 : StackLang.HolProg 64 :=
.seq RemovedBody812_532 RemovedBody812_533

def RemovedBody812_535 : StackLang.HolProg 64 :=
.seq RemovedBody812_527 RemovedBody812_534

def RemovedBody812_536 : StackLang.HolProg 64 :=
.seq RemovedBody812_526 RemovedBody812_535

def RemovedBody812_537 : StackLang.HolProg 64 :=
.seq RemovedBody812_525 RemovedBody812_536

def RemovedBody812_538 : StackLang.HolProg 64 :=
.seq RemovedBody812_524 RemovedBody812_537

def RemovedBody812_539 : StackLang.HolProg 64 :=
.seq RemovedBody812_523 RemovedBody812_538

def RemovedBody812_540 : StackLang.HolProg 64 :=
.seq RemovedBody812_522 RemovedBody812_539

def RemovedBody812_541 : StackLang.HolProg 64 :=
.seq RemovedBody812_521 RemovedBody812_540

def RemovedBody812_542 : StackLang.HolProg 64 :=
.seq RemovedBody812_520 RemovedBody812_541

def RemovedBody812_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_550 : StackLang.HolProg 64 :=
.seq RemovedBody812_548 RemovedBody812_549

def RemovedBody812_551 : StackLang.HolProg 64 :=
.seq RemovedBody812_547 RemovedBody812_550

def RemovedBody812_552 : StackLang.HolProg 64 :=
.seq RemovedBody812_546 RemovedBody812_551

def RemovedBody812_553 : StackLang.HolProg 64 :=
.seq RemovedBody812_545 RemovedBody812_552

def RemovedBody812_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody812_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_556 : StackLang.HolProg 64 :=
.seq RemovedBody812_554 RemovedBody812_555

def RemovedBody812_557 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_553, 0, 812, 16)) (Sum.inl 788) (some (RemovedBody812_556, 812, 17))

def RemovedBody812_558 : StackLang.HolProg 64 :=
.seq RemovedBody812_544 RemovedBody812_557

def RemovedBody812_559 : StackLang.HolProg 64 :=
.seq RemovedBody812_543 RemovedBody812_558

def RemovedBody812_560 : StackLang.HolProg 64 :=
.seq RemovedBody812_542 RemovedBody812_559

def RemovedBody812_561 : StackLang.HolProg 64 :=
.seq RemovedBody812_513 RemovedBody812_560

def RemovedBody812_562 : StackLang.HolProg 64 :=
.seq RemovedBody812_510 RemovedBody812_561

def RemovedBody812_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody812_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4018#64)

def RemovedBody812_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_568 : StackLang.HolProg 64 :=
.seq RemovedBody812_566 RemovedBody812_567

def RemovedBody812_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody812_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody812_572 : StackLang.HolProg 64 :=
.seq RemovedBody812_570 RemovedBody812_571

def RemovedBody812_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_574 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody812_572 RemovedBody812_573

def RemovedBody812_575 : StackLang.HolProg 64 :=
.seq RemovedBody812_569 RemovedBody812_574

def RemovedBody812_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody812_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody812_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 19

def RemovedBody812_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody812_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody812_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody812_585 : StackLang.HolProg 64 :=
.seq RemovedBody812_583 RemovedBody812_584

def RemovedBody812_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody812_587 : StackLang.HolProg 64 :=
.seq RemovedBody812_585 RemovedBody812_586

def RemovedBody812_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_589 : StackLang.HolProg 64 :=
.seq RemovedBody812_587 RemovedBody812_588

def RemovedBody812_590 : StackLang.HolProg 64 :=
.seq RemovedBody812_582 RemovedBody812_589

def RemovedBody812_591 : StackLang.HolProg 64 :=
.seq RemovedBody812_581 RemovedBody812_590

def RemovedBody812_592 : StackLang.HolProg 64 :=
.seq RemovedBody812_580 RemovedBody812_591

def RemovedBody812_593 : StackLang.HolProg 64 :=
.seq RemovedBody812_579 RemovedBody812_592

def RemovedBody812_594 : StackLang.HolProg 64 :=
.seq RemovedBody812_578 RemovedBody812_593

def RemovedBody812_595 : StackLang.HolProg 64 :=
.seq RemovedBody812_577 RemovedBody812_594

def RemovedBody812_596 : StackLang.HolProg 64 :=
.seq RemovedBody812_576 RemovedBody812_595

def RemovedBody812_597 : StackLang.HolProg 64 :=
.seq RemovedBody812_575 RemovedBody812_596

def RemovedBody812_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody812_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody812_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody812_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody812_605 : StackLang.HolProg 64 :=
.seq RemovedBody812_603 RemovedBody812_604

def RemovedBody812_606 : StackLang.HolProg 64 :=
.seq RemovedBody812_602 RemovedBody812_605

def RemovedBody812_607 : StackLang.HolProg 64 :=
.seq RemovedBody812_601 RemovedBody812_606

def RemovedBody812_608 : StackLang.HolProg 64 :=
.seq RemovedBody812_600 RemovedBody812_607

def RemovedBody812_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody812_610 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody812_611 : StackLang.HolProg 64 :=
.seq RemovedBody812_609 RemovedBody812_610

def RemovedBody812_612 : StackLang.HolProg 64 :=
.call (some (RemovedBody812_608, 0, 812, 18)) (Sum.inl 70) (some (RemovedBody812_611, 812, 19))

def RemovedBody812_613 : StackLang.HolProg 64 :=
.seq RemovedBody812_599 RemovedBody812_612

def RemovedBody812_614 : StackLang.HolProg 64 :=
.seq RemovedBody812_598 RemovedBody812_613

def RemovedBody812_615 : StackLang.HolProg 64 :=
.seq RemovedBody812_597 RemovedBody812_614

def RemovedBody812_616 : StackLang.HolProg 64 :=
.seq RemovedBody812_568 RemovedBody812_615

def RemovedBody812_617 : StackLang.HolProg 64 :=
.seq RemovedBody812_565 RemovedBody812_616

def RemovedBody812_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody812_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody812_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody812_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody812_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody812_623 : StackLang.HolProg 64 :=
.seq RemovedBody812_621 RemovedBody812_622

def RemovedBody812_624 : StackLang.HolProg 64 :=
.seq RemovedBody812_620 RemovedBody812_623

def RemovedBody812_625 : StackLang.HolProg 64 :=
.seq RemovedBody812_619 RemovedBody812_624

def RemovedBody812_626 : StackLang.HolProg 64 :=
.seq RemovedBody812_618 RemovedBody812_625

def RemovedBody812_627 : StackLang.HolProg 64 :=
.seq RemovedBody812_617 RemovedBody812_626

def RemovedBody812_628 : StackLang.HolProg 64 :=
.seq RemovedBody812_564 RemovedBody812_627

def RemovedBody812_629 : StackLang.HolProg 64 :=
.seq RemovedBody812_563 RemovedBody812_628

def RemovedBody812_630 : StackLang.HolProg 64 :=
.seq RemovedBody812_562 RemovedBody812_629

def RemovedBody812_631 : StackLang.HolProg 64 :=
.seq RemovedBody812_509 RemovedBody812_630

def RemovedBody812_632 : StackLang.HolProg 64 :=
.seq RemovedBody812_508 RemovedBody812_631

def RemovedBody812_633 : StackLang.HolProg 64 :=
.seq RemovedBody812_507 RemovedBody812_632

def RemovedBody812_634 : StackLang.HolProg 64 :=
.seq RemovedBody812_442 RemovedBody812_633

def RemovedBody812_635 : StackLang.HolProg 64 :=
.seq RemovedBody812_439 RemovedBody812_634

def RemovedBody812_636 : StackLang.HolProg 64 :=
.seq RemovedBody812_438 RemovedBody812_635

def RemovedBody812_637 : StackLang.HolProg 64 :=
.seq RemovedBody812_437 RemovedBody812_636

def RemovedBody812_638 : StackLang.HolProg 64 :=
.seq RemovedBody812_364 RemovedBody812_637

def RemovedBody812_639 : StackLang.HolProg 64 :=
.seq RemovedBody812_363 RemovedBody812_638

def RemovedBody812_640 : StackLang.HolProg 64 :=
.seq RemovedBody812_362 RemovedBody812_639

def RemovedBody812_641 : StackLang.HolProg 64 :=
.seq RemovedBody812_361 RemovedBody812_640

def RemovedBody812_642 : StackLang.HolProg 64 :=
.seq RemovedBody812_260 RemovedBody812_641

def RemovedBody812_643 : StackLang.HolProg 64 :=
.seq RemovedBody812_259 RemovedBody812_642

def RemovedBody812_644 : StackLang.HolProg 64 :=
.seq RemovedBody812_258 RemovedBody812_643

def RemovedBody812_645 : StackLang.HolProg 64 :=
.seq RemovedBody812_257 RemovedBody812_644

def RemovedBody812_646 : StackLang.HolProg 64 :=
.seq RemovedBody812_190 RemovedBody812_645

def RemovedBody812_647 : StackLang.HolProg 64 :=
.seq RemovedBody812_183 RemovedBody812_646

def RemovedBody812_648 : StackLang.HolProg 64 :=
.seq RemovedBody812_182 RemovedBody812_647

def RemovedBody812_649 : StackLang.HolProg 64 :=
.seq RemovedBody812_123 RemovedBody812_648

def RemovedBody812_650 : StackLang.HolProg 64 :=
.seq RemovedBody812_122 RemovedBody812_649

def RemovedBody812_651 : StackLang.HolProg 64 :=
.seq RemovedBody812_121 RemovedBody812_650

def RemovedBody812_652 : StackLang.HolProg 64 :=
.seq RemovedBody812_120 RemovedBody812_651

def RemovedBody812_653 : StackLang.HolProg 64 :=
.seq RemovedBody812_67 RemovedBody812_652

def RemovedBody812_654 : StackLang.HolProg 64 :=
.seq RemovedBody812_66 RemovedBody812_653

def RemovedBody812_655 : StackLang.HolProg 64 :=
.seq RemovedBody812_65 RemovedBody812_654

def RemovedBody812_656 : StackLang.HolProg 64 :=
.seq RemovedBody812_64 RemovedBody812_655

def RemovedBody812_657 : StackLang.HolProg 64 :=
.seq RemovedBody812_11 RemovedBody812_656

def RemovedBody812_658 : StackLang.HolProg 64 :=
.seq RemovedBody812_6 RemovedBody812_657

def Removed812 : Nat × StackLang.HolProg 64 := (812, RemovedBody812_658)
theorem Removed812_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc812 = Removed812 := by
  kernel_rfl
#print axioms Removed812_eq
end InitECandidate.Proofs.BackendStages
