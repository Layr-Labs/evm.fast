import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc260
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody260_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody260_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_3 : StackLang.HolProg 64 :=
.seq RemovedBody260_1 RemovedBody260_2

def RemovedBody260_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_3 RemovedBody260_4

def RemovedBody260_6 : StackLang.HolProg 64 :=
.seq RemovedBody260_0 RemovedBody260_5

def RemovedBody260_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody260_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_10 : StackLang.HolProg 64 :=
.seq RemovedBody260_8 RemovedBody260_9

def RemovedBody260_11 : StackLang.HolProg 64 :=
.seq RemovedBody260_7 RemovedBody260_10

def RemovedBody260_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 590#64)

def RemovedBody260_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_15 : StackLang.HolProg 64 :=
.seq RemovedBody260_13 RemovedBody260_14

def RemovedBody260_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_19 : StackLang.HolProg 64 :=
.seq RemovedBody260_17 RemovedBody260_18

def RemovedBody260_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_19 RemovedBody260_20

def RemovedBody260_22 : StackLang.HolProg 64 :=
.seq RemovedBody260_16 RemovedBody260_21

def RemovedBody260_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 3

def RemovedBody260_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_32 : StackLang.HolProg 64 :=
.seq RemovedBody260_30 RemovedBody260_31

def RemovedBody260_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_34 : StackLang.HolProg 64 :=
.seq RemovedBody260_32 RemovedBody260_33

def RemovedBody260_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_36 : StackLang.HolProg 64 :=
.seq RemovedBody260_34 RemovedBody260_35

def RemovedBody260_37 : StackLang.HolProg 64 :=
.seq RemovedBody260_29 RemovedBody260_36

def RemovedBody260_38 : StackLang.HolProg 64 :=
.seq RemovedBody260_28 RemovedBody260_37

def RemovedBody260_39 : StackLang.HolProg 64 :=
.seq RemovedBody260_27 RemovedBody260_38

def RemovedBody260_40 : StackLang.HolProg 64 :=
.seq RemovedBody260_26 RemovedBody260_39

def RemovedBody260_41 : StackLang.HolProg 64 :=
.seq RemovedBody260_25 RemovedBody260_40

def RemovedBody260_42 : StackLang.HolProg 64 :=
.seq RemovedBody260_24 RemovedBody260_41

def RemovedBody260_43 : StackLang.HolProg 64 :=
.seq RemovedBody260_23 RemovedBody260_42

def RemovedBody260_44 : StackLang.HolProg 64 :=
.seq RemovedBody260_22 RemovedBody260_43

def RemovedBody260_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody260_52 : StackLang.HolProg 64 :=
.seq RemovedBody260_50 RemovedBody260_51

def RemovedBody260_53 : StackLang.HolProg 64 :=
.seq RemovedBody260_49 RemovedBody260_52

def RemovedBody260_54 : StackLang.HolProg 64 :=
.seq RemovedBody260_48 RemovedBody260_53

def RemovedBody260_55 : StackLang.HolProg 64 :=
.seq RemovedBody260_47 RemovedBody260_54

def RemovedBody260_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_58 : StackLang.HolProg 64 :=
.seq RemovedBody260_56 RemovedBody260_57

def RemovedBody260_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_55, 0, 260, 2)) (Sum.inl 69) (some (RemovedBody260_58, 260, 3))

def RemovedBody260_60 : StackLang.HolProg 64 :=
.seq RemovedBody260_46 RemovedBody260_59

def RemovedBody260_61 : StackLang.HolProg 64 :=
.seq RemovedBody260_45 RemovedBody260_60

def RemovedBody260_62 : StackLang.HolProg 64 :=
.seq RemovedBody260_44 RemovedBody260_61

def RemovedBody260_63 : StackLang.HolProg 64 :=
.seq RemovedBody260_15 RemovedBody260_62

def RemovedBody260_64 : StackLang.HolProg 64 :=
.seq RemovedBody260_12 RemovedBody260_63

def RemovedBody260_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 160#64)

def RemovedBody260_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody260_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 591#64)

def RemovedBody260_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_71 : StackLang.HolProg 64 :=
.seq RemovedBody260_69 RemovedBody260_70

def RemovedBody260_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_75 : StackLang.HolProg 64 :=
.seq RemovedBody260_73 RemovedBody260_74

def RemovedBody260_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_75 RemovedBody260_76

def RemovedBody260_78 : StackLang.HolProg 64 :=
.seq RemovedBody260_72 RemovedBody260_77

def RemovedBody260_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 5

def RemovedBody260_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_88 : StackLang.HolProg 64 :=
.seq RemovedBody260_86 RemovedBody260_87

def RemovedBody260_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_90 : StackLang.HolProg 64 :=
.seq RemovedBody260_88 RemovedBody260_89

def RemovedBody260_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_92 : StackLang.HolProg 64 :=
.seq RemovedBody260_90 RemovedBody260_91

def RemovedBody260_93 : StackLang.HolProg 64 :=
.seq RemovedBody260_85 RemovedBody260_92

def RemovedBody260_94 : StackLang.HolProg 64 :=
.seq RemovedBody260_84 RemovedBody260_93

def RemovedBody260_95 : StackLang.HolProg 64 :=
.seq RemovedBody260_83 RemovedBody260_94

def RemovedBody260_96 : StackLang.HolProg 64 :=
.seq RemovedBody260_82 RemovedBody260_95

def RemovedBody260_97 : StackLang.HolProg 64 :=
.seq RemovedBody260_81 RemovedBody260_96

def RemovedBody260_98 : StackLang.HolProg 64 :=
.seq RemovedBody260_80 RemovedBody260_97

def RemovedBody260_99 : StackLang.HolProg 64 :=
.seq RemovedBody260_79 RemovedBody260_98

def RemovedBody260_100 : StackLang.HolProg 64 :=
.seq RemovedBody260_78 RemovedBody260_99

def RemovedBody260_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody260_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_109 : StackLang.HolProg 64 :=
.seq RemovedBody260_107 RemovedBody260_108

def RemovedBody260_110 : StackLang.HolProg 64 :=
.seq RemovedBody260_106 RemovedBody260_109

def RemovedBody260_111 : StackLang.HolProg 64 :=
.seq RemovedBody260_105 RemovedBody260_110

def RemovedBody260_112 : StackLang.HolProg 64 :=
.seq RemovedBody260_104 RemovedBody260_111

def RemovedBody260_113 : StackLang.HolProg 64 :=
.seq RemovedBody260_103 RemovedBody260_112

def RemovedBody260_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_116 : StackLang.HolProg 64 :=
.seq RemovedBody260_114 RemovedBody260_115

def RemovedBody260_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_113, 0, 260, 4)) (Sum.inl 68) (some (RemovedBody260_116, 260, 5))

def RemovedBody260_118 : StackLang.HolProg 64 :=
.seq RemovedBody260_102 RemovedBody260_117

def RemovedBody260_119 : StackLang.HolProg 64 :=
.seq RemovedBody260_101 RemovedBody260_118

def RemovedBody260_120 : StackLang.HolProg 64 :=
.seq RemovedBody260_100 RemovedBody260_119

def RemovedBody260_121 : StackLang.HolProg 64 :=
.seq RemovedBody260_71 RemovedBody260_120

def RemovedBody260_122 : StackLang.HolProg 64 :=
.seq RemovedBody260_68 RemovedBody260_121

def RemovedBody260_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody260_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 48#64)

def RemovedBody260_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_128 : StackLang.HolProg 64 :=
.seq RemovedBody260_126 RemovedBody260_127

def RemovedBody260_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 592#64)

def RemovedBody260_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_132 : StackLang.HolProg 64 :=
.seq RemovedBody260_130 RemovedBody260_131

def RemovedBody260_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_136 : StackLang.HolProg 64 :=
.seq RemovedBody260_134 RemovedBody260_135

def RemovedBody260_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_136 RemovedBody260_137

def RemovedBody260_139 : StackLang.HolProg 64 :=
.seq RemovedBody260_133 RemovedBody260_138

def RemovedBody260_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 7

def RemovedBody260_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_149 : StackLang.HolProg 64 :=
.seq RemovedBody260_147 RemovedBody260_148

def RemovedBody260_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_151 : StackLang.HolProg 64 :=
.seq RemovedBody260_149 RemovedBody260_150

def RemovedBody260_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_153 : StackLang.HolProg 64 :=
.seq RemovedBody260_151 RemovedBody260_152

def RemovedBody260_154 : StackLang.HolProg 64 :=
.seq RemovedBody260_146 RemovedBody260_153

def RemovedBody260_155 : StackLang.HolProg 64 :=
.seq RemovedBody260_145 RemovedBody260_154

def RemovedBody260_156 : StackLang.HolProg 64 :=
.seq RemovedBody260_144 RemovedBody260_155

def RemovedBody260_157 : StackLang.HolProg 64 :=
.seq RemovedBody260_143 RemovedBody260_156

def RemovedBody260_158 : StackLang.HolProg 64 :=
.seq RemovedBody260_142 RemovedBody260_157

def RemovedBody260_159 : StackLang.HolProg 64 :=
.seq RemovedBody260_141 RemovedBody260_158

def RemovedBody260_160 : StackLang.HolProg 64 :=
.seq RemovedBody260_140 RemovedBody260_159

def RemovedBody260_161 : StackLang.HolProg 64 :=
.seq RemovedBody260_139 RemovedBody260_160

def RemovedBody260_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_170 : StackLang.HolProg 64 :=
.seq RemovedBody260_168 RemovedBody260_169

def RemovedBody260_171 : StackLang.HolProg 64 :=
.seq RemovedBody260_167 RemovedBody260_170

def RemovedBody260_172 : StackLang.HolProg 64 :=
.seq RemovedBody260_166 RemovedBody260_171

def RemovedBody260_173 : StackLang.HolProg 64 :=
.seq RemovedBody260_165 RemovedBody260_172

def RemovedBody260_174 : StackLang.HolProg 64 :=
.seq RemovedBody260_164 RemovedBody260_173

def RemovedBody260_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_177 : StackLang.HolProg 64 :=
.seq RemovedBody260_175 RemovedBody260_176

def RemovedBody260_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_179 : StackLang.HolProg 64 :=
.seq RemovedBody260_177 RemovedBody260_178

def RemovedBody260_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_174, 0, 260, 6)) (Sum.inl 242) (some (RemovedBody260_179, 260, 7))

def RemovedBody260_181 : StackLang.HolProg 64 :=
.seq RemovedBody260_163 RemovedBody260_180

def RemovedBody260_182 : StackLang.HolProg 64 :=
.seq RemovedBody260_162 RemovedBody260_181

def RemovedBody260_183 : StackLang.HolProg 64 :=
.seq RemovedBody260_161 RemovedBody260_182

def RemovedBody260_184 : StackLang.HolProg 64 :=
.seq RemovedBody260_132 RemovedBody260_183

def RemovedBody260_185 : StackLang.HolProg 64 :=
.seq RemovedBody260_129 RemovedBody260_184

def RemovedBody260_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody260_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody260_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody260_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_194 : StackLang.HolProg 64 :=
.seq RemovedBody260_192 RemovedBody260_193

def RemovedBody260_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 593#64)

def RemovedBody260_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_198 : StackLang.HolProg 64 :=
.seq RemovedBody260_196 RemovedBody260_197

def RemovedBody260_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_202 : StackLang.HolProg 64 :=
.seq RemovedBody260_200 RemovedBody260_201

def RemovedBody260_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_202 RemovedBody260_203

def RemovedBody260_205 : StackLang.HolProg 64 :=
.seq RemovedBody260_199 RemovedBody260_204

def RemovedBody260_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 9

def RemovedBody260_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_215 : StackLang.HolProg 64 :=
.seq RemovedBody260_213 RemovedBody260_214

def RemovedBody260_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_217 : StackLang.HolProg 64 :=
.seq RemovedBody260_215 RemovedBody260_216

def RemovedBody260_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_219 : StackLang.HolProg 64 :=
.seq RemovedBody260_217 RemovedBody260_218

def RemovedBody260_220 : StackLang.HolProg 64 :=
.seq RemovedBody260_212 RemovedBody260_219

def RemovedBody260_221 : StackLang.HolProg 64 :=
.seq RemovedBody260_211 RemovedBody260_220

def RemovedBody260_222 : StackLang.HolProg 64 :=
.seq RemovedBody260_210 RemovedBody260_221

def RemovedBody260_223 : StackLang.HolProg 64 :=
.seq RemovedBody260_209 RemovedBody260_222

def RemovedBody260_224 : StackLang.HolProg 64 :=
.seq RemovedBody260_208 RemovedBody260_223

def RemovedBody260_225 : StackLang.HolProg 64 :=
.seq RemovedBody260_207 RemovedBody260_224

def RemovedBody260_226 : StackLang.HolProg 64 :=
.seq RemovedBody260_206 RemovedBody260_225

def RemovedBody260_227 : StackLang.HolProg 64 :=
.seq RemovedBody260_205 RemovedBody260_226

def RemovedBody260_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_236 : StackLang.HolProg 64 :=
.seq RemovedBody260_234 RemovedBody260_235

def RemovedBody260_237 : StackLang.HolProg 64 :=
.seq RemovedBody260_233 RemovedBody260_236

def RemovedBody260_238 : StackLang.HolProg 64 :=
.seq RemovedBody260_232 RemovedBody260_237

def RemovedBody260_239 : StackLang.HolProg 64 :=
.seq RemovedBody260_231 RemovedBody260_238

def RemovedBody260_240 : StackLang.HolProg 64 :=
.seq RemovedBody260_230 RemovedBody260_239

def RemovedBody260_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_243 : StackLang.HolProg 64 :=
.seq RemovedBody260_241 RemovedBody260_242

def RemovedBody260_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_245 : StackLang.HolProg 64 :=
.seq RemovedBody260_243 RemovedBody260_244

def RemovedBody260_246 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_240, 0, 260, 8)) (Sum.inl 77) (some (RemovedBody260_245, 260, 9))

def RemovedBody260_247 : StackLang.HolProg 64 :=
.seq RemovedBody260_229 RemovedBody260_246

def RemovedBody260_248 : StackLang.HolProg 64 :=
.seq RemovedBody260_228 RemovedBody260_247

def RemovedBody260_249 : StackLang.HolProg 64 :=
.seq RemovedBody260_227 RemovedBody260_248

def RemovedBody260_250 : StackLang.HolProg 64 :=
.seq RemovedBody260_198 RemovedBody260_249

def RemovedBody260_251 : StackLang.HolProg 64 :=
.seq RemovedBody260_195 RemovedBody260_250

def RemovedBody260_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody260_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody260_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_259 : StackLang.HolProg 64 :=
.seq RemovedBody260_257 RemovedBody260_258

def RemovedBody260_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 594#64)

def RemovedBody260_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_263 : StackLang.HolProg 64 :=
.seq RemovedBody260_261 RemovedBody260_262

def RemovedBody260_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_267 : StackLang.HolProg 64 :=
.seq RemovedBody260_265 RemovedBody260_266

def RemovedBody260_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_267 RemovedBody260_268

def RemovedBody260_270 : StackLang.HolProg 64 :=
.seq RemovedBody260_264 RemovedBody260_269

def RemovedBody260_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 11

def RemovedBody260_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_280 : StackLang.HolProg 64 :=
.seq RemovedBody260_278 RemovedBody260_279

def RemovedBody260_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_282 : StackLang.HolProg 64 :=
.seq RemovedBody260_280 RemovedBody260_281

def RemovedBody260_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_284 : StackLang.HolProg 64 :=
.seq RemovedBody260_282 RemovedBody260_283

def RemovedBody260_285 : StackLang.HolProg 64 :=
.seq RemovedBody260_277 RemovedBody260_284

def RemovedBody260_286 : StackLang.HolProg 64 :=
.seq RemovedBody260_276 RemovedBody260_285

def RemovedBody260_287 : StackLang.HolProg 64 :=
.seq RemovedBody260_275 RemovedBody260_286

def RemovedBody260_288 : StackLang.HolProg 64 :=
.seq RemovedBody260_274 RemovedBody260_287

def RemovedBody260_289 : StackLang.HolProg 64 :=
.seq RemovedBody260_273 RemovedBody260_288

def RemovedBody260_290 : StackLang.HolProg 64 :=
.seq RemovedBody260_272 RemovedBody260_289

def RemovedBody260_291 : StackLang.HolProg 64 :=
.seq RemovedBody260_271 RemovedBody260_290

def RemovedBody260_292 : StackLang.HolProg 64 :=
.seq RemovedBody260_270 RemovedBody260_291

def RemovedBody260_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_301 : StackLang.HolProg 64 :=
.seq RemovedBody260_299 RemovedBody260_300

def RemovedBody260_302 : StackLang.HolProg 64 :=
.seq RemovedBody260_298 RemovedBody260_301

def RemovedBody260_303 : StackLang.HolProg 64 :=
.seq RemovedBody260_297 RemovedBody260_302

def RemovedBody260_304 : StackLang.HolProg 64 :=
.seq RemovedBody260_296 RemovedBody260_303

def RemovedBody260_305 : StackLang.HolProg 64 :=
.seq RemovedBody260_295 RemovedBody260_304

def RemovedBody260_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_308 : StackLang.HolProg 64 :=
.seq RemovedBody260_306 RemovedBody260_307

def RemovedBody260_309 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_310 : StackLang.HolProg 64 :=
.seq RemovedBody260_308 RemovedBody260_309

def RemovedBody260_311 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_305, 0, 260, 10)) (Sum.inl 244) (some (RemovedBody260_310, 260, 11))

def RemovedBody260_312 : StackLang.HolProg 64 :=
.seq RemovedBody260_294 RemovedBody260_311

def RemovedBody260_313 : StackLang.HolProg 64 :=
.seq RemovedBody260_293 RemovedBody260_312

def RemovedBody260_314 : StackLang.HolProg 64 :=
.seq RemovedBody260_292 RemovedBody260_313

def RemovedBody260_315 : StackLang.HolProg 64 :=
.seq RemovedBody260_263 RemovedBody260_314

def RemovedBody260_316 : StackLang.HolProg 64 :=
.seq RemovedBody260_260 RemovedBody260_315

def RemovedBody260_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody260_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody260_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 96#64)

def RemovedBody260_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_325 : StackLang.HolProg 64 :=
.seq RemovedBody260_323 RemovedBody260_324

def RemovedBody260_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 595#64)

def RemovedBody260_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_329 : StackLang.HolProg 64 :=
.seq RemovedBody260_327 RemovedBody260_328

def RemovedBody260_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_333 : StackLang.HolProg 64 :=
.seq RemovedBody260_331 RemovedBody260_332

def RemovedBody260_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_335 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_333 RemovedBody260_334

def RemovedBody260_336 : StackLang.HolProg 64 :=
.seq RemovedBody260_330 RemovedBody260_335

def RemovedBody260_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 13

def RemovedBody260_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_346 : StackLang.HolProg 64 :=
.seq RemovedBody260_344 RemovedBody260_345

def RemovedBody260_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_348 : StackLang.HolProg 64 :=
.seq RemovedBody260_346 RemovedBody260_347

def RemovedBody260_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_350 : StackLang.HolProg 64 :=
.seq RemovedBody260_348 RemovedBody260_349

def RemovedBody260_351 : StackLang.HolProg 64 :=
.seq RemovedBody260_343 RemovedBody260_350

def RemovedBody260_352 : StackLang.HolProg 64 :=
.seq RemovedBody260_342 RemovedBody260_351

def RemovedBody260_353 : StackLang.HolProg 64 :=
.seq RemovedBody260_341 RemovedBody260_352

def RemovedBody260_354 : StackLang.HolProg 64 :=
.seq RemovedBody260_340 RemovedBody260_353

def RemovedBody260_355 : StackLang.HolProg 64 :=
.seq RemovedBody260_339 RemovedBody260_354

def RemovedBody260_356 : StackLang.HolProg 64 :=
.seq RemovedBody260_338 RemovedBody260_355

def RemovedBody260_357 : StackLang.HolProg 64 :=
.seq RemovedBody260_337 RemovedBody260_356

def RemovedBody260_358 : StackLang.HolProg 64 :=
.seq RemovedBody260_336 RemovedBody260_357

def RemovedBody260_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_367 : StackLang.HolProg 64 :=
.seq RemovedBody260_365 RemovedBody260_366

def RemovedBody260_368 : StackLang.HolProg 64 :=
.seq RemovedBody260_364 RemovedBody260_367

def RemovedBody260_369 : StackLang.HolProg 64 :=
.seq RemovedBody260_363 RemovedBody260_368

def RemovedBody260_370 : StackLang.HolProg 64 :=
.seq RemovedBody260_362 RemovedBody260_369

def RemovedBody260_371 : StackLang.HolProg 64 :=
.seq RemovedBody260_361 RemovedBody260_370

def RemovedBody260_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_374 : StackLang.HolProg 64 :=
.seq RemovedBody260_372 RemovedBody260_373

def RemovedBody260_375 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_376 : StackLang.HolProg 64 :=
.seq RemovedBody260_374 RemovedBody260_375

def RemovedBody260_377 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_371, 0, 260, 12)) (Sum.inl 242) (some (RemovedBody260_376, 260, 13))

def RemovedBody260_378 : StackLang.HolProg 64 :=
.seq RemovedBody260_360 RemovedBody260_377

def RemovedBody260_379 : StackLang.HolProg 64 :=
.seq RemovedBody260_359 RemovedBody260_378

def RemovedBody260_380 : StackLang.HolProg 64 :=
.seq RemovedBody260_358 RemovedBody260_379

def RemovedBody260_381 : StackLang.HolProg 64 :=
.seq RemovedBody260_329 RemovedBody260_380

def RemovedBody260_382 : StackLang.HolProg 64 :=
.seq RemovedBody260_326 RemovedBody260_381

def RemovedBody260_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def RemovedBody260_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody260_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 596#64)

def RemovedBody260_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_392 : StackLang.HolProg 64 :=
.seq RemovedBody260_390 RemovedBody260_391

def RemovedBody260_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_396 : StackLang.HolProg 64 :=
.seq RemovedBody260_394 RemovedBody260_395

def RemovedBody260_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_398 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_396 RemovedBody260_397

def RemovedBody260_399 : StackLang.HolProg 64 :=
.seq RemovedBody260_393 RemovedBody260_398

def RemovedBody260_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 15

def RemovedBody260_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_409 : StackLang.HolProg 64 :=
.seq RemovedBody260_407 RemovedBody260_408

def RemovedBody260_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_411 : StackLang.HolProg 64 :=
.seq RemovedBody260_409 RemovedBody260_410

def RemovedBody260_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_413 : StackLang.HolProg 64 :=
.seq RemovedBody260_411 RemovedBody260_412

def RemovedBody260_414 : StackLang.HolProg 64 :=
.seq RemovedBody260_406 RemovedBody260_413

def RemovedBody260_415 : StackLang.HolProg 64 :=
.seq RemovedBody260_405 RemovedBody260_414

def RemovedBody260_416 : StackLang.HolProg 64 :=
.seq RemovedBody260_404 RemovedBody260_415

def RemovedBody260_417 : StackLang.HolProg 64 :=
.seq RemovedBody260_403 RemovedBody260_416

def RemovedBody260_418 : StackLang.HolProg 64 :=
.seq RemovedBody260_402 RemovedBody260_417

def RemovedBody260_419 : StackLang.HolProg 64 :=
.seq RemovedBody260_401 RemovedBody260_418

def RemovedBody260_420 : StackLang.HolProg 64 :=
.seq RemovedBody260_400 RemovedBody260_419

def RemovedBody260_421 : StackLang.HolProg 64 :=
.seq RemovedBody260_399 RemovedBody260_420

def RemovedBody260_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_430 : StackLang.HolProg 64 :=
.seq RemovedBody260_428 RemovedBody260_429

def RemovedBody260_431 : StackLang.HolProg 64 :=
.seq RemovedBody260_427 RemovedBody260_430

def RemovedBody260_432 : StackLang.HolProg 64 :=
.seq RemovedBody260_426 RemovedBody260_431

def RemovedBody260_433 : StackLang.HolProg 64 :=
.seq RemovedBody260_425 RemovedBody260_432

def RemovedBody260_434 : StackLang.HolProg 64 :=
.seq RemovedBody260_424 RemovedBody260_433

def RemovedBody260_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody260_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_437 : StackLang.HolProg 64 :=
.seq RemovedBody260_435 RemovedBody260_436

def RemovedBody260_438 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_439 : StackLang.HolProg 64 :=
.seq RemovedBody260_437 RemovedBody260_438

def RemovedBody260_440 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_434, 0, 260, 14)) (Sum.inl 244) (some (RemovedBody260_439, 260, 15))

def RemovedBody260_441 : StackLang.HolProg 64 :=
.seq RemovedBody260_423 RemovedBody260_440

def RemovedBody260_442 : StackLang.HolProg 64 :=
.seq RemovedBody260_422 RemovedBody260_441

def RemovedBody260_443 : StackLang.HolProg 64 :=
.seq RemovedBody260_421 RemovedBody260_442

def RemovedBody260_444 : StackLang.HolProg 64 :=
.seq RemovedBody260_392 RemovedBody260_443

def RemovedBody260_445 : StackLang.HolProg 64 :=
.seq RemovedBody260_389 RemovedBody260_444

def RemovedBody260_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody260_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 5#64)

def RemovedBody260_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 5#64)

def RemovedBody260_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 597#64)

def RemovedBody260_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_454 : StackLang.HolProg 64 :=
.seq RemovedBody260_452 RemovedBody260_453

def RemovedBody260_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_458 : StackLang.HolProg 64 :=
.seq RemovedBody260_456 RemovedBody260_457

def RemovedBody260_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_460 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_458 RemovedBody260_459

def RemovedBody260_461 : StackLang.HolProg 64 :=
.seq RemovedBody260_455 RemovedBody260_460

def RemovedBody260_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 17

def RemovedBody260_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_471 : StackLang.HolProg 64 :=
.seq RemovedBody260_469 RemovedBody260_470

def RemovedBody260_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_473 : StackLang.HolProg 64 :=
.seq RemovedBody260_471 RemovedBody260_472

def RemovedBody260_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_475 : StackLang.HolProg 64 :=
.seq RemovedBody260_473 RemovedBody260_474

def RemovedBody260_476 : StackLang.HolProg 64 :=
.seq RemovedBody260_468 RemovedBody260_475

def RemovedBody260_477 : StackLang.HolProg 64 :=
.seq RemovedBody260_467 RemovedBody260_476

def RemovedBody260_478 : StackLang.HolProg 64 :=
.seq RemovedBody260_466 RemovedBody260_477

def RemovedBody260_479 : StackLang.HolProg 64 :=
.seq RemovedBody260_465 RemovedBody260_478

def RemovedBody260_480 : StackLang.HolProg 64 :=
.seq RemovedBody260_464 RemovedBody260_479

def RemovedBody260_481 : StackLang.HolProg 64 :=
.seq RemovedBody260_463 RemovedBody260_480

def RemovedBody260_482 : StackLang.HolProg 64 :=
.seq RemovedBody260_462 RemovedBody260_481

def RemovedBody260_483 : StackLang.HolProg 64 :=
.seq RemovedBody260_461 RemovedBody260_482

def RemovedBody260_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody260_491 : StackLang.HolProg 64 :=
.seq RemovedBody260_489 RemovedBody260_490

def RemovedBody260_492 : StackLang.HolProg 64 :=
.seq RemovedBody260_488 RemovedBody260_491

def RemovedBody260_493 : StackLang.HolProg 64 :=
.seq RemovedBody260_487 RemovedBody260_492

def RemovedBody260_494 : StackLang.HolProg 64 :=
.seq RemovedBody260_486 RemovedBody260_493

def RemovedBody260_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody260_496 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_497 : StackLang.HolProg 64 :=
.seq RemovedBody260_495 RemovedBody260_496

def RemovedBody260_498 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_494, 0, 260, 16)) (Sum.inl 235) (some (RemovedBody260_497, 260, 17))

def RemovedBody260_499 : StackLang.HolProg 64 :=
.seq RemovedBody260_485 RemovedBody260_498

def RemovedBody260_500 : StackLang.HolProg 64 :=
.seq RemovedBody260_484 RemovedBody260_499

def RemovedBody260_501 : StackLang.HolProg 64 :=
.seq RemovedBody260_483 RemovedBody260_500

def RemovedBody260_502 : StackLang.HolProg 64 :=
.seq RemovedBody260_454 RemovedBody260_501

def RemovedBody260_503 : StackLang.HolProg 64 :=
.seq RemovedBody260_451 RemovedBody260_502

def RemovedBody260_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody260_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 598#64)

def RemovedBody260_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_509 : StackLang.HolProg 64 :=
.seq RemovedBody260_507 RemovedBody260_508

def RemovedBody260_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody260_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody260_513 : StackLang.HolProg 64 :=
.seq RemovedBody260_511 RemovedBody260_512

def RemovedBody260_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_515 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody260_513 RemovedBody260_514

def RemovedBody260_516 : StackLang.HolProg 64 :=
.seq RemovedBody260_510 RemovedBody260_515

def RemovedBody260_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody260_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody260_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 260 19

def RemovedBody260_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody260_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody260_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody260_526 : StackLang.HolProg 64 :=
.seq RemovedBody260_524 RemovedBody260_525

def RemovedBody260_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody260_528 : StackLang.HolProg 64 :=
.seq RemovedBody260_526 RemovedBody260_527

def RemovedBody260_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_530 : StackLang.HolProg 64 :=
.seq RemovedBody260_528 RemovedBody260_529

def RemovedBody260_531 : StackLang.HolProg 64 :=
.seq RemovedBody260_523 RemovedBody260_530

def RemovedBody260_532 : StackLang.HolProg 64 :=
.seq RemovedBody260_522 RemovedBody260_531

def RemovedBody260_533 : StackLang.HolProg 64 :=
.seq RemovedBody260_521 RemovedBody260_532

def RemovedBody260_534 : StackLang.HolProg 64 :=
.seq RemovedBody260_520 RemovedBody260_533

def RemovedBody260_535 : StackLang.HolProg 64 :=
.seq RemovedBody260_519 RemovedBody260_534

def RemovedBody260_536 : StackLang.HolProg 64 :=
.seq RemovedBody260_518 RemovedBody260_535

def RemovedBody260_537 : StackLang.HolProg 64 :=
.seq RemovedBody260_517 RemovedBody260_536

def RemovedBody260_538 : StackLang.HolProg 64 :=
.seq RemovedBody260_516 RemovedBody260_537

def RemovedBody260_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody260_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody260_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody260_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody260_546 : StackLang.HolProg 64 :=
.seq RemovedBody260_544 RemovedBody260_545

def RemovedBody260_547 : StackLang.HolProg 64 :=
.seq RemovedBody260_543 RemovedBody260_546

def RemovedBody260_548 : StackLang.HolProg 64 :=
.seq RemovedBody260_542 RemovedBody260_547

def RemovedBody260_549 : StackLang.HolProg 64 :=
.seq RemovedBody260_541 RemovedBody260_548

def RemovedBody260_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody260_551 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody260_552 : StackLang.HolProg 64 :=
.seq RemovedBody260_550 RemovedBody260_551

def RemovedBody260_553 : StackLang.HolProg 64 :=
.call (some (RemovedBody260_549, 0, 260, 18)) (Sum.inl 70) (some (RemovedBody260_552, 260, 19))

def RemovedBody260_554 : StackLang.HolProg 64 :=
.seq RemovedBody260_540 RemovedBody260_553

def RemovedBody260_555 : StackLang.HolProg 64 :=
.seq RemovedBody260_539 RemovedBody260_554

def RemovedBody260_556 : StackLang.HolProg 64 :=
.seq RemovedBody260_538 RemovedBody260_555

def RemovedBody260_557 : StackLang.HolProg 64 :=
.seq RemovedBody260_509 RemovedBody260_556

def RemovedBody260_558 : StackLang.HolProg 64 :=
.seq RemovedBody260_506 RemovedBody260_557

def RemovedBody260_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody260_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody260_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody260_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody260_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody260_564 : StackLang.HolProg 64 :=
.seq RemovedBody260_562 RemovedBody260_563

def RemovedBody260_565 : StackLang.HolProg 64 :=
.seq RemovedBody260_561 RemovedBody260_564

def RemovedBody260_566 : StackLang.HolProg 64 :=
.seq RemovedBody260_560 RemovedBody260_565

def RemovedBody260_567 : StackLang.HolProg 64 :=
.seq RemovedBody260_559 RemovedBody260_566

def RemovedBody260_568 : StackLang.HolProg 64 :=
.seq RemovedBody260_558 RemovedBody260_567

def RemovedBody260_569 : StackLang.HolProg 64 :=
.seq RemovedBody260_505 RemovedBody260_568

def RemovedBody260_570 : StackLang.HolProg 64 :=
.seq RemovedBody260_504 RemovedBody260_569

def RemovedBody260_571 : StackLang.HolProg 64 :=
.seq RemovedBody260_503 RemovedBody260_570

def RemovedBody260_572 : StackLang.HolProg 64 :=
.seq RemovedBody260_450 RemovedBody260_571

def RemovedBody260_573 : StackLang.HolProg 64 :=
.seq RemovedBody260_449 RemovedBody260_572

def RemovedBody260_574 : StackLang.HolProg 64 :=
.seq RemovedBody260_448 RemovedBody260_573

def RemovedBody260_575 : StackLang.HolProg 64 :=
.seq RemovedBody260_447 RemovedBody260_574

def RemovedBody260_576 : StackLang.HolProg 64 :=
.seq RemovedBody260_446 RemovedBody260_575

def RemovedBody260_577 : StackLang.HolProg 64 :=
.seq RemovedBody260_445 RemovedBody260_576

def RemovedBody260_578 : StackLang.HolProg 64 :=
.seq RemovedBody260_388 RemovedBody260_577

def RemovedBody260_579 : StackLang.HolProg 64 :=
.seq RemovedBody260_387 RemovedBody260_578

def RemovedBody260_580 : StackLang.HolProg 64 :=
.seq RemovedBody260_386 RemovedBody260_579

def RemovedBody260_581 : StackLang.HolProg 64 :=
.seq RemovedBody260_385 RemovedBody260_580

def RemovedBody260_582 : StackLang.HolProg 64 :=
.seq RemovedBody260_384 RemovedBody260_581

def RemovedBody260_583 : StackLang.HolProg 64 :=
.seq RemovedBody260_383 RemovedBody260_582

def RemovedBody260_584 : StackLang.HolProg 64 :=
.seq RemovedBody260_382 RemovedBody260_583

def RemovedBody260_585 : StackLang.HolProg 64 :=
.seq RemovedBody260_325 RemovedBody260_584

def RemovedBody260_586 : StackLang.HolProg 64 :=
.seq RemovedBody260_322 RemovedBody260_585

def RemovedBody260_587 : StackLang.HolProg 64 :=
.seq RemovedBody260_321 RemovedBody260_586

def RemovedBody260_588 : StackLang.HolProg 64 :=
.seq RemovedBody260_320 RemovedBody260_587

def RemovedBody260_589 : StackLang.HolProg 64 :=
.seq RemovedBody260_319 RemovedBody260_588

def RemovedBody260_590 : StackLang.HolProg 64 :=
.seq RemovedBody260_318 RemovedBody260_589

def RemovedBody260_591 : StackLang.HolProg 64 :=
.seq RemovedBody260_317 RemovedBody260_590

def RemovedBody260_592 : StackLang.HolProg 64 :=
.seq RemovedBody260_316 RemovedBody260_591

def RemovedBody260_593 : StackLang.HolProg 64 :=
.seq RemovedBody260_259 RemovedBody260_592

def RemovedBody260_594 : StackLang.HolProg 64 :=
.seq RemovedBody260_256 RemovedBody260_593

def RemovedBody260_595 : StackLang.HolProg 64 :=
.seq RemovedBody260_255 RemovedBody260_594

def RemovedBody260_596 : StackLang.HolProg 64 :=
.seq RemovedBody260_254 RemovedBody260_595

def RemovedBody260_597 : StackLang.HolProg 64 :=
.seq RemovedBody260_253 RemovedBody260_596

def RemovedBody260_598 : StackLang.HolProg 64 :=
.seq RemovedBody260_252 RemovedBody260_597

def RemovedBody260_599 : StackLang.HolProg 64 :=
.seq RemovedBody260_251 RemovedBody260_598

def RemovedBody260_600 : StackLang.HolProg 64 :=
.seq RemovedBody260_194 RemovedBody260_599

def RemovedBody260_601 : StackLang.HolProg 64 :=
.seq RemovedBody260_191 RemovedBody260_600

def RemovedBody260_602 : StackLang.HolProg 64 :=
.seq RemovedBody260_190 RemovedBody260_601

def RemovedBody260_603 : StackLang.HolProg 64 :=
.seq RemovedBody260_189 RemovedBody260_602

def RemovedBody260_604 : StackLang.HolProg 64 :=
.seq RemovedBody260_188 RemovedBody260_603

def RemovedBody260_605 : StackLang.HolProg 64 :=
.seq RemovedBody260_187 RemovedBody260_604

def RemovedBody260_606 : StackLang.HolProg 64 :=
.seq RemovedBody260_186 RemovedBody260_605

def RemovedBody260_607 : StackLang.HolProg 64 :=
.seq RemovedBody260_185 RemovedBody260_606

def RemovedBody260_608 : StackLang.HolProg 64 :=
.seq RemovedBody260_128 RemovedBody260_607

def RemovedBody260_609 : StackLang.HolProg 64 :=
.seq RemovedBody260_125 RemovedBody260_608

def RemovedBody260_610 : StackLang.HolProg 64 :=
.seq RemovedBody260_124 RemovedBody260_609

def RemovedBody260_611 : StackLang.HolProg 64 :=
.seq RemovedBody260_123 RemovedBody260_610

def RemovedBody260_612 : StackLang.HolProg 64 :=
.seq RemovedBody260_122 RemovedBody260_611

def RemovedBody260_613 : StackLang.HolProg 64 :=
.seq RemovedBody260_67 RemovedBody260_612

def RemovedBody260_614 : StackLang.HolProg 64 :=
.seq RemovedBody260_66 RemovedBody260_613

def RemovedBody260_615 : StackLang.HolProg 64 :=
.seq RemovedBody260_65 RemovedBody260_614

def RemovedBody260_616 : StackLang.HolProg 64 :=
.seq RemovedBody260_64 RemovedBody260_615

def RemovedBody260_617 : StackLang.HolProg 64 :=
.seq RemovedBody260_11 RemovedBody260_616

def RemovedBody260_618 : StackLang.HolProg 64 :=
.seq RemovedBody260_6 RemovedBody260_617

def Removed260 : Nat × StackLang.HolProg 64 := (260, RemovedBody260_618)
theorem Removed260_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc260 = Removed260 := by
  kernel_rfl
#print axioms Removed260_eq
end InitECandidate.Proofs.BackendStages
