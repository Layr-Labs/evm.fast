import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc680
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody680_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody680_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody680_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody680_3 : StackLang.HolProg 64 :=
.seq RemovedBody680_1 RemovedBody680_2

def RemovedBody680_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody680_3 RemovedBody680_4

def RemovedBody680_6 : StackLang.HolProg 64 :=
.seq RemovedBody680_0 RemovedBody680_5

def RemovedBody680_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody680_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody680_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody680_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_13 : StackLang.HolProg 64 :=
.seq RemovedBody680_11 RemovedBody680_12

def RemovedBody680_14 : StackLang.HolProg 64 :=
.seq RemovedBody680_10 RemovedBody680_13

def RemovedBody680_15 : StackLang.HolProg 64 :=
.seq RemovedBody680_9 RemovedBody680_14

def RemovedBody680_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2794#64)

def RemovedBody680_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody680_19 : StackLang.HolProg 64 :=
.seq RemovedBody680_17 RemovedBody680_18

def RemovedBody680_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody680_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody680_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody680_23 : StackLang.HolProg 64 :=
.seq RemovedBody680_21 RemovedBody680_22

def RemovedBody680_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody680_23 RemovedBody680_24

def RemovedBody680_26 : StackLang.HolProg 64 :=
.seq RemovedBody680_20 RemovedBody680_25

def RemovedBody680_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody680_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody680_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 3

def RemovedBody680_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody680_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody680_36 : StackLang.HolProg 64 :=
.seq RemovedBody680_34 RemovedBody680_35

def RemovedBody680_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody680_38 : StackLang.HolProg 64 :=
.seq RemovedBody680_36 RemovedBody680_37

def RemovedBody680_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_40 : StackLang.HolProg 64 :=
.seq RemovedBody680_38 RemovedBody680_39

def RemovedBody680_41 : StackLang.HolProg 64 :=
.seq RemovedBody680_33 RemovedBody680_40

def RemovedBody680_42 : StackLang.HolProg 64 :=
.seq RemovedBody680_32 RemovedBody680_41

def RemovedBody680_43 : StackLang.HolProg 64 :=
.seq RemovedBody680_31 RemovedBody680_42

def RemovedBody680_44 : StackLang.HolProg 64 :=
.seq RemovedBody680_30 RemovedBody680_43

def RemovedBody680_45 : StackLang.HolProg 64 :=
.seq RemovedBody680_29 RemovedBody680_44

def RemovedBody680_46 : StackLang.HolProg 64 :=
.seq RemovedBody680_28 RemovedBody680_45

def RemovedBody680_47 : StackLang.HolProg 64 :=
.seq RemovedBody680_27 RemovedBody680_46

def RemovedBody680_48 : StackLang.HolProg 64 :=
.seq RemovedBody680_26 RemovedBody680_47

def RemovedBody680_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody680_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody680_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_58 : StackLang.HolProg 64 :=
.seq RemovedBody680_56 RemovedBody680_57

def RemovedBody680_59 : StackLang.HolProg 64 :=
.seq RemovedBody680_55 RemovedBody680_58

def RemovedBody680_60 : StackLang.HolProg 64 :=
.seq RemovedBody680_54 RemovedBody680_59

def RemovedBody680_61 : StackLang.HolProg 64 :=
.seq RemovedBody680_53 RemovedBody680_60

def RemovedBody680_62 : StackLang.HolProg 64 :=
.seq RemovedBody680_52 RemovedBody680_61

def RemovedBody680_63 : StackLang.HolProg 64 :=
.seq RemovedBody680_51 RemovedBody680_62

def RemovedBody680_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody680_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_67 : StackLang.HolProg 64 :=
.seq RemovedBody680_65 RemovedBody680_66

def RemovedBody680_68 : StackLang.HolProg 64 :=
.seq RemovedBody680_64 RemovedBody680_67

def RemovedBody680_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody680_70 : StackLang.HolProg 64 :=
.seq RemovedBody680_68 RemovedBody680_69

def RemovedBody680_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody680_63, 0, 680, 2)) (Sum.inl 679) (some (RemovedBody680_70, 680, 3))

def RemovedBody680_72 : StackLang.HolProg 64 :=
.seq RemovedBody680_50 RemovedBody680_71

def RemovedBody680_73 : StackLang.HolProg 64 :=
.seq RemovedBody680_49 RemovedBody680_72

def RemovedBody680_74 : StackLang.HolProg 64 :=
.seq RemovedBody680_48 RemovedBody680_73

def RemovedBody680_75 : StackLang.HolProg 64 :=
.seq RemovedBody680_19 RemovedBody680_74

def RemovedBody680_76 : StackLang.HolProg 64 :=
.seq RemovedBody680_16 RemovedBody680_75

def RemovedBody680_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody680_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody680_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody680_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody680_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_83 : StackLang.HolProg 64 :=
.seq RemovedBody680_81 RemovedBody680_82

def RemovedBody680_84 : StackLang.HolProg 64 :=
.seq RemovedBody680_80 RemovedBody680_83

def RemovedBody680_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2795#64)

def RemovedBody680_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody680_88 : StackLang.HolProg 64 :=
.seq RemovedBody680_86 RemovedBody680_87

def RemovedBody680_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody680_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody680_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody680_92 : StackLang.HolProg 64 :=
.seq RemovedBody680_90 RemovedBody680_91

def RemovedBody680_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody680_92 RemovedBody680_93

def RemovedBody680_95 : StackLang.HolProg 64 :=
.seq RemovedBody680_89 RemovedBody680_94

def RemovedBody680_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody680_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody680_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 5

def RemovedBody680_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody680_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody680_105 : StackLang.HolProg 64 :=
.seq RemovedBody680_103 RemovedBody680_104

def RemovedBody680_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody680_107 : StackLang.HolProg 64 :=
.seq RemovedBody680_105 RemovedBody680_106

def RemovedBody680_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_109 : StackLang.HolProg 64 :=
.seq RemovedBody680_107 RemovedBody680_108

def RemovedBody680_110 : StackLang.HolProg 64 :=
.seq RemovedBody680_102 RemovedBody680_109

def RemovedBody680_111 : StackLang.HolProg 64 :=
.seq RemovedBody680_101 RemovedBody680_110

def RemovedBody680_112 : StackLang.HolProg 64 :=
.seq RemovedBody680_100 RemovedBody680_111

def RemovedBody680_113 : StackLang.HolProg 64 :=
.seq RemovedBody680_99 RemovedBody680_112

def RemovedBody680_114 : StackLang.HolProg 64 :=
.seq RemovedBody680_98 RemovedBody680_113

def RemovedBody680_115 : StackLang.HolProg 64 :=
.seq RemovedBody680_97 RemovedBody680_114

def RemovedBody680_116 : StackLang.HolProg 64 :=
.seq RemovedBody680_96 RemovedBody680_115

def RemovedBody680_117 : StackLang.HolProg 64 :=
.seq RemovedBody680_95 RemovedBody680_116

def RemovedBody680_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody680_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody680_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_127 : StackLang.HolProg 64 :=
.seq RemovedBody680_125 RemovedBody680_126

def RemovedBody680_128 : StackLang.HolProg 64 :=
.seq RemovedBody680_124 RemovedBody680_127

def RemovedBody680_129 : StackLang.HolProg 64 :=
.seq RemovedBody680_123 RemovedBody680_128

def RemovedBody680_130 : StackLang.HolProg 64 :=
.seq RemovedBody680_122 RemovedBody680_129

def RemovedBody680_131 : StackLang.HolProg 64 :=
.seq RemovedBody680_121 RemovedBody680_130

def RemovedBody680_132 : StackLang.HolProg 64 :=
.seq RemovedBody680_120 RemovedBody680_131

def RemovedBody680_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody680_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_136 : StackLang.HolProg 64 :=
.seq RemovedBody680_134 RemovedBody680_135

def RemovedBody680_137 : StackLang.HolProg 64 :=
.seq RemovedBody680_133 RemovedBody680_136

def RemovedBody680_138 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody680_139 : StackLang.HolProg 64 :=
.seq RemovedBody680_137 RemovedBody680_138

def RemovedBody680_140 : StackLang.HolProg 64 :=
.call (some (RemovedBody680_132, 0, 680, 4)) (Sum.inl 679) (some (RemovedBody680_139, 680, 5))

def RemovedBody680_141 : StackLang.HolProg 64 :=
.seq RemovedBody680_119 RemovedBody680_140

def RemovedBody680_142 : StackLang.HolProg 64 :=
.seq RemovedBody680_118 RemovedBody680_141

def RemovedBody680_143 : StackLang.HolProg 64 :=
.seq RemovedBody680_117 RemovedBody680_142

def RemovedBody680_144 : StackLang.HolProg 64 :=
.seq RemovedBody680_88 RemovedBody680_143

def RemovedBody680_145 : StackLang.HolProg 64 :=
.seq RemovedBody680_85 RemovedBody680_144

def RemovedBody680_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody680_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody680_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody680_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody680_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2796#64)

def RemovedBody680_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody680_155 : StackLang.HolProg 64 :=
.seq RemovedBody680_153 RemovedBody680_154

def RemovedBody680_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody680_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody680_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody680_159 : StackLang.HolProg 64 :=
.seq RemovedBody680_157 RemovedBody680_158

def RemovedBody680_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody680_159 RemovedBody680_160

def RemovedBody680_162 : StackLang.HolProg 64 :=
.seq RemovedBody680_156 RemovedBody680_161

def RemovedBody680_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody680_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody680_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 7

def RemovedBody680_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody680_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody680_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody680_172 : StackLang.HolProg 64 :=
.seq RemovedBody680_170 RemovedBody680_171

def RemovedBody680_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody680_174 : StackLang.HolProg 64 :=
.seq RemovedBody680_172 RemovedBody680_173

def RemovedBody680_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_176 : StackLang.HolProg 64 :=
.seq RemovedBody680_174 RemovedBody680_175

def RemovedBody680_177 : StackLang.HolProg 64 :=
.seq RemovedBody680_169 RemovedBody680_176

def RemovedBody680_178 : StackLang.HolProg 64 :=
.seq RemovedBody680_168 RemovedBody680_177

def RemovedBody680_179 : StackLang.HolProg 64 :=
.seq RemovedBody680_167 RemovedBody680_178

def RemovedBody680_180 : StackLang.HolProg 64 :=
.seq RemovedBody680_166 RemovedBody680_179

def RemovedBody680_181 : StackLang.HolProg 64 :=
.seq RemovedBody680_165 RemovedBody680_180

def RemovedBody680_182 : StackLang.HolProg 64 :=
.seq RemovedBody680_164 RemovedBody680_181

def RemovedBody680_183 : StackLang.HolProg 64 :=
.seq RemovedBody680_163 RemovedBody680_182

def RemovedBody680_184 : StackLang.HolProg 64 :=
.seq RemovedBody680_162 RemovedBody680_183

def RemovedBody680_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody680_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody680_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody680_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody680_192 : StackLang.HolProg 64 :=
.seq RemovedBody680_190 RemovedBody680_191

def RemovedBody680_193 : StackLang.HolProg 64 :=
.seq RemovedBody680_189 RemovedBody680_192

def RemovedBody680_194 : StackLang.HolProg 64 :=
.seq RemovedBody680_188 RemovedBody680_193

def RemovedBody680_195 : StackLang.HolProg 64 :=
.seq RemovedBody680_187 RemovedBody680_194

def RemovedBody680_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody680_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody680_198 : StackLang.HolProg 64 :=
.seq RemovedBody680_196 RemovedBody680_197

def RemovedBody680_199 : StackLang.HolProg 64 :=
.call (some (RemovedBody680_195, 0, 680, 6)) (Sum.inl 678) (some (RemovedBody680_198, 680, 7))

def RemovedBody680_200 : StackLang.HolProg 64 :=
.seq RemovedBody680_186 RemovedBody680_199

def RemovedBody680_201 : StackLang.HolProg 64 :=
.seq RemovedBody680_185 RemovedBody680_200

def RemovedBody680_202 : StackLang.HolProg 64 :=
.seq RemovedBody680_184 RemovedBody680_201

def RemovedBody680_203 : StackLang.HolProg 64 :=
.seq RemovedBody680_155 RemovedBody680_202

def RemovedBody680_204 : StackLang.HolProg 64 :=
.seq RemovedBody680_152 RemovedBody680_203

def RemovedBody680_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody680_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody680_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody680_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody680_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody680_210 : StackLang.HolProg 64 :=
.seq RemovedBody680_208 RemovedBody680_209

def RemovedBody680_211 : StackLang.HolProg 64 :=
.seq RemovedBody680_207 RemovedBody680_210

def RemovedBody680_212 : StackLang.HolProg 64 :=
.seq RemovedBody680_206 RemovedBody680_211

def RemovedBody680_213 : StackLang.HolProg 64 :=
.seq RemovedBody680_205 RemovedBody680_212

def RemovedBody680_214 : StackLang.HolProg 64 :=
.seq RemovedBody680_204 RemovedBody680_213

def RemovedBody680_215 : StackLang.HolProg 64 :=
.seq RemovedBody680_151 RemovedBody680_214

def RemovedBody680_216 : StackLang.HolProg 64 :=
.seq RemovedBody680_150 RemovedBody680_215

def RemovedBody680_217 : StackLang.HolProg 64 :=
.seq RemovedBody680_149 RemovedBody680_216

def RemovedBody680_218 : StackLang.HolProg 64 :=
.seq RemovedBody680_148 RemovedBody680_217

def RemovedBody680_219 : StackLang.HolProg 64 :=
.seq RemovedBody680_147 RemovedBody680_218

def RemovedBody680_220 : StackLang.HolProg 64 :=
.seq RemovedBody680_146 RemovedBody680_219

def RemovedBody680_221 : StackLang.HolProg 64 :=
.seq RemovedBody680_145 RemovedBody680_220

def RemovedBody680_222 : StackLang.HolProg 64 :=
.seq RemovedBody680_84 RemovedBody680_221

def RemovedBody680_223 : StackLang.HolProg 64 :=
.seq RemovedBody680_79 RemovedBody680_222

def RemovedBody680_224 : StackLang.HolProg 64 :=
.seq RemovedBody680_78 RemovedBody680_223

def RemovedBody680_225 : StackLang.HolProg 64 :=
.seq RemovedBody680_77 RemovedBody680_224

def RemovedBody680_226 : StackLang.HolProg 64 :=
.seq RemovedBody680_76 RemovedBody680_225

def RemovedBody680_227 : StackLang.HolProg 64 :=
.seq RemovedBody680_15 RemovedBody680_226

def RemovedBody680_228 : StackLang.HolProg 64 :=
.seq RemovedBody680_8 RemovedBody680_227

def RemovedBody680_229 : StackLang.HolProg 64 :=
.seq RemovedBody680_7 RemovedBody680_228

def RemovedBody680_230 : StackLang.HolProg 64 :=
.seq RemovedBody680_6 RemovedBody680_229

def Removed680 : Nat × StackLang.HolProg 64 := (680, RemovedBody680_230)
theorem Removed680_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc680 = Removed680 := by
  kernel_rfl
#print axioms Removed680_eq
end InitECandidate.Proofs.BackendStages
