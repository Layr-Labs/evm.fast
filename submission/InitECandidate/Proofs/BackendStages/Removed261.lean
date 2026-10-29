import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc261
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody261_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody261_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_3 : StackLang.HolProg 64 :=
.seq RemovedBody261_1 RemovedBody261_2

def RemovedBody261_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_3 RemovedBody261_4

def RemovedBody261_6 : StackLang.HolProg 64 :=
.seq RemovedBody261_0 RemovedBody261_5

def RemovedBody261_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody261_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_10 : StackLang.HolProg 64 :=
.seq RemovedBody261_8 RemovedBody261_9

def RemovedBody261_11 : StackLang.HolProg 64 :=
.seq RemovedBody261_7 RemovedBody261_10

def RemovedBody261_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 599#64)

def RemovedBody261_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_15 : StackLang.HolProg 64 :=
.seq RemovedBody261_13 RemovedBody261_14

def RemovedBody261_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_19 : StackLang.HolProg 64 :=
.seq RemovedBody261_17 RemovedBody261_18

def RemovedBody261_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_19 RemovedBody261_20

def RemovedBody261_22 : StackLang.HolProg 64 :=
.seq RemovedBody261_16 RemovedBody261_21

def RemovedBody261_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody261_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 3

def RemovedBody261_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody261_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody261_32 : StackLang.HolProg 64 :=
.seq RemovedBody261_30 RemovedBody261_31

def RemovedBody261_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody261_34 : StackLang.HolProg 64 :=
.seq RemovedBody261_32 RemovedBody261_33

def RemovedBody261_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_36 : StackLang.HolProg 64 :=
.seq RemovedBody261_34 RemovedBody261_35

def RemovedBody261_37 : StackLang.HolProg 64 :=
.seq RemovedBody261_29 RemovedBody261_36

def RemovedBody261_38 : StackLang.HolProg 64 :=
.seq RemovedBody261_28 RemovedBody261_37

def RemovedBody261_39 : StackLang.HolProg 64 :=
.seq RemovedBody261_27 RemovedBody261_38

def RemovedBody261_40 : StackLang.HolProg 64 :=
.seq RemovedBody261_26 RemovedBody261_39

def RemovedBody261_41 : StackLang.HolProg 64 :=
.seq RemovedBody261_25 RemovedBody261_40

def RemovedBody261_42 : StackLang.HolProg 64 :=
.seq RemovedBody261_24 RemovedBody261_41

def RemovedBody261_43 : StackLang.HolProg 64 :=
.seq RemovedBody261_23 RemovedBody261_42

def RemovedBody261_44 : StackLang.HolProg 64 :=
.seq RemovedBody261_22 RemovedBody261_43

def RemovedBody261_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody261_52 : StackLang.HolProg 64 :=
.seq RemovedBody261_50 RemovedBody261_51

def RemovedBody261_53 : StackLang.HolProg 64 :=
.seq RemovedBody261_49 RemovedBody261_52

def RemovedBody261_54 : StackLang.HolProg 64 :=
.seq RemovedBody261_48 RemovedBody261_53

def RemovedBody261_55 : StackLang.HolProg 64 :=
.seq RemovedBody261_47 RemovedBody261_54

def RemovedBody261_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody261_58 : StackLang.HolProg 64 :=
.seq RemovedBody261_56 RemovedBody261_57

def RemovedBody261_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody261_55, 0, 261, 2)) (Sum.inl 69) (some (RemovedBody261_58, 261, 3))

def RemovedBody261_60 : StackLang.HolProg 64 :=
.seq RemovedBody261_46 RemovedBody261_59

def RemovedBody261_61 : StackLang.HolProg 64 :=
.seq RemovedBody261_45 RemovedBody261_60

def RemovedBody261_62 : StackLang.HolProg 64 :=
.seq RemovedBody261_44 RemovedBody261_61

def RemovedBody261_63 : StackLang.HolProg 64 :=
.seq RemovedBody261_15 RemovedBody261_62

def RemovedBody261_64 : StackLang.HolProg 64 :=
.seq RemovedBody261_12 RemovedBody261_63

def RemovedBody261_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody261_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody261_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody261_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 600#64)

def RemovedBody261_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_71 : StackLang.HolProg 64 :=
.seq RemovedBody261_69 RemovedBody261_70

def RemovedBody261_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_75 : StackLang.HolProg 64 :=
.seq RemovedBody261_73 RemovedBody261_74

def RemovedBody261_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_75 RemovedBody261_76

def RemovedBody261_78 : StackLang.HolProg 64 :=
.seq RemovedBody261_72 RemovedBody261_77

def RemovedBody261_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody261_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 5

def RemovedBody261_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody261_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody261_88 : StackLang.HolProg 64 :=
.seq RemovedBody261_86 RemovedBody261_87

def RemovedBody261_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody261_90 : StackLang.HolProg 64 :=
.seq RemovedBody261_88 RemovedBody261_89

def RemovedBody261_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_92 : StackLang.HolProg 64 :=
.seq RemovedBody261_90 RemovedBody261_91

def RemovedBody261_93 : StackLang.HolProg 64 :=
.seq RemovedBody261_85 RemovedBody261_92

def RemovedBody261_94 : StackLang.HolProg 64 :=
.seq RemovedBody261_84 RemovedBody261_93

def RemovedBody261_95 : StackLang.HolProg 64 :=
.seq RemovedBody261_83 RemovedBody261_94

def RemovedBody261_96 : StackLang.HolProg 64 :=
.seq RemovedBody261_82 RemovedBody261_95

def RemovedBody261_97 : StackLang.HolProg 64 :=
.seq RemovedBody261_81 RemovedBody261_96

def RemovedBody261_98 : StackLang.HolProg 64 :=
.seq RemovedBody261_80 RemovedBody261_97

def RemovedBody261_99 : StackLang.HolProg 64 :=
.seq RemovedBody261_79 RemovedBody261_98

def RemovedBody261_100 : StackLang.HolProg 64 :=
.seq RemovedBody261_78 RemovedBody261_99

def RemovedBody261_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody261_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_109 : StackLang.HolProg 64 :=
.seq RemovedBody261_107 RemovedBody261_108

def RemovedBody261_110 : StackLang.HolProg 64 :=
.seq RemovedBody261_106 RemovedBody261_109

def RemovedBody261_111 : StackLang.HolProg 64 :=
.seq RemovedBody261_105 RemovedBody261_110

def RemovedBody261_112 : StackLang.HolProg 64 :=
.seq RemovedBody261_104 RemovedBody261_111

def RemovedBody261_113 : StackLang.HolProg 64 :=
.seq RemovedBody261_103 RemovedBody261_112

def RemovedBody261_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody261_116 : StackLang.HolProg 64 :=
.seq RemovedBody261_114 RemovedBody261_115

def RemovedBody261_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody261_113, 0, 261, 4)) (Sum.inl 68) (some (RemovedBody261_116, 261, 5))

def RemovedBody261_118 : StackLang.HolProg 64 :=
.seq RemovedBody261_102 RemovedBody261_117

def RemovedBody261_119 : StackLang.HolProg 64 :=
.seq RemovedBody261_101 RemovedBody261_118

def RemovedBody261_120 : StackLang.HolProg 64 :=
.seq RemovedBody261_100 RemovedBody261_119

def RemovedBody261_121 : StackLang.HolProg 64 :=
.seq RemovedBody261_71 RemovedBody261_120

def RemovedBody261_122 : StackLang.HolProg 64 :=
.seq RemovedBody261_68 RemovedBody261_121

def RemovedBody261_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody261_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody261_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def RemovedBody261_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_128 : StackLang.HolProg 64 :=
.seq RemovedBody261_126 RemovedBody261_127

def RemovedBody261_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 601#64)

def RemovedBody261_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_132 : StackLang.HolProg 64 :=
.seq RemovedBody261_130 RemovedBody261_131

def RemovedBody261_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_136 : StackLang.HolProg 64 :=
.seq RemovedBody261_134 RemovedBody261_135

def RemovedBody261_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_136 RemovedBody261_137

def RemovedBody261_139 : StackLang.HolProg 64 :=
.seq RemovedBody261_133 RemovedBody261_138

def RemovedBody261_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody261_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 7

def RemovedBody261_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody261_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody261_149 : StackLang.HolProg 64 :=
.seq RemovedBody261_147 RemovedBody261_148

def RemovedBody261_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody261_151 : StackLang.HolProg 64 :=
.seq RemovedBody261_149 RemovedBody261_150

def RemovedBody261_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_153 : StackLang.HolProg 64 :=
.seq RemovedBody261_151 RemovedBody261_152

def RemovedBody261_154 : StackLang.HolProg 64 :=
.seq RemovedBody261_146 RemovedBody261_153

def RemovedBody261_155 : StackLang.HolProg 64 :=
.seq RemovedBody261_145 RemovedBody261_154

def RemovedBody261_156 : StackLang.HolProg 64 :=
.seq RemovedBody261_144 RemovedBody261_155

def RemovedBody261_157 : StackLang.HolProg 64 :=
.seq RemovedBody261_143 RemovedBody261_156

def RemovedBody261_158 : StackLang.HolProg 64 :=
.seq RemovedBody261_142 RemovedBody261_157

def RemovedBody261_159 : StackLang.HolProg 64 :=
.seq RemovedBody261_141 RemovedBody261_158

def RemovedBody261_160 : StackLang.HolProg 64 :=
.seq RemovedBody261_140 RemovedBody261_159

def RemovedBody261_161 : StackLang.HolProg 64 :=
.seq RemovedBody261_139 RemovedBody261_160

def RemovedBody261_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_170 : StackLang.HolProg 64 :=
.seq RemovedBody261_168 RemovedBody261_169

def RemovedBody261_171 : StackLang.HolProg 64 :=
.seq RemovedBody261_167 RemovedBody261_170

def RemovedBody261_172 : StackLang.HolProg 64 :=
.seq RemovedBody261_166 RemovedBody261_171

def RemovedBody261_173 : StackLang.HolProg 64 :=
.seq RemovedBody261_165 RemovedBody261_172

def RemovedBody261_174 : StackLang.HolProg 64 :=
.seq RemovedBody261_164 RemovedBody261_173

def RemovedBody261_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_177 : StackLang.HolProg 64 :=
.seq RemovedBody261_175 RemovedBody261_176

def RemovedBody261_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody261_179 : StackLang.HolProg 64 :=
.seq RemovedBody261_177 RemovedBody261_178

def RemovedBody261_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody261_174, 0, 261, 6)) (Sum.inl 242) (some (RemovedBody261_179, 261, 7))

def RemovedBody261_181 : StackLang.HolProg 64 :=
.seq RemovedBody261_163 RemovedBody261_180

def RemovedBody261_182 : StackLang.HolProg 64 :=
.seq RemovedBody261_162 RemovedBody261_181

def RemovedBody261_183 : StackLang.HolProg 64 :=
.seq RemovedBody261_161 RemovedBody261_182

def RemovedBody261_184 : StackLang.HolProg 64 :=
.seq RemovedBody261_132 RemovedBody261_183

def RemovedBody261_185 : StackLang.HolProg 64 :=
.seq RemovedBody261_129 RemovedBody261_184

def RemovedBody261_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody261_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def RemovedBody261_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody261_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 48#64)

def RemovedBody261_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_194 : StackLang.HolProg 64 :=
.seq RemovedBody261_192 RemovedBody261_193

def RemovedBody261_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 602#64)

def RemovedBody261_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_198 : StackLang.HolProg 64 :=
.seq RemovedBody261_196 RemovedBody261_197

def RemovedBody261_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_202 : StackLang.HolProg 64 :=
.seq RemovedBody261_200 RemovedBody261_201

def RemovedBody261_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_202 RemovedBody261_203

def RemovedBody261_205 : StackLang.HolProg 64 :=
.seq RemovedBody261_199 RemovedBody261_204

def RemovedBody261_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody261_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 9

def RemovedBody261_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody261_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody261_215 : StackLang.HolProg 64 :=
.seq RemovedBody261_213 RemovedBody261_214

def RemovedBody261_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody261_217 : StackLang.HolProg 64 :=
.seq RemovedBody261_215 RemovedBody261_216

def RemovedBody261_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_219 : StackLang.HolProg 64 :=
.seq RemovedBody261_217 RemovedBody261_218

def RemovedBody261_220 : StackLang.HolProg 64 :=
.seq RemovedBody261_212 RemovedBody261_219

def RemovedBody261_221 : StackLang.HolProg 64 :=
.seq RemovedBody261_211 RemovedBody261_220

def RemovedBody261_222 : StackLang.HolProg 64 :=
.seq RemovedBody261_210 RemovedBody261_221

def RemovedBody261_223 : StackLang.HolProg 64 :=
.seq RemovedBody261_209 RemovedBody261_222

def RemovedBody261_224 : StackLang.HolProg 64 :=
.seq RemovedBody261_208 RemovedBody261_223

def RemovedBody261_225 : StackLang.HolProg 64 :=
.seq RemovedBody261_207 RemovedBody261_224

def RemovedBody261_226 : StackLang.HolProg 64 :=
.seq RemovedBody261_206 RemovedBody261_225

def RemovedBody261_227 : StackLang.HolProg 64 :=
.seq RemovedBody261_205 RemovedBody261_226

def RemovedBody261_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_236 : StackLang.HolProg 64 :=
.seq RemovedBody261_234 RemovedBody261_235

def RemovedBody261_237 : StackLang.HolProg 64 :=
.seq RemovedBody261_233 RemovedBody261_236

def RemovedBody261_238 : StackLang.HolProg 64 :=
.seq RemovedBody261_232 RemovedBody261_237

def RemovedBody261_239 : StackLang.HolProg 64 :=
.seq RemovedBody261_231 RemovedBody261_238

def RemovedBody261_240 : StackLang.HolProg 64 :=
.seq RemovedBody261_230 RemovedBody261_239

def RemovedBody261_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_243 : StackLang.HolProg 64 :=
.seq RemovedBody261_241 RemovedBody261_242

def RemovedBody261_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody261_245 : StackLang.HolProg 64 :=
.seq RemovedBody261_243 RemovedBody261_244

def RemovedBody261_246 : StackLang.HolProg 64 :=
.call (some (RemovedBody261_240, 0, 261, 8)) (Sum.inl 242) (some (RemovedBody261_245, 261, 9))

def RemovedBody261_247 : StackLang.HolProg 64 :=
.seq RemovedBody261_229 RemovedBody261_246

def RemovedBody261_248 : StackLang.HolProg 64 :=
.seq RemovedBody261_228 RemovedBody261_247

def RemovedBody261_249 : StackLang.HolProg 64 :=
.seq RemovedBody261_227 RemovedBody261_248

def RemovedBody261_250 : StackLang.HolProg 64 :=
.seq RemovedBody261_198 RemovedBody261_249

def RemovedBody261_251 : StackLang.HolProg 64 :=
.seq RemovedBody261_195 RemovedBody261_250

def RemovedBody261_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody261_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 68#64)))

def RemovedBody261_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody261_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 603#64)

def RemovedBody261_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_261 : StackLang.HolProg 64 :=
.seq RemovedBody261_259 RemovedBody261_260

def RemovedBody261_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_265 : StackLang.HolProg 64 :=
.seq RemovedBody261_263 RemovedBody261_264

def RemovedBody261_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_265 RemovedBody261_266

def RemovedBody261_268 : StackLang.HolProg 64 :=
.seq RemovedBody261_262 RemovedBody261_267

def RemovedBody261_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody261_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 11

def RemovedBody261_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody261_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody261_278 : StackLang.HolProg 64 :=
.seq RemovedBody261_276 RemovedBody261_277

def RemovedBody261_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody261_280 : StackLang.HolProg 64 :=
.seq RemovedBody261_278 RemovedBody261_279

def RemovedBody261_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_282 : StackLang.HolProg 64 :=
.seq RemovedBody261_280 RemovedBody261_281

def RemovedBody261_283 : StackLang.HolProg 64 :=
.seq RemovedBody261_275 RemovedBody261_282

def RemovedBody261_284 : StackLang.HolProg 64 :=
.seq RemovedBody261_274 RemovedBody261_283

def RemovedBody261_285 : StackLang.HolProg 64 :=
.seq RemovedBody261_273 RemovedBody261_284

def RemovedBody261_286 : StackLang.HolProg 64 :=
.seq RemovedBody261_272 RemovedBody261_285

def RemovedBody261_287 : StackLang.HolProg 64 :=
.seq RemovedBody261_271 RemovedBody261_286

def RemovedBody261_288 : StackLang.HolProg 64 :=
.seq RemovedBody261_270 RemovedBody261_287

def RemovedBody261_289 : StackLang.HolProg 64 :=
.seq RemovedBody261_269 RemovedBody261_288

def RemovedBody261_290 : StackLang.HolProg 64 :=
.seq RemovedBody261_268 RemovedBody261_289

def RemovedBody261_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_299 : StackLang.HolProg 64 :=
.seq RemovedBody261_297 RemovedBody261_298

def RemovedBody261_300 : StackLang.HolProg 64 :=
.seq RemovedBody261_296 RemovedBody261_299

def RemovedBody261_301 : StackLang.HolProg 64 :=
.seq RemovedBody261_295 RemovedBody261_300

def RemovedBody261_302 : StackLang.HolProg 64 :=
.seq RemovedBody261_294 RemovedBody261_301

def RemovedBody261_303 : StackLang.HolProg 64 :=
.seq RemovedBody261_293 RemovedBody261_302

def RemovedBody261_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody261_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_306 : StackLang.HolProg 64 :=
.seq RemovedBody261_304 RemovedBody261_305

def RemovedBody261_307 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody261_308 : StackLang.HolProg 64 :=
.seq RemovedBody261_306 RemovedBody261_307

def RemovedBody261_309 : StackLang.HolProg 64 :=
.call (some (RemovedBody261_303, 0, 261, 10)) (Sum.inl 244) (some (RemovedBody261_308, 261, 11))

def RemovedBody261_310 : StackLang.HolProg 64 :=
.seq RemovedBody261_292 RemovedBody261_309

def RemovedBody261_311 : StackLang.HolProg 64 :=
.seq RemovedBody261_291 RemovedBody261_310

def RemovedBody261_312 : StackLang.HolProg 64 :=
.seq RemovedBody261_290 RemovedBody261_311

def RemovedBody261_313 : StackLang.HolProg 64 :=
.seq RemovedBody261_261 RemovedBody261_312

def RemovedBody261_314 : StackLang.HolProg 64 :=
.seq RemovedBody261_258 RemovedBody261_313

def RemovedBody261_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody261_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody261_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def RemovedBody261_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def RemovedBody261_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 604#64)

def RemovedBody261_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_323 : StackLang.HolProg 64 :=
.seq RemovedBody261_321 RemovedBody261_322

def RemovedBody261_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_327 : StackLang.HolProg 64 :=
.seq RemovedBody261_325 RemovedBody261_326

def RemovedBody261_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_329 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_327 RemovedBody261_328

def RemovedBody261_330 : StackLang.HolProg 64 :=
.seq RemovedBody261_324 RemovedBody261_329

def RemovedBody261_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody261_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 13

def RemovedBody261_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody261_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody261_340 : StackLang.HolProg 64 :=
.seq RemovedBody261_338 RemovedBody261_339

def RemovedBody261_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody261_342 : StackLang.HolProg 64 :=
.seq RemovedBody261_340 RemovedBody261_341

def RemovedBody261_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_344 : StackLang.HolProg 64 :=
.seq RemovedBody261_342 RemovedBody261_343

def RemovedBody261_345 : StackLang.HolProg 64 :=
.seq RemovedBody261_337 RemovedBody261_344

def RemovedBody261_346 : StackLang.HolProg 64 :=
.seq RemovedBody261_336 RemovedBody261_345

def RemovedBody261_347 : StackLang.HolProg 64 :=
.seq RemovedBody261_335 RemovedBody261_346

def RemovedBody261_348 : StackLang.HolProg 64 :=
.seq RemovedBody261_334 RemovedBody261_347

def RemovedBody261_349 : StackLang.HolProg 64 :=
.seq RemovedBody261_333 RemovedBody261_348

def RemovedBody261_350 : StackLang.HolProg 64 :=
.seq RemovedBody261_332 RemovedBody261_349

def RemovedBody261_351 : StackLang.HolProg 64 :=
.seq RemovedBody261_331 RemovedBody261_350

def RemovedBody261_352 : StackLang.HolProg 64 :=
.seq RemovedBody261_330 RemovedBody261_351

def RemovedBody261_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody261_360 : StackLang.HolProg 64 :=
.seq RemovedBody261_358 RemovedBody261_359

def RemovedBody261_361 : StackLang.HolProg 64 :=
.seq RemovedBody261_357 RemovedBody261_360

def RemovedBody261_362 : StackLang.HolProg 64 :=
.seq RemovedBody261_356 RemovedBody261_361

def RemovedBody261_363 : StackLang.HolProg 64 :=
.seq RemovedBody261_355 RemovedBody261_362

def RemovedBody261_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody261_365 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody261_366 : StackLang.HolProg 64 :=
.seq RemovedBody261_364 RemovedBody261_365

def RemovedBody261_367 : StackLang.HolProg 64 :=
.call (some (RemovedBody261_363, 0, 261, 12)) (Sum.inl 235) (some (RemovedBody261_366, 261, 13))

def RemovedBody261_368 : StackLang.HolProg 64 :=
.seq RemovedBody261_354 RemovedBody261_367

def RemovedBody261_369 : StackLang.HolProg 64 :=
.seq RemovedBody261_353 RemovedBody261_368

def RemovedBody261_370 : StackLang.HolProg 64 :=
.seq RemovedBody261_352 RemovedBody261_369

def RemovedBody261_371 : StackLang.HolProg 64 :=
.seq RemovedBody261_323 RemovedBody261_370

def RemovedBody261_372 : StackLang.HolProg 64 :=
.seq RemovedBody261_320 RemovedBody261_371

def RemovedBody261_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody261_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody261_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 605#64)

def RemovedBody261_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_378 : StackLang.HolProg 64 :=
.seq RemovedBody261_376 RemovedBody261_377

def RemovedBody261_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody261_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody261_382 : StackLang.HolProg 64 :=
.seq RemovedBody261_380 RemovedBody261_381

def RemovedBody261_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_384 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody261_382 RemovedBody261_383

def RemovedBody261_385 : StackLang.HolProg 64 :=
.seq RemovedBody261_379 RemovedBody261_384

def RemovedBody261_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody261_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody261_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 15

def RemovedBody261_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody261_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody261_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody261_395 : StackLang.HolProg 64 :=
.seq RemovedBody261_393 RemovedBody261_394

def RemovedBody261_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody261_397 : StackLang.HolProg 64 :=
.seq RemovedBody261_395 RemovedBody261_396

def RemovedBody261_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_399 : StackLang.HolProg 64 :=
.seq RemovedBody261_397 RemovedBody261_398

def RemovedBody261_400 : StackLang.HolProg 64 :=
.seq RemovedBody261_392 RemovedBody261_399

def RemovedBody261_401 : StackLang.HolProg 64 :=
.seq RemovedBody261_391 RemovedBody261_400

def RemovedBody261_402 : StackLang.HolProg 64 :=
.seq RemovedBody261_390 RemovedBody261_401

def RemovedBody261_403 : StackLang.HolProg 64 :=
.seq RemovedBody261_389 RemovedBody261_402

def RemovedBody261_404 : StackLang.HolProg 64 :=
.seq RemovedBody261_388 RemovedBody261_403

def RemovedBody261_405 : StackLang.HolProg 64 :=
.seq RemovedBody261_387 RemovedBody261_404

def RemovedBody261_406 : StackLang.HolProg 64 :=
.seq RemovedBody261_386 RemovedBody261_405

def RemovedBody261_407 : StackLang.HolProg 64 :=
.seq RemovedBody261_385 RemovedBody261_406

def RemovedBody261_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody261_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody261_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody261_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody261_415 : StackLang.HolProg 64 :=
.seq RemovedBody261_413 RemovedBody261_414

def RemovedBody261_416 : StackLang.HolProg 64 :=
.seq RemovedBody261_412 RemovedBody261_415

def RemovedBody261_417 : StackLang.HolProg 64 :=
.seq RemovedBody261_411 RemovedBody261_416

def RemovedBody261_418 : StackLang.HolProg 64 :=
.seq RemovedBody261_410 RemovedBody261_417

def RemovedBody261_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody261_420 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody261_421 : StackLang.HolProg 64 :=
.seq RemovedBody261_419 RemovedBody261_420

def RemovedBody261_422 : StackLang.HolProg 64 :=
.call (some (RemovedBody261_418, 0, 261, 14)) (Sum.inl 70) (some (RemovedBody261_421, 261, 15))

def RemovedBody261_423 : StackLang.HolProg 64 :=
.seq RemovedBody261_409 RemovedBody261_422

def RemovedBody261_424 : StackLang.HolProg 64 :=
.seq RemovedBody261_408 RemovedBody261_423

def RemovedBody261_425 : StackLang.HolProg 64 :=
.seq RemovedBody261_407 RemovedBody261_424

def RemovedBody261_426 : StackLang.HolProg 64 :=
.seq RemovedBody261_378 RemovedBody261_425

def RemovedBody261_427 : StackLang.HolProg 64 :=
.seq RemovedBody261_375 RemovedBody261_426

def RemovedBody261_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody261_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody261_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody261_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody261_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody261_433 : StackLang.HolProg 64 :=
.seq RemovedBody261_431 RemovedBody261_432

def RemovedBody261_434 : StackLang.HolProg 64 :=
.seq RemovedBody261_430 RemovedBody261_433

def RemovedBody261_435 : StackLang.HolProg 64 :=
.seq RemovedBody261_429 RemovedBody261_434

def RemovedBody261_436 : StackLang.HolProg 64 :=
.seq RemovedBody261_428 RemovedBody261_435

def RemovedBody261_437 : StackLang.HolProg 64 :=
.seq RemovedBody261_427 RemovedBody261_436

def RemovedBody261_438 : StackLang.HolProg 64 :=
.seq RemovedBody261_374 RemovedBody261_437

def RemovedBody261_439 : StackLang.HolProg 64 :=
.seq RemovedBody261_373 RemovedBody261_438

def RemovedBody261_440 : StackLang.HolProg 64 :=
.seq RemovedBody261_372 RemovedBody261_439

def RemovedBody261_441 : StackLang.HolProg 64 :=
.seq RemovedBody261_319 RemovedBody261_440

def RemovedBody261_442 : StackLang.HolProg 64 :=
.seq RemovedBody261_318 RemovedBody261_441

def RemovedBody261_443 : StackLang.HolProg 64 :=
.seq RemovedBody261_317 RemovedBody261_442

def RemovedBody261_444 : StackLang.HolProg 64 :=
.seq RemovedBody261_316 RemovedBody261_443

def RemovedBody261_445 : StackLang.HolProg 64 :=
.seq RemovedBody261_315 RemovedBody261_444

def RemovedBody261_446 : StackLang.HolProg 64 :=
.seq RemovedBody261_314 RemovedBody261_445

def RemovedBody261_447 : StackLang.HolProg 64 :=
.seq RemovedBody261_257 RemovedBody261_446

def RemovedBody261_448 : StackLang.HolProg 64 :=
.seq RemovedBody261_256 RemovedBody261_447

def RemovedBody261_449 : StackLang.HolProg 64 :=
.seq RemovedBody261_255 RemovedBody261_448

def RemovedBody261_450 : StackLang.HolProg 64 :=
.seq RemovedBody261_254 RemovedBody261_449

def RemovedBody261_451 : StackLang.HolProg 64 :=
.seq RemovedBody261_253 RemovedBody261_450

def RemovedBody261_452 : StackLang.HolProg 64 :=
.seq RemovedBody261_252 RemovedBody261_451

def RemovedBody261_453 : StackLang.HolProg 64 :=
.seq RemovedBody261_251 RemovedBody261_452

def RemovedBody261_454 : StackLang.HolProg 64 :=
.seq RemovedBody261_194 RemovedBody261_453

def RemovedBody261_455 : StackLang.HolProg 64 :=
.seq RemovedBody261_191 RemovedBody261_454

def RemovedBody261_456 : StackLang.HolProg 64 :=
.seq RemovedBody261_190 RemovedBody261_455

def RemovedBody261_457 : StackLang.HolProg 64 :=
.seq RemovedBody261_189 RemovedBody261_456

def RemovedBody261_458 : StackLang.HolProg 64 :=
.seq RemovedBody261_188 RemovedBody261_457

def RemovedBody261_459 : StackLang.HolProg 64 :=
.seq RemovedBody261_187 RemovedBody261_458

def RemovedBody261_460 : StackLang.HolProg 64 :=
.seq RemovedBody261_186 RemovedBody261_459

def RemovedBody261_461 : StackLang.HolProg 64 :=
.seq RemovedBody261_185 RemovedBody261_460

def RemovedBody261_462 : StackLang.HolProg 64 :=
.seq RemovedBody261_128 RemovedBody261_461

def RemovedBody261_463 : StackLang.HolProg 64 :=
.seq RemovedBody261_125 RemovedBody261_462

def RemovedBody261_464 : StackLang.HolProg 64 :=
.seq RemovedBody261_124 RemovedBody261_463

def RemovedBody261_465 : StackLang.HolProg 64 :=
.seq RemovedBody261_123 RemovedBody261_464

def RemovedBody261_466 : StackLang.HolProg 64 :=
.seq RemovedBody261_122 RemovedBody261_465

def RemovedBody261_467 : StackLang.HolProg 64 :=
.seq RemovedBody261_67 RemovedBody261_466

def RemovedBody261_468 : StackLang.HolProg 64 :=
.seq RemovedBody261_66 RemovedBody261_467

def RemovedBody261_469 : StackLang.HolProg 64 :=
.seq RemovedBody261_65 RemovedBody261_468

def RemovedBody261_470 : StackLang.HolProg 64 :=
.seq RemovedBody261_64 RemovedBody261_469

def RemovedBody261_471 : StackLang.HolProg 64 :=
.seq RemovedBody261_11 RemovedBody261_470

def RemovedBody261_472 : StackLang.HolProg 64 :=
.seq RemovedBody261_6 RemovedBody261_471

def Removed261 : Nat × StackLang.HolProg 64 := (261, RemovedBody261_472)
theorem Removed261_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc261 = Removed261 := by
  kernel_rfl
#print axioms Removed261_eq
end InitECandidate.Proofs.BackendStages
