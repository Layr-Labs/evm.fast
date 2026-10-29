import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc345
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody345_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody345_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_3 : StackLang.HolProg 64 :=
.seq RemovedBody345_1 RemovedBody345_2

def RemovedBody345_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_3 RemovedBody345_4

def RemovedBody345_6 : StackLang.HolProg 64 :=
.seq RemovedBody345_0 RemovedBody345_5

def RemovedBody345_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody345_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody345_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody345_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody345_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_16 : StackLang.HolProg 64 :=
.seq RemovedBody345_14 RemovedBody345_15

def RemovedBody345_17 : StackLang.HolProg 64 :=
.seq RemovedBody345_13 RemovedBody345_16

def RemovedBody345_18 : StackLang.HolProg 64 :=
.seq RemovedBody345_12 RemovedBody345_17

def RemovedBody345_19 : StackLang.HolProg 64 :=
.seq RemovedBody345_11 RemovedBody345_18

def RemovedBody345_20 : StackLang.HolProg 64 :=
.seq RemovedBody345_10 RemovedBody345_19

def RemovedBody345_21 : StackLang.HolProg 64 :=
.seq RemovedBody345_9 RemovedBody345_20

def RemovedBody345_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_21 RemovedBody345_22

def RemovedBody345_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody345_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 400#64)

def RemovedBody345_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody345_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_33 : StackLang.HolProg 64 :=
.seq RemovedBody345_31 RemovedBody345_32

def RemovedBody345_34 : StackLang.HolProg 64 :=
.seq RemovedBody345_30 RemovedBody345_33

def RemovedBody345_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1000#64)

def RemovedBody345_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_38 : StackLang.HolProg 64 :=
.seq RemovedBody345_36 RemovedBody345_37

def RemovedBody345_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_42 : StackLang.HolProg 64 :=
.seq RemovedBody345_40 RemovedBody345_41

def RemovedBody345_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_42 RemovedBody345_43

def RemovedBody345_45 : StackLang.HolProg 64 :=
.seq RemovedBody345_39 RemovedBody345_44

def RemovedBody345_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 3

def RemovedBody345_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_55 : StackLang.HolProg 64 :=
.seq RemovedBody345_53 RemovedBody345_54

def RemovedBody345_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_57 : StackLang.HolProg 64 :=
.seq RemovedBody345_55 RemovedBody345_56

def RemovedBody345_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_59 : StackLang.HolProg 64 :=
.seq RemovedBody345_57 RemovedBody345_58

def RemovedBody345_60 : StackLang.HolProg 64 :=
.seq RemovedBody345_52 RemovedBody345_59

def RemovedBody345_61 : StackLang.HolProg 64 :=
.seq RemovedBody345_51 RemovedBody345_60

def RemovedBody345_62 : StackLang.HolProg 64 :=
.seq RemovedBody345_50 RemovedBody345_61

def RemovedBody345_63 : StackLang.HolProg 64 :=
.seq RemovedBody345_49 RemovedBody345_62

def RemovedBody345_64 : StackLang.HolProg 64 :=
.seq RemovedBody345_48 RemovedBody345_63

def RemovedBody345_65 : StackLang.HolProg 64 :=
.seq RemovedBody345_47 RemovedBody345_64

def RemovedBody345_66 : StackLang.HolProg 64 :=
.seq RemovedBody345_46 RemovedBody345_65

def RemovedBody345_67 : StackLang.HolProg 64 :=
.seq RemovedBody345_45 RemovedBody345_66

def RemovedBody345_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_75 : StackLang.HolProg 64 :=
.seq RemovedBody345_73 RemovedBody345_74

def RemovedBody345_76 : StackLang.HolProg 64 :=
.seq RemovedBody345_72 RemovedBody345_75

def RemovedBody345_77 : StackLang.HolProg 64 :=
.seq RemovedBody345_71 RemovedBody345_76

def RemovedBody345_78 : StackLang.HolProg 64 :=
.seq RemovedBody345_70 RemovedBody345_77

def RemovedBody345_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_81 : StackLang.HolProg 64 :=
.seq RemovedBody345_79 RemovedBody345_80

def RemovedBody345_82 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_78, 0, 345, 2)) (Sum.inl 68) (some (RemovedBody345_81, 345, 3))

def RemovedBody345_83 : StackLang.HolProg 64 :=
.seq RemovedBody345_69 RemovedBody345_82

def RemovedBody345_84 : StackLang.HolProg 64 :=
.seq RemovedBody345_68 RemovedBody345_83

def RemovedBody345_85 : StackLang.HolProg 64 :=
.seq RemovedBody345_67 RemovedBody345_84

def RemovedBody345_86 : StackLang.HolProg 64 :=
.seq RemovedBody345_38 RemovedBody345_85

def RemovedBody345_87 : StackLang.HolProg 64 :=
.seq RemovedBody345_35 RemovedBody345_86

def RemovedBody345_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody345_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 400#64)

def RemovedBody345_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1001#64)

def RemovedBody345_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_95 : StackLang.HolProg 64 :=
.seq RemovedBody345_93 RemovedBody345_94

def RemovedBody345_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_99 : StackLang.HolProg 64 :=
.seq RemovedBody345_97 RemovedBody345_98

def RemovedBody345_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_99 RemovedBody345_100

def RemovedBody345_102 : StackLang.HolProg 64 :=
.seq RemovedBody345_96 RemovedBody345_101

def RemovedBody345_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 5

def RemovedBody345_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_112 : StackLang.HolProg 64 :=
.seq RemovedBody345_110 RemovedBody345_111

def RemovedBody345_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_114 : StackLang.HolProg 64 :=
.seq RemovedBody345_112 RemovedBody345_113

def RemovedBody345_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_116 : StackLang.HolProg 64 :=
.seq RemovedBody345_114 RemovedBody345_115

def RemovedBody345_117 : StackLang.HolProg 64 :=
.seq RemovedBody345_109 RemovedBody345_116

def RemovedBody345_118 : StackLang.HolProg 64 :=
.seq RemovedBody345_108 RemovedBody345_117

def RemovedBody345_119 : StackLang.HolProg 64 :=
.seq RemovedBody345_107 RemovedBody345_118

def RemovedBody345_120 : StackLang.HolProg 64 :=
.seq RemovedBody345_106 RemovedBody345_119

def RemovedBody345_121 : StackLang.HolProg 64 :=
.seq RemovedBody345_105 RemovedBody345_120

def RemovedBody345_122 : StackLang.HolProg 64 :=
.seq RemovedBody345_104 RemovedBody345_121

def RemovedBody345_123 : StackLang.HolProg 64 :=
.seq RemovedBody345_103 RemovedBody345_122

def RemovedBody345_124 : StackLang.HolProg 64 :=
.seq RemovedBody345_102 RemovedBody345_123

def RemovedBody345_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_135 : StackLang.HolProg 64 :=
.seq RemovedBody345_133 RemovedBody345_134

def RemovedBody345_136 : StackLang.HolProg 64 :=
.seq RemovedBody345_132 RemovedBody345_135

def RemovedBody345_137 : StackLang.HolProg 64 :=
.seq RemovedBody345_131 RemovedBody345_136

def RemovedBody345_138 : StackLang.HolProg 64 :=
.seq RemovedBody345_130 RemovedBody345_137

def RemovedBody345_139 : StackLang.HolProg 64 :=
.seq RemovedBody345_129 RemovedBody345_138

def RemovedBody345_140 : StackLang.HolProg 64 :=
.seq RemovedBody345_128 RemovedBody345_139

def RemovedBody345_141 : StackLang.HolProg 64 :=
.seq RemovedBody345_127 RemovedBody345_140

def RemovedBody345_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_146 : StackLang.HolProg 64 :=
.seq RemovedBody345_144 RemovedBody345_145

def RemovedBody345_147 : StackLang.HolProg 64 :=
.seq RemovedBody345_143 RemovedBody345_146

def RemovedBody345_148 : StackLang.HolProg 64 :=
.seq RemovedBody345_142 RemovedBody345_147

def RemovedBody345_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_150 : StackLang.HolProg 64 :=
.seq RemovedBody345_148 RemovedBody345_149

def RemovedBody345_151 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_141, 0, 345, 4)) (Sum.inl 78) (some (RemovedBody345_150, 345, 5))

def RemovedBody345_152 : StackLang.HolProg 64 :=
.seq RemovedBody345_126 RemovedBody345_151

def RemovedBody345_153 : StackLang.HolProg 64 :=
.seq RemovedBody345_125 RemovedBody345_152

def RemovedBody345_154 : StackLang.HolProg 64 :=
.seq RemovedBody345_124 RemovedBody345_153

def RemovedBody345_155 : StackLang.HolProg 64 :=
.seq RemovedBody345_95 RemovedBody345_154

def RemovedBody345_156 : StackLang.HolProg 64 :=
.seq RemovedBody345_92 RemovedBody345_155

def RemovedBody345_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def RemovedBody345_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 392#64)))

def RemovedBody345_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody345_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 9#64)

def RemovedBody345_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody345_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody345_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_173 : StackLang.HolProg 64 :=
.seq RemovedBody345_171 RemovedBody345_172

def RemovedBody345_174 : StackLang.HolProg 64 :=
.seq RemovedBody345_170 RemovedBody345_173

def RemovedBody345_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody345_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_178 : StackLang.HolProg 64 :=
.seq RemovedBody345_176 RemovedBody345_177

def RemovedBody345_179 : StackLang.HolProg 64 :=
.seq RemovedBody345_175 RemovedBody345_178

def RemovedBody345_180 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_174 RemovedBody345_179

def RemovedBody345_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody345_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody345_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_187 : StackLang.HolProg 64 :=
.seq RemovedBody345_185 RemovedBody345_186

def RemovedBody345_188 : StackLang.HolProg 64 :=
.seq RemovedBody345_184 RemovedBody345_187

def RemovedBody345_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody345_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_192 : StackLang.HolProg 64 :=
.seq RemovedBody345_190 RemovedBody345_191

def RemovedBody345_193 : StackLang.HolProg 64 :=
.seq RemovedBody345_189 RemovedBody345_192

def RemovedBody345_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody345_188 RemovedBody345_193

def RemovedBody345_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody345_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody345_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_205 : StackLang.HolProg 64 :=
.seq RemovedBody345_203 RemovedBody345_204

def RemovedBody345_206 : StackLang.HolProg 64 :=
.seq RemovedBody345_202 RemovedBody345_205

def RemovedBody345_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1002#64)

def RemovedBody345_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_210 : StackLang.HolProg 64 :=
.seq RemovedBody345_208 RemovedBody345_209

def RemovedBody345_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_214 : StackLang.HolProg 64 :=
.seq RemovedBody345_212 RemovedBody345_213

def RemovedBody345_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_216 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_214 RemovedBody345_215

def RemovedBody345_217 : StackLang.HolProg 64 :=
.seq RemovedBody345_211 RemovedBody345_216

def RemovedBody345_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 7

def RemovedBody345_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_227 : StackLang.HolProg 64 :=
.seq RemovedBody345_225 RemovedBody345_226

def RemovedBody345_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_229 : StackLang.HolProg 64 :=
.seq RemovedBody345_227 RemovedBody345_228

def RemovedBody345_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_231 : StackLang.HolProg 64 :=
.seq RemovedBody345_229 RemovedBody345_230

def RemovedBody345_232 : StackLang.HolProg 64 :=
.seq RemovedBody345_224 RemovedBody345_231

def RemovedBody345_233 : StackLang.HolProg 64 :=
.seq RemovedBody345_223 RemovedBody345_232

def RemovedBody345_234 : StackLang.HolProg 64 :=
.seq RemovedBody345_222 RemovedBody345_233

def RemovedBody345_235 : StackLang.HolProg 64 :=
.seq RemovedBody345_221 RemovedBody345_234

def RemovedBody345_236 : StackLang.HolProg 64 :=
.seq RemovedBody345_220 RemovedBody345_235

def RemovedBody345_237 : StackLang.HolProg 64 :=
.seq RemovedBody345_219 RemovedBody345_236

def RemovedBody345_238 : StackLang.HolProg 64 :=
.seq RemovedBody345_218 RemovedBody345_237

def RemovedBody345_239 : StackLang.HolProg 64 :=
.seq RemovedBody345_217 RemovedBody345_238

def RemovedBody345_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_250 : StackLang.HolProg 64 :=
.seq RemovedBody345_248 RemovedBody345_249

def RemovedBody345_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_252 : StackLang.HolProg 64 :=
.seq RemovedBody345_250 RemovedBody345_251

def RemovedBody345_253 : StackLang.HolProg 64 :=
.seq RemovedBody345_247 RemovedBody345_252

def RemovedBody345_254 : StackLang.HolProg 64 :=
.seq RemovedBody345_246 RemovedBody345_253

def RemovedBody345_255 : StackLang.HolProg 64 :=
.seq RemovedBody345_245 RemovedBody345_254

def RemovedBody345_256 : StackLang.HolProg 64 :=
.seq RemovedBody345_244 RemovedBody345_255

def RemovedBody345_257 : StackLang.HolProg 64 :=
.seq RemovedBody345_243 RemovedBody345_256

def RemovedBody345_258 : StackLang.HolProg 64 :=
.seq RemovedBody345_242 RemovedBody345_257

def RemovedBody345_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_262 : StackLang.HolProg 64 :=
.seq RemovedBody345_260 RemovedBody345_261

def RemovedBody345_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_264 : StackLang.HolProg 64 :=
.seq RemovedBody345_262 RemovedBody345_263

def RemovedBody345_265 : StackLang.HolProg 64 :=
.seq RemovedBody345_259 RemovedBody345_264

def RemovedBody345_266 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_267 : StackLang.HolProg 64 :=
.seq RemovedBody345_265 RemovedBody345_266

def RemovedBody345_268 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_258, 0, 345, 6)) (Sum.inl 162) (some (RemovedBody345_267, 345, 7))

def RemovedBody345_269 : StackLang.HolProg 64 :=
.seq RemovedBody345_241 RemovedBody345_268

def RemovedBody345_270 : StackLang.HolProg 64 :=
.seq RemovedBody345_240 RemovedBody345_269

def RemovedBody345_271 : StackLang.HolProg 64 :=
.seq RemovedBody345_239 RemovedBody345_270

def RemovedBody345_272 : StackLang.HolProg 64 :=
.seq RemovedBody345_210 RemovedBody345_271

def RemovedBody345_273 : StackLang.HolProg 64 :=
.seq RemovedBody345_207 RemovedBody345_272

def RemovedBody345_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody345_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def RemovedBody345_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_280 : StackLang.HolProg 64 :=
.seq RemovedBody345_278 RemovedBody345_279

def RemovedBody345_281 : StackLang.HolProg 64 :=
.seq RemovedBody345_277 RemovedBody345_280

def RemovedBody345_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_284 : StackLang.HolProg 64 :=
.seq RemovedBody345_282 RemovedBody345_283

def RemovedBody345_285 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_281 RemovedBody345_284

def RemovedBody345_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def RemovedBody345_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_292 : StackLang.HolProg 64 :=
.seq RemovedBody345_290 RemovedBody345_291

def RemovedBody345_293 : StackLang.HolProg 64 :=
.seq RemovedBody345_289 RemovedBody345_292

def RemovedBody345_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_296 : StackLang.HolProg 64 :=
.seq RemovedBody345_294 RemovedBody345_295

def RemovedBody345_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_293 RemovedBody345_296

def RemovedBody345_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody345_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 14#64)

def RemovedBody345_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_304 : StackLang.HolProg 64 :=
.seq RemovedBody345_302 RemovedBody345_303

def RemovedBody345_305 : StackLang.HolProg 64 :=
.seq RemovedBody345_301 RemovedBody345_304

def RemovedBody345_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_308 : StackLang.HolProg 64 :=
.seq RemovedBody345_306 RemovedBody345_307

def RemovedBody345_309 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_305 RemovedBody345_308

def RemovedBody345_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody345_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def RemovedBody345_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_316 : StackLang.HolProg 64 :=
.seq RemovedBody345_314 RemovedBody345_315

def RemovedBody345_317 : StackLang.HolProg 64 :=
.seq RemovedBody345_313 RemovedBody345_316

def RemovedBody345_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_320 : StackLang.HolProg 64 :=
.seq RemovedBody345_318 RemovedBody345_319

def RemovedBody345_321 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_317 RemovedBody345_320

def RemovedBody345_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_324 : StackLang.HolProg 64 :=
.seq RemovedBody345_322 RemovedBody345_323

def RemovedBody345_325 : StackLang.HolProg 64 :=
.seq RemovedBody345_321 RemovedBody345_324

def RemovedBody345_326 : StackLang.HolProg 64 :=
.seq RemovedBody345_312 RemovedBody345_325

def RemovedBody345_327 : StackLang.HolProg 64 :=
.seq RemovedBody345_311 RemovedBody345_326

def RemovedBody345_328 : StackLang.HolProg 64 :=
.seq RemovedBody345_310 RemovedBody345_327

def RemovedBody345_329 : StackLang.HolProg 64 :=
.seq RemovedBody345_309 RemovedBody345_328

def RemovedBody345_330 : StackLang.HolProg 64 :=
.seq RemovedBody345_300 RemovedBody345_329

def RemovedBody345_331 : StackLang.HolProg 64 :=
.seq RemovedBody345_299 RemovedBody345_330

def RemovedBody345_332 : StackLang.HolProg 64 :=
.seq RemovedBody345_298 RemovedBody345_331

def RemovedBody345_333 : StackLang.HolProg 64 :=
.seq RemovedBody345_297 RemovedBody345_332

def RemovedBody345_334 : StackLang.HolProg 64 :=
.seq RemovedBody345_288 RemovedBody345_333

def RemovedBody345_335 : StackLang.HolProg 64 :=
.seq RemovedBody345_287 RemovedBody345_334

def RemovedBody345_336 : StackLang.HolProg 64 :=
.seq RemovedBody345_286 RemovedBody345_335

def RemovedBody345_337 : StackLang.HolProg 64 :=
.seq RemovedBody345_285 RemovedBody345_336

def RemovedBody345_338 : StackLang.HolProg 64 :=
.seq RemovedBody345_276 RemovedBody345_337

def RemovedBody345_339 : StackLang.HolProg 64 :=
.seq RemovedBody345_275 RemovedBody345_338

def RemovedBody345_340 : StackLang.HolProg 64 :=
.seq RemovedBody345_274 RemovedBody345_339

def RemovedBody345_341 : StackLang.HolProg 64 :=
.seq RemovedBody345_273 RemovedBody345_340

def RemovedBody345_342 : StackLang.HolProg 64 :=
.seq RemovedBody345_206 RemovedBody345_341

def RemovedBody345_343 : StackLang.HolProg 64 :=
.seq RemovedBody345_201 RemovedBody345_342

def RemovedBody345_344 : StackLang.HolProg 64 :=
.seq RemovedBody345_200 RemovedBody345_343

def RemovedBody345_345 : StackLang.HolProg 64 :=
.seq RemovedBody345_199 RemovedBody345_344

def RemovedBody345_346 : StackLang.HolProg 64 :=
.seq RemovedBody345_198 RemovedBody345_345

def RemovedBody345_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 192#64)

def RemovedBody345_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody345_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_352 : StackLang.HolProg 64 :=
.seq RemovedBody345_350 RemovedBody345_351

def RemovedBody345_353 : StackLang.HolProg 64 :=
.seq RemovedBody345_349 RemovedBody345_352

def RemovedBody345_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody345_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_357 : StackLang.HolProg 64 :=
.seq RemovedBody345_355 RemovedBody345_356

def RemovedBody345_358 : StackLang.HolProg 64 :=
.seq RemovedBody345_354 RemovedBody345_357

def RemovedBody345_359 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_353 RemovedBody345_358

def RemovedBody345_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 254#64)

def RemovedBody345_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody345_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_366 : StackLang.HolProg 64 :=
.seq RemovedBody345_364 RemovedBody345_365

def RemovedBody345_367 : StackLang.HolProg 64 :=
.seq RemovedBody345_363 RemovedBody345_366

def RemovedBody345_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody345_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_371 : StackLang.HolProg 64 :=
.seq RemovedBody345_369 RemovedBody345_370

def RemovedBody345_372 : StackLang.HolProg 64 :=
.seq RemovedBody345_368 RemovedBody345_371

def RemovedBody345_373 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody345_367 RemovedBody345_372

def RemovedBody345_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody345_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody345_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody345_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_383 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_384 : StackLang.HolProg 64 :=
.seq RemovedBody345_382 RemovedBody345_383

def RemovedBody345_385 : StackLang.HolProg 64 :=
.seq RemovedBody345_381 RemovedBody345_384

def RemovedBody345_386 : StackLang.HolProg 64 :=
.seq RemovedBody345_380 RemovedBody345_385

def RemovedBody345_387 : StackLang.HolProg 64 :=
.seq RemovedBody345_379 RemovedBody345_386

def RemovedBody345_388 : StackLang.HolProg 64 :=
.seq RemovedBody345_378 RemovedBody345_387

def RemovedBody345_389 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody345_377 RemovedBody345_388

def RemovedBody345_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody345_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_394 : StackLang.HolProg 64 :=
.seq RemovedBody345_392 RemovedBody345_393

def RemovedBody345_395 : StackLang.HolProg 64 :=
.seq RemovedBody345_391 RemovedBody345_394

def RemovedBody345_396 : StackLang.HolProg 64 :=
.seq RemovedBody345_390 RemovedBody345_395

def RemovedBody345_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1003#64)

def RemovedBody345_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_400 : StackLang.HolProg 64 :=
.seq RemovedBody345_398 RemovedBody345_399

def RemovedBody345_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_404 : StackLang.HolProg 64 :=
.seq RemovedBody345_402 RemovedBody345_403

def RemovedBody345_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_406 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_404 RemovedBody345_405

def RemovedBody345_407 : StackLang.HolProg 64 :=
.seq RemovedBody345_401 RemovedBody345_406

def RemovedBody345_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 9

def RemovedBody345_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_417 : StackLang.HolProg 64 :=
.seq RemovedBody345_415 RemovedBody345_416

def RemovedBody345_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_419 : StackLang.HolProg 64 :=
.seq RemovedBody345_417 RemovedBody345_418

def RemovedBody345_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_421 : StackLang.HolProg 64 :=
.seq RemovedBody345_419 RemovedBody345_420

def RemovedBody345_422 : StackLang.HolProg 64 :=
.seq RemovedBody345_414 RemovedBody345_421

def RemovedBody345_423 : StackLang.HolProg 64 :=
.seq RemovedBody345_413 RemovedBody345_422

def RemovedBody345_424 : StackLang.HolProg 64 :=
.seq RemovedBody345_412 RemovedBody345_423

def RemovedBody345_425 : StackLang.HolProg 64 :=
.seq RemovedBody345_411 RemovedBody345_424

def RemovedBody345_426 : StackLang.HolProg 64 :=
.seq RemovedBody345_410 RemovedBody345_425

def RemovedBody345_427 : StackLang.HolProg 64 :=
.seq RemovedBody345_409 RemovedBody345_426

def RemovedBody345_428 : StackLang.HolProg 64 :=
.seq RemovedBody345_408 RemovedBody345_427

def RemovedBody345_429 : StackLang.HolProg 64 :=
.seq RemovedBody345_407 RemovedBody345_428

def RemovedBody345_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_439 : StackLang.HolProg 64 :=
.seq RemovedBody345_437 RemovedBody345_438

def RemovedBody345_440 : StackLang.HolProg 64 :=
.seq RemovedBody345_436 RemovedBody345_439

def RemovedBody345_441 : StackLang.HolProg 64 :=
.seq RemovedBody345_435 RemovedBody345_440

def RemovedBody345_442 : StackLang.HolProg 64 :=
.seq RemovedBody345_434 RemovedBody345_441

def RemovedBody345_443 : StackLang.HolProg 64 :=
.seq RemovedBody345_433 RemovedBody345_442

def RemovedBody345_444 : StackLang.HolProg 64 :=
.seq RemovedBody345_432 RemovedBody345_443

def RemovedBody345_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_447 : StackLang.HolProg 64 :=
.seq RemovedBody345_445 RemovedBody345_446

def RemovedBody345_448 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_449 : StackLang.HolProg 64 :=
.seq RemovedBody345_447 RemovedBody345_448

def RemovedBody345_450 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_444, 0, 345, 8)) (Sum.inl 162) (some (RemovedBody345_449, 345, 9))

def RemovedBody345_451 : StackLang.HolProg 64 :=
.seq RemovedBody345_431 RemovedBody345_450

def RemovedBody345_452 : StackLang.HolProg 64 :=
.seq RemovedBody345_430 RemovedBody345_451

def RemovedBody345_453 : StackLang.HolProg 64 :=
.seq RemovedBody345_429 RemovedBody345_452

def RemovedBody345_454 : StackLang.HolProg 64 :=
.seq RemovedBody345_400 RemovedBody345_453

def RemovedBody345_455 : StackLang.HolProg 64 :=
.seq RemovedBody345_397 RemovedBody345_454

def RemovedBody345_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_459 : StackLang.HolProg 64 :=
.seq RemovedBody345_457 RemovedBody345_458

def RemovedBody345_460 : StackLang.HolProg 64 :=
.seq RemovedBody345_456 RemovedBody345_459

def RemovedBody345_461 : StackLang.HolProg 64 :=
.seq RemovedBody345_455 RemovedBody345_460

def RemovedBody345_462 : StackLang.HolProg 64 :=
.seq RemovedBody345_396 RemovedBody345_461

def RemovedBody345_463 : StackLang.HolProg 64 :=
.seq RemovedBody345_389 RemovedBody345_462

def RemovedBody345_464 : StackLang.HolProg 64 :=
.seq RemovedBody345_376 RemovedBody345_463

def RemovedBody345_465 : StackLang.HolProg 64 :=
.seq RemovedBody345_375 RemovedBody345_464

def RemovedBody345_466 : StackLang.HolProg 64 :=
.seq RemovedBody345_374 RemovedBody345_465

def RemovedBody345_467 : StackLang.HolProg 64 :=
.seq RemovedBody345_373 RemovedBody345_466

def RemovedBody345_468 : StackLang.HolProg 64 :=
.seq RemovedBody345_362 RemovedBody345_467

def RemovedBody345_469 : StackLang.HolProg 64 :=
.seq RemovedBody345_361 RemovedBody345_468

def RemovedBody345_470 : StackLang.HolProg 64 :=
.seq RemovedBody345_360 RemovedBody345_469

def RemovedBody345_471 : StackLang.HolProg 64 :=
.seq RemovedBody345_359 RemovedBody345_470

def RemovedBody345_472 : StackLang.HolProg 64 :=
.seq RemovedBody345_348 RemovedBody345_471

def RemovedBody345_473 : StackLang.HolProg 64 :=
.seq RemovedBody345_347 RemovedBody345_472

def RemovedBody345_474 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody345_346 RemovedBody345_473

def RemovedBody345_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody345_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody345_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody345_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody345_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody345_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_486 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_487 : StackLang.HolProg 64 :=
.seq RemovedBody345_485 RemovedBody345_486

def RemovedBody345_488 : StackLang.HolProg 64 :=
.seq RemovedBody345_484 RemovedBody345_487

def RemovedBody345_489 : StackLang.HolProg 64 :=
.seq RemovedBody345_483 RemovedBody345_488

def RemovedBody345_490 : StackLang.HolProg 64 :=
.seq RemovedBody345_482 RemovedBody345_489

def RemovedBody345_491 : StackLang.HolProg 64 :=
.seq RemovedBody345_481 RemovedBody345_490

def RemovedBody345_492 : StackLang.HolProg 64 :=
.seq RemovedBody345_480 RemovedBody345_491

def RemovedBody345_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_494 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_492 RemovedBody345_493

def RemovedBody345_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody345_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_501 : StackLang.HolProg 64 :=
.seq RemovedBody345_499 RemovedBody345_500

def RemovedBody345_502 : StackLang.HolProg 64 :=
.seq RemovedBody345_498 RemovedBody345_501

def RemovedBody345_503 : StackLang.HolProg 64 :=
.seq RemovedBody345_497 RemovedBody345_502

def RemovedBody345_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1004#64)

def RemovedBody345_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_507 : StackLang.HolProg 64 :=
.seq RemovedBody345_505 RemovedBody345_506

def RemovedBody345_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_511 : StackLang.HolProg 64 :=
.seq RemovedBody345_509 RemovedBody345_510

def RemovedBody345_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_513 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_511 RemovedBody345_512

def RemovedBody345_514 : StackLang.HolProg 64 :=
.seq RemovedBody345_508 RemovedBody345_513

def RemovedBody345_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 11

def RemovedBody345_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_524 : StackLang.HolProg 64 :=
.seq RemovedBody345_522 RemovedBody345_523

def RemovedBody345_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_526 : StackLang.HolProg 64 :=
.seq RemovedBody345_524 RemovedBody345_525

def RemovedBody345_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_528 : StackLang.HolProg 64 :=
.seq RemovedBody345_526 RemovedBody345_527

def RemovedBody345_529 : StackLang.HolProg 64 :=
.seq RemovedBody345_521 RemovedBody345_528

def RemovedBody345_530 : StackLang.HolProg 64 :=
.seq RemovedBody345_520 RemovedBody345_529

def RemovedBody345_531 : StackLang.HolProg 64 :=
.seq RemovedBody345_519 RemovedBody345_530

def RemovedBody345_532 : StackLang.HolProg 64 :=
.seq RemovedBody345_518 RemovedBody345_531

def RemovedBody345_533 : StackLang.HolProg 64 :=
.seq RemovedBody345_517 RemovedBody345_532

def RemovedBody345_534 : StackLang.HolProg 64 :=
.seq RemovedBody345_516 RemovedBody345_533

def RemovedBody345_535 : StackLang.HolProg 64 :=
.seq RemovedBody345_515 RemovedBody345_534

def RemovedBody345_536 : StackLang.HolProg 64 :=
.seq RemovedBody345_514 RemovedBody345_535

def RemovedBody345_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_546 : StackLang.HolProg 64 :=
.seq RemovedBody345_544 RemovedBody345_545

def RemovedBody345_547 : StackLang.HolProg 64 :=
.seq RemovedBody345_543 RemovedBody345_546

def RemovedBody345_548 : StackLang.HolProg 64 :=
.seq RemovedBody345_542 RemovedBody345_547

def RemovedBody345_549 : StackLang.HolProg 64 :=
.seq RemovedBody345_541 RemovedBody345_548

def RemovedBody345_550 : StackLang.HolProg 64 :=
.seq RemovedBody345_540 RemovedBody345_549

def RemovedBody345_551 : StackLang.HolProg 64 :=
.seq RemovedBody345_539 RemovedBody345_550

def RemovedBody345_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_554 : StackLang.HolProg 64 :=
.seq RemovedBody345_552 RemovedBody345_553

def RemovedBody345_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_556 : StackLang.HolProg 64 :=
.seq RemovedBody345_554 RemovedBody345_555

def RemovedBody345_557 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_551, 0, 345, 10)) (Sum.inl 169) (some (RemovedBody345_556, 345, 11))

def RemovedBody345_558 : StackLang.HolProg 64 :=
.seq RemovedBody345_538 RemovedBody345_557

def RemovedBody345_559 : StackLang.HolProg 64 :=
.seq RemovedBody345_537 RemovedBody345_558

def RemovedBody345_560 : StackLang.HolProg 64 :=
.seq RemovedBody345_536 RemovedBody345_559

def RemovedBody345_561 : StackLang.HolProg 64 :=
.seq RemovedBody345_507 RemovedBody345_560

def RemovedBody345_562 : StackLang.HolProg 64 :=
.seq RemovedBody345_504 RemovedBody345_561

def RemovedBody345_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody345_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody345_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody345_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_571 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_572 : StackLang.HolProg 64 :=
.seq RemovedBody345_570 RemovedBody345_571

def RemovedBody345_573 : StackLang.HolProg 64 :=
.seq RemovedBody345_569 RemovedBody345_572

def RemovedBody345_574 : StackLang.HolProg 64 :=
.seq RemovedBody345_568 RemovedBody345_573

def RemovedBody345_575 : StackLang.HolProg 64 :=
.seq RemovedBody345_567 RemovedBody345_574

def RemovedBody345_576 : StackLang.HolProg 64 :=
.seq RemovedBody345_566 RemovedBody345_575

def RemovedBody345_577 : StackLang.HolProg 64 :=
.seq RemovedBody345_565 RemovedBody345_576

def RemovedBody345_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_579 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody345_577 RemovedBody345_578

def RemovedBody345_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody345_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody345_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12#64)

def RemovedBody345_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def RemovedBody345_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody345_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_592 : StackLang.HolProg 64 :=
.seq RemovedBody345_590 RemovedBody345_591

def RemovedBody345_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_595 : StackLang.HolProg 64 :=
.seq RemovedBody345_593 RemovedBody345_594

def RemovedBody345_596 : StackLang.HolProg 64 :=
.seq RemovedBody345_592 RemovedBody345_595

def RemovedBody345_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1005#64)

def RemovedBody345_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_600 : StackLang.HolProg 64 :=
.seq RemovedBody345_598 RemovedBody345_599

def RemovedBody345_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_604 : StackLang.HolProg 64 :=
.seq RemovedBody345_602 RemovedBody345_603

def RemovedBody345_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_606 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_604 RemovedBody345_605

def RemovedBody345_607 : StackLang.HolProg 64 :=
.seq RemovedBody345_601 RemovedBody345_606

def RemovedBody345_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 13

def RemovedBody345_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_617 : StackLang.HolProg 64 :=
.seq RemovedBody345_615 RemovedBody345_616

def RemovedBody345_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_619 : StackLang.HolProg 64 :=
.seq RemovedBody345_617 RemovedBody345_618

def RemovedBody345_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_621 : StackLang.HolProg 64 :=
.seq RemovedBody345_619 RemovedBody345_620

def RemovedBody345_622 : StackLang.HolProg 64 :=
.seq RemovedBody345_614 RemovedBody345_621

def RemovedBody345_623 : StackLang.HolProg 64 :=
.seq RemovedBody345_613 RemovedBody345_622

def RemovedBody345_624 : StackLang.HolProg 64 :=
.seq RemovedBody345_612 RemovedBody345_623

def RemovedBody345_625 : StackLang.HolProg 64 :=
.seq RemovedBody345_611 RemovedBody345_624

def RemovedBody345_626 : StackLang.HolProg 64 :=
.seq RemovedBody345_610 RemovedBody345_625

def RemovedBody345_627 : StackLang.HolProg 64 :=
.seq RemovedBody345_609 RemovedBody345_626

def RemovedBody345_628 : StackLang.HolProg 64 :=
.seq RemovedBody345_608 RemovedBody345_627

def RemovedBody345_629 : StackLang.HolProg 64 :=
.seq RemovedBody345_607 RemovedBody345_628

def RemovedBody345_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_640 : StackLang.HolProg 64 :=
.seq RemovedBody345_638 RemovedBody345_639

def RemovedBody345_641 : StackLang.HolProg 64 :=
.seq RemovedBody345_637 RemovedBody345_640

def RemovedBody345_642 : StackLang.HolProg 64 :=
.seq RemovedBody345_636 RemovedBody345_641

def RemovedBody345_643 : StackLang.HolProg 64 :=
.seq RemovedBody345_635 RemovedBody345_642

def RemovedBody345_644 : StackLang.HolProg 64 :=
.seq RemovedBody345_634 RemovedBody345_643

def RemovedBody345_645 : StackLang.HolProg 64 :=
.seq RemovedBody345_633 RemovedBody345_644

def RemovedBody345_646 : StackLang.HolProg 64 :=
.seq RemovedBody345_632 RemovedBody345_645

def RemovedBody345_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_650 : StackLang.HolProg 64 :=
.seq RemovedBody345_648 RemovedBody345_649

def RemovedBody345_651 : StackLang.HolProg 64 :=
.seq RemovedBody345_647 RemovedBody345_650

def RemovedBody345_652 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_653 : StackLang.HolProg 64 :=
.seq RemovedBody345_651 RemovedBody345_652

def RemovedBody345_654 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_646, 0, 345, 12)) (Sum.inl 337) (some (RemovedBody345_653, 345, 13))

def RemovedBody345_655 : StackLang.HolProg 64 :=
.seq RemovedBody345_631 RemovedBody345_654

def RemovedBody345_656 : StackLang.HolProg 64 :=
.seq RemovedBody345_630 RemovedBody345_655

def RemovedBody345_657 : StackLang.HolProg 64 :=
.seq RemovedBody345_629 RemovedBody345_656

def RemovedBody345_658 : StackLang.HolProg 64 :=
.seq RemovedBody345_600 RemovedBody345_657

def RemovedBody345_659 : StackLang.HolProg 64 :=
.seq RemovedBody345_597 RemovedBody345_658

def RemovedBody345_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody345_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody345_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_667 : StackLang.HolProg 64 :=
.seq RemovedBody345_665 RemovedBody345_666

def RemovedBody345_668 : StackLang.HolProg 64 :=
.seq RemovedBody345_664 RemovedBody345_667

def RemovedBody345_669 : StackLang.HolProg 64 :=
.seq RemovedBody345_663 RemovedBody345_668

def RemovedBody345_670 : StackLang.HolProg 64 :=
.seq RemovedBody345_662 RemovedBody345_669

def RemovedBody345_671 : StackLang.HolProg 64 :=
.seq RemovedBody345_661 RemovedBody345_670

def RemovedBody345_672 : StackLang.HolProg 64 :=
.seq RemovedBody345_660 RemovedBody345_671

def RemovedBody345_673 : StackLang.HolProg 64 :=
.seq RemovedBody345_659 RemovedBody345_672

def RemovedBody345_674 : StackLang.HolProg 64 :=
.seq RemovedBody345_596 RemovedBody345_673

def RemovedBody345_675 : StackLang.HolProg 64 :=
.seq RemovedBody345_589 RemovedBody345_674

def RemovedBody345_676 : StackLang.HolProg 64 :=
.seq RemovedBody345_588 RemovedBody345_675

def RemovedBody345_677 : StackLang.HolProg 64 :=
.seq RemovedBody345_587 RemovedBody345_676

def RemovedBody345_678 : StackLang.HolProg 64 :=
.seq RemovedBody345_586 RemovedBody345_677

def RemovedBody345_679 : StackLang.HolProg 64 :=
.seq RemovedBody345_585 RemovedBody345_678

def RemovedBody345_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_682 : StackLang.HolProg 64 :=
.seq RemovedBody345_680 RemovedBody345_681

def RemovedBody345_683 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_679 RemovedBody345_682

def RemovedBody345_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody345_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12#64)

def RemovedBody345_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def RemovedBody345_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_694 : StackLang.HolProg 64 :=
.seq RemovedBody345_692 RemovedBody345_693

def RemovedBody345_695 : StackLang.HolProg 64 :=
.seq RemovedBody345_691 RemovedBody345_694

def RemovedBody345_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1006#64)

def RemovedBody345_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_699 : StackLang.HolProg 64 :=
.seq RemovedBody345_697 RemovedBody345_698

def RemovedBody345_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_703 : StackLang.HolProg 64 :=
.seq RemovedBody345_701 RemovedBody345_702

def RemovedBody345_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_705 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_703 RemovedBody345_704

def RemovedBody345_706 : StackLang.HolProg 64 :=
.seq RemovedBody345_700 RemovedBody345_705

def RemovedBody345_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 15

def RemovedBody345_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_716 : StackLang.HolProg 64 :=
.seq RemovedBody345_714 RemovedBody345_715

def RemovedBody345_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_718 : StackLang.HolProg 64 :=
.seq RemovedBody345_716 RemovedBody345_717

def RemovedBody345_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_720 : StackLang.HolProg 64 :=
.seq RemovedBody345_718 RemovedBody345_719

def RemovedBody345_721 : StackLang.HolProg 64 :=
.seq RemovedBody345_713 RemovedBody345_720

def RemovedBody345_722 : StackLang.HolProg 64 :=
.seq RemovedBody345_712 RemovedBody345_721

def RemovedBody345_723 : StackLang.HolProg 64 :=
.seq RemovedBody345_711 RemovedBody345_722

def RemovedBody345_724 : StackLang.HolProg 64 :=
.seq RemovedBody345_710 RemovedBody345_723

def RemovedBody345_725 : StackLang.HolProg 64 :=
.seq RemovedBody345_709 RemovedBody345_724

def RemovedBody345_726 : StackLang.HolProg 64 :=
.seq RemovedBody345_708 RemovedBody345_725

def RemovedBody345_727 : StackLang.HolProg 64 :=
.seq RemovedBody345_707 RemovedBody345_726

def RemovedBody345_728 : StackLang.HolProg 64 :=
.seq RemovedBody345_706 RemovedBody345_727

def RemovedBody345_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_740 : StackLang.HolProg 64 :=
.seq RemovedBody345_738 RemovedBody345_739

def RemovedBody345_741 : StackLang.HolProg 64 :=
.seq RemovedBody345_737 RemovedBody345_740

def RemovedBody345_742 : StackLang.HolProg 64 :=
.seq RemovedBody345_736 RemovedBody345_741

def RemovedBody345_743 : StackLang.HolProg 64 :=
.seq RemovedBody345_735 RemovedBody345_742

def RemovedBody345_744 : StackLang.HolProg 64 :=
.seq RemovedBody345_734 RemovedBody345_743

def RemovedBody345_745 : StackLang.HolProg 64 :=
.seq RemovedBody345_733 RemovedBody345_744

def RemovedBody345_746 : StackLang.HolProg 64 :=
.seq RemovedBody345_732 RemovedBody345_745

def RemovedBody345_747 : StackLang.HolProg 64 :=
.seq RemovedBody345_731 RemovedBody345_746

def RemovedBody345_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_752 : StackLang.HolProg 64 :=
.seq RemovedBody345_750 RemovedBody345_751

def RemovedBody345_753 : StackLang.HolProg 64 :=
.seq RemovedBody345_749 RemovedBody345_752

def RemovedBody345_754 : StackLang.HolProg 64 :=
.seq RemovedBody345_748 RemovedBody345_753

def RemovedBody345_755 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_756 : StackLang.HolProg 64 :=
.seq RemovedBody345_754 RemovedBody345_755

def RemovedBody345_757 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_747, 0, 345, 14)) (Sum.inl 337) (some (RemovedBody345_756, 345, 15))

def RemovedBody345_758 : StackLang.HolProg 64 :=
.seq RemovedBody345_730 RemovedBody345_757

def RemovedBody345_759 : StackLang.HolProg 64 :=
.seq RemovedBody345_729 RemovedBody345_758

def RemovedBody345_760 : StackLang.HolProg 64 :=
.seq RemovedBody345_728 RemovedBody345_759

def RemovedBody345_761 : StackLang.HolProg 64 :=
.seq RemovedBody345_699 RemovedBody345_760

def RemovedBody345_762 : StackLang.HolProg 64 :=
.seq RemovedBody345_696 RemovedBody345_761

def RemovedBody345_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody345_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody345_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody345_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_769 : StackLang.HolProg 64 :=
.seq RemovedBody345_767 RemovedBody345_768

def RemovedBody345_770 : StackLang.HolProg 64 :=
.seq RemovedBody345_766 RemovedBody345_769

def RemovedBody345_771 : StackLang.HolProg 64 :=
.seq RemovedBody345_765 RemovedBody345_770

def RemovedBody345_772 : StackLang.HolProg 64 :=
.seq RemovedBody345_764 RemovedBody345_771

def RemovedBody345_773 : StackLang.HolProg 64 :=
.seq RemovedBody345_763 RemovedBody345_772

def RemovedBody345_774 : StackLang.HolProg 64 :=
.seq RemovedBody345_762 RemovedBody345_773

def RemovedBody345_775 : StackLang.HolProg 64 :=
.seq RemovedBody345_695 RemovedBody345_774

def RemovedBody345_776 : StackLang.HolProg 64 :=
.seq RemovedBody345_690 RemovedBody345_775

def RemovedBody345_777 : StackLang.HolProg 64 :=
.seq RemovedBody345_689 RemovedBody345_776

def RemovedBody345_778 : StackLang.HolProg 64 :=
.seq RemovedBody345_688 RemovedBody345_777

def RemovedBody345_779 : StackLang.HolProg 64 :=
.seq RemovedBody345_687 RemovedBody345_778

def RemovedBody345_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody345_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_786 : StackLang.HolProg 64 :=
.seq RemovedBody345_784 RemovedBody345_785

def RemovedBody345_787 : StackLang.HolProg 64 :=
.seq RemovedBody345_783 RemovedBody345_786

def RemovedBody345_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1007#64)

def RemovedBody345_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_791 : StackLang.HolProg 64 :=
.seq RemovedBody345_789 RemovedBody345_790

def RemovedBody345_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_795 : StackLang.HolProg 64 :=
.seq RemovedBody345_793 RemovedBody345_794

def RemovedBody345_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_797 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_795 RemovedBody345_796

def RemovedBody345_798 : StackLang.HolProg 64 :=
.seq RemovedBody345_792 RemovedBody345_797

def RemovedBody345_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 17

def RemovedBody345_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_808 : StackLang.HolProg 64 :=
.seq RemovedBody345_806 RemovedBody345_807

def RemovedBody345_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_810 : StackLang.HolProg 64 :=
.seq RemovedBody345_808 RemovedBody345_809

def RemovedBody345_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_812 : StackLang.HolProg 64 :=
.seq RemovedBody345_810 RemovedBody345_811

def RemovedBody345_813 : StackLang.HolProg 64 :=
.seq RemovedBody345_805 RemovedBody345_812

def RemovedBody345_814 : StackLang.HolProg 64 :=
.seq RemovedBody345_804 RemovedBody345_813

def RemovedBody345_815 : StackLang.HolProg 64 :=
.seq RemovedBody345_803 RemovedBody345_814

def RemovedBody345_816 : StackLang.HolProg 64 :=
.seq RemovedBody345_802 RemovedBody345_815

def RemovedBody345_817 : StackLang.HolProg 64 :=
.seq RemovedBody345_801 RemovedBody345_816

def RemovedBody345_818 : StackLang.HolProg 64 :=
.seq RemovedBody345_800 RemovedBody345_817

def RemovedBody345_819 : StackLang.HolProg 64 :=
.seq RemovedBody345_799 RemovedBody345_818

def RemovedBody345_820 : StackLang.HolProg 64 :=
.seq RemovedBody345_798 RemovedBody345_819

def RemovedBody345_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_832 : StackLang.HolProg 64 :=
.seq RemovedBody345_830 RemovedBody345_831

def RemovedBody345_833 : StackLang.HolProg 64 :=
.seq RemovedBody345_829 RemovedBody345_832

def RemovedBody345_834 : StackLang.HolProg 64 :=
.seq RemovedBody345_828 RemovedBody345_833

def RemovedBody345_835 : StackLang.HolProg 64 :=
.seq RemovedBody345_827 RemovedBody345_834

def RemovedBody345_836 : StackLang.HolProg 64 :=
.seq RemovedBody345_826 RemovedBody345_835

def RemovedBody345_837 : StackLang.HolProg 64 :=
.seq RemovedBody345_825 RemovedBody345_836

def RemovedBody345_838 : StackLang.HolProg 64 :=
.seq RemovedBody345_824 RemovedBody345_837

def RemovedBody345_839 : StackLang.HolProg 64 :=
.seq RemovedBody345_823 RemovedBody345_838

def RemovedBody345_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_844 : StackLang.HolProg 64 :=
.seq RemovedBody345_842 RemovedBody345_843

def RemovedBody345_845 : StackLang.HolProg 64 :=
.seq RemovedBody345_841 RemovedBody345_844

def RemovedBody345_846 : StackLang.HolProg 64 :=
.seq RemovedBody345_840 RemovedBody345_845

def RemovedBody345_847 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_848 : StackLang.HolProg 64 :=
.seq RemovedBody345_846 RemovedBody345_847

def RemovedBody345_849 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_839, 0, 345, 16)) (Sum.inl 336) (some (RemovedBody345_848, 345, 17))

def RemovedBody345_850 : StackLang.HolProg 64 :=
.seq RemovedBody345_822 RemovedBody345_849

def RemovedBody345_851 : StackLang.HolProg 64 :=
.seq RemovedBody345_821 RemovedBody345_850

def RemovedBody345_852 : StackLang.HolProg 64 :=
.seq RemovedBody345_820 RemovedBody345_851

def RemovedBody345_853 : StackLang.HolProg 64 :=
.seq RemovedBody345_791 RemovedBody345_852

def RemovedBody345_854 : StackLang.HolProg 64 :=
.seq RemovedBody345_788 RemovedBody345_853

def RemovedBody345_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_857 : StackLang.HolProg 64 :=
.seq RemovedBody345_855 RemovedBody345_856

def RemovedBody345_858 : StackLang.HolProg 64 :=
.seq RemovedBody345_854 RemovedBody345_857

def RemovedBody345_859 : StackLang.HolProg 64 :=
.seq RemovedBody345_787 RemovedBody345_858

def RemovedBody345_860 : StackLang.HolProg 64 :=
.seq RemovedBody345_782 RemovedBody345_859

def RemovedBody345_861 : StackLang.HolProg 64 :=
.seq RemovedBody345_781 RemovedBody345_860

def RemovedBody345_862 : StackLang.HolProg 64 :=
.seq RemovedBody345_780 RemovedBody345_861

def RemovedBody345_863 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_779 RemovedBody345_862

def RemovedBody345_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody345_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody345_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody345_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody345_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_887 : StackLang.HolProg 64 :=
.seq RemovedBody345_885 RemovedBody345_886

def RemovedBody345_888 : StackLang.HolProg 64 :=
.seq RemovedBody345_884 RemovedBody345_887

def RemovedBody345_889 : StackLang.HolProg 64 :=
.seq RemovedBody345_883 RemovedBody345_888

def RemovedBody345_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1008#64)

def RemovedBody345_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_893 : StackLang.HolProg 64 :=
.seq RemovedBody345_891 RemovedBody345_892

def RemovedBody345_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_897 : StackLang.HolProg 64 :=
.seq RemovedBody345_895 RemovedBody345_896

def RemovedBody345_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_899 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_897 RemovedBody345_898

def RemovedBody345_900 : StackLang.HolProg 64 :=
.seq RemovedBody345_894 RemovedBody345_899

def RemovedBody345_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 19

def RemovedBody345_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_910 : StackLang.HolProg 64 :=
.seq RemovedBody345_908 RemovedBody345_909

def RemovedBody345_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_912 : StackLang.HolProg 64 :=
.seq RemovedBody345_910 RemovedBody345_911

def RemovedBody345_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_914 : StackLang.HolProg 64 :=
.seq RemovedBody345_912 RemovedBody345_913

def RemovedBody345_915 : StackLang.HolProg 64 :=
.seq RemovedBody345_907 RemovedBody345_914

def RemovedBody345_916 : StackLang.HolProg 64 :=
.seq RemovedBody345_906 RemovedBody345_915

def RemovedBody345_917 : StackLang.HolProg 64 :=
.seq RemovedBody345_905 RemovedBody345_916

def RemovedBody345_918 : StackLang.HolProg 64 :=
.seq RemovedBody345_904 RemovedBody345_917

def RemovedBody345_919 : StackLang.HolProg 64 :=
.seq RemovedBody345_903 RemovedBody345_918

def RemovedBody345_920 : StackLang.HolProg 64 :=
.seq RemovedBody345_902 RemovedBody345_919

def RemovedBody345_921 : StackLang.HolProg 64 :=
.seq RemovedBody345_901 RemovedBody345_920

def RemovedBody345_922 : StackLang.HolProg 64 :=
.seq RemovedBody345_900 RemovedBody345_921

def RemovedBody345_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_933 : StackLang.HolProg 64 :=
.seq RemovedBody345_931 RemovedBody345_932

def RemovedBody345_934 : StackLang.HolProg 64 :=
.seq RemovedBody345_930 RemovedBody345_933

def RemovedBody345_935 : StackLang.HolProg 64 :=
.seq RemovedBody345_929 RemovedBody345_934

def RemovedBody345_936 : StackLang.HolProg 64 :=
.seq RemovedBody345_928 RemovedBody345_935

def RemovedBody345_937 : StackLang.HolProg 64 :=
.seq RemovedBody345_927 RemovedBody345_936

def RemovedBody345_938 : StackLang.HolProg 64 :=
.seq RemovedBody345_926 RemovedBody345_937

def RemovedBody345_939 : StackLang.HolProg 64 :=
.seq RemovedBody345_925 RemovedBody345_938

def RemovedBody345_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_943 : StackLang.HolProg 64 :=
.seq RemovedBody345_941 RemovedBody345_942

def RemovedBody345_944 : StackLang.HolProg 64 :=
.seq RemovedBody345_940 RemovedBody345_943

def RemovedBody345_945 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_946 : StackLang.HolProg 64 :=
.seq RemovedBody345_944 RemovedBody345_945

def RemovedBody345_947 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_939, 0, 345, 18)) (Sum.inl 336) (some (RemovedBody345_946, 345, 19))

def RemovedBody345_948 : StackLang.HolProg 64 :=
.seq RemovedBody345_924 RemovedBody345_947

def RemovedBody345_949 : StackLang.HolProg 64 :=
.seq RemovedBody345_923 RemovedBody345_948

def RemovedBody345_950 : StackLang.HolProg 64 :=
.seq RemovedBody345_922 RemovedBody345_949

def RemovedBody345_951 : StackLang.HolProg 64 :=
.seq RemovedBody345_893 RemovedBody345_950

def RemovedBody345_952 : StackLang.HolProg 64 :=
.seq RemovedBody345_890 RemovedBody345_951

def RemovedBody345_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody345_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_967 : StackLang.HolProg 64 :=
.seq RemovedBody345_965 RemovedBody345_966

def RemovedBody345_968 : StackLang.HolProg 64 :=
.seq RemovedBody345_964 RemovedBody345_967

def RemovedBody345_969 : StackLang.HolProg 64 :=
.seq RemovedBody345_963 RemovedBody345_968

def RemovedBody345_970 : StackLang.HolProg 64 :=
.seq RemovedBody345_962 RemovedBody345_969

def RemovedBody345_971 : StackLang.HolProg 64 :=
.seq RemovedBody345_961 RemovedBody345_970

def RemovedBody345_972 : StackLang.HolProg 64 :=
.seq RemovedBody345_960 RemovedBody345_971

def RemovedBody345_973 : StackLang.HolProg 64 :=
.seq RemovedBody345_959 RemovedBody345_972

def RemovedBody345_974 : StackLang.HolProg 64 :=
.seq RemovedBody345_958 RemovedBody345_973

def RemovedBody345_975 : StackLang.HolProg 64 :=
.seq RemovedBody345_957 RemovedBody345_974

def RemovedBody345_976 : StackLang.HolProg 64 :=
.seq RemovedBody345_956 RemovedBody345_975

def RemovedBody345_977 : StackLang.HolProg 64 :=
.seq RemovedBody345_955 RemovedBody345_976

def RemovedBody345_978 : StackLang.HolProg 64 :=
.seq RemovedBody345_954 RemovedBody345_977

def RemovedBody345_979 : StackLang.HolProg 64 :=
.seq RemovedBody345_953 RemovedBody345_978

def RemovedBody345_980 : StackLang.HolProg 64 :=
.seq RemovedBody345_952 RemovedBody345_979

def RemovedBody345_981 : StackLang.HolProg 64 :=
.seq RemovedBody345_889 RemovedBody345_980

def RemovedBody345_982 : StackLang.HolProg 64 :=
.seq RemovedBody345_882 RemovedBody345_981

def RemovedBody345_983 : StackLang.HolProg 64 :=
.seq RemovedBody345_881 RemovedBody345_982

def RemovedBody345_984 : StackLang.HolProg 64 :=
.seq RemovedBody345_880 RemovedBody345_983

def RemovedBody345_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody345_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody345_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_992 : StackLang.HolProg 64 :=
.seq RemovedBody345_990 RemovedBody345_991

def RemovedBody345_993 : StackLang.HolProg 64 :=
.seq RemovedBody345_989 RemovedBody345_992

def RemovedBody345_994 : StackLang.HolProg 64 :=
.seq RemovedBody345_988 RemovedBody345_993

def RemovedBody345_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1009#64)

def RemovedBody345_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_998 : StackLang.HolProg 64 :=
.seq RemovedBody345_996 RemovedBody345_997

def RemovedBody345_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1002 : StackLang.HolProg 64 :=
.seq RemovedBody345_1000 RemovedBody345_1001

def RemovedBody345_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1004 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1002 RemovedBody345_1003

def RemovedBody345_1005 : StackLang.HolProg 64 :=
.seq RemovedBody345_999 RemovedBody345_1004

def RemovedBody345_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 21

def RemovedBody345_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1015 : StackLang.HolProg 64 :=
.seq RemovedBody345_1013 RemovedBody345_1014

def RemovedBody345_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1017 : StackLang.HolProg 64 :=
.seq RemovedBody345_1015 RemovedBody345_1016

def RemovedBody345_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1019 : StackLang.HolProg 64 :=
.seq RemovedBody345_1017 RemovedBody345_1018

def RemovedBody345_1020 : StackLang.HolProg 64 :=
.seq RemovedBody345_1012 RemovedBody345_1019

def RemovedBody345_1021 : StackLang.HolProg 64 :=
.seq RemovedBody345_1011 RemovedBody345_1020

def RemovedBody345_1022 : StackLang.HolProg 64 :=
.seq RemovedBody345_1010 RemovedBody345_1021

def RemovedBody345_1023 : StackLang.HolProg 64 :=
.seq RemovedBody345_1009 RemovedBody345_1022

def RemovedBody345_1024 : StackLang.HolProg 64 :=
.seq RemovedBody345_1008 RemovedBody345_1023

def RemovedBody345_1025 : StackLang.HolProg 64 :=
.seq RemovedBody345_1007 RemovedBody345_1024

def RemovedBody345_1026 : StackLang.HolProg 64 :=
.seq RemovedBody345_1006 RemovedBody345_1025

def RemovedBody345_1027 : StackLang.HolProg 64 :=
.seq RemovedBody345_1005 RemovedBody345_1026

def RemovedBody345_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1038 : StackLang.HolProg 64 :=
.seq RemovedBody345_1036 RemovedBody345_1037

def RemovedBody345_1039 : StackLang.HolProg 64 :=
.seq RemovedBody345_1035 RemovedBody345_1038

def RemovedBody345_1040 : StackLang.HolProg 64 :=
.seq RemovedBody345_1034 RemovedBody345_1039

def RemovedBody345_1041 : StackLang.HolProg 64 :=
.seq RemovedBody345_1033 RemovedBody345_1040

def RemovedBody345_1042 : StackLang.HolProg 64 :=
.seq RemovedBody345_1032 RemovedBody345_1041

def RemovedBody345_1043 : StackLang.HolProg 64 :=
.seq RemovedBody345_1031 RemovedBody345_1042

def RemovedBody345_1044 : StackLang.HolProg 64 :=
.seq RemovedBody345_1030 RemovedBody345_1043

def RemovedBody345_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1048 : StackLang.HolProg 64 :=
.seq RemovedBody345_1046 RemovedBody345_1047

def RemovedBody345_1049 : StackLang.HolProg 64 :=
.seq RemovedBody345_1045 RemovedBody345_1048

def RemovedBody345_1050 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1051 : StackLang.HolProg 64 :=
.seq RemovedBody345_1049 RemovedBody345_1050

def RemovedBody345_1052 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1044, 0, 345, 20)) (Sum.inl 336) (some (RemovedBody345_1051, 345, 21))

def RemovedBody345_1053 : StackLang.HolProg 64 :=
.seq RemovedBody345_1029 RemovedBody345_1052

def RemovedBody345_1054 : StackLang.HolProg 64 :=
.seq RemovedBody345_1028 RemovedBody345_1053

def RemovedBody345_1055 : StackLang.HolProg 64 :=
.seq RemovedBody345_1027 RemovedBody345_1054

def RemovedBody345_1056 : StackLang.HolProg 64 :=
.seq RemovedBody345_998 RemovedBody345_1055

def RemovedBody345_1057 : StackLang.HolProg 64 :=
.seq RemovedBody345_995 RemovedBody345_1056

def RemovedBody345_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody345_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody345_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody345_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1075 : StackLang.HolProg 64 :=
.seq RemovedBody345_1073 RemovedBody345_1074

def RemovedBody345_1076 : StackLang.HolProg 64 :=
.seq RemovedBody345_1072 RemovedBody345_1075

def RemovedBody345_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1010#64)

def RemovedBody345_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1080 : StackLang.HolProg 64 :=
.seq RemovedBody345_1078 RemovedBody345_1079

def RemovedBody345_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1084 : StackLang.HolProg 64 :=
.seq RemovedBody345_1082 RemovedBody345_1083

def RemovedBody345_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1086 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1084 RemovedBody345_1085

def RemovedBody345_1087 : StackLang.HolProg 64 :=
.seq RemovedBody345_1081 RemovedBody345_1086

def RemovedBody345_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 23

def RemovedBody345_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1097 : StackLang.HolProg 64 :=
.seq RemovedBody345_1095 RemovedBody345_1096

def RemovedBody345_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1099 : StackLang.HolProg 64 :=
.seq RemovedBody345_1097 RemovedBody345_1098

def RemovedBody345_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1101 : StackLang.HolProg 64 :=
.seq RemovedBody345_1099 RemovedBody345_1100

def RemovedBody345_1102 : StackLang.HolProg 64 :=
.seq RemovedBody345_1094 RemovedBody345_1101

def RemovedBody345_1103 : StackLang.HolProg 64 :=
.seq RemovedBody345_1093 RemovedBody345_1102

def RemovedBody345_1104 : StackLang.HolProg 64 :=
.seq RemovedBody345_1092 RemovedBody345_1103

def RemovedBody345_1105 : StackLang.HolProg 64 :=
.seq RemovedBody345_1091 RemovedBody345_1104

def RemovedBody345_1106 : StackLang.HolProg 64 :=
.seq RemovedBody345_1090 RemovedBody345_1105

def RemovedBody345_1107 : StackLang.HolProg 64 :=
.seq RemovedBody345_1089 RemovedBody345_1106

def RemovedBody345_1108 : StackLang.HolProg 64 :=
.seq RemovedBody345_1088 RemovedBody345_1107

def RemovedBody345_1109 : StackLang.HolProg 64 :=
.seq RemovedBody345_1087 RemovedBody345_1108

def RemovedBody345_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1120 : StackLang.HolProg 64 :=
.seq RemovedBody345_1118 RemovedBody345_1119

def RemovedBody345_1121 : StackLang.HolProg 64 :=
.seq RemovedBody345_1117 RemovedBody345_1120

def RemovedBody345_1122 : StackLang.HolProg 64 :=
.seq RemovedBody345_1116 RemovedBody345_1121

def RemovedBody345_1123 : StackLang.HolProg 64 :=
.seq RemovedBody345_1115 RemovedBody345_1122

def RemovedBody345_1124 : StackLang.HolProg 64 :=
.seq RemovedBody345_1114 RemovedBody345_1123

def RemovedBody345_1125 : StackLang.HolProg 64 :=
.seq RemovedBody345_1113 RemovedBody345_1124

def RemovedBody345_1126 : StackLang.HolProg 64 :=
.seq RemovedBody345_1112 RemovedBody345_1125

def RemovedBody345_1127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1130 : StackLang.HolProg 64 :=
.seq RemovedBody345_1128 RemovedBody345_1129

def RemovedBody345_1131 : StackLang.HolProg 64 :=
.seq RemovedBody345_1127 RemovedBody345_1130

def RemovedBody345_1132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1133 : StackLang.HolProg 64 :=
.seq RemovedBody345_1131 RemovedBody345_1132

def RemovedBody345_1134 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1126, 0, 345, 22)) (Sum.inl 336) (some (RemovedBody345_1133, 345, 23))

def RemovedBody345_1135 : StackLang.HolProg 64 :=
.seq RemovedBody345_1111 RemovedBody345_1134

def RemovedBody345_1136 : StackLang.HolProg 64 :=
.seq RemovedBody345_1110 RemovedBody345_1135

def RemovedBody345_1137 : StackLang.HolProg 64 :=
.seq RemovedBody345_1109 RemovedBody345_1136

def RemovedBody345_1138 : StackLang.HolProg 64 :=
.seq RemovedBody345_1080 RemovedBody345_1137

def RemovedBody345_1139 : StackLang.HolProg 64 :=
.seq RemovedBody345_1077 RemovedBody345_1138

def RemovedBody345_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody345_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody345_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1154 : StackLang.HolProg 64 :=
.seq RemovedBody345_1152 RemovedBody345_1153

def RemovedBody345_1155 : StackLang.HolProg 64 :=
.seq RemovedBody345_1151 RemovedBody345_1154

def RemovedBody345_1156 : StackLang.HolProg 64 :=
.seq RemovedBody345_1150 RemovedBody345_1155

def RemovedBody345_1157 : StackLang.HolProg 64 :=
.seq RemovedBody345_1149 RemovedBody345_1156

def RemovedBody345_1158 : StackLang.HolProg 64 :=
.seq RemovedBody345_1148 RemovedBody345_1157

def RemovedBody345_1159 : StackLang.HolProg 64 :=
.seq RemovedBody345_1147 RemovedBody345_1158

def RemovedBody345_1160 : StackLang.HolProg 64 :=
.seq RemovedBody345_1146 RemovedBody345_1159

def RemovedBody345_1161 : StackLang.HolProg 64 :=
.seq RemovedBody345_1145 RemovedBody345_1160

def RemovedBody345_1162 : StackLang.HolProg 64 :=
.seq RemovedBody345_1144 RemovedBody345_1161

def RemovedBody345_1163 : StackLang.HolProg 64 :=
.seq RemovedBody345_1143 RemovedBody345_1162

def RemovedBody345_1164 : StackLang.HolProg 64 :=
.seq RemovedBody345_1142 RemovedBody345_1163

def RemovedBody345_1165 : StackLang.HolProg 64 :=
.seq RemovedBody345_1141 RemovedBody345_1164

def RemovedBody345_1166 : StackLang.HolProg 64 :=
.seq RemovedBody345_1140 RemovedBody345_1165

def RemovedBody345_1167 : StackLang.HolProg 64 :=
.seq RemovedBody345_1139 RemovedBody345_1166

def RemovedBody345_1168 : StackLang.HolProg 64 :=
.seq RemovedBody345_1076 RemovedBody345_1167

def RemovedBody345_1169 : StackLang.HolProg 64 :=
.seq RemovedBody345_1071 RemovedBody345_1168

def RemovedBody345_1170 : StackLang.HolProg 64 :=
.seq RemovedBody345_1070 RemovedBody345_1169

def RemovedBody345_1171 : StackLang.HolProg 64 :=
.seq RemovedBody345_1069 RemovedBody345_1170

def RemovedBody345_1172 : StackLang.HolProg 64 :=
.seq RemovedBody345_1068 RemovedBody345_1171

def RemovedBody345_1173 : StackLang.HolProg 64 :=
.seq RemovedBody345_1067 RemovedBody345_1172

def RemovedBody345_1174 : StackLang.HolProg 64 :=
.seq RemovedBody345_1066 RemovedBody345_1173

def RemovedBody345_1175 : StackLang.HolProg 64 :=
.seq RemovedBody345_1065 RemovedBody345_1174

def RemovedBody345_1176 : StackLang.HolProg 64 :=
.seq RemovedBody345_1064 RemovedBody345_1175

def RemovedBody345_1177 : StackLang.HolProg 64 :=
.seq RemovedBody345_1063 RemovedBody345_1176

def RemovedBody345_1178 : StackLang.HolProg 64 :=
.seq RemovedBody345_1062 RemovedBody345_1177

def RemovedBody345_1179 : StackLang.HolProg 64 :=
.seq RemovedBody345_1061 RemovedBody345_1178

def RemovedBody345_1180 : StackLang.HolProg 64 :=
.seq RemovedBody345_1060 RemovedBody345_1179

def RemovedBody345_1181 : StackLang.HolProg 64 :=
.seq RemovedBody345_1059 RemovedBody345_1180

def RemovedBody345_1182 : StackLang.HolProg 64 :=
.seq RemovedBody345_1058 RemovedBody345_1181

def RemovedBody345_1183 : StackLang.HolProg 64 :=
.seq RemovedBody345_1057 RemovedBody345_1182

def RemovedBody345_1184 : StackLang.HolProg 64 :=
.seq RemovedBody345_994 RemovedBody345_1183

def RemovedBody345_1185 : StackLang.HolProg 64 :=
.seq RemovedBody345_987 RemovedBody345_1184

def RemovedBody345_1186 : StackLang.HolProg 64 :=
.seq RemovedBody345_986 RemovedBody345_1185

def RemovedBody345_1187 : StackLang.HolProg 64 :=
.seq RemovedBody345_985 RemovedBody345_1186

def RemovedBody345_1188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody345_984 RemovedBody345_1187

def RemovedBody345_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody345_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 14#64)

def RemovedBody345_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody345_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1195 : StackLang.HolProg 64 :=
.seq RemovedBody345_1193 RemovedBody345_1194

def RemovedBody345_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1011#64)

def RemovedBody345_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1199 : StackLang.HolProg 64 :=
.seq RemovedBody345_1197 RemovedBody345_1198

def RemovedBody345_1200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1203 : StackLang.HolProg 64 :=
.seq RemovedBody345_1201 RemovedBody345_1202

def RemovedBody345_1204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1205 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1203 RemovedBody345_1204

def RemovedBody345_1206 : StackLang.HolProg 64 :=
.seq RemovedBody345_1200 RemovedBody345_1205

def RemovedBody345_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 25

def RemovedBody345_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1216 : StackLang.HolProg 64 :=
.seq RemovedBody345_1214 RemovedBody345_1215

def RemovedBody345_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1218 : StackLang.HolProg 64 :=
.seq RemovedBody345_1216 RemovedBody345_1217

def RemovedBody345_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1220 : StackLang.HolProg 64 :=
.seq RemovedBody345_1218 RemovedBody345_1219

def RemovedBody345_1221 : StackLang.HolProg 64 :=
.seq RemovedBody345_1213 RemovedBody345_1220

def RemovedBody345_1222 : StackLang.HolProg 64 :=
.seq RemovedBody345_1212 RemovedBody345_1221

def RemovedBody345_1223 : StackLang.HolProg 64 :=
.seq RemovedBody345_1211 RemovedBody345_1222

def RemovedBody345_1224 : StackLang.HolProg 64 :=
.seq RemovedBody345_1210 RemovedBody345_1223

def RemovedBody345_1225 : StackLang.HolProg 64 :=
.seq RemovedBody345_1209 RemovedBody345_1224

def RemovedBody345_1226 : StackLang.HolProg 64 :=
.seq RemovedBody345_1208 RemovedBody345_1225

def RemovedBody345_1227 : StackLang.HolProg 64 :=
.seq RemovedBody345_1207 RemovedBody345_1226

def RemovedBody345_1228 : StackLang.HolProg 64 :=
.seq RemovedBody345_1206 RemovedBody345_1227

def RemovedBody345_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1240 : StackLang.HolProg 64 :=
.seq RemovedBody345_1238 RemovedBody345_1239

def RemovedBody345_1241 : StackLang.HolProg 64 :=
.seq RemovedBody345_1237 RemovedBody345_1240

def RemovedBody345_1242 : StackLang.HolProg 64 :=
.seq RemovedBody345_1236 RemovedBody345_1241

def RemovedBody345_1243 : StackLang.HolProg 64 :=
.seq RemovedBody345_1235 RemovedBody345_1242

def RemovedBody345_1244 : StackLang.HolProg 64 :=
.seq RemovedBody345_1234 RemovedBody345_1243

def RemovedBody345_1245 : StackLang.HolProg 64 :=
.seq RemovedBody345_1233 RemovedBody345_1244

def RemovedBody345_1246 : StackLang.HolProg 64 :=
.seq RemovedBody345_1232 RemovedBody345_1245

def RemovedBody345_1247 : StackLang.HolProg 64 :=
.seq RemovedBody345_1231 RemovedBody345_1246

def RemovedBody345_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1252 : StackLang.HolProg 64 :=
.seq RemovedBody345_1250 RemovedBody345_1251

def RemovedBody345_1253 : StackLang.HolProg 64 :=
.seq RemovedBody345_1249 RemovedBody345_1252

def RemovedBody345_1254 : StackLang.HolProg 64 :=
.seq RemovedBody345_1248 RemovedBody345_1253

def RemovedBody345_1255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1256 : StackLang.HolProg 64 :=
.seq RemovedBody345_1254 RemovedBody345_1255

def RemovedBody345_1257 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1247, 0, 345, 24)) (Sum.inl 337) (some (RemovedBody345_1256, 345, 25))

def RemovedBody345_1258 : StackLang.HolProg 64 :=
.seq RemovedBody345_1230 RemovedBody345_1257

def RemovedBody345_1259 : StackLang.HolProg 64 :=
.seq RemovedBody345_1229 RemovedBody345_1258

def RemovedBody345_1260 : StackLang.HolProg 64 :=
.seq RemovedBody345_1228 RemovedBody345_1259

def RemovedBody345_1261 : StackLang.HolProg 64 :=
.seq RemovedBody345_1199 RemovedBody345_1260

def RemovedBody345_1262 : StackLang.HolProg 64 :=
.seq RemovedBody345_1196 RemovedBody345_1261

def RemovedBody345_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def RemovedBody345_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody345_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody345_1275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1279 : StackLang.HolProg 64 :=
.seq RemovedBody345_1277 RemovedBody345_1278

def RemovedBody345_1280 : StackLang.HolProg 64 :=
.seq RemovedBody345_1276 RemovedBody345_1279

def RemovedBody345_1281 : StackLang.HolProg 64 :=
.seq RemovedBody345_1275 RemovedBody345_1280

def RemovedBody345_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1012#64)

def RemovedBody345_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1285 : StackLang.HolProg 64 :=
.seq RemovedBody345_1283 RemovedBody345_1284

def RemovedBody345_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1289 : StackLang.HolProg 64 :=
.seq RemovedBody345_1287 RemovedBody345_1288

def RemovedBody345_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1291 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1289 RemovedBody345_1290

def RemovedBody345_1292 : StackLang.HolProg 64 :=
.seq RemovedBody345_1286 RemovedBody345_1291

def RemovedBody345_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 27

def RemovedBody345_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1302 : StackLang.HolProg 64 :=
.seq RemovedBody345_1300 RemovedBody345_1301

def RemovedBody345_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1304 : StackLang.HolProg 64 :=
.seq RemovedBody345_1302 RemovedBody345_1303

def RemovedBody345_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1306 : StackLang.HolProg 64 :=
.seq RemovedBody345_1304 RemovedBody345_1305

def RemovedBody345_1307 : StackLang.HolProg 64 :=
.seq RemovedBody345_1299 RemovedBody345_1306

def RemovedBody345_1308 : StackLang.HolProg 64 :=
.seq RemovedBody345_1298 RemovedBody345_1307

def RemovedBody345_1309 : StackLang.HolProg 64 :=
.seq RemovedBody345_1297 RemovedBody345_1308

def RemovedBody345_1310 : StackLang.HolProg 64 :=
.seq RemovedBody345_1296 RemovedBody345_1309

def RemovedBody345_1311 : StackLang.HolProg 64 :=
.seq RemovedBody345_1295 RemovedBody345_1310

def RemovedBody345_1312 : StackLang.HolProg 64 :=
.seq RemovedBody345_1294 RemovedBody345_1311

def RemovedBody345_1313 : StackLang.HolProg 64 :=
.seq RemovedBody345_1293 RemovedBody345_1312

def RemovedBody345_1314 : StackLang.HolProg 64 :=
.seq RemovedBody345_1292 RemovedBody345_1313

def RemovedBody345_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1325 : StackLang.HolProg 64 :=
.seq RemovedBody345_1323 RemovedBody345_1324

def RemovedBody345_1326 : StackLang.HolProg 64 :=
.seq RemovedBody345_1322 RemovedBody345_1325

def RemovedBody345_1327 : StackLang.HolProg 64 :=
.seq RemovedBody345_1321 RemovedBody345_1326

def RemovedBody345_1328 : StackLang.HolProg 64 :=
.seq RemovedBody345_1320 RemovedBody345_1327

def RemovedBody345_1329 : StackLang.HolProg 64 :=
.seq RemovedBody345_1319 RemovedBody345_1328

def RemovedBody345_1330 : StackLang.HolProg 64 :=
.seq RemovedBody345_1318 RemovedBody345_1329

def RemovedBody345_1331 : StackLang.HolProg 64 :=
.seq RemovedBody345_1317 RemovedBody345_1330

def RemovedBody345_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1335 : StackLang.HolProg 64 :=
.seq RemovedBody345_1333 RemovedBody345_1334

def RemovedBody345_1336 : StackLang.HolProg 64 :=
.seq RemovedBody345_1332 RemovedBody345_1335

def RemovedBody345_1337 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1338 : StackLang.HolProg 64 :=
.seq RemovedBody345_1336 RemovedBody345_1337

def RemovedBody345_1339 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1331, 0, 345, 26)) (Sum.inl 339) (some (RemovedBody345_1338, 345, 27))

def RemovedBody345_1340 : StackLang.HolProg 64 :=
.seq RemovedBody345_1316 RemovedBody345_1339

def RemovedBody345_1341 : StackLang.HolProg 64 :=
.seq RemovedBody345_1315 RemovedBody345_1340

def RemovedBody345_1342 : StackLang.HolProg 64 :=
.seq RemovedBody345_1314 RemovedBody345_1341

def RemovedBody345_1343 : StackLang.HolProg 64 :=
.seq RemovedBody345_1285 RemovedBody345_1342

def RemovedBody345_1344 : StackLang.HolProg 64 :=
.seq RemovedBody345_1282 RemovedBody345_1343

def RemovedBody345_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1347 : StackLang.HolProg 64 :=
.seq RemovedBody345_1345 RemovedBody345_1346

def RemovedBody345_1348 : StackLang.HolProg 64 :=
.seq RemovedBody345_1344 RemovedBody345_1347

def RemovedBody345_1349 : StackLang.HolProg 64 :=
.seq RemovedBody345_1281 RemovedBody345_1348

def RemovedBody345_1350 : StackLang.HolProg 64 :=
.seq RemovedBody345_1274 RemovedBody345_1349

def RemovedBody345_1351 : StackLang.HolProg 64 :=
.seq RemovedBody345_1273 RemovedBody345_1350

def RemovedBody345_1352 : StackLang.HolProg 64 :=
.seq RemovedBody345_1272 RemovedBody345_1351

def RemovedBody345_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1359 : StackLang.HolProg 64 :=
.seq RemovedBody345_1357 RemovedBody345_1358

def RemovedBody345_1360 : StackLang.HolProg 64 :=
.seq RemovedBody345_1356 RemovedBody345_1359

def RemovedBody345_1361 : StackLang.HolProg 64 :=
.seq RemovedBody345_1355 RemovedBody345_1360

def RemovedBody345_1362 : StackLang.HolProg 64 :=
.seq RemovedBody345_1354 RemovedBody345_1361

def RemovedBody345_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1013#64)

def RemovedBody345_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1366 : StackLang.HolProg 64 :=
.seq RemovedBody345_1364 RemovedBody345_1365

def RemovedBody345_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1370 : StackLang.HolProg 64 :=
.seq RemovedBody345_1368 RemovedBody345_1369

def RemovedBody345_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1370 RemovedBody345_1371

def RemovedBody345_1373 : StackLang.HolProg 64 :=
.seq RemovedBody345_1367 RemovedBody345_1372

def RemovedBody345_1374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 29

def RemovedBody345_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1383 : StackLang.HolProg 64 :=
.seq RemovedBody345_1381 RemovedBody345_1382

def RemovedBody345_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1385 : StackLang.HolProg 64 :=
.seq RemovedBody345_1383 RemovedBody345_1384

def RemovedBody345_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1387 : StackLang.HolProg 64 :=
.seq RemovedBody345_1385 RemovedBody345_1386

def RemovedBody345_1388 : StackLang.HolProg 64 :=
.seq RemovedBody345_1380 RemovedBody345_1387

def RemovedBody345_1389 : StackLang.HolProg 64 :=
.seq RemovedBody345_1379 RemovedBody345_1388

def RemovedBody345_1390 : StackLang.HolProg 64 :=
.seq RemovedBody345_1378 RemovedBody345_1389

def RemovedBody345_1391 : StackLang.HolProg 64 :=
.seq RemovedBody345_1377 RemovedBody345_1390

def RemovedBody345_1392 : StackLang.HolProg 64 :=
.seq RemovedBody345_1376 RemovedBody345_1391

def RemovedBody345_1393 : StackLang.HolProg 64 :=
.seq RemovedBody345_1375 RemovedBody345_1392

def RemovedBody345_1394 : StackLang.HolProg 64 :=
.seq RemovedBody345_1374 RemovedBody345_1393

def RemovedBody345_1395 : StackLang.HolProg 64 :=
.seq RemovedBody345_1373 RemovedBody345_1394

def RemovedBody345_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1406 : StackLang.HolProg 64 :=
.seq RemovedBody345_1404 RemovedBody345_1405

def RemovedBody345_1407 : StackLang.HolProg 64 :=
.seq RemovedBody345_1403 RemovedBody345_1406

def RemovedBody345_1408 : StackLang.HolProg 64 :=
.seq RemovedBody345_1402 RemovedBody345_1407

def RemovedBody345_1409 : StackLang.HolProg 64 :=
.seq RemovedBody345_1401 RemovedBody345_1408

def RemovedBody345_1410 : StackLang.HolProg 64 :=
.seq RemovedBody345_1400 RemovedBody345_1409

def RemovedBody345_1411 : StackLang.HolProg 64 :=
.seq RemovedBody345_1399 RemovedBody345_1410

def RemovedBody345_1412 : StackLang.HolProg 64 :=
.seq RemovedBody345_1398 RemovedBody345_1411

def RemovedBody345_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1416 : StackLang.HolProg 64 :=
.seq RemovedBody345_1414 RemovedBody345_1415

def RemovedBody345_1417 : StackLang.HolProg 64 :=
.seq RemovedBody345_1413 RemovedBody345_1416

def RemovedBody345_1418 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1419 : StackLang.HolProg 64 :=
.seq RemovedBody345_1417 RemovedBody345_1418

def RemovedBody345_1420 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1412, 0, 345, 28)) (Sum.inl 340) (some (RemovedBody345_1419, 345, 29))

def RemovedBody345_1421 : StackLang.HolProg 64 :=
.seq RemovedBody345_1397 RemovedBody345_1420

def RemovedBody345_1422 : StackLang.HolProg 64 :=
.seq RemovedBody345_1396 RemovedBody345_1421

def RemovedBody345_1423 : StackLang.HolProg 64 :=
.seq RemovedBody345_1395 RemovedBody345_1422

def RemovedBody345_1424 : StackLang.HolProg 64 :=
.seq RemovedBody345_1366 RemovedBody345_1423

def RemovedBody345_1425 : StackLang.HolProg 64 :=
.seq RemovedBody345_1363 RemovedBody345_1424

def RemovedBody345_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1428 : StackLang.HolProg 64 :=
.seq RemovedBody345_1426 RemovedBody345_1427

def RemovedBody345_1429 : StackLang.HolProg 64 :=
.seq RemovedBody345_1425 RemovedBody345_1428

def RemovedBody345_1430 : StackLang.HolProg 64 :=
.seq RemovedBody345_1362 RemovedBody345_1429

def RemovedBody345_1431 : StackLang.HolProg 64 :=
.seq RemovedBody345_1353 RemovedBody345_1430

def RemovedBody345_1432 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_1352 RemovedBody345_1431

def RemovedBody345_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def RemovedBody345_1436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_1440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_1441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody345_1442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1445 : StackLang.HolProg 64 :=
.seq RemovedBody345_1443 RemovedBody345_1444

def RemovedBody345_1446 : StackLang.HolProg 64 :=
.seq RemovedBody345_1442 RemovedBody345_1445

def RemovedBody345_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1014#64)

def RemovedBody345_1449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1450 : StackLang.HolProg 64 :=
.seq RemovedBody345_1448 RemovedBody345_1449

def RemovedBody345_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1454 : StackLang.HolProg 64 :=
.seq RemovedBody345_1452 RemovedBody345_1453

def RemovedBody345_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1456 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1454 RemovedBody345_1455

def RemovedBody345_1457 : StackLang.HolProg 64 :=
.seq RemovedBody345_1451 RemovedBody345_1456

def RemovedBody345_1458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 31

def RemovedBody345_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1467 : StackLang.HolProg 64 :=
.seq RemovedBody345_1465 RemovedBody345_1466

def RemovedBody345_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1469 : StackLang.HolProg 64 :=
.seq RemovedBody345_1467 RemovedBody345_1468

def RemovedBody345_1470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1471 : StackLang.HolProg 64 :=
.seq RemovedBody345_1469 RemovedBody345_1470

def RemovedBody345_1472 : StackLang.HolProg 64 :=
.seq RemovedBody345_1464 RemovedBody345_1471

def RemovedBody345_1473 : StackLang.HolProg 64 :=
.seq RemovedBody345_1463 RemovedBody345_1472

def RemovedBody345_1474 : StackLang.HolProg 64 :=
.seq RemovedBody345_1462 RemovedBody345_1473

def RemovedBody345_1475 : StackLang.HolProg 64 :=
.seq RemovedBody345_1461 RemovedBody345_1474

def RemovedBody345_1476 : StackLang.HolProg 64 :=
.seq RemovedBody345_1460 RemovedBody345_1475

def RemovedBody345_1477 : StackLang.HolProg 64 :=
.seq RemovedBody345_1459 RemovedBody345_1476

def RemovedBody345_1478 : StackLang.HolProg 64 :=
.seq RemovedBody345_1458 RemovedBody345_1477

def RemovedBody345_1479 : StackLang.HolProg 64 :=
.seq RemovedBody345_1457 RemovedBody345_1478

def RemovedBody345_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1490 : StackLang.HolProg 64 :=
.seq RemovedBody345_1488 RemovedBody345_1489

def RemovedBody345_1491 : StackLang.HolProg 64 :=
.seq RemovedBody345_1487 RemovedBody345_1490

def RemovedBody345_1492 : StackLang.HolProg 64 :=
.seq RemovedBody345_1486 RemovedBody345_1491

def RemovedBody345_1493 : StackLang.HolProg 64 :=
.seq RemovedBody345_1485 RemovedBody345_1492

def RemovedBody345_1494 : StackLang.HolProg 64 :=
.seq RemovedBody345_1484 RemovedBody345_1493

def RemovedBody345_1495 : StackLang.HolProg 64 :=
.seq RemovedBody345_1483 RemovedBody345_1494

def RemovedBody345_1496 : StackLang.HolProg 64 :=
.seq RemovedBody345_1482 RemovedBody345_1495

def RemovedBody345_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1500 : StackLang.HolProg 64 :=
.seq RemovedBody345_1498 RemovedBody345_1499

def RemovedBody345_1501 : StackLang.HolProg 64 :=
.seq RemovedBody345_1497 RemovedBody345_1500

def RemovedBody345_1502 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1503 : StackLang.HolProg 64 :=
.seq RemovedBody345_1501 RemovedBody345_1502

def RemovedBody345_1504 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1496, 0, 345, 30)) (Sum.inl 336) (some (RemovedBody345_1503, 345, 31))

def RemovedBody345_1505 : StackLang.HolProg 64 :=
.seq RemovedBody345_1481 RemovedBody345_1504

def RemovedBody345_1506 : StackLang.HolProg 64 :=
.seq RemovedBody345_1480 RemovedBody345_1505

def RemovedBody345_1507 : StackLang.HolProg 64 :=
.seq RemovedBody345_1479 RemovedBody345_1506

def RemovedBody345_1508 : StackLang.HolProg 64 :=
.seq RemovedBody345_1450 RemovedBody345_1507

def RemovedBody345_1509 : StackLang.HolProg 64 :=
.seq RemovedBody345_1447 RemovedBody345_1508

def RemovedBody345_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody345_1513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody345_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1527 : StackLang.HolProg 64 :=
.seq RemovedBody345_1525 RemovedBody345_1526

def RemovedBody345_1528 : StackLang.HolProg 64 :=
.seq RemovedBody345_1524 RemovedBody345_1527

def RemovedBody345_1529 : StackLang.HolProg 64 :=
.seq RemovedBody345_1523 RemovedBody345_1528

def RemovedBody345_1530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1015#64)

def RemovedBody345_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1533 : StackLang.HolProg 64 :=
.seq RemovedBody345_1531 RemovedBody345_1532

def RemovedBody345_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1537 : StackLang.HolProg 64 :=
.seq RemovedBody345_1535 RemovedBody345_1536

def RemovedBody345_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1539 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1537 RemovedBody345_1538

def RemovedBody345_1540 : StackLang.HolProg 64 :=
.seq RemovedBody345_1534 RemovedBody345_1539

def RemovedBody345_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 33

def RemovedBody345_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1550 : StackLang.HolProg 64 :=
.seq RemovedBody345_1548 RemovedBody345_1549

def RemovedBody345_1551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1552 : StackLang.HolProg 64 :=
.seq RemovedBody345_1550 RemovedBody345_1551

def RemovedBody345_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1554 : StackLang.HolProg 64 :=
.seq RemovedBody345_1552 RemovedBody345_1553

def RemovedBody345_1555 : StackLang.HolProg 64 :=
.seq RemovedBody345_1547 RemovedBody345_1554

def RemovedBody345_1556 : StackLang.HolProg 64 :=
.seq RemovedBody345_1546 RemovedBody345_1555

def RemovedBody345_1557 : StackLang.HolProg 64 :=
.seq RemovedBody345_1545 RemovedBody345_1556

def RemovedBody345_1558 : StackLang.HolProg 64 :=
.seq RemovedBody345_1544 RemovedBody345_1557

def RemovedBody345_1559 : StackLang.HolProg 64 :=
.seq RemovedBody345_1543 RemovedBody345_1558

def RemovedBody345_1560 : StackLang.HolProg 64 :=
.seq RemovedBody345_1542 RemovedBody345_1559

def RemovedBody345_1561 : StackLang.HolProg 64 :=
.seq RemovedBody345_1541 RemovedBody345_1560

def RemovedBody345_1562 : StackLang.HolProg 64 :=
.seq RemovedBody345_1540 RemovedBody345_1561

def RemovedBody345_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1574 : StackLang.HolProg 64 :=
.seq RemovedBody345_1572 RemovedBody345_1573

def RemovedBody345_1575 : StackLang.HolProg 64 :=
.seq RemovedBody345_1571 RemovedBody345_1574

def RemovedBody345_1576 : StackLang.HolProg 64 :=
.seq RemovedBody345_1570 RemovedBody345_1575

def RemovedBody345_1577 : StackLang.HolProg 64 :=
.seq RemovedBody345_1569 RemovedBody345_1576

def RemovedBody345_1578 : StackLang.HolProg 64 :=
.seq RemovedBody345_1568 RemovedBody345_1577

def RemovedBody345_1579 : StackLang.HolProg 64 :=
.seq RemovedBody345_1567 RemovedBody345_1578

def RemovedBody345_1580 : StackLang.HolProg 64 :=
.seq RemovedBody345_1566 RemovedBody345_1579

def RemovedBody345_1581 : StackLang.HolProg 64 :=
.seq RemovedBody345_1565 RemovedBody345_1580

def RemovedBody345_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1586 : StackLang.HolProg 64 :=
.seq RemovedBody345_1584 RemovedBody345_1585

def RemovedBody345_1587 : StackLang.HolProg 64 :=
.seq RemovedBody345_1583 RemovedBody345_1586

def RemovedBody345_1588 : StackLang.HolProg 64 :=
.seq RemovedBody345_1582 RemovedBody345_1587

def RemovedBody345_1589 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1590 : StackLang.HolProg 64 :=
.seq RemovedBody345_1588 RemovedBody345_1589

def RemovedBody345_1591 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1581, 0, 345, 32)) (Sum.inl 338) (some (RemovedBody345_1590, 345, 33))

def RemovedBody345_1592 : StackLang.HolProg 64 :=
.seq RemovedBody345_1564 RemovedBody345_1591

def RemovedBody345_1593 : StackLang.HolProg 64 :=
.seq RemovedBody345_1563 RemovedBody345_1592

def RemovedBody345_1594 : StackLang.HolProg 64 :=
.seq RemovedBody345_1562 RemovedBody345_1593

def RemovedBody345_1595 : StackLang.HolProg 64 :=
.seq RemovedBody345_1533 RemovedBody345_1594

def RemovedBody345_1596 : StackLang.HolProg 64 :=
.seq RemovedBody345_1530 RemovedBody345_1595

def RemovedBody345_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody345_1600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def RemovedBody345_1604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody345_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1616 : StackLang.HolProg 64 :=
.seq RemovedBody345_1614 RemovedBody345_1615

def RemovedBody345_1617 : StackLang.HolProg 64 :=
.seq RemovedBody345_1613 RemovedBody345_1616

def RemovedBody345_1618 : StackLang.HolProg 64 :=
.seq RemovedBody345_1612 RemovedBody345_1617

def RemovedBody345_1619 : StackLang.HolProg 64 :=
.seq RemovedBody345_1611 RemovedBody345_1618

def RemovedBody345_1620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1016#64)

def RemovedBody345_1622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1623 : StackLang.HolProg 64 :=
.seq RemovedBody345_1621 RemovedBody345_1622

def RemovedBody345_1624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1627 : StackLang.HolProg 64 :=
.seq RemovedBody345_1625 RemovedBody345_1626

def RemovedBody345_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1629 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1627 RemovedBody345_1628

def RemovedBody345_1630 : StackLang.HolProg 64 :=
.seq RemovedBody345_1624 RemovedBody345_1629

def RemovedBody345_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 35

def RemovedBody345_1634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1640 : StackLang.HolProg 64 :=
.seq RemovedBody345_1638 RemovedBody345_1639

def RemovedBody345_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1642 : StackLang.HolProg 64 :=
.seq RemovedBody345_1640 RemovedBody345_1641

def RemovedBody345_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1644 : StackLang.HolProg 64 :=
.seq RemovedBody345_1642 RemovedBody345_1643

def RemovedBody345_1645 : StackLang.HolProg 64 :=
.seq RemovedBody345_1637 RemovedBody345_1644

def RemovedBody345_1646 : StackLang.HolProg 64 :=
.seq RemovedBody345_1636 RemovedBody345_1645

def RemovedBody345_1647 : StackLang.HolProg 64 :=
.seq RemovedBody345_1635 RemovedBody345_1646

def RemovedBody345_1648 : StackLang.HolProg 64 :=
.seq RemovedBody345_1634 RemovedBody345_1647

def RemovedBody345_1649 : StackLang.HolProg 64 :=
.seq RemovedBody345_1633 RemovedBody345_1648

def RemovedBody345_1650 : StackLang.HolProg 64 :=
.seq RemovedBody345_1632 RemovedBody345_1649

def RemovedBody345_1651 : StackLang.HolProg 64 :=
.seq RemovedBody345_1631 RemovedBody345_1650

def RemovedBody345_1652 : StackLang.HolProg 64 :=
.seq RemovedBody345_1630 RemovedBody345_1651

def RemovedBody345_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1660 : StackLang.HolProg 64 :=
.seq RemovedBody345_1658 RemovedBody345_1659

def RemovedBody345_1661 : StackLang.HolProg 64 :=
.seq RemovedBody345_1657 RemovedBody345_1660

def RemovedBody345_1662 : StackLang.HolProg 64 :=
.seq RemovedBody345_1656 RemovedBody345_1661

def RemovedBody345_1663 : StackLang.HolProg 64 :=
.seq RemovedBody345_1655 RemovedBody345_1662

def RemovedBody345_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1665 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1666 : StackLang.HolProg 64 :=
.seq RemovedBody345_1664 RemovedBody345_1665

def RemovedBody345_1667 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1663, 0, 345, 34)) (Sum.inl 341) (some (RemovedBody345_1666, 345, 35))

def RemovedBody345_1668 : StackLang.HolProg 64 :=
.seq RemovedBody345_1654 RemovedBody345_1667

def RemovedBody345_1669 : StackLang.HolProg 64 :=
.seq RemovedBody345_1653 RemovedBody345_1668

def RemovedBody345_1670 : StackLang.HolProg 64 :=
.seq RemovedBody345_1652 RemovedBody345_1669

def RemovedBody345_1671 : StackLang.HolProg 64 :=
.seq RemovedBody345_1623 RemovedBody345_1670

def RemovedBody345_1672 : StackLang.HolProg 64 :=
.seq RemovedBody345_1620 RemovedBody345_1671

def RemovedBody345_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody345_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1017#64)

def RemovedBody345_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1678 : StackLang.HolProg 64 :=
.seq RemovedBody345_1676 RemovedBody345_1677

def RemovedBody345_1679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1682 : StackLang.HolProg 64 :=
.seq RemovedBody345_1680 RemovedBody345_1681

def RemovedBody345_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1684 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1682 RemovedBody345_1683

def RemovedBody345_1685 : StackLang.HolProg 64 :=
.seq RemovedBody345_1679 RemovedBody345_1684

def RemovedBody345_1686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 37

def RemovedBody345_1689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1695 : StackLang.HolProg 64 :=
.seq RemovedBody345_1693 RemovedBody345_1694

def RemovedBody345_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1697 : StackLang.HolProg 64 :=
.seq RemovedBody345_1695 RemovedBody345_1696

def RemovedBody345_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1699 : StackLang.HolProg 64 :=
.seq RemovedBody345_1697 RemovedBody345_1698

def RemovedBody345_1700 : StackLang.HolProg 64 :=
.seq RemovedBody345_1692 RemovedBody345_1699

def RemovedBody345_1701 : StackLang.HolProg 64 :=
.seq RemovedBody345_1691 RemovedBody345_1700

def RemovedBody345_1702 : StackLang.HolProg 64 :=
.seq RemovedBody345_1690 RemovedBody345_1701

def RemovedBody345_1703 : StackLang.HolProg 64 :=
.seq RemovedBody345_1689 RemovedBody345_1702

def RemovedBody345_1704 : StackLang.HolProg 64 :=
.seq RemovedBody345_1688 RemovedBody345_1703

def RemovedBody345_1705 : StackLang.HolProg 64 :=
.seq RemovedBody345_1687 RemovedBody345_1704

def RemovedBody345_1706 : StackLang.HolProg 64 :=
.seq RemovedBody345_1686 RemovedBody345_1705

def RemovedBody345_1707 : StackLang.HolProg 64 :=
.seq RemovedBody345_1685 RemovedBody345_1706

def RemovedBody345_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1719 : StackLang.HolProg 64 :=
.seq RemovedBody345_1717 RemovedBody345_1718

def RemovedBody345_1720 : StackLang.HolProg 64 :=
.seq RemovedBody345_1716 RemovedBody345_1719

def RemovedBody345_1721 : StackLang.HolProg 64 :=
.seq RemovedBody345_1715 RemovedBody345_1720

def RemovedBody345_1722 : StackLang.HolProg 64 :=
.seq RemovedBody345_1714 RemovedBody345_1721

def RemovedBody345_1723 : StackLang.HolProg 64 :=
.seq RemovedBody345_1713 RemovedBody345_1722

def RemovedBody345_1724 : StackLang.HolProg 64 :=
.seq RemovedBody345_1712 RemovedBody345_1723

def RemovedBody345_1725 : StackLang.HolProg 64 :=
.seq RemovedBody345_1711 RemovedBody345_1724

def RemovedBody345_1726 : StackLang.HolProg 64 :=
.seq RemovedBody345_1710 RemovedBody345_1725

def RemovedBody345_1727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1731 : StackLang.HolProg 64 :=
.seq RemovedBody345_1729 RemovedBody345_1730

def RemovedBody345_1732 : StackLang.HolProg 64 :=
.seq RemovedBody345_1728 RemovedBody345_1731

def RemovedBody345_1733 : StackLang.HolProg 64 :=
.seq RemovedBody345_1727 RemovedBody345_1732

def RemovedBody345_1734 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1735 : StackLang.HolProg 64 :=
.seq RemovedBody345_1733 RemovedBody345_1734

def RemovedBody345_1736 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1726, 0, 345, 36)) (Sum.inl 342) (some (RemovedBody345_1735, 345, 37))

def RemovedBody345_1737 : StackLang.HolProg 64 :=
.seq RemovedBody345_1709 RemovedBody345_1736

def RemovedBody345_1738 : StackLang.HolProg 64 :=
.seq RemovedBody345_1708 RemovedBody345_1737

def RemovedBody345_1739 : StackLang.HolProg 64 :=
.seq RemovedBody345_1707 RemovedBody345_1738

def RemovedBody345_1740 : StackLang.HolProg 64 :=
.seq RemovedBody345_1678 RemovedBody345_1739

def RemovedBody345_1741 : StackLang.HolProg 64 :=
.seq RemovedBody345_1675 RemovedBody345_1740

def RemovedBody345_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 208#64)))

def RemovedBody345_1745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def RemovedBody345_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_1753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1754 : StackLang.HolProg 64 :=
.seq RemovedBody345_1752 RemovedBody345_1753

def RemovedBody345_1755 : StackLang.HolProg 64 :=
.seq RemovedBody345_1751 RemovedBody345_1754

def RemovedBody345_1756 : StackLang.HolProg 64 :=
.seq RemovedBody345_1750 RemovedBody345_1755

def RemovedBody345_1757 : StackLang.HolProg 64 :=
.seq RemovedBody345_1749 RemovedBody345_1756

def RemovedBody345_1758 : StackLang.HolProg 64 :=
.seq RemovedBody345_1748 RemovedBody345_1757

def RemovedBody345_1759 : StackLang.HolProg 64 :=
.seq RemovedBody345_1747 RemovedBody345_1758

def RemovedBody345_1760 : StackLang.HolProg 64 :=
.seq RemovedBody345_1746 RemovedBody345_1759

def RemovedBody345_1761 : StackLang.HolProg 64 :=
.seq RemovedBody345_1745 RemovedBody345_1760

def RemovedBody345_1762 : StackLang.HolProg 64 :=
.seq RemovedBody345_1744 RemovedBody345_1761

def RemovedBody345_1763 : StackLang.HolProg 64 :=
.seq RemovedBody345_1743 RemovedBody345_1762

def RemovedBody345_1764 : StackLang.HolProg 64 :=
.seq RemovedBody345_1742 RemovedBody345_1763

def RemovedBody345_1765 : StackLang.HolProg 64 :=
.seq RemovedBody345_1741 RemovedBody345_1764

def RemovedBody345_1766 : StackLang.HolProg 64 :=
.seq RemovedBody345_1674 RemovedBody345_1765

def RemovedBody345_1767 : StackLang.HolProg 64 :=
.seq RemovedBody345_1673 RemovedBody345_1766

def RemovedBody345_1768 : StackLang.HolProg 64 :=
.seq RemovedBody345_1672 RemovedBody345_1767

def RemovedBody345_1769 : StackLang.HolProg 64 :=
.seq RemovedBody345_1619 RemovedBody345_1768

def RemovedBody345_1770 : StackLang.HolProg 64 :=
.seq RemovedBody345_1610 RemovedBody345_1769

def RemovedBody345_1771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1773 : StackLang.HolProg 64 :=
.seq RemovedBody345_1771 RemovedBody345_1772

def RemovedBody345_1774 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_1770 RemovedBody345_1773

def RemovedBody345_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody345_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_1780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody345_1781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1784 : StackLang.HolProg 64 :=
.seq RemovedBody345_1782 RemovedBody345_1783

def RemovedBody345_1785 : StackLang.HolProg 64 :=
.seq RemovedBody345_1781 RemovedBody345_1784

def RemovedBody345_1786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1018#64)

def RemovedBody345_1788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1789 : StackLang.HolProg 64 :=
.seq RemovedBody345_1787 RemovedBody345_1788

def RemovedBody345_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1793 : StackLang.HolProg 64 :=
.seq RemovedBody345_1791 RemovedBody345_1792

def RemovedBody345_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1795 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1793 RemovedBody345_1794

def RemovedBody345_1796 : StackLang.HolProg 64 :=
.seq RemovedBody345_1790 RemovedBody345_1795

def RemovedBody345_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 39

def RemovedBody345_1800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1806 : StackLang.HolProg 64 :=
.seq RemovedBody345_1804 RemovedBody345_1805

def RemovedBody345_1807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1808 : StackLang.HolProg 64 :=
.seq RemovedBody345_1806 RemovedBody345_1807

def RemovedBody345_1809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1810 : StackLang.HolProg 64 :=
.seq RemovedBody345_1808 RemovedBody345_1809

def RemovedBody345_1811 : StackLang.HolProg 64 :=
.seq RemovedBody345_1803 RemovedBody345_1810

def RemovedBody345_1812 : StackLang.HolProg 64 :=
.seq RemovedBody345_1802 RemovedBody345_1811

def RemovedBody345_1813 : StackLang.HolProg 64 :=
.seq RemovedBody345_1801 RemovedBody345_1812

def RemovedBody345_1814 : StackLang.HolProg 64 :=
.seq RemovedBody345_1800 RemovedBody345_1813

def RemovedBody345_1815 : StackLang.HolProg 64 :=
.seq RemovedBody345_1799 RemovedBody345_1814

def RemovedBody345_1816 : StackLang.HolProg 64 :=
.seq RemovedBody345_1798 RemovedBody345_1815

def RemovedBody345_1817 : StackLang.HolProg 64 :=
.seq RemovedBody345_1797 RemovedBody345_1816

def RemovedBody345_1818 : StackLang.HolProg 64 :=
.seq RemovedBody345_1796 RemovedBody345_1817

def RemovedBody345_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1829 : StackLang.HolProg 64 :=
.seq RemovedBody345_1827 RemovedBody345_1828

def RemovedBody345_1830 : StackLang.HolProg 64 :=
.seq RemovedBody345_1826 RemovedBody345_1829

def RemovedBody345_1831 : StackLang.HolProg 64 :=
.seq RemovedBody345_1825 RemovedBody345_1830

def RemovedBody345_1832 : StackLang.HolProg 64 :=
.seq RemovedBody345_1824 RemovedBody345_1831

def RemovedBody345_1833 : StackLang.HolProg 64 :=
.seq RemovedBody345_1823 RemovedBody345_1832

def RemovedBody345_1834 : StackLang.HolProg 64 :=
.seq RemovedBody345_1822 RemovedBody345_1833

def RemovedBody345_1835 : StackLang.HolProg 64 :=
.seq RemovedBody345_1821 RemovedBody345_1834

def RemovedBody345_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1839 : StackLang.HolProg 64 :=
.seq RemovedBody345_1837 RemovedBody345_1838

def RemovedBody345_1840 : StackLang.HolProg 64 :=
.seq RemovedBody345_1836 RemovedBody345_1839

def RemovedBody345_1841 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1842 : StackLang.HolProg 64 :=
.seq RemovedBody345_1840 RemovedBody345_1841

def RemovedBody345_1843 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1835, 0, 345, 38)) (Sum.inl 336) (some (RemovedBody345_1842, 345, 39))

def RemovedBody345_1844 : StackLang.HolProg 64 :=
.seq RemovedBody345_1820 RemovedBody345_1843

def RemovedBody345_1845 : StackLang.HolProg 64 :=
.seq RemovedBody345_1819 RemovedBody345_1844

def RemovedBody345_1846 : StackLang.HolProg 64 :=
.seq RemovedBody345_1818 RemovedBody345_1845

def RemovedBody345_1847 : StackLang.HolProg 64 :=
.seq RemovedBody345_1789 RemovedBody345_1846

def RemovedBody345_1848 : StackLang.HolProg 64 :=
.seq RemovedBody345_1786 RemovedBody345_1847

def RemovedBody345_1849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 224#64)))

def RemovedBody345_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody345_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1865 : StackLang.HolProg 64 :=
.seq RemovedBody345_1863 RemovedBody345_1864

def RemovedBody345_1866 : StackLang.HolProg 64 :=
.seq RemovedBody345_1862 RemovedBody345_1865

def RemovedBody345_1867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1019#64)

def RemovedBody345_1869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1870 : StackLang.HolProg 64 :=
.seq RemovedBody345_1868 RemovedBody345_1869

def RemovedBody345_1871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1874 : StackLang.HolProg 64 :=
.seq RemovedBody345_1872 RemovedBody345_1873

def RemovedBody345_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1876 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1874 RemovedBody345_1875

def RemovedBody345_1877 : StackLang.HolProg 64 :=
.seq RemovedBody345_1871 RemovedBody345_1876

def RemovedBody345_1878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 41

def RemovedBody345_1881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1887 : StackLang.HolProg 64 :=
.seq RemovedBody345_1885 RemovedBody345_1886

def RemovedBody345_1888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1889 : StackLang.HolProg 64 :=
.seq RemovedBody345_1887 RemovedBody345_1888

def RemovedBody345_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1891 : StackLang.HolProg 64 :=
.seq RemovedBody345_1889 RemovedBody345_1890

def RemovedBody345_1892 : StackLang.HolProg 64 :=
.seq RemovedBody345_1884 RemovedBody345_1891

def RemovedBody345_1893 : StackLang.HolProg 64 :=
.seq RemovedBody345_1883 RemovedBody345_1892

def RemovedBody345_1894 : StackLang.HolProg 64 :=
.seq RemovedBody345_1882 RemovedBody345_1893

def RemovedBody345_1895 : StackLang.HolProg 64 :=
.seq RemovedBody345_1881 RemovedBody345_1894

def RemovedBody345_1896 : StackLang.HolProg 64 :=
.seq RemovedBody345_1880 RemovedBody345_1895

def RemovedBody345_1897 : StackLang.HolProg 64 :=
.seq RemovedBody345_1879 RemovedBody345_1896

def RemovedBody345_1898 : StackLang.HolProg 64 :=
.seq RemovedBody345_1878 RemovedBody345_1897

def RemovedBody345_1899 : StackLang.HolProg 64 :=
.seq RemovedBody345_1877 RemovedBody345_1898

def RemovedBody345_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1907 : StackLang.HolProg 64 :=
.seq RemovedBody345_1905 RemovedBody345_1906

def RemovedBody345_1908 : StackLang.HolProg 64 :=
.seq RemovedBody345_1904 RemovedBody345_1907

def RemovedBody345_1909 : StackLang.HolProg 64 :=
.seq RemovedBody345_1903 RemovedBody345_1908

def RemovedBody345_1910 : StackLang.HolProg 64 :=
.seq RemovedBody345_1902 RemovedBody345_1909

def RemovedBody345_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1912 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1913 : StackLang.HolProg 64 :=
.seq RemovedBody345_1911 RemovedBody345_1912

def RemovedBody345_1914 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1910, 0, 345, 40)) (Sum.inl 341) (some (RemovedBody345_1913, 345, 41))

def RemovedBody345_1915 : StackLang.HolProg 64 :=
.seq RemovedBody345_1901 RemovedBody345_1914

def RemovedBody345_1916 : StackLang.HolProg 64 :=
.seq RemovedBody345_1900 RemovedBody345_1915

def RemovedBody345_1917 : StackLang.HolProg 64 :=
.seq RemovedBody345_1899 RemovedBody345_1916

def RemovedBody345_1918 : StackLang.HolProg 64 :=
.seq RemovedBody345_1870 RemovedBody345_1917

def RemovedBody345_1919 : StackLang.HolProg 64 :=
.seq RemovedBody345_1867 RemovedBody345_1918

def RemovedBody345_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody345_1922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1020#64)

def RemovedBody345_1924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1925 : StackLang.HolProg 64 :=
.seq RemovedBody345_1923 RemovedBody345_1924

def RemovedBody345_1926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_1928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_1929 : StackLang.HolProg 64 :=
.seq RemovedBody345_1927 RemovedBody345_1928

def RemovedBody345_1930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1931 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_1929 RemovedBody345_1930

def RemovedBody345_1932 : StackLang.HolProg 64 :=
.seq RemovedBody345_1926 RemovedBody345_1931

def RemovedBody345_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 43

def RemovedBody345_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_1941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_1942 : StackLang.HolProg 64 :=
.seq RemovedBody345_1940 RemovedBody345_1941

def RemovedBody345_1943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_1944 : StackLang.HolProg 64 :=
.seq RemovedBody345_1942 RemovedBody345_1943

def RemovedBody345_1945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1946 : StackLang.HolProg 64 :=
.seq RemovedBody345_1944 RemovedBody345_1945

def RemovedBody345_1947 : StackLang.HolProg 64 :=
.seq RemovedBody345_1939 RemovedBody345_1946

def RemovedBody345_1948 : StackLang.HolProg 64 :=
.seq RemovedBody345_1938 RemovedBody345_1947

def RemovedBody345_1949 : StackLang.HolProg 64 :=
.seq RemovedBody345_1937 RemovedBody345_1948

def RemovedBody345_1950 : StackLang.HolProg 64 :=
.seq RemovedBody345_1936 RemovedBody345_1949

def RemovedBody345_1951 : StackLang.HolProg 64 :=
.seq RemovedBody345_1935 RemovedBody345_1950

def RemovedBody345_1952 : StackLang.HolProg 64 :=
.seq RemovedBody345_1934 RemovedBody345_1951

def RemovedBody345_1953 : StackLang.HolProg 64 :=
.seq RemovedBody345_1933 RemovedBody345_1952

def RemovedBody345_1954 : StackLang.HolProg 64 :=
.seq RemovedBody345_1932 RemovedBody345_1953

def RemovedBody345_1955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_1960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_1961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_1962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1966 : StackLang.HolProg 64 :=
.seq RemovedBody345_1964 RemovedBody345_1965

def RemovedBody345_1967 : StackLang.HolProg 64 :=
.seq RemovedBody345_1963 RemovedBody345_1966

def RemovedBody345_1968 : StackLang.HolProg 64 :=
.seq RemovedBody345_1962 RemovedBody345_1967

def RemovedBody345_1969 : StackLang.HolProg 64 :=
.seq RemovedBody345_1961 RemovedBody345_1968

def RemovedBody345_1970 : StackLang.HolProg 64 :=
.seq RemovedBody345_1960 RemovedBody345_1969

def RemovedBody345_1971 : StackLang.HolProg 64 :=
.seq RemovedBody345_1959 RemovedBody345_1970

def RemovedBody345_1972 : StackLang.HolProg 64 :=
.seq RemovedBody345_1958 RemovedBody345_1971

def RemovedBody345_1973 : StackLang.HolProg 64 :=
.seq RemovedBody345_1957 RemovedBody345_1972

def RemovedBody345_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_1978 : StackLang.HolProg 64 :=
.seq RemovedBody345_1976 RemovedBody345_1977

def RemovedBody345_1979 : StackLang.HolProg 64 :=
.seq RemovedBody345_1975 RemovedBody345_1978

def RemovedBody345_1980 : StackLang.HolProg 64 :=
.seq RemovedBody345_1974 RemovedBody345_1979

def RemovedBody345_1981 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_1982 : StackLang.HolProg 64 :=
.seq RemovedBody345_1980 RemovedBody345_1981

def RemovedBody345_1983 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_1973, 0, 345, 42)) (Sum.inl 343) (some (RemovedBody345_1982, 345, 43))

def RemovedBody345_1984 : StackLang.HolProg 64 :=
.seq RemovedBody345_1956 RemovedBody345_1983

def RemovedBody345_1985 : StackLang.HolProg 64 :=
.seq RemovedBody345_1955 RemovedBody345_1984

def RemovedBody345_1986 : StackLang.HolProg 64 :=
.seq RemovedBody345_1954 RemovedBody345_1985

def RemovedBody345_1987 : StackLang.HolProg 64 :=
.seq RemovedBody345_1925 RemovedBody345_1986

def RemovedBody345_1988 : StackLang.HolProg 64 :=
.seq RemovedBody345_1922 RemovedBody345_1987

def RemovedBody345_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_1990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 256#64)))

def RemovedBody345_1992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 264#64)))

def RemovedBody345_1996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_1998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_1999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody345_2000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2001 : StackLang.HolProg 64 :=
.seq RemovedBody345_1999 RemovedBody345_2000

def RemovedBody345_2002 : StackLang.HolProg 64 :=
.seq RemovedBody345_1998 RemovedBody345_2001

def RemovedBody345_2003 : StackLang.HolProg 64 :=
.seq RemovedBody345_1997 RemovedBody345_2002

def RemovedBody345_2004 : StackLang.HolProg 64 :=
.seq RemovedBody345_1996 RemovedBody345_2003

def RemovedBody345_2005 : StackLang.HolProg 64 :=
.seq RemovedBody345_1995 RemovedBody345_2004

def RemovedBody345_2006 : StackLang.HolProg 64 :=
.seq RemovedBody345_1994 RemovedBody345_2005

def RemovedBody345_2007 : StackLang.HolProg 64 :=
.seq RemovedBody345_1993 RemovedBody345_2006

def RemovedBody345_2008 : StackLang.HolProg 64 :=
.seq RemovedBody345_1992 RemovedBody345_2007

def RemovedBody345_2009 : StackLang.HolProg 64 :=
.seq RemovedBody345_1991 RemovedBody345_2008

def RemovedBody345_2010 : StackLang.HolProg 64 :=
.seq RemovedBody345_1990 RemovedBody345_2009

def RemovedBody345_2011 : StackLang.HolProg 64 :=
.seq RemovedBody345_1989 RemovedBody345_2010

def RemovedBody345_2012 : StackLang.HolProg 64 :=
.seq RemovedBody345_1988 RemovedBody345_2011

def RemovedBody345_2013 : StackLang.HolProg 64 :=
.seq RemovedBody345_1921 RemovedBody345_2012

def RemovedBody345_2014 : StackLang.HolProg 64 :=
.seq RemovedBody345_1920 RemovedBody345_2013

def RemovedBody345_2015 : StackLang.HolProg 64 :=
.seq RemovedBody345_1919 RemovedBody345_2014

def RemovedBody345_2016 : StackLang.HolProg 64 :=
.seq RemovedBody345_1866 RemovedBody345_2015

def RemovedBody345_2017 : StackLang.HolProg 64 :=
.seq RemovedBody345_1861 RemovedBody345_2016

def RemovedBody345_2018 : StackLang.HolProg 64 :=
.seq RemovedBody345_1860 RemovedBody345_2017

def RemovedBody345_2019 : StackLang.HolProg 64 :=
.seq RemovedBody345_1859 RemovedBody345_2018

def RemovedBody345_2020 : StackLang.HolProg 64 :=
.seq RemovedBody345_1858 RemovedBody345_2019

def RemovedBody345_2021 : StackLang.HolProg 64 :=
.seq RemovedBody345_1857 RemovedBody345_2020

def RemovedBody345_2022 : StackLang.HolProg 64 :=
.seq RemovedBody345_1856 RemovedBody345_2021

def RemovedBody345_2023 : StackLang.HolProg 64 :=
.seq RemovedBody345_1855 RemovedBody345_2022

def RemovedBody345_2024 : StackLang.HolProg 64 :=
.seq RemovedBody345_1854 RemovedBody345_2023

def RemovedBody345_2025 : StackLang.HolProg 64 :=
.seq RemovedBody345_1853 RemovedBody345_2024

def RemovedBody345_2026 : StackLang.HolProg 64 :=
.seq RemovedBody345_1852 RemovedBody345_2025

def RemovedBody345_2027 : StackLang.HolProg 64 :=
.seq RemovedBody345_1851 RemovedBody345_2026

def RemovedBody345_2028 : StackLang.HolProg 64 :=
.seq RemovedBody345_1850 RemovedBody345_2027

def RemovedBody345_2029 : StackLang.HolProg 64 :=
.seq RemovedBody345_1849 RemovedBody345_2028

def RemovedBody345_2030 : StackLang.HolProg 64 :=
.seq RemovedBody345_1848 RemovedBody345_2029

def RemovedBody345_2031 : StackLang.HolProg 64 :=
.seq RemovedBody345_1785 RemovedBody345_2030

def RemovedBody345_2032 : StackLang.HolProg 64 :=
.seq RemovedBody345_1780 RemovedBody345_2031

def RemovedBody345_2033 : StackLang.HolProg 64 :=
.seq RemovedBody345_1779 RemovedBody345_2032

def RemovedBody345_2034 : StackLang.HolProg 64 :=
.seq RemovedBody345_1778 RemovedBody345_2033

def RemovedBody345_2035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2037 : StackLang.HolProg 64 :=
.seq RemovedBody345_2035 RemovedBody345_2036

def RemovedBody345_2038 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_2034 RemovedBody345_2037

def RemovedBody345_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody345_2042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2046 : StackLang.HolProg 64 :=
.seq RemovedBody345_2044 RemovedBody345_2045

def RemovedBody345_2047 : StackLang.HolProg 64 :=
.seq RemovedBody345_2043 RemovedBody345_2046

def RemovedBody345_2048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1021#64)

def RemovedBody345_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2051 : StackLang.HolProg 64 :=
.seq RemovedBody345_2049 RemovedBody345_2050

def RemovedBody345_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_2055 : StackLang.HolProg 64 :=
.seq RemovedBody345_2053 RemovedBody345_2054

def RemovedBody345_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2057 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_2055 RemovedBody345_2056

def RemovedBody345_2058 : StackLang.HolProg 64 :=
.seq RemovedBody345_2052 RemovedBody345_2057

def RemovedBody345_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_2060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 45

def RemovedBody345_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_2063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_2067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_2068 : StackLang.HolProg 64 :=
.seq RemovedBody345_2066 RemovedBody345_2067

def RemovedBody345_2069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_2070 : StackLang.HolProg 64 :=
.seq RemovedBody345_2068 RemovedBody345_2069

def RemovedBody345_2071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2072 : StackLang.HolProg 64 :=
.seq RemovedBody345_2070 RemovedBody345_2071

def RemovedBody345_2073 : StackLang.HolProg 64 :=
.seq RemovedBody345_2065 RemovedBody345_2072

def RemovedBody345_2074 : StackLang.HolProg 64 :=
.seq RemovedBody345_2064 RemovedBody345_2073

def RemovedBody345_2075 : StackLang.HolProg 64 :=
.seq RemovedBody345_2063 RemovedBody345_2074

def RemovedBody345_2076 : StackLang.HolProg 64 :=
.seq RemovedBody345_2062 RemovedBody345_2075

def RemovedBody345_2077 : StackLang.HolProg 64 :=
.seq RemovedBody345_2061 RemovedBody345_2076

def RemovedBody345_2078 : StackLang.HolProg 64 :=
.seq RemovedBody345_2060 RemovedBody345_2077

def RemovedBody345_2079 : StackLang.HolProg 64 :=
.seq RemovedBody345_2059 RemovedBody345_2078

def RemovedBody345_2080 : StackLang.HolProg 64 :=
.seq RemovedBody345_2058 RemovedBody345_2079

def RemovedBody345_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_2088 : StackLang.HolProg 64 :=
.seq RemovedBody345_2086 RemovedBody345_2087

def RemovedBody345_2089 : StackLang.HolProg 64 :=
.seq RemovedBody345_2085 RemovedBody345_2088

def RemovedBody345_2090 : StackLang.HolProg 64 :=
.seq RemovedBody345_2084 RemovedBody345_2089

def RemovedBody345_2091 : StackLang.HolProg 64 :=
.seq RemovedBody345_2083 RemovedBody345_2090

def RemovedBody345_2092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2093 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_2094 : StackLang.HolProg 64 :=
.seq RemovedBody345_2092 RemovedBody345_2093

def RemovedBody345_2095 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_2091, 0, 345, 44)) (Sum.inl 341) (some (RemovedBody345_2094, 345, 45))

def RemovedBody345_2096 : StackLang.HolProg 64 :=
.seq RemovedBody345_2082 RemovedBody345_2095

def RemovedBody345_2097 : StackLang.HolProg 64 :=
.seq RemovedBody345_2081 RemovedBody345_2096

def RemovedBody345_2098 : StackLang.HolProg 64 :=
.seq RemovedBody345_2080 RemovedBody345_2097

def RemovedBody345_2099 : StackLang.HolProg 64 :=
.seq RemovedBody345_2051 RemovedBody345_2098

def RemovedBody345_2100 : StackLang.HolProg 64 :=
.seq RemovedBody345_2048 RemovedBody345_2099

def RemovedBody345_2101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody345_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1022#64)

def RemovedBody345_2105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2106 : StackLang.HolProg 64 :=
.seq RemovedBody345_2104 RemovedBody345_2105

def RemovedBody345_2107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_2110 : StackLang.HolProg 64 :=
.seq RemovedBody345_2108 RemovedBody345_2109

def RemovedBody345_2111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_2110 RemovedBody345_2111

def RemovedBody345_2113 : StackLang.HolProg 64 :=
.seq RemovedBody345_2107 RemovedBody345_2112

def RemovedBody345_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_2115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 47

def RemovedBody345_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_2122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_2123 : StackLang.HolProg 64 :=
.seq RemovedBody345_2121 RemovedBody345_2122

def RemovedBody345_2124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_2125 : StackLang.HolProg 64 :=
.seq RemovedBody345_2123 RemovedBody345_2124

def RemovedBody345_2126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2127 : StackLang.HolProg 64 :=
.seq RemovedBody345_2125 RemovedBody345_2126

def RemovedBody345_2128 : StackLang.HolProg 64 :=
.seq RemovedBody345_2120 RemovedBody345_2127

def RemovedBody345_2129 : StackLang.HolProg 64 :=
.seq RemovedBody345_2119 RemovedBody345_2128

def RemovedBody345_2130 : StackLang.HolProg 64 :=
.seq RemovedBody345_2118 RemovedBody345_2129

def RemovedBody345_2131 : StackLang.HolProg 64 :=
.seq RemovedBody345_2117 RemovedBody345_2130

def RemovedBody345_2132 : StackLang.HolProg 64 :=
.seq RemovedBody345_2116 RemovedBody345_2131

def RemovedBody345_2133 : StackLang.HolProg 64 :=
.seq RemovedBody345_2115 RemovedBody345_2132

def RemovedBody345_2134 : StackLang.HolProg 64 :=
.seq RemovedBody345_2114 RemovedBody345_2133

def RemovedBody345_2135 : StackLang.HolProg 64 :=
.seq RemovedBody345_2113 RemovedBody345_2134

def RemovedBody345_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_2143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2146 : StackLang.HolProg 64 :=
.seq RemovedBody345_2144 RemovedBody345_2145

def RemovedBody345_2147 : StackLang.HolProg 64 :=
.seq RemovedBody345_2143 RemovedBody345_2146

def RemovedBody345_2148 : StackLang.HolProg 64 :=
.seq RemovedBody345_2142 RemovedBody345_2147

def RemovedBody345_2149 : StackLang.HolProg 64 :=
.seq RemovedBody345_2141 RemovedBody345_2148

def RemovedBody345_2150 : StackLang.HolProg 64 :=
.seq RemovedBody345_2140 RemovedBody345_2149

def RemovedBody345_2151 : StackLang.HolProg 64 :=
.seq RemovedBody345_2139 RemovedBody345_2150

def RemovedBody345_2152 : StackLang.HolProg 64 :=
.seq RemovedBody345_2138 RemovedBody345_2151

def RemovedBody345_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2156 : StackLang.HolProg 64 :=
.seq RemovedBody345_2154 RemovedBody345_2155

def RemovedBody345_2157 : StackLang.HolProg 64 :=
.seq RemovedBody345_2153 RemovedBody345_2156

def RemovedBody345_2158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_2159 : StackLang.HolProg 64 :=
.seq RemovedBody345_2157 RemovedBody345_2158

def RemovedBody345_2160 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_2152, 0, 345, 46)) (Sum.inl 344) (some (RemovedBody345_2159, 345, 47))

def RemovedBody345_2161 : StackLang.HolProg 64 :=
.seq RemovedBody345_2137 RemovedBody345_2160

def RemovedBody345_2162 : StackLang.HolProg 64 :=
.seq RemovedBody345_2136 RemovedBody345_2161

def RemovedBody345_2163 : StackLang.HolProg 64 :=
.seq RemovedBody345_2135 RemovedBody345_2162

def RemovedBody345_2164 : StackLang.HolProg 64 :=
.seq RemovedBody345_2106 RemovedBody345_2163

def RemovedBody345_2165 : StackLang.HolProg 64 :=
.seq RemovedBody345_2103 RemovedBody345_2164

def RemovedBody345_2166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 272#64)))

def RemovedBody345_2169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_2171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 280#64)))

def RemovedBody345_2173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_2175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_2177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2178 : StackLang.HolProg 64 :=
.seq RemovedBody345_2176 RemovedBody345_2177

def RemovedBody345_2179 : StackLang.HolProg 64 :=
.seq RemovedBody345_2175 RemovedBody345_2178

def RemovedBody345_2180 : StackLang.HolProg 64 :=
.seq RemovedBody345_2174 RemovedBody345_2179

def RemovedBody345_2181 : StackLang.HolProg 64 :=
.seq RemovedBody345_2173 RemovedBody345_2180

def RemovedBody345_2182 : StackLang.HolProg 64 :=
.seq RemovedBody345_2172 RemovedBody345_2181

def RemovedBody345_2183 : StackLang.HolProg 64 :=
.seq RemovedBody345_2171 RemovedBody345_2182

def RemovedBody345_2184 : StackLang.HolProg 64 :=
.seq RemovedBody345_2170 RemovedBody345_2183

def RemovedBody345_2185 : StackLang.HolProg 64 :=
.seq RemovedBody345_2169 RemovedBody345_2184

def RemovedBody345_2186 : StackLang.HolProg 64 :=
.seq RemovedBody345_2168 RemovedBody345_2185

def RemovedBody345_2187 : StackLang.HolProg 64 :=
.seq RemovedBody345_2167 RemovedBody345_2186

def RemovedBody345_2188 : StackLang.HolProg 64 :=
.seq RemovedBody345_2166 RemovedBody345_2187

def RemovedBody345_2189 : StackLang.HolProg 64 :=
.seq RemovedBody345_2165 RemovedBody345_2188

def RemovedBody345_2190 : StackLang.HolProg 64 :=
.seq RemovedBody345_2102 RemovedBody345_2189

def RemovedBody345_2191 : StackLang.HolProg 64 :=
.seq RemovedBody345_2101 RemovedBody345_2190

def RemovedBody345_2192 : StackLang.HolProg 64 :=
.seq RemovedBody345_2100 RemovedBody345_2191

def RemovedBody345_2193 : StackLang.HolProg 64 :=
.seq RemovedBody345_2047 RemovedBody345_2192

def RemovedBody345_2194 : StackLang.HolProg 64 :=
.seq RemovedBody345_2042 RemovedBody345_2193

def RemovedBody345_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2197 : StackLang.HolProg 64 :=
.seq RemovedBody345_2195 RemovedBody345_2196

def RemovedBody345_2198 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody345_2194 RemovedBody345_2197

def RemovedBody345_2199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody345_2201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody345_2202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2204 : StackLang.HolProg 64 :=
.seq RemovedBody345_2202 RemovedBody345_2203

def RemovedBody345_2205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1023#64)

def RemovedBody345_2207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2208 : StackLang.HolProg 64 :=
.seq RemovedBody345_2206 RemovedBody345_2207

def RemovedBody345_2209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_2211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_2212 : StackLang.HolProg 64 :=
.seq RemovedBody345_2210 RemovedBody345_2211

def RemovedBody345_2213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_2212 RemovedBody345_2213

def RemovedBody345_2215 : StackLang.HolProg 64 :=
.seq RemovedBody345_2209 RemovedBody345_2214

def RemovedBody345_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 49

def RemovedBody345_2219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_2224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_2225 : StackLang.HolProg 64 :=
.seq RemovedBody345_2223 RemovedBody345_2224

def RemovedBody345_2226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_2227 : StackLang.HolProg 64 :=
.seq RemovedBody345_2225 RemovedBody345_2226

def RemovedBody345_2228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2229 : StackLang.HolProg 64 :=
.seq RemovedBody345_2227 RemovedBody345_2228

def RemovedBody345_2230 : StackLang.HolProg 64 :=
.seq RemovedBody345_2222 RemovedBody345_2229

def RemovedBody345_2231 : StackLang.HolProg 64 :=
.seq RemovedBody345_2221 RemovedBody345_2230

def RemovedBody345_2232 : StackLang.HolProg 64 :=
.seq RemovedBody345_2220 RemovedBody345_2231

def RemovedBody345_2233 : StackLang.HolProg 64 :=
.seq RemovedBody345_2219 RemovedBody345_2232

def RemovedBody345_2234 : StackLang.HolProg 64 :=
.seq RemovedBody345_2218 RemovedBody345_2233

def RemovedBody345_2235 : StackLang.HolProg 64 :=
.seq RemovedBody345_2217 RemovedBody345_2234

def RemovedBody345_2236 : StackLang.HolProg 64 :=
.seq RemovedBody345_2216 RemovedBody345_2235

def RemovedBody345_2237 : StackLang.HolProg 64 :=
.seq RemovedBody345_2215 RemovedBody345_2236

def RemovedBody345_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_2245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2248 : StackLang.HolProg 64 :=
.seq RemovedBody345_2246 RemovedBody345_2247

def RemovedBody345_2249 : StackLang.HolProg 64 :=
.seq RemovedBody345_2245 RemovedBody345_2248

def RemovedBody345_2250 : StackLang.HolProg 64 :=
.seq RemovedBody345_2244 RemovedBody345_2249

def RemovedBody345_2251 : StackLang.HolProg 64 :=
.seq RemovedBody345_2243 RemovedBody345_2250

def RemovedBody345_2252 : StackLang.HolProg 64 :=
.seq RemovedBody345_2242 RemovedBody345_2251

def RemovedBody345_2253 : StackLang.HolProg 64 :=
.seq RemovedBody345_2241 RemovedBody345_2252

def RemovedBody345_2254 : StackLang.HolProg 64 :=
.seq RemovedBody345_2240 RemovedBody345_2253

def RemovedBody345_2255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2258 : StackLang.HolProg 64 :=
.seq RemovedBody345_2256 RemovedBody345_2257

def RemovedBody345_2259 : StackLang.HolProg 64 :=
.seq RemovedBody345_2255 RemovedBody345_2258

def RemovedBody345_2260 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_2261 : StackLang.HolProg 64 :=
.seq RemovedBody345_2259 RemovedBody345_2260

def RemovedBody345_2262 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_2254, 0, 345, 48)) (Sum.inl 336) (some (RemovedBody345_2261, 345, 49))

def RemovedBody345_2263 : StackLang.HolProg 64 :=
.seq RemovedBody345_2239 RemovedBody345_2262

def RemovedBody345_2264 : StackLang.HolProg 64 :=
.seq RemovedBody345_2238 RemovedBody345_2263

def RemovedBody345_2265 : StackLang.HolProg 64 :=
.seq RemovedBody345_2237 RemovedBody345_2264

def RemovedBody345_2266 : StackLang.HolProg 64 :=
.seq RemovedBody345_2208 RemovedBody345_2265

def RemovedBody345_2267 : StackLang.HolProg 64 :=
.seq RemovedBody345_2205 RemovedBody345_2266

def RemovedBody345_2268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody345_2271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_2273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_2275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_2277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_2279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody345_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody345_2281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody345_2282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2285 : StackLang.HolProg 64 :=
.seq RemovedBody345_2283 RemovedBody345_2284

def RemovedBody345_2286 : StackLang.HolProg 64 :=
.seq RemovedBody345_2282 RemovedBody345_2285

def RemovedBody345_2287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1024#64)

def RemovedBody345_2289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2290 : StackLang.HolProg 64 :=
.seq RemovedBody345_2288 RemovedBody345_2289

def RemovedBody345_2291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_2293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_2294 : StackLang.HolProg 64 :=
.seq RemovedBody345_2292 RemovedBody345_2293

def RemovedBody345_2295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_2294 RemovedBody345_2295

def RemovedBody345_2297 : StackLang.HolProg 64 :=
.seq RemovedBody345_2291 RemovedBody345_2296

def RemovedBody345_2298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_2299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 51

def RemovedBody345_2301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_2302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_2306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_2307 : StackLang.HolProg 64 :=
.seq RemovedBody345_2305 RemovedBody345_2306

def RemovedBody345_2308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_2309 : StackLang.HolProg 64 :=
.seq RemovedBody345_2307 RemovedBody345_2308

def RemovedBody345_2310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2311 : StackLang.HolProg 64 :=
.seq RemovedBody345_2309 RemovedBody345_2310

def RemovedBody345_2312 : StackLang.HolProg 64 :=
.seq RemovedBody345_2304 RemovedBody345_2311

def RemovedBody345_2313 : StackLang.HolProg 64 :=
.seq RemovedBody345_2303 RemovedBody345_2312

def RemovedBody345_2314 : StackLang.HolProg 64 :=
.seq RemovedBody345_2302 RemovedBody345_2313

def RemovedBody345_2315 : StackLang.HolProg 64 :=
.seq RemovedBody345_2301 RemovedBody345_2314

def RemovedBody345_2316 : StackLang.HolProg 64 :=
.seq RemovedBody345_2300 RemovedBody345_2315

def RemovedBody345_2317 : StackLang.HolProg 64 :=
.seq RemovedBody345_2299 RemovedBody345_2316

def RemovedBody345_2318 : StackLang.HolProg 64 :=
.seq RemovedBody345_2298 RemovedBody345_2317

def RemovedBody345_2319 : StackLang.HolProg 64 :=
.seq RemovedBody345_2297 RemovedBody345_2318

def RemovedBody345_2320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_2327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2330 : StackLang.HolProg 64 :=
.seq RemovedBody345_2328 RemovedBody345_2329

def RemovedBody345_2331 : StackLang.HolProg 64 :=
.seq RemovedBody345_2327 RemovedBody345_2330

def RemovedBody345_2332 : StackLang.HolProg 64 :=
.seq RemovedBody345_2326 RemovedBody345_2331

def RemovedBody345_2333 : StackLang.HolProg 64 :=
.seq RemovedBody345_2325 RemovedBody345_2332

def RemovedBody345_2334 : StackLang.HolProg 64 :=
.seq RemovedBody345_2324 RemovedBody345_2333

def RemovedBody345_2335 : StackLang.HolProg 64 :=
.seq RemovedBody345_2323 RemovedBody345_2334

def RemovedBody345_2336 : StackLang.HolProg 64 :=
.seq RemovedBody345_2322 RemovedBody345_2335

def RemovedBody345_2337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody345_2339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2340 : StackLang.HolProg 64 :=
.seq RemovedBody345_2338 RemovedBody345_2339

def RemovedBody345_2341 : StackLang.HolProg 64 :=
.seq RemovedBody345_2337 RemovedBody345_2340

def RemovedBody345_2342 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_2343 : StackLang.HolProg 64 :=
.seq RemovedBody345_2341 RemovedBody345_2342

def RemovedBody345_2344 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_2336, 0, 345, 50)) (Sum.inl 336) (some (RemovedBody345_2343, 345, 51))

def RemovedBody345_2345 : StackLang.HolProg 64 :=
.seq RemovedBody345_2321 RemovedBody345_2344

def RemovedBody345_2346 : StackLang.HolProg 64 :=
.seq RemovedBody345_2320 RemovedBody345_2345

def RemovedBody345_2347 : StackLang.HolProg 64 :=
.seq RemovedBody345_2319 RemovedBody345_2346

def RemovedBody345_2348 : StackLang.HolProg 64 :=
.seq RemovedBody345_2290 RemovedBody345_2347

def RemovedBody345_2349 : StackLang.HolProg 64 :=
.seq RemovedBody345_2287 RemovedBody345_2348

def RemovedBody345_2350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 320#64)))

def RemovedBody345_2353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_2355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_2357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_2359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_2361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody345_2362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody345_2363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody345_2364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1025#64)

def RemovedBody345_2367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2368 : StackLang.HolProg 64 :=
.seq RemovedBody345_2366 RemovedBody345_2367

def RemovedBody345_2369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody345_2371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody345_2372 : StackLang.HolProg 64 :=
.seq RemovedBody345_2370 RemovedBody345_2371

def RemovedBody345_2373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2374 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody345_2372 RemovedBody345_2373

def RemovedBody345_2375 : StackLang.HolProg 64 :=
.seq RemovedBody345_2369 RemovedBody345_2374

def RemovedBody345_2376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody345_2377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody345_2378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 53

def RemovedBody345_2379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody345_2380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody345_2384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody345_2385 : StackLang.HolProg 64 :=
.seq RemovedBody345_2383 RemovedBody345_2384

def RemovedBody345_2386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody345_2387 : StackLang.HolProg 64 :=
.seq RemovedBody345_2385 RemovedBody345_2386

def RemovedBody345_2388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2389 : StackLang.HolProg 64 :=
.seq RemovedBody345_2387 RemovedBody345_2388

def RemovedBody345_2390 : StackLang.HolProg 64 :=
.seq RemovedBody345_2382 RemovedBody345_2389

def RemovedBody345_2391 : StackLang.HolProg 64 :=
.seq RemovedBody345_2381 RemovedBody345_2390

def RemovedBody345_2392 : StackLang.HolProg 64 :=
.seq RemovedBody345_2380 RemovedBody345_2391

def RemovedBody345_2393 : StackLang.HolProg 64 :=
.seq RemovedBody345_2379 RemovedBody345_2392

def RemovedBody345_2394 : StackLang.HolProg 64 :=
.seq RemovedBody345_2378 RemovedBody345_2393

def RemovedBody345_2395 : StackLang.HolProg 64 :=
.seq RemovedBody345_2377 RemovedBody345_2394

def RemovedBody345_2396 : StackLang.HolProg 64 :=
.seq RemovedBody345_2376 RemovedBody345_2395

def RemovedBody345_2397 : StackLang.HolProg 64 :=
.seq RemovedBody345_2375 RemovedBody345_2396

def RemovedBody345_2398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody345_2402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody345_2403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody345_2404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody345_2405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody345_2406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2407 : StackLang.HolProg 64 :=
.seq RemovedBody345_2405 RemovedBody345_2406

def RemovedBody345_2408 : StackLang.HolProg 64 :=
.seq RemovedBody345_2404 RemovedBody345_2407

def RemovedBody345_2409 : StackLang.HolProg 64 :=
.seq RemovedBody345_2403 RemovedBody345_2408

def RemovedBody345_2410 : StackLang.HolProg 64 :=
.seq RemovedBody345_2402 RemovedBody345_2409

def RemovedBody345_2411 : StackLang.HolProg 64 :=
.seq RemovedBody345_2401 RemovedBody345_2410

def RemovedBody345_2412 : StackLang.HolProg 64 :=
.seq RemovedBody345_2400 RemovedBody345_2411

def RemovedBody345_2413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody345_2414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody345_2415 : StackLang.HolProg 64 :=
.seq RemovedBody345_2413 RemovedBody345_2414

def RemovedBody345_2416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody345_2417 : StackLang.HolProg 64 :=
.seq RemovedBody345_2415 RemovedBody345_2416

def RemovedBody345_2418 : StackLang.HolProg 64 :=
.call (some (RemovedBody345_2412, 0, 345, 52)) (Sum.inl 336) (some (RemovedBody345_2417, 345, 53))

def RemovedBody345_2419 : StackLang.HolProg 64 :=
.seq RemovedBody345_2399 RemovedBody345_2418

def RemovedBody345_2420 : StackLang.HolProg 64 :=
.seq RemovedBody345_2398 RemovedBody345_2419

def RemovedBody345_2421 : StackLang.HolProg 64 :=
.seq RemovedBody345_2397 RemovedBody345_2420

def RemovedBody345_2422 : StackLang.HolProg 64 :=
.seq RemovedBody345_2368 RemovedBody345_2421

def RemovedBody345_2423 : StackLang.HolProg 64 :=
.seq RemovedBody345_2365 RemovedBody345_2422

def RemovedBody345_2424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody345_2425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 352#64)))

def RemovedBody345_2427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody345_2429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody345_2431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody345_2433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody345_2434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody345_2435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody345_2436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody345_2437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody345_2438 : StackLang.HolProg 64 :=
.seq RemovedBody345_2436 RemovedBody345_2437

def RemovedBody345_2439 : StackLang.HolProg 64 :=
.seq RemovedBody345_2435 RemovedBody345_2438

def RemovedBody345_2440 : StackLang.HolProg 64 :=
.seq RemovedBody345_2434 RemovedBody345_2439

def RemovedBody345_2441 : StackLang.HolProg 64 :=
.seq RemovedBody345_2433 RemovedBody345_2440

def RemovedBody345_2442 : StackLang.HolProg 64 :=
.seq RemovedBody345_2432 RemovedBody345_2441

def RemovedBody345_2443 : StackLang.HolProg 64 :=
.seq RemovedBody345_2431 RemovedBody345_2442

def RemovedBody345_2444 : StackLang.HolProg 64 :=
.seq RemovedBody345_2430 RemovedBody345_2443

def RemovedBody345_2445 : StackLang.HolProg 64 :=
.seq RemovedBody345_2429 RemovedBody345_2444

def RemovedBody345_2446 : StackLang.HolProg 64 :=
.seq RemovedBody345_2428 RemovedBody345_2445

def RemovedBody345_2447 : StackLang.HolProg 64 :=
.seq RemovedBody345_2427 RemovedBody345_2446

def RemovedBody345_2448 : StackLang.HolProg 64 :=
.seq RemovedBody345_2426 RemovedBody345_2447

def RemovedBody345_2449 : StackLang.HolProg 64 :=
.seq RemovedBody345_2425 RemovedBody345_2448

def RemovedBody345_2450 : StackLang.HolProg 64 :=
.seq RemovedBody345_2424 RemovedBody345_2449

def RemovedBody345_2451 : StackLang.HolProg 64 :=
.seq RemovedBody345_2423 RemovedBody345_2450

def RemovedBody345_2452 : StackLang.HolProg 64 :=
.seq RemovedBody345_2364 RemovedBody345_2451

def RemovedBody345_2453 : StackLang.HolProg 64 :=
.seq RemovedBody345_2363 RemovedBody345_2452

def RemovedBody345_2454 : StackLang.HolProg 64 :=
.seq RemovedBody345_2362 RemovedBody345_2453

def RemovedBody345_2455 : StackLang.HolProg 64 :=
.seq RemovedBody345_2361 RemovedBody345_2454

def RemovedBody345_2456 : StackLang.HolProg 64 :=
.seq RemovedBody345_2360 RemovedBody345_2455

def RemovedBody345_2457 : StackLang.HolProg 64 :=
.seq RemovedBody345_2359 RemovedBody345_2456

def RemovedBody345_2458 : StackLang.HolProg 64 :=
.seq RemovedBody345_2358 RemovedBody345_2457

def RemovedBody345_2459 : StackLang.HolProg 64 :=
.seq RemovedBody345_2357 RemovedBody345_2458

def RemovedBody345_2460 : StackLang.HolProg 64 :=
.seq RemovedBody345_2356 RemovedBody345_2459

def RemovedBody345_2461 : StackLang.HolProg 64 :=
.seq RemovedBody345_2355 RemovedBody345_2460

def RemovedBody345_2462 : StackLang.HolProg 64 :=
.seq RemovedBody345_2354 RemovedBody345_2461

def RemovedBody345_2463 : StackLang.HolProg 64 :=
.seq RemovedBody345_2353 RemovedBody345_2462

def RemovedBody345_2464 : StackLang.HolProg 64 :=
.seq RemovedBody345_2352 RemovedBody345_2463

def RemovedBody345_2465 : StackLang.HolProg 64 :=
.seq RemovedBody345_2351 RemovedBody345_2464

def RemovedBody345_2466 : StackLang.HolProg 64 :=
.seq RemovedBody345_2350 RemovedBody345_2465

def RemovedBody345_2467 : StackLang.HolProg 64 :=
.seq RemovedBody345_2349 RemovedBody345_2466

def RemovedBody345_2468 : StackLang.HolProg 64 :=
.seq RemovedBody345_2286 RemovedBody345_2467

def RemovedBody345_2469 : StackLang.HolProg 64 :=
.seq RemovedBody345_2281 RemovedBody345_2468

def RemovedBody345_2470 : StackLang.HolProg 64 :=
.seq RemovedBody345_2280 RemovedBody345_2469

def RemovedBody345_2471 : StackLang.HolProg 64 :=
.seq RemovedBody345_2279 RemovedBody345_2470

def RemovedBody345_2472 : StackLang.HolProg 64 :=
.seq RemovedBody345_2278 RemovedBody345_2471

def RemovedBody345_2473 : StackLang.HolProg 64 :=
.seq RemovedBody345_2277 RemovedBody345_2472

def RemovedBody345_2474 : StackLang.HolProg 64 :=
.seq RemovedBody345_2276 RemovedBody345_2473

def RemovedBody345_2475 : StackLang.HolProg 64 :=
.seq RemovedBody345_2275 RemovedBody345_2474

def RemovedBody345_2476 : StackLang.HolProg 64 :=
.seq RemovedBody345_2274 RemovedBody345_2475

def RemovedBody345_2477 : StackLang.HolProg 64 :=
.seq RemovedBody345_2273 RemovedBody345_2476

def RemovedBody345_2478 : StackLang.HolProg 64 :=
.seq RemovedBody345_2272 RemovedBody345_2477

def RemovedBody345_2479 : StackLang.HolProg 64 :=
.seq RemovedBody345_2271 RemovedBody345_2478

def RemovedBody345_2480 : StackLang.HolProg 64 :=
.seq RemovedBody345_2270 RemovedBody345_2479

def RemovedBody345_2481 : StackLang.HolProg 64 :=
.seq RemovedBody345_2269 RemovedBody345_2480

def RemovedBody345_2482 : StackLang.HolProg 64 :=
.seq RemovedBody345_2268 RemovedBody345_2481

def RemovedBody345_2483 : StackLang.HolProg 64 :=
.seq RemovedBody345_2267 RemovedBody345_2482

def RemovedBody345_2484 : StackLang.HolProg 64 :=
.seq RemovedBody345_2204 RemovedBody345_2483

def RemovedBody345_2485 : StackLang.HolProg 64 :=
.seq RemovedBody345_2201 RemovedBody345_2484

def RemovedBody345_2486 : StackLang.HolProg 64 :=
.seq RemovedBody345_2200 RemovedBody345_2485

def RemovedBody345_2487 : StackLang.HolProg 64 :=
.seq RemovedBody345_2199 RemovedBody345_2486

def RemovedBody345_2488 : StackLang.HolProg 64 :=
.seq RemovedBody345_2198 RemovedBody345_2487

def RemovedBody345_2489 : StackLang.HolProg 64 :=
.seq RemovedBody345_2041 RemovedBody345_2488

def RemovedBody345_2490 : StackLang.HolProg 64 :=
.seq RemovedBody345_2040 RemovedBody345_2489

def RemovedBody345_2491 : StackLang.HolProg 64 :=
.seq RemovedBody345_2039 RemovedBody345_2490

def RemovedBody345_2492 : StackLang.HolProg 64 :=
.seq RemovedBody345_2038 RemovedBody345_2491

def RemovedBody345_2493 : StackLang.HolProg 64 :=
.seq RemovedBody345_1777 RemovedBody345_2492

def RemovedBody345_2494 : StackLang.HolProg 64 :=
.seq RemovedBody345_1776 RemovedBody345_2493

def RemovedBody345_2495 : StackLang.HolProg 64 :=
.seq RemovedBody345_1775 RemovedBody345_2494

def RemovedBody345_2496 : StackLang.HolProg 64 :=
.seq RemovedBody345_1774 RemovedBody345_2495

def RemovedBody345_2497 : StackLang.HolProg 64 :=
.seq RemovedBody345_1609 RemovedBody345_2496

def RemovedBody345_2498 : StackLang.HolProg 64 :=
.seq RemovedBody345_1608 RemovedBody345_2497

def RemovedBody345_2499 : StackLang.HolProg 64 :=
.seq RemovedBody345_1607 RemovedBody345_2498

def RemovedBody345_2500 : StackLang.HolProg 64 :=
.seq RemovedBody345_1606 RemovedBody345_2499

def RemovedBody345_2501 : StackLang.HolProg 64 :=
.seq RemovedBody345_1605 RemovedBody345_2500

def RemovedBody345_2502 : StackLang.HolProg 64 :=
.seq RemovedBody345_1604 RemovedBody345_2501

def RemovedBody345_2503 : StackLang.HolProg 64 :=
.seq RemovedBody345_1603 RemovedBody345_2502

def RemovedBody345_2504 : StackLang.HolProg 64 :=
.seq RemovedBody345_1602 RemovedBody345_2503

def RemovedBody345_2505 : StackLang.HolProg 64 :=
.seq RemovedBody345_1601 RemovedBody345_2504

def RemovedBody345_2506 : StackLang.HolProg 64 :=
.seq RemovedBody345_1600 RemovedBody345_2505

def RemovedBody345_2507 : StackLang.HolProg 64 :=
.seq RemovedBody345_1599 RemovedBody345_2506

def RemovedBody345_2508 : StackLang.HolProg 64 :=
.seq RemovedBody345_1598 RemovedBody345_2507

def RemovedBody345_2509 : StackLang.HolProg 64 :=
.seq RemovedBody345_1597 RemovedBody345_2508

def RemovedBody345_2510 : StackLang.HolProg 64 :=
.seq RemovedBody345_1596 RemovedBody345_2509

def RemovedBody345_2511 : StackLang.HolProg 64 :=
.seq RemovedBody345_1529 RemovedBody345_2510

def RemovedBody345_2512 : StackLang.HolProg 64 :=
.seq RemovedBody345_1522 RemovedBody345_2511

def RemovedBody345_2513 : StackLang.HolProg 64 :=
.seq RemovedBody345_1521 RemovedBody345_2512

def RemovedBody345_2514 : StackLang.HolProg 64 :=
.seq RemovedBody345_1520 RemovedBody345_2513

def RemovedBody345_2515 : StackLang.HolProg 64 :=
.seq RemovedBody345_1519 RemovedBody345_2514

def RemovedBody345_2516 : StackLang.HolProg 64 :=
.seq RemovedBody345_1518 RemovedBody345_2515

def RemovedBody345_2517 : StackLang.HolProg 64 :=
.seq RemovedBody345_1517 RemovedBody345_2516

def RemovedBody345_2518 : StackLang.HolProg 64 :=
.seq RemovedBody345_1516 RemovedBody345_2517

def RemovedBody345_2519 : StackLang.HolProg 64 :=
.seq RemovedBody345_1515 RemovedBody345_2518

def RemovedBody345_2520 : StackLang.HolProg 64 :=
.seq RemovedBody345_1514 RemovedBody345_2519

def RemovedBody345_2521 : StackLang.HolProg 64 :=
.seq RemovedBody345_1513 RemovedBody345_2520

def RemovedBody345_2522 : StackLang.HolProg 64 :=
.seq RemovedBody345_1512 RemovedBody345_2521

def RemovedBody345_2523 : StackLang.HolProg 64 :=
.seq RemovedBody345_1511 RemovedBody345_2522

def RemovedBody345_2524 : StackLang.HolProg 64 :=
.seq RemovedBody345_1510 RemovedBody345_2523

def RemovedBody345_2525 : StackLang.HolProg 64 :=
.seq RemovedBody345_1509 RemovedBody345_2524

def RemovedBody345_2526 : StackLang.HolProg 64 :=
.seq RemovedBody345_1446 RemovedBody345_2525

def RemovedBody345_2527 : StackLang.HolProg 64 :=
.seq RemovedBody345_1441 RemovedBody345_2526

def RemovedBody345_2528 : StackLang.HolProg 64 :=
.seq RemovedBody345_1440 RemovedBody345_2527

def RemovedBody345_2529 : StackLang.HolProg 64 :=
.seq RemovedBody345_1439 RemovedBody345_2528

def RemovedBody345_2530 : StackLang.HolProg 64 :=
.seq RemovedBody345_1438 RemovedBody345_2529

def RemovedBody345_2531 : StackLang.HolProg 64 :=
.seq RemovedBody345_1437 RemovedBody345_2530

def RemovedBody345_2532 : StackLang.HolProg 64 :=
.seq RemovedBody345_1436 RemovedBody345_2531

def RemovedBody345_2533 : StackLang.HolProg 64 :=
.seq RemovedBody345_1435 RemovedBody345_2532

def RemovedBody345_2534 : StackLang.HolProg 64 :=
.seq RemovedBody345_1434 RemovedBody345_2533

def RemovedBody345_2535 : StackLang.HolProg 64 :=
.seq RemovedBody345_1433 RemovedBody345_2534

def RemovedBody345_2536 : StackLang.HolProg 64 :=
.seq RemovedBody345_1432 RemovedBody345_2535

def RemovedBody345_2537 : StackLang.HolProg 64 :=
.seq RemovedBody345_1271 RemovedBody345_2536

def RemovedBody345_2538 : StackLang.HolProg 64 :=
.seq RemovedBody345_1270 RemovedBody345_2537

def RemovedBody345_2539 : StackLang.HolProg 64 :=
.seq RemovedBody345_1269 RemovedBody345_2538

def RemovedBody345_2540 : StackLang.HolProg 64 :=
.seq RemovedBody345_1268 RemovedBody345_2539

def RemovedBody345_2541 : StackLang.HolProg 64 :=
.seq RemovedBody345_1267 RemovedBody345_2540

def RemovedBody345_2542 : StackLang.HolProg 64 :=
.seq RemovedBody345_1266 RemovedBody345_2541

def RemovedBody345_2543 : StackLang.HolProg 64 :=
.seq RemovedBody345_1265 RemovedBody345_2542

def RemovedBody345_2544 : StackLang.HolProg 64 :=
.seq RemovedBody345_1264 RemovedBody345_2543

def RemovedBody345_2545 : StackLang.HolProg 64 :=
.seq RemovedBody345_1263 RemovedBody345_2544

def RemovedBody345_2546 : StackLang.HolProg 64 :=
.seq RemovedBody345_1262 RemovedBody345_2545

def RemovedBody345_2547 : StackLang.HolProg 64 :=
.seq RemovedBody345_1195 RemovedBody345_2546

def RemovedBody345_2548 : StackLang.HolProg 64 :=
.seq RemovedBody345_1192 RemovedBody345_2547

def RemovedBody345_2549 : StackLang.HolProg 64 :=
.seq RemovedBody345_1191 RemovedBody345_2548

def RemovedBody345_2550 : StackLang.HolProg 64 :=
.seq RemovedBody345_1190 RemovedBody345_2549

def RemovedBody345_2551 : StackLang.HolProg 64 :=
.seq RemovedBody345_1189 RemovedBody345_2550

def RemovedBody345_2552 : StackLang.HolProg 64 :=
.seq RemovedBody345_1188 RemovedBody345_2551

def RemovedBody345_2553 : StackLang.HolProg 64 :=
.seq RemovedBody345_879 RemovedBody345_2552

def RemovedBody345_2554 : StackLang.HolProg 64 :=
.seq RemovedBody345_878 RemovedBody345_2553

def RemovedBody345_2555 : StackLang.HolProg 64 :=
.seq RemovedBody345_877 RemovedBody345_2554

def RemovedBody345_2556 : StackLang.HolProg 64 :=
.seq RemovedBody345_876 RemovedBody345_2555

def RemovedBody345_2557 : StackLang.HolProg 64 :=
.seq RemovedBody345_875 RemovedBody345_2556

def RemovedBody345_2558 : StackLang.HolProg 64 :=
.seq RemovedBody345_874 RemovedBody345_2557

def RemovedBody345_2559 : StackLang.HolProg 64 :=
.seq RemovedBody345_873 RemovedBody345_2558

def RemovedBody345_2560 : StackLang.HolProg 64 :=
.seq RemovedBody345_872 RemovedBody345_2559

def RemovedBody345_2561 : StackLang.HolProg 64 :=
.seq RemovedBody345_871 RemovedBody345_2560

def RemovedBody345_2562 : StackLang.HolProg 64 :=
.seq RemovedBody345_870 RemovedBody345_2561

def RemovedBody345_2563 : StackLang.HolProg 64 :=
.seq RemovedBody345_869 RemovedBody345_2562

def RemovedBody345_2564 : StackLang.HolProg 64 :=
.seq RemovedBody345_868 RemovedBody345_2563

def RemovedBody345_2565 : StackLang.HolProg 64 :=
.seq RemovedBody345_867 RemovedBody345_2564

def RemovedBody345_2566 : StackLang.HolProg 64 :=
.seq RemovedBody345_866 RemovedBody345_2565

def RemovedBody345_2567 : StackLang.HolProg 64 :=
.seq RemovedBody345_865 RemovedBody345_2566

def RemovedBody345_2568 : StackLang.HolProg 64 :=
.seq RemovedBody345_864 RemovedBody345_2567

def RemovedBody345_2569 : StackLang.HolProg 64 :=
.seq RemovedBody345_863 RemovedBody345_2568

def RemovedBody345_2570 : StackLang.HolProg 64 :=
.seq RemovedBody345_686 RemovedBody345_2569

def RemovedBody345_2571 : StackLang.HolProg 64 :=
.seq RemovedBody345_685 RemovedBody345_2570

def RemovedBody345_2572 : StackLang.HolProg 64 :=
.seq RemovedBody345_684 RemovedBody345_2571

def RemovedBody345_2573 : StackLang.HolProg 64 :=
.seq RemovedBody345_683 RemovedBody345_2572

def RemovedBody345_2574 : StackLang.HolProg 64 :=
.seq RemovedBody345_584 RemovedBody345_2573

def RemovedBody345_2575 : StackLang.HolProg 64 :=
.seq RemovedBody345_583 RemovedBody345_2574

def RemovedBody345_2576 : StackLang.HolProg 64 :=
.seq RemovedBody345_582 RemovedBody345_2575

def RemovedBody345_2577 : StackLang.HolProg 64 :=
.seq RemovedBody345_581 RemovedBody345_2576

def RemovedBody345_2578 : StackLang.HolProg 64 :=
.seq RemovedBody345_580 RemovedBody345_2577

def RemovedBody345_2579 : StackLang.HolProg 64 :=
.seq RemovedBody345_579 RemovedBody345_2578

def RemovedBody345_2580 : StackLang.HolProg 64 :=
.seq RemovedBody345_564 RemovedBody345_2579

def RemovedBody345_2581 : StackLang.HolProg 64 :=
.seq RemovedBody345_563 RemovedBody345_2580

def RemovedBody345_2582 : StackLang.HolProg 64 :=
.seq RemovedBody345_562 RemovedBody345_2581

def RemovedBody345_2583 : StackLang.HolProg 64 :=
.seq RemovedBody345_503 RemovedBody345_2582

def RemovedBody345_2584 : StackLang.HolProg 64 :=
.seq RemovedBody345_496 RemovedBody345_2583

def RemovedBody345_2585 : StackLang.HolProg 64 :=
.seq RemovedBody345_495 RemovedBody345_2584

def RemovedBody345_2586 : StackLang.HolProg 64 :=
.seq RemovedBody345_494 RemovedBody345_2585

def RemovedBody345_2587 : StackLang.HolProg 64 :=
.seq RemovedBody345_479 RemovedBody345_2586

def RemovedBody345_2588 : StackLang.HolProg 64 :=
.seq RemovedBody345_478 RemovedBody345_2587

def RemovedBody345_2589 : StackLang.HolProg 64 :=
.seq RemovedBody345_477 RemovedBody345_2588

def RemovedBody345_2590 : StackLang.HolProg 64 :=
.seq RemovedBody345_476 RemovedBody345_2589

def RemovedBody345_2591 : StackLang.HolProg 64 :=
.seq RemovedBody345_475 RemovedBody345_2590

def RemovedBody345_2592 : StackLang.HolProg 64 :=
.seq RemovedBody345_474 RemovedBody345_2591

def RemovedBody345_2593 : StackLang.HolProg 64 :=
.seq RemovedBody345_197 RemovedBody345_2592

def RemovedBody345_2594 : StackLang.HolProg 64 :=
.seq RemovedBody345_196 RemovedBody345_2593

def RemovedBody345_2595 : StackLang.HolProg 64 :=
.seq RemovedBody345_195 RemovedBody345_2594

def RemovedBody345_2596 : StackLang.HolProg 64 :=
.seq RemovedBody345_194 RemovedBody345_2595

def RemovedBody345_2597 : StackLang.HolProg 64 :=
.seq RemovedBody345_183 RemovedBody345_2596

def RemovedBody345_2598 : StackLang.HolProg 64 :=
.seq RemovedBody345_182 RemovedBody345_2597

def RemovedBody345_2599 : StackLang.HolProg 64 :=
.seq RemovedBody345_181 RemovedBody345_2598

def RemovedBody345_2600 : StackLang.HolProg 64 :=
.seq RemovedBody345_180 RemovedBody345_2599

def RemovedBody345_2601 : StackLang.HolProg 64 :=
.seq RemovedBody345_169 RemovedBody345_2600

def RemovedBody345_2602 : StackLang.HolProg 64 :=
.seq RemovedBody345_168 RemovedBody345_2601

def RemovedBody345_2603 : StackLang.HolProg 64 :=
.seq RemovedBody345_167 RemovedBody345_2602

def RemovedBody345_2604 : StackLang.HolProg 64 :=
.seq RemovedBody345_166 RemovedBody345_2603

def RemovedBody345_2605 : StackLang.HolProg 64 :=
.seq RemovedBody345_165 RemovedBody345_2604

def RemovedBody345_2606 : StackLang.HolProg 64 :=
.seq RemovedBody345_164 RemovedBody345_2605

def RemovedBody345_2607 : StackLang.HolProg 64 :=
.seq RemovedBody345_163 RemovedBody345_2606

def RemovedBody345_2608 : StackLang.HolProg 64 :=
.seq RemovedBody345_162 RemovedBody345_2607

def RemovedBody345_2609 : StackLang.HolProg 64 :=
.seq RemovedBody345_161 RemovedBody345_2608

def RemovedBody345_2610 : StackLang.HolProg 64 :=
.seq RemovedBody345_160 RemovedBody345_2609

def RemovedBody345_2611 : StackLang.HolProg 64 :=
.seq RemovedBody345_159 RemovedBody345_2610

def RemovedBody345_2612 : StackLang.HolProg 64 :=
.seq RemovedBody345_158 RemovedBody345_2611

def RemovedBody345_2613 : StackLang.HolProg 64 :=
.seq RemovedBody345_157 RemovedBody345_2612

def RemovedBody345_2614 : StackLang.HolProg 64 :=
.seq RemovedBody345_156 RemovedBody345_2613

def RemovedBody345_2615 : StackLang.HolProg 64 :=
.seq RemovedBody345_91 RemovedBody345_2614

def RemovedBody345_2616 : StackLang.HolProg 64 :=
.seq RemovedBody345_90 RemovedBody345_2615

def RemovedBody345_2617 : StackLang.HolProg 64 :=
.seq RemovedBody345_89 RemovedBody345_2616

def RemovedBody345_2618 : StackLang.HolProg 64 :=
.seq RemovedBody345_88 RemovedBody345_2617

def RemovedBody345_2619 : StackLang.HolProg 64 :=
.seq RemovedBody345_87 RemovedBody345_2618

def RemovedBody345_2620 : StackLang.HolProg 64 :=
.seq RemovedBody345_34 RemovedBody345_2619

def RemovedBody345_2621 : StackLang.HolProg 64 :=
.seq RemovedBody345_29 RemovedBody345_2620

def RemovedBody345_2622 : StackLang.HolProg 64 :=
.seq RemovedBody345_28 RemovedBody345_2621

def RemovedBody345_2623 : StackLang.HolProg 64 :=
.seq RemovedBody345_27 RemovedBody345_2622

def RemovedBody345_2624 : StackLang.HolProg 64 :=
.seq RemovedBody345_26 RemovedBody345_2623

def RemovedBody345_2625 : StackLang.HolProg 64 :=
.seq RemovedBody345_25 RemovedBody345_2624

def RemovedBody345_2626 : StackLang.HolProg 64 :=
.seq RemovedBody345_24 RemovedBody345_2625

def RemovedBody345_2627 : StackLang.HolProg 64 :=
.seq RemovedBody345_23 RemovedBody345_2626

def RemovedBody345_2628 : StackLang.HolProg 64 :=
.seq RemovedBody345_8 RemovedBody345_2627

def RemovedBody345_2629 : StackLang.HolProg 64 :=
.seq RemovedBody345_7 RemovedBody345_2628

def RemovedBody345_2630 : StackLang.HolProg 64 :=
.seq RemovedBody345_6 RemovedBody345_2629

def Removed345 : Nat × StackLang.HolProg 64 := (345, RemovedBody345_2630)
theorem Removed345_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc345 = Removed345 := by
  kernel_rfl
#print axioms Removed345_eq
end InitECandidate.Proofs.BackendStages
