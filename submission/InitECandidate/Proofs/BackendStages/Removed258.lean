import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc258
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody258_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody258_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody258_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody258_3 : StackLang.HolProg 64 :=
.seq RemovedBody258_1 RemovedBody258_2

def RemovedBody258_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody258_3 RemovedBody258_4

def RemovedBody258_6 : StackLang.HolProg 64 :=
.seq RemovedBody258_0 RemovedBody258_5

def RemovedBody258_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody258_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody258_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody258_10 : StackLang.HolProg 64 :=
.seq RemovedBody258_8 RemovedBody258_9

def RemovedBody258_11 : StackLang.HolProg 64 :=
.seq RemovedBody258_7 RemovedBody258_10

def RemovedBody258_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 558#64)

def RemovedBody258_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody258_15 : StackLang.HolProg 64 :=
.seq RemovedBody258_13 RemovedBody258_14

def RemovedBody258_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody258_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody258_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody258_19 : StackLang.HolProg 64 :=
.seq RemovedBody258_17 RemovedBody258_18

def RemovedBody258_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody258_19 RemovedBody258_20

def RemovedBody258_22 : StackLang.HolProg 64 :=
.seq RemovedBody258_16 RemovedBody258_21

def RemovedBody258_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody258_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody258_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 3

def RemovedBody258_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody258_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody258_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody258_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody258_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody258_32 : StackLang.HolProg 64 :=
.seq RemovedBody258_30 RemovedBody258_31

def RemovedBody258_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody258_34 : StackLang.HolProg 64 :=
.seq RemovedBody258_32 RemovedBody258_33

def RemovedBody258_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody258_36 : StackLang.HolProg 64 :=
.seq RemovedBody258_34 RemovedBody258_35

def RemovedBody258_37 : StackLang.HolProg 64 :=
.seq RemovedBody258_29 RemovedBody258_36

def RemovedBody258_38 : StackLang.HolProg 64 :=
.seq RemovedBody258_28 RemovedBody258_37

def RemovedBody258_39 : StackLang.HolProg 64 :=
.seq RemovedBody258_27 RemovedBody258_38

def RemovedBody258_40 : StackLang.HolProg 64 :=
.seq RemovedBody258_26 RemovedBody258_39

def RemovedBody258_41 : StackLang.HolProg 64 :=
.seq RemovedBody258_25 RemovedBody258_40

def RemovedBody258_42 : StackLang.HolProg 64 :=
.seq RemovedBody258_24 RemovedBody258_41

def RemovedBody258_43 : StackLang.HolProg 64 :=
.seq RemovedBody258_23 RemovedBody258_42

def RemovedBody258_44 : StackLang.HolProg 64 :=
.seq RemovedBody258_22 RemovedBody258_43

def RemovedBody258_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody258_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody258_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody258_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody258_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody258_53 : StackLang.HolProg 64 :=
.seq RemovedBody258_51 RemovedBody258_52

def RemovedBody258_54 : StackLang.HolProg 64 :=
.seq RemovedBody258_50 RemovedBody258_53

def RemovedBody258_55 : StackLang.HolProg 64 :=
.seq RemovedBody258_49 RemovedBody258_54

def RemovedBody258_56 : StackLang.HolProg 64 :=
.seq RemovedBody258_48 RemovedBody258_55

def RemovedBody258_57 : StackLang.HolProg 64 :=
.seq RemovedBody258_47 RemovedBody258_56

def RemovedBody258_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody258_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody258_60 : StackLang.HolProg 64 :=
.seq RemovedBody258_58 RemovedBody258_59

def RemovedBody258_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody258_62 : StackLang.HolProg 64 :=
.seq RemovedBody258_60 RemovedBody258_61

def RemovedBody258_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody258_57, 0, 258, 2)) (Sum.inl 235) (some (RemovedBody258_62, 258, 3))

def RemovedBody258_64 : StackLang.HolProg 64 :=
.seq RemovedBody258_46 RemovedBody258_63

def RemovedBody258_65 : StackLang.HolProg 64 :=
.seq RemovedBody258_45 RemovedBody258_64

def RemovedBody258_66 : StackLang.HolProg 64 :=
.seq RemovedBody258_44 RemovedBody258_65

def RemovedBody258_67 : StackLang.HolProg 64 :=
.seq RemovedBody258_15 RemovedBody258_66

def RemovedBody258_68 : StackLang.HolProg 64 :=
.seq RemovedBody258_12 RemovedBody258_67

def RemovedBody258_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody258_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody258_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 559#64)

def RemovedBody258_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody258_74 : StackLang.HolProg 64 :=
.seq RemovedBody258_72 RemovedBody258_73

def RemovedBody258_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody258_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody258_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody258_78 : StackLang.HolProg 64 :=
.seq RemovedBody258_76 RemovedBody258_77

def RemovedBody258_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody258_78 RemovedBody258_79

def RemovedBody258_81 : StackLang.HolProg 64 :=
.seq RemovedBody258_75 RemovedBody258_80

def RemovedBody258_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody258_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody258_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 5

def RemovedBody258_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody258_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody258_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody258_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody258_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody258_91 : StackLang.HolProg 64 :=
.seq RemovedBody258_89 RemovedBody258_90

def RemovedBody258_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody258_93 : StackLang.HolProg 64 :=
.seq RemovedBody258_91 RemovedBody258_92

def RemovedBody258_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody258_95 : StackLang.HolProg 64 :=
.seq RemovedBody258_93 RemovedBody258_94

def RemovedBody258_96 : StackLang.HolProg 64 :=
.seq RemovedBody258_88 RemovedBody258_95

def RemovedBody258_97 : StackLang.HolProg 64 :=
.seq RemovedBody258_87 RemovedBody258_96

def RemovedBody258_98 : StackLang.HolProg 64 :=
.seq RemovedBody258_86 RemovedBody258_97

def RemovedBody258_99 : StackLang.HolProg 64 :=
.seq RemovedBody258_85 RemovedBody258_98

def RemovedBody258_100 : StackLang.HolProg 64 :=
.seq RemovedBody258_84 RemovedBody258_99

def RemovedBody258_101 : StackLang.HolProg 64 :=
.seq RemovedBody258_83 RemovedBody258_100

def RemovedBody258_102 : StackLang.HolProg 64 :=
.seq RemovedBody258_82 RemovedBody258_101

def RemovedBody258_103 : StackLang.HolProg 64 :=
.seq RemovedBody258_81 RemovedBody258_102

def RemovedBody258_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody258_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody258_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody258_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody258_111 : StackLang.HolProg 64 :=
.seq RemovedBody258_109 RemovedBody258_110

def RemovedBody258_112 : StackLang.HolProg 64 :=
.seq RemovedBody258_108 RemovedBody258_111

def RemovedBody258_113 : StackLang.HolProg 64 :=
.seq RemovedBody258_107 RemovedBody258_112

def RemovedBody258_114 : StackLang.HolProg 64 :=
.seq RemovedBody258_106 RemovedBody258_113

def RemovedBody258_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody258_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody258_117 : StackLang.HolProg 64 :=
.seq RemovedBody258_115 RemovedBody258_116

def RemovedBody258_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody258_114, 0, 258, 4)) (Sum.inl 236) (some (RemovedBody258_117, 258, 5))

def RemovedBody258_119 : StackLang.HolProg 64 :=
.seq RemovedBody258_105 RemovedBody258_118

def RemovedBody258_120 : StackLang.HolProg 64 :=
.seq RemovedBody258_104 RemovedBody258_119

def RemovedBody258_121 : StackLang.HolProg 64 :=
.seq RemovedBody258_103 RemovedBody258_120

def RemovedBody258_122 : StackLang.HolProg 64 :=
.seq RemovedBody258_74 RemovedBody258_121

def RemovedBody258_123 : StackLang.HolProg 64 :=
.seq RemovedBody258_71 RemovedBody258_122

def RemovedBody258_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody258_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody258_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody258_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody258_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody258_129 : StackLang.HolProg 64 :=
.seq RemovedBody258_127 RemovedBody258_128

def RemovedBody258_130 : StackLang.HolProg 64 :=
.seq RemovedBody258_126 RemovedBody258_129

def RemovedBody258_131 : StackLang.HolProg 64 :=
.seq RemovedBody258_125 RemovedBody258_130

def RemovedBody258_132 : StackLang.HolProg 64 :=
.seq RemovedBody258_124 RemovedBody258_131

def RemovedBody258_133 : StackLang.HolProg 64 :=
.seq RemovedBody258_123 RemovedBody258_132

def RemovedBody258_134 : StackLang.HolProg 64 :=
.seq RemovedBody258_70 RemovedBody258_133

def RemovedBody258_135 : StackLang.HolProg 64 :=
.seq RemovedBody258_69 RemovedBody258_134

def RemovedBody258_136 : StackLang.HolProg 64 :=
.seq RemovedBody258_68 RemovedBody258_135

def RemovedBody258_137 : StackLang.HolProg 64 :=
.seq RemovedBody258_11 RemovedBody258_136

def RemovedBody258_138 : StackLang.HolProg 64 :=
.seq RemovedBody258_6 RemovedBody258_137

def Removed258 : Nat × StackLang.HolProg 64 := (258, RemovedBody258_138)
theorem Removed258_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc258 = Removed258 := by
  kernel_rfl
#print axioms Removed258_eq
end InitECandidate.Proofs.BackendStages
