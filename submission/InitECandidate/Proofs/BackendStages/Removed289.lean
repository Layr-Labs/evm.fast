import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc289
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody289_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody289_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody289_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody289_3 : StackLang.HolProg 64 :=
.seq RemovedBody289_1 RemovedBody289_2

def RemovedBody289_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody289_3 RemovedBody289_4

def RemovedBody289_6 : StackLang.HolProg 64 :=
.seq RemovedBody289_0 RemovedBody289_5

def RemovedBody289_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody289_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody289_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody289_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody289_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_14 : StackLang.HolProg 64 :=
.seq RemovedBody289_12 RemovedBody289_13

def RemovedBody289_15 : StackLang.HolProg 64 :=
.seq RemovedBody289_11 RemovedBody289_14

def RemovedBody289_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 790#64)

def RemovedBody289_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody289_19 : StackLang.HolProg 64 :=
.seq RemovedBody289_17 RemovedBody289_18

def RemovedBody289_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody289_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody289_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody289_23 : StackLang.HolProg 64 :=
.seq RemovedBody289_21 RemovedBody289_22

def RemovedBody289_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody289_23 RemovedBody289_24

def RemovedBody289_26 : StackLang.HolProg 64 :=
.seq RemovedBody289_20 RemovedBody289_25

def RemovedBody289_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody289_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody289_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 3

def RemovedBody289_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody289_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody289_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody289_36 : StackLang.HolProg 64 :=
.seq RemovedBody289_34 RemovedBody289_35

def RemovedBody289_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody289_38 : StackLang.HolProg 64 :=
.seq RemovedBody289_36 RemovedBody289_37

def RemovedBody289_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_40 : StackLang.HolProg 64 :=
.seq RemovedBody289_38 RemovedBody289_39

def RemovedBody289_41 : StackLang.HolProg 64 :=
.seq RemovedBody289_33 RemovedBody289_40

def RemovedBody289_42 : StackLang.HolProg 64 :=
.seq RemovedBody289_32 RemovedBody289_41

def RemovedBody289_43 : StackLang.HolProg 64 :=
.seq RemovedBody289_31 RemovedBody289_42

def RemovedBody289_44 : StackLang.HolProg 64 :=
.seq RemovedBody289_30 RemovedBody289_43

def RemovedBody289_45 : StackLang.HolProg 64 :=
.seq RemovedBody289_29 RemovedBody289_44

def RemovedBody289_46 : StackLang.HolProg 64 :=
.seq RemovedBody289_28 RemovedBody289_45

def RemovedBody289_47 : StackLang.HolProg 64 :=
.seq RemovedBody289_27 RemovedBody289_46

def RemovedBody289_48 : StackLang.HolProg 64 :=
.seq RemovedBody289_26 RemovedBody289_47

def RemovedBody289_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody289_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_57 : StackLang.HolProg 64 :=
.seq RemovedBody289_55 RemovedBody289_56

def RemovedBody289_58 : StackLang.HolProg 64 :=
.seq RemovedBody289_54 RemovedBody289_57

def RemovedBody289_59 : StackLang.HolProg 64 :=
.seq RemovedBody289_53 RemovedBody289_58

def RemovedBody289_60 : StackLang.HolProg 64 :=
.seq RemovedBody289_52 RemovedBody289_59

def RemovedBody289_61 : StackLang.HolProg 64 :=
.seq RemovedBody289_51 RemovedBody289_60

def RemovedBody289_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_64 : StackLang.HolProg 64 :=
.seq RemovedBody289_62 RemovedBody289_63

def RemovedBody289_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody289_66 : StackLang.HolProg 64 :=
.seq RemovedBody289_64 RemovedBody289_65

def RemovedBody289_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody289_61, 0, 289, 2)) (Sum.inl 286) (some (RemovedBody289_66, 289, 3))

def RemovedBody289_68 : StackLang.HolProg 64 :=
.seq RemovedBody289_50 RemovedBody289_67

def RemovedBody289_69 : StackLang.HolProg 64 :=
.seq RemovedBody289_49 RemovedBody289_68

def RemovedBody289_70 : StackLang.HolProg 64 :=
.seq RemovedBody289_48 RemovedBody289_69

def RemovedBody289_71 : StackLang.HolProg 64 :=
.seq RemovedBody289_19 RemovedBody289_70

def RemovedBody289_72 : StackLang.HolProg 64 :=
.seq RemovedBody289_16 RemovedBody289_71

def RemovedBody289_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_75 : StackLang.HolProg 64 :=
.seq RemovedBody289_73 RemovedBody289_74

def RemovedBody289_76 : StackLang.HolProg 64 :=
.seq RemovedBody289_72 RemovedBody289_75

def RemovedBody289_77 : StackLang.HolProg 64 :=
.seq RemovedBody289_15 RemovedBody289_76

def RemovedBody289_78 : StackLang.HolProg 64 :=
.seq RemovedBody289_10 RemovedBody289_77

def RemovedBody289_79 : StackLang.HolProg 64 :=
.seq RemovedBody289_9 RemovedBody289_78

def RemovedBody289_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody289_82 : StackLang.HolProg 64 :=
.seq RemovedBody289_80 RemovedBody289_81

def RemovedBody289_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody289_79 RemovedBody289_82

def RemovedBody289_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody289_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody289_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody289_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody289_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody289_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody289_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody289_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody289_101 : StackLang.HolProg 64 :=
.seq RemovedBody289_99 RemovedBody289_100

def RemovedBody289_102 : StackLang.HolProg 64 :=
.seq RemovedBody289_98 RemovedBody289_101

def RemovedBody289_103 : StackLang.HolProg 64 :=
.seq RemovedBody289_97 RemovedBody289_102

def RemovedBody289_104 : StackLang.HolProg 64 :=
.seq RemovedBody289_96 RemovedBody289_103

def RemovedBody289_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 791#64)

def RemovedBody289_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody289_108 : StackLang.HolProg 64 :=
.seq RemovedBody289_106 RemovedBody289_107

def RemovedBody289_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody289_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody289_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody289_112 : StackLang.HolProg 64 :=
.seq RemovedBody289_110 RemovedBody289_111

def RemovedBody289_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody289_112 RemovedBody289_113

def RemovedBody289_115 : StackLang.HolProg 64 :=
.seq RemovedBody289_109 RemovedBody289_114

def RemovedBody289_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody289_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody289_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 5

def RemovedBody289_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody289_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody289_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody289_125 : StackLang.HolProg 64 :=
.seq RemovedBody289_123 RemovedBody289_124

def RemovedBody289_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody289_127 : StackLang.HolProg 64 :=
.seq RemovedBody289_125 RemovedBody289_126

def RemovedBody289_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_129 : StackLang.HolProg 64 :=
.seq RemovedBody289_127 RemovedBody289_128

def RemovedBody289_130 : StackLang.HolProg 64 :=
.seq RemovedBody289_122 RemovedBody289_129

def RemovedBody289_131 : StackLang.HolProg 64 :=
.seq RemovedBody289_121 RemovedBody289_130

def RemovedBody289_132 : StackLang.HolProg 64 :=
.seq RemovedBody289_120 RemovedBody289_131

def RemovedBody289_133 : StackLang.HolProg 64 :=
.seq RemovedBody289_119 RemovedBody289_132

def RemovedBody289_134 : StackLang.HolProg 64 :=
.seq RemovedBody289_118 RemovedBody289_133

def RemovedBody289_135 : StackLang.HolProg 64 :=
.seq RemovedBody289_117 RemovedBody289_134

def RemovedBody289_136 : StackLang.HolProg 64 :=
.seq RemovedBody289_116 RemovedBody289_135

def RemovedBody289_137 : StackLang.HolProg 64 :=
.seq RemovedBody289_115 RemovedBody289_136

def RemovedBody289_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody289_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody289_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody289_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody289_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_151 : StackLang.HolProg 64 :=
.seq RemovedBody289_149 RemovedBody289_150

def RemovedBody289_152 : StackLang.HolProg 64 :=
.seq RemovedBody289_148 RemovedBody289_151

def RemovedBody289_153 : StackLang.HolProg 64 :=
.seq RemovedBody289_147 RemovedBody289_152

def RemovedBody289_154 : StackLang.HolProg 64 :=
.seq RemovedBody289_146 RemovedBody289_153

def RemovedBody289_155 : StackLang.HolProg 64 :=
.seq RemovedBody289_145 RemovedBody289_154

def RemovedBody289_156 : StackLang.HolProg 64 :=
.seq RemovedBody289_144 RemovedBody289_155

def RemovedBody289_157 : StackLang.HolProg 64 :=
.seq RemovedBody289_143 RemovedBody289_156

def RemovedBody289_158 : StackLang.HolProg 64 :=
.seq RemovedBody289_142 RemovedBody289_157

def RemovedBody289_159 : StackLang.HolProg 64 :=
.seq RemovedBody289_141 RemovedBody289_158

def RemovedBody289_160 : StackLang.HolProg 64 :=
.seq RemovedBody289_140 RemovedBody289_159

def RemovedBody289_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody289_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody289_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_167 : StackLang.HolProg 64 :=
.seq RemovedBody289_165 RemovedBody289_166

def RemovedBody289_168 : StackLang.HolProg 64 :=
.seq RemovedBody289_164 RemovedBody289_167

def RemovedBody289_169 : StackLang.HolProg 64 :=
.seq RemovedBody289_163 RemovedBody289_168

def RemovedBody289_170 : StackLang.HolProg 64 :=
.seq RemovedBody289_162 RemovedBody289_169

def RemovedBody289_171 : StackLang.HolProg 64 :=
.seq RemovedBody289_161 RemovedBody289_170

def RemovedBody289_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody289_173 : StackLang.HolProg 64 :=
.seq RemovedBody289_171 RemovedBody289_172

def RemovedBody289_174 : StackLang.HolProg 64 :=
.call (some (RemovedBody289_160, 0, 289, 4)) (Sum.inl 68) (some (RemovedBody289_173, 289, 5))

def RemovedBody289_175 : StackLang.HolProg 64 :=
.seq RemovedBody289_139 RemovedBody289_174

def RemovedBody289_176 : StackLang.HolProg 64 :=
.seq RemovedBody289_138 RemovedBody289_175

def RemovedBody289_177 : StackLang.HolProg 64 :=
.seq RemovedBody289_137 RemovedBody289_176

def RemovedBody289_178 : StackLang.HolProg 64 :=
.seq RemovedBody289_108 RemovedBody289_177

def RemovedBody289_179 : StackLang.HolProg 64 :=
.seq RemovedBody289_105 RemovedBody289_178

def RemovedBody289_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody289_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody289_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody289_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody289_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody289_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_190 : StackLang.HolProg 64 :=
.seq RemovedBody289_188 RemovedBody289_189

def RemovedBody289_191 : StackLang.HolProg 64 :=
.seq RemovedBody289_187 RemovedBody289_190

def RemovedBody289_192 : StackLang.HolProg 64 :=
.seq RemovedBody289_186 RemovedBody289_191

def RemovedBody289_193 : StackLang.HolProg 64 :=
.seq RemovedBody289_185 RemovedBody289_192

def RemovedBody289_194 : StackLang.HolProg 64 :=
.seq RemovedBody289_184 RemovedBody289_193

def RemovedBody289_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_197 : StackLang.HolProg 64 :=
.seq RemovedBody289_195 RemovedBody289_196

def RemovedBody289_198 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody289_194 RemovedBody289_197

def RemovedBody289_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody289_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody289_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody289_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody289_209 : StackLang.HolProg 64 :=
.seq RemovedBody289_207 RemovedBody289_208

def RemovedBody289_210 : StackLang.HolProg 64 :=
.seq RemovedBody289_206 RemovedBody289_209

def RemovedBody289_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 792#64)

def RemovedBody289_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody289_214 : StackLang.HolProg 64 :=
.seq RemovedBody289_212 RemovedBody289_213

def RemovedBody289_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody289_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody289_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody289_218 : StackLang.HolProg 64 :=
.seq RemovedBody289_216 RemovedBody289_217

def RemovedBody289_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody289_218 RemovedBody289_219

def RemovedBody289_221 : StackLang.HolProg 64 :=
.seq RemovedBody289_215 RemovedBody289_220

def RemovedBody289_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody289_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody289_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 289 7

def RemovedBody289_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody289_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody289_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody289_231 : StackLang.HolProg 64 :=
.seq RemovedBody289_229 RemovedBody289_230

def RemovedBody289_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody289_233 : StackLang.HolProg 64 :=
.seq RemovedBody289_231 RemovedBody289_232

def RemovedBody289_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_235 : StackLang.HolProg 64 :=
.seq RemovedBody289_233 RemovedBody289_234

def RemovedBody289_236 : StackLang.HolProg 64 :=
.seq RemovedBody289_228 RemovedBody289_235

def RemovedBody289_237 : StackLang.HolProg 64 :=
.seq RemovedBody289_227 RemovedBody289_236

def RemovedBody289_238 : StackLang.HolProg 64 :=
.seq RemovedBody289_226 RemovedBody289_237

def RemovedBody289_239 : StackLang.HolProg 64 :=
.seq RemovedBody289_225 RemovedBody289_238

def RemovedBody289_240 : StackLang.HolProg 64 :=
.seq RemovedBody289_224 RemovedBody289_239

def RemovedBody289_241 : StackLang.HolProg 64 :=
.seq RemovedBody289_223 RemovedBody289_240

def RemovedBody289_242 : StackLang.HolProg 64 :=
.seq RemovedBody289_222 RemovedBody289_241

def RemovedBody289_243 : StackLang.HolProg 64 :=
.seq RemovedBody289_221 RemovedBody289_242

def RemovedBody289_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody289_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody289_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody289_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody289_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_255 : StackLang.HolProg 64 :=
.seq RemovedBody289_253 RemovedBody289_254

def RemovedBody289_256 : StackLang.HolProg 64 :=
.seq RemovedBody289_252 RemovedBody289_255

def RemovedBody289_257 : StackLang.HolProg 64 :=
.seq RemovedBody289_251 RemovedBody289_256

def RemovedBody289_258 : StackLang.HolProg 64 :=
.seq RemovedBody289_250 RemovedBody289_257

def RemovedBody289_259 : StackLang.HolProg 64 :=
.seq RemovedBody289_249 RemovedBody289_258

def RemovedBody289_260 : StackLang.HolProg 64 :=
.seq RemovedBody289_248 RemovedBody289_259

def RemovedBody289_261 : StackLang.HolProg 64 :=
.seq RemovedBody289_247 RemovedBody289_260

def RemovedBody289_262 : StackLang.HolProg 64 :=
.seq RemovedBody289_246 RemovedBody289_261

def RemovedBody289_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody289_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody289_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody289_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody289_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody289_268 : StackLang.HolProg 64 :=
.seq RemovedBody289_266 RemovedBody289_267

def RemovedBody289_269 : StackLang.HolProg 64 :=
.seq RemovedBody289_265 RemovedBody289_268

def RemovedBody289_270 : StackLang.HolProg 64 :=
.seq RemovedBody289_264 RemovedBody289_269

def RemovedBody289_271 : StackLang.HolProg 64 :=
.seq RemovedBody289_263 RemovedBody289_270

def RemovedBody289_272 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody289_273 : StackLang.HolProg 64 :=
.seq RemovedBody289_271 RemovedBody289_272

def RemovedBody289_274 : StackLang.HolProg 64 :=
.call (some (RemovedBody289_262, 0, 289, 6)) (Sum.inl 288) (some (RemovedBody289_273, 289, 7))

def RemovedBody289_275 : StackLang.HolProg 64 :=
.seq RemovedBody289_245 RemovedBody289_274

def RemovedBody289_276 : StackLang.HolProg 64 :=
.seq RemovedBody289_244 RemovedBody289_275

def RemovedBody289_277 : StackLang.HolProg 64 :=
.seq RemovedBody289_243 RemovedBody289_276

def RemovedBody289_278 : StackLang.HolProg 64 :=
.seq RemovedBody289_214 RemovedBody289_277

def RemovedBody289_279 : StackLang.HolProg 64 :=
.seq RemovedBody289_211 RemovedBody289_278

def RemovedBody289_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody289_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody289_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody289_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody289_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody289_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody289_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody289_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody289_289 : StackLang.HolProg 64 :=
.seq RemovedBody289_287 RemovedBody289_288

def RemovedBody289_290 : StackLang.HolProg 64 :=
.seq RemovedBody289_286 RemovedBody289_289

def RemovedBody289_291 : StackLang.HolProg 64 :=
.seq RemovedBody289_285 RemovedBody289_290

def RemovedBody289_292 : StackLang.HolProg 64 :=
.seq RemovedBody289_284 RemovedBody289_291

def RemovedBody289_293 : StackLang.HolProg 64 :=
.seq RemovedBody289_283 RemovedBody289_292

def RemovedBody289_294 : StackLang.HolProg 64 :=
.seq RemovedBody289_282 RemovedBody289_293

def RemovedBody289_295 : StackLang.HolProg 64 :=
.seq RemovedBody289_281 RemovedBody289_294

def RemovedBody289_296 : StackLang.HolProg 64 :=
.seq RemovedBody289_280 RemovedBody289_295

def RemovedBody289_297 : StackLang.HolProg 64 :=
.seq RemovedBody289_279 RemovedBody289_296

def RemovedBody289_298 : StackLang.HolProg 64 :=
.seq RemovedBody289_210 RemovedBody289_297

def RemovedBody289_299 : StackLang.HolProg 64 :=
.seq RemovedBody289_205 RemovedBody289_298

def RemovedBody289_300 : StackLang.HolProg 64 :=
.seq RemovedBody289_204 RemovedBody289_299

def RemovedBody289_301 : StackLang.HolProg 64 :=
.seq RemovedBody289_203 RemovedBody289_300

def RemovedBody289_302 : StackLang.HolProg 64 :=
.seq RemovedBody289_202 RemovedBody289_301

def RemovedBody289_303 : StackLang.HolProg 64 :=
.seq RemovedBody289_201 RemovedBody289_302

def RemovedBody289_304 : StackLang.HolProg 64 :=
.seq RemovedBody289_200 RemovedBody289_303

def RemovedBody289_305 : StackLang.HolProg 64 :=
.seq RemovedBody289_199 RemovedBody289_304

def RemovedBody289_306 : StackLang.HolProg 64 :=
.seq RemovedBody289_198 RemovedBody289_305

def RemovedBody289_307 : StackLang.HolProg 64 :=
.seq RemovedBody289_183 RemovedBody289_306

def RemovedBody289_308 : StackLang.HolProg 64 :=
.seq RemovedBody289_182 RemovedBody289_307

def RemovedBody289_309 : StackLang.HolProg 64 :=
.seq RemovedBody289_181 RemovedBody289_308

def RemovedBody289_310 : StackLang.HolProg 64 :=
.seq RemovedBody289_180 RemovedBody289_309

def RemovedBody289_311 : StackLang.HolProg 64 :=
.seq RemovedBody289_179 RemovedBody289_310

def RemovedBody289_312 : StackLang.HolProg 64 :=
.seq RemovedBody289_104 RemovedBody289_311

def RemovedBody289_313 : StackLang.HolProg 64 :=
.seq RemovedBody289_95 RemovedBody289_312

def RemovedBody289_314 : StackLang.HolProg 64 :=
.seq RemovedBody289_94 RemovedBody289_313

def RemovedBody289_315 : StackLang.HolProg 64 :=
.seq RemovedBody289_93 RemovedBody289_314

def RemovedBody289_316 : StackLang.HolProg 64 :=
.seq RemovedBody289_92 RemovedBody289_315

def RemovedBody289_317 : StackLang.HolProg 64 :=
.seq RemovedBody289_91 RemovedBody289_316

def RemovedBody289_318 : StackLang.HolProg 64 :=
.seq RemovedBody289_90 RemovedBody289_317

def RemovedBody289_319 : StackLang.HolProg 64 :=
.seq RemovedBody289_89 RemovedBody289_318

def RemovedBody289_320 : StackLang.HolProg 64 :=
.seq RemovedBody289_88 RemovedBody289_319

def RemovedBody289_321 : StackLang.HolProg 64 :=
.seq RemovedBody289_87 RemovedBody289_320

def RemovedBody289_322 : StackLang.HolProg 64 :=
.seq RemovedBody289_86 RemovedBody289_321

def RemovedBody289_323 : StackLang.HolProg 64 :=
.seq RemovedBody289_85 RemovedBody289_322

def RemovedBody289_324 : StackLang.HolProg 64 :=
.seq RemovedBody289_84 RemovedBody289_323

def RemovedBody289_325 : StackLang.HolProg 64 :=
.seq RemovedBody289_83 RemovedBody289_324

def RemovedBody289_326 : StackLang.HolProg 64 :=
.seq RemovedBody289_8 RemovedBody289_325

def RemovedBody289_327 : StackLang.HolProg 64 :=
.seq RemovedBody289_7 RemovedBody289_326

def RemovedBody289_328 : StackLang.HolProg 64 :=
.seq RemovedBody289_6 RemovedBody289_327

def Removed289 : Nat × StackLang.HolProg 64 := (289, RemovedBody289_328)
theorem Removed289_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc289 = Removed289 := by
  kernel_rfl
#print axioms Removed289_eq
end InitECandidate.Proofs.BackendStages
