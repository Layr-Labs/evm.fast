import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc379
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody379_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody379_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody379_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody379_3 : StackLang.HolProg 64 :=
.seq RemovedBody379_1 RemovedBody379_2

def RemovedBody379_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody379_3 RemovedBody379_4

def RemovedBody379_6 : StackLang.HolProg 64 :=
.seq RemovedBody379_0 RemovedBody379_5

def RemovedBody379_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody379_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_11 : StackLang.HolProg 64 :=
.seq RemovedBody379_9 RemovedBody379_10

def RemovedBody379_12 : StackLang.HolProg 64 :=
.seq RemovedBody379_8 RemovedBody379_11

def RemovedBody379_13 : StackLang.HolProg 64 :=
.seq RemovedBody379_7 RemovedBody379_12

def RemovedBody379_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1109#64)

def RemovedBody379_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_17 : StackLang.HolProg 64 :=
.seq RemovedBody379_15 RemovedBody379_16

def RemovedBody379_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody379_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody379_21 : StackLang.HolProg 64 :=
.seq RemovedBody379_19 RemovedBody379_20

def RemovedBody379_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody379_21 RemovedBody379_22

def RemovedBody379_24 : StackLang.HolProg 64 :=
.seq RemovedBody379_18 RemovedBody379_23

def RemovedBody379_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody379_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 3

def RemovedBody379_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody379_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody379_34 : StackLang.HolProg 64 :=
.seq RemovedBody379_32 RemovedBody379_33

def RemovedBody379_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody379_36 : StackLang.HolProg 64 :=
.seq RemovedBody379_34 RemovedBody379_35

def RemovedBody379_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_38 : StackLang.HolProg 64 :=
.seq RemovedBody379_36 RemovedBody379_37

def RemovedBody379_39 : StackLang.HolProg 64 :=
.seq RemovedBody379_31 RemovedBody379_38

def RemovedBody379_40 : StackLang.HolProg 64 :=
.seq RemovedBody379_30 RemovedBody379_39

def RemovedBody379_41 : StackLang.HolProg 64 :=
.seq RemovedBody379_29 RemovedBody379_40

def RemovedBody379_42 : StackLang.HolProg 64 :=
.seq RemovedBody379_28 RemovedBody379_41

def RemovedBody379_43 : StackLang.HolProg 64 :=
.seq RemovedBody379_27 RemovedBody379_42

def RemovedBody379_44 : StackLang.HolProg 64 :=
.seq RemovedBody379_26 RemovedBody379_43

def RemovedBody379_45 : StackLang.HolProg 64 :=
.seq RemovedBody379_25 RemovedBody379_44

def RemovedBody379_46 : StackLang.HolProg 64 :=
.seq RemovedBody379_24 RemovedBody379_45

def RemovedBody379_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody379_54 : StackLang.HolProg 64 :=
.seq RemovedBody379_52 RemovedBody379_53

def RemovedBody379_55 : StackLang.HolProg 64 :=
.seq RemovedBody379_51 RemovedBody379_54

def RemovedBody379_56 : StackLang.HolProg 64 :=
.seq RemovedBody379_50 RemovedBody379_55

def RemovedBody379_57 : StackLang.HolProg 64 :=
.seq RemovedBody379_49 RemovedBody379_56

def RemovedBody379_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody379_60 : StackLang.HolProg 64 :=
.seq RemovedBody379_58 RemovedBody379_59

def RemovedBody379_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody379_57, 0, 379, 2)) (Sum.inl 69) (some (RemovedBody379_60, 379, 3))

def RemovedBody379_62 : StackLang.HolProg 64 :=
.seq RemovedBody379_48 RemovedBody379_61

def RemovedBody379_63 : StackLang.HolProg 64 :=
.seq RemovedBody379_47 RemovedBody379_62

def RemovedBody379_64 : StackLang.HolProg 64 :=
.seq RemovedBody379_46 RemovedBody379_63

def RemovedBody379_65 : StackLang.HolProg 64 :=
.seq RemovedBody379_17 RemovedBody379_64

def RemovedBody379_66 : StackLang.HolProg 64 :=
.seq RemovedBody379_14 RemovedBody379_65

def RemovedBody379_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody379_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody379_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1110#64)

def RemovedBody379_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_73 : StackLang.HolProg 64 :=
.seq RemovedBody379_71 RemovedBody379_72

def RemovedBody379_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody379_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody379_77 : StackLang.HolProg 64 :=
.seq RemovedBody379_75 RemovedBody379_76

def RemovedBody379_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody379_77 RemovedBody379_78

def RemovedBody379_80 : StackLang.HolProg 64 :=
.seq RemovedBody379_74 RemovedBody379_79

def RemovedBody379_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody379_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 5

def RemovedBody379_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody379_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody379_90 : StackLang.HolProg 64 :=
.seq RemovedBody379_88 RemovedBody379_89

def RemovedBody379_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody379_92 : StackLang.HolProg 64 :=
.seq RemovedBody379_90 RemovedBody379_91

def RemovedBody379_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_94 : StackLang.HolProg 64 :=
.seq RemovedBody379_92 RemovedBody379_93

def RemovedBody379_95 : StackLang.HolProg 64 :=
.seq RemovedBody379_87 RemovedBody379_94

def RemovedBody379_96 : StackLang.HolProg 64 :=
.seq RemovedBody379_86 RemovedBody379_95

def RemovedBody379_97 : StackLang.HolProg 64 :=
.seq RemovedBody379_85 RemovedBody379_96

def RemovedBody379_98 : StackLang.HolProg 64 :=
.seq RemovedBody379_84 RemovedBody379_97

def RemovedBody379_99 : StackLang.HolProg 64 :=
.seq RemovedBody379_83 RemovedBody379_98

def RemovedBody379_100 : StackLang.HolProg 64 :=
.seq RemovedBody379_82 RemovedBody379_99

def RemovedBody379_101 : StackLang.HolProg 64 :=
.seq RemovedBody379_81 RemovedBody379_100

def RemovedBody379_102 : StackLang.HolProg 64 :=
.seq RemovedBody379_80 RemovedBody379_101

def RemovedBody379_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody379_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody379_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_113 : StackLang.HolProg 64 :=
.seq RemovedBody379_111 RemovedBody379_112

def RemovedBody379_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_115 : StackLang.HolProg 64 :=
.seq RemovedBody379_113 RemovedBody379_114

def RemovedBody379_116 : StackLang.HolProg 64 :=
.seq RemovedBody379_110 RemovedBody379_115

def RemovedBody379_117 : StackLang.HolProg 64 :=
.seq RemovedBody379_109 RemovedBody379_116

def RemovedBody379_118 : StackLang.HolProg 64 :=
.seq RemovedBody379_108 RemovedBody379_117

def RemovedBody379_119 : StackLang.HolProg 64 :=
.seq RemovedBody379_107 RemovedBody379_118

def RemovedBody379_120 : StackLang.HolProg 64 :=
.seq RemovedBody379_106 RemovedBody379_119

def RemovedBody379_121 : StackLang.HolProg 64 :=
.seq RemovedBody379_105 RemovedBody379_120

def RemovedBody379_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody379_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_125 : StackLang.HolProg 64 :=
.seq RemovedBody379_123 RemovedBody379_124

def RemovedBody379_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_127 : StackLang.HolProg 64 :=
.seq RemovedBody379_125 RemovedBody379_126

def RemovedBody379_128 : StackLang.HolProg 64 :=
.seq RemovedBody379_122 RemovedBody379_127

def RemovedBody379_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody379_130 : StackLang.HolProg 64 :=
.seq RemovedBody379_128 RemovedBody379_129

def RemovedBody379_131 : StackLang.HolProg 64 :=
.call (some (RemovedBody379_121, 0, 379, 4)) (Sum.inl 68) (some (RemovedBody379_130, 379, 5))

def RemovedBody379_132 : StackLang.HolProg 64 :=
.seq RemovedBody379_104 RemovedBody379_131

def RemovedBody379_133 : StackLang.HolProg 64 :=
.seq RemovedBody379_103 RemovedBody379_132

def RemovedBody379_134 : StackLang.HolProg 64 :=
.seq RemovedBody379_102 RemovedBody379_133

def RemovedBody379_135 : StackLang.HolProg 64 :=
.seq RemovedBody379_73 RemovedBody379_134

def RemovedBody379_136 : StackLang.HolProg 64 :=
.seq RemovedBody379_70 RemovedBody379_135

def RemovedBody379_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody379_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody379_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_141 : StackLang.HolProg 64 :=
.seq RemovedBody379_139 RemovedBody379_140

def RemovedBody379_142 : StackLang.HolProg 64 :=
.seq RemovedBody379_138 RemovedBody379_141

def RemovedBody379_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1111#64)

def RemovedBody379_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_146 : StackLang.HolProg 64 :=
.seq RemovedBody379_144 RemovedBody379_145

def RemovedBody379_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody379_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody379_150 : StackLang.HolProg 64 :=
.seq RemovedBody379_148 RemovedBody379_149

def RemovedBody379_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody379_150 RemovedBody379_151

def RemovedBody379_153 : StackLang.HolProg 64 :=
.seq RemovedBody379_147 RemovedBody379_152

def RemovedBody379_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody379_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 7

def RemovedBody379_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody379_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody379_163 : StackLang.HolProg 64 :=
.seq RemovedBody379_161 RemovedBody379_162

def RemovedBody379_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody379_165 : StackLang.HolProg 64 :=
.seq RemovedBody379_163 RemovedBody379_164

def RemovedBody379_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_167 : StackLang.HolProg 64 :=
.seq RemovedBody379_165 RemovedBody379_166

def RemovedBody379_168 : StackLang.HolProg 64 :=
.seq RemovedBody379_160 RemovedBody379_167

def RemovedBody379_169 : StackLang.HolProg 64 :=
.seq RemovedBody379_159 RemovedBody379_168

def RemovedBody379_170 : StackLang.HolProg 64 :=
.seq RemovedBody379_158 RemovedBody379_169

def RemovedBody379_171 : StackLang.HolProg 64 :=
.seq RemovedBody379_157 RemovedBody379_170

def RemovedBody379_172 : StackLang.HolProg 64 :=
.seq RemovedBody379_156 RemovedBody379_171

def RemovedBody379_173 : StackLang.HolProg 64 :=
.seq RemovedBody379_155 RemovedBody379_172

def RemovedBody379_174 : StackLang.HolProg 64 :=
.seq RemovedBody379_154 RemovedBody379_173

def RemovedBody379_175 : StackLang.HolProg 64 :=
.seq RemovedBody379_153 RemovedBody379_174

def RemovedBody379_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody379_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody379_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_186 : StackLang.HolProg 64 :=
.seq RemovedBody379_184 RemovedBody379_185

def RemovedBody379_187 : StackLang.HolProg 64 :=
.seq RemovedBody379_183 RemovedBody379_186

def RemovedBody379_188 : StackLang.HolProg 64 :=
.seq RemovedBody379_182 RemovedBody379_187

def RemovedBody379_189 : StackLang.HolProg 64 :=
.seq RemovedBody379_181 RemovedBody379_188

def RemovedBody379_190 : StackLang.HolProg 64 :=
.seq RemovedBody379_180 RemovedBody379_189

def RemovedBody379_191 : StackLang.HolProg 64 :=
.seq RemovedBody379_179 RemovedBody379_190

def RemovedBody379_192 : StackLang.HolProg 64 :=
.seq RemovedBody379_178 RemovedBody379_191

def RemovedBody379_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody379_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_196 : StackLang.HolProg 64 :=
.seq RemovedBody379_194 RemovedBody379_195

def RemovedBody379_197 : StackLang.HolProg 64 :=
.seq RemovedBody379_193 RemovedBody379_196

def RemovedBody379_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody379_199 : StackLang.HolProg 64 :=
.seq RemovedBody379_197 RemovedBody379_198

def RemovedBody379_200 : StackLang.HolProg 64 :=
.call (some (RemovedBody379_192, 0, 379, 6)) (Sum.inl 378) (some (RemovedBody379_199, 379, 7))

def RemovedBody379_201 : StackLang.HolProg 64 :=
.seq RemovedBody379_177 RemovedBody379_200

def RemovedBody379_202 : StackLang.HolProg 64 :=
.seq RemovedBody379_176 RemovedBody379_201

def RemovedBody379_203 : StackLang.HolProg 64 :=
.seq RemovedBody379_175 RemovedBody379_202

def RemovedBody379_204 : StackLang.HolProg 64 :=
.seq RemovedBody379_146 RemovedBody379_203

def RemovedBody379_205 : StackLang.HolProg 64 :=
.seq RemovedBody379_143 RemovedBody379_204

def RemovedBody379_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody379_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 320#64))

def RemovedBody379_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 328#64))

def RemovedBody379_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 336#64))

def RemovedBody379_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 344#64))

def RemovedBody379_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 352#64))

def RemovedBody379_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 360#64))

def RemovedBody379_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 368#64))

def RemovedBody379_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 376#64))

def RemovedBody379_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1112#64)

def RemovedBody379_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_227 : StackLang.HolProg 64 :=
.seq RemovedBody379_225 RemovedBody379_226

def RemovedBody379_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody379_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody379_231 : StackLang.HolProg 64 :=
.seq RemovedBody379_229 RemovedBody379_230

def RemovedBody379_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody379_231 RemovedBody379_232

def RemovedBody379_234 : StackLang.HolProg 64 :=
.seq RemovedBody379_228 RemovedBody379_233

def RemovedBody379_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody379_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 9

def RemovedBody379_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody379_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody379_244 : StackLang.HolProg 64 :=
.seq RemovedBody379_242 RemovedBody379_243

def RemovedBody379_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody379_246 : StackLang.HolProg 64 :=
.seq RemovedBody379_244 RemovedBody379_245

def RemovedBody379_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_248 : StackLang.HolProg 64 :=
.seq RemovedBody379_246 RemovedBody379_247

def RemovedBody379_249 : StackLang.HolProg 64 :=
.seq RemovedBody379_241 RemovedBody379_248

def RemovedBody379_250 : StackLang.HolProg 64 :=
.seq RemovedBody379_240 RemovedBody379_249

def RemovedBody379_251 : StackLang.HolProg 64 :=
.seq RemovedBody379_239 RemovedBody379_250

def RemovedBody379_252 : StackLang.HolProg 64 :=
.seq RemovedBody379_238 RemovedBody379_251

def RemovedBody379_253 : StackLang.HolProg 64 :=
.seq RemovedBody379_237 RemovedBody379_252

def RemovedBody379_254 : StackLang.HolProg 64 :=
.seq RemovedBody379_236 RemovedBody379_253

def RemovedBody379_255 : StackLang.HolProg 64 :=
.seq RemovedBody379_235 RemovedBody379_254

def RemovedBody379_256 : StackLang.HolProg 64 :=
.seq RemovedBody379_234 RemovedBody379_255

def RemovedBody379_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody379_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_265 : StackLang.HolProg 64 :=
.seq RemovedBody379_263 RemovedBody379_264

def RemovedBody379_266 : StackLang.HolProg 64 :=
.seq RemovedBody379_262 RemovedBody379_265

def RemovedBody379_267 : StackLang.HolProg 64 :=
.seq RemovedBody379_261 RemovedBody379_266

def RemovedBody379_268 : StackLang.HolProg 64 :=
.seq RemovedBody379_260 RemovedBody379_267

def RemovedBody379_269 : StackLang.HolProg 64 :=
.seq RemovedBody379_259 RemovedBody379_268

def RemovedBody379_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_271 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody379_272 : StackLang.HolProg 64 :=
.seq RemovedBody379_270 RemovedBody379_271

def RemovedBody379_273 : StackLang.HolProg 64 :=
.call (some (RemovedBody379_269, 0, 379, 8)) (Sum.inl 231) (some (RemovedBody379_272, 379, 9))

def RemovedBody379_274 : StackLang.HolProg 64 :=
.seq RemovedBody379_258 RemovedBody379_273

def RemovedBody379_275 : StackLang.HolProg 64 :=
.seq RemovedBody379_257 RemovedBody379_274

def RemovedBody379_276 : StackLang.HolProg 64 :=
.seq RemovedBody379_256 RemovedBody379_275

def RemovedBody379_277 : StackLang.HolProg 64 :=
.seq RemovedBody379_227 RemovedBody379_276

def RemovedBody379_278 : StackLang.HolProg 64 :=
.seq RemovedBody379_224 RemovedBody379_277

def RemovedBody379_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody379_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_282 : StackLang.HolProg 64 :=
.seq RemovedBody379_280 RemovedBody379_281

def RemovedBody379_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1113#64)

def RemovedBody379_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_286 : StackLang.HolProg 64 :=
.seq RemovedBody379_284 RemovedBody379_285

def RemovedBody379_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody379_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody379_290 : StackLang.HolProg 64 :=
.seq RemovedBody379_288 RemovedBody379_289

def RemovedBody379_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_292 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody379_290 RemovedBody379_291

def RemovedBody379_293 : StackLang.HolProg 64 :=
.seq RemovedBody379_287 RemovedBody379_292

def RemovedBody379_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody379_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody379_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 11

def RemovedBody379_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody379_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody379_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody379_303 : StackLang.HolProg 64 :=
.seq RemovedBody379_301 RemovedBody379_302

def RemovedBody379_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody379_305 : StackLang.HolProg 64 :=
.seq RemovedBody379_303 RemovedBody379_304

def RemovedBody379_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_307 : StackLang.HolProg 64 :=
.seq RemovedBody379_305 RemovedBody379_306

def RemovedBody379_308 : StackLang.HolProg 64 :=
.seq RemovedBody379_300 RemovedBody379_307

def RemovedBody379_309 : StackLang.HolProg 64 :=
.seq RemovedBody379_299 RemovedBody379_308

def RemovedBody379_310 : StackLang.HolProg 64 :=
.seq RemovedBody379_298 RemovedBody379_309

def RemovedBody379_311 : StackLang.HolProg 64 :=
.seq RemovedBody379_297 RemovedBody379_310

def RemovedBody379_312 : StackLang.HolProg 64 :=
.seq RemovedBody379_296 RemovedBody379_311

def RemovedBody379_313 : StackLang.HolProg 64 :=
.seq RemovedBody379_295 RemovedBody379_312

def RemovedBody379_314 : StackLang.HolProg 64 :=
.seq RemovedBody379_294 RemovedBody379_313

def RemovedBody379_315 : StackLang.HolProg 64 :=
.seq RemovedBody379_293 RemovedBody379_314

def RemovedBody379_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody379_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody379_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody379_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody379_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_324 : StackLang.HolProg 64 :=
.seq RemovedBody379_322 RemovedBody379_323

def RemovedBody379_325 : StackLang.HolProg 64 :=
.seq RemovedBody379_321 RemovedBody379_324

def RemovedBody379_326 : StackLang.HolProg 64 :=
.seq RemovedBody379_320 RemovedBody379_325

def RemovedBody379_327 : StackLang.HolProg 64 :=
.seq RemovedBody379_319 RemovedBody379_326

def RemovedBody379_328 : StackLang.HolProg 64 :=
.seq RemovedBody379_318 RemovedBody379_327

def RemovedBody379_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody379_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody379_331 : StackLang.HolProg 64 :=
.seq RemovedBody379_329 RemovedBody379_330

def RemovedBody379_332 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody379_333 : StackLang.HolProg 64 :=
.seq RemovedBody379_331 RemovedBody379_332

def RemovedBody379_334 : StackLang.HolProg 64 :=
.call (some (RemovedBody379_328, 0, 379, 10)) (Sum.inl 70) (some (RemovedBody379_333, 379, 11))

def RemovedBody379_335 : StackLang.HolProg 64 :=
.seq RemovedBody379_317 RemovedBody379_334

def RemovedBody379_336 : StackLang.HolProg 64 :=
.seq RemovedBody379_316 RemovedBody379_335

def RemovedBody379_337 : StackLang.HolProg 64 :=
.seq RemovedBody379_315 RemovedBody379_336

def RemovedBody379_338 : StackLang.HolProg 64 :=
.seq RemovedBody379_286 RemovedBody379_337

def RemovedBody379_339 : StackLang.HolProg 64 :=
.seq RemovedBody379_283 RemovedBody379_338

def RemovedBody379_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody379_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 46#64)

def RemovedBody379_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody379_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody379_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_349 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody379_350 : StackLang.HolProg 64 :=
.seq RemovedBody379_348 RemovedBody379_349

def RemovedBody379_351 : StackLang.HolProg 64 :=
.seq RemovedBody379_347 RemovedBody379_350

def RemovedBody379_352 : StackLang.HolProg 64 :=
.seq RemovedBody379_346 RemovedBody379_351

def RemovedBody379_353 : StackLang.HolProg 64 :=
.seq RemovedBody379_345 RemovedBody379_352

def RemovedBody379_354 : StackLang.HolProg 64 :=
.seq RemovedBody379_344 RemovedBody379_353

def RemovedBody379_355 : StackLang.HolProg 64 :=
.seq RemovedBody379_343 RemovedBody379_354

def RemovedBody379_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_357 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody379_355 RemovedBody379_356

def RemovedBody379_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody379_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody379_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody379_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody379_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody379_364 : StackLang.HolProg 64 :=
.seq RemovedBody379_362 RemovedBody379_363

def RemovedBody379_365 : StackLang.HolProg 64 :=
.seq RemovedBody379_361 RemovedBody379_364

def RemovedBody379_366 : StackLang.HolProg 64 :=
.seq RemovedBody379_360 RemovedBody379_365

def RemovedBody379_367 : StackLang.HolProg 64 :=
.seq RemovedBody379_359 RemovedBody379_366

def RemovedBody379_368 : StackLang.HolProg 64 :=
.seq RemovedBody379_358 RemovedBody379_367

def RemovedBody379_369 : StackLang.HolProg 64 :=
.seq RemovedBody379_357 RemovedBody379_368

def RemovedBody379_370 : StackLang.HolProg 64 :=
.seq RemovedBody379_342 RemovedBody379_369

def RemovedBody379_371 : StackLang.HolProg 64 :=
.seq RemovedBody379_341 RemovedBody379_370

def RemovedBody379_372 : StackLang.HolProg 64 :=
.seq RemovedBody379_340 RemovedBody379_371

def RemovedBody379_373 : StackLang.HolProg 64 :=
.seq RemovedBody379_339 RemovedBody379_372

def RemovedBody379_374 : StackLang.HolProg 64 :=
.seq RemovedBody379_282 RemovedBody379_373

def RemovedBody379_375 : StackLang.HolProg 64 :=
.seq RemovedBody379_279 RemovedBody379_374

def RemovedBody379_376 : StackLang.HolProg 64 :=
.seq RemovedBody379_278 RemovedBody379_375

def RemovedBody379_377 : StackLang.HolProg 64 :=
.seq RemovedBody379_223 RemovedBody379_376

def RemovedBody379_378 : StackLang.HolProg 64 :=
.seq RemovedBody379_222 RemovedBody379_377

def RemovedBody379_379 : StackLang.HolProg 64 :=
.seq RemovedBody379_221 RemovedBody379_378

def RemovedBody379_380 : StackLang.HolProg 64 :=
.seq RemovedBody379_220 RemovedBody379_379

def RemovedBody379_381 : StackLang.HolProg 64 :=
.seq RemovedBody379_219 RemovedBody379_380

def RemovedBody379_382 : StackLang.HolProg 64 :=
.seq RemovedBody379_218 RemovedBody379_381

def RemovedBody379_383 : StackLang.HolProg 64 :=
.seq RemovedBody379_217 RemovedBody379_382

def RemovedBody379_384 : StackLang.HolProg 64 :=
.seq RemovedBody379_216 RemovedBody379_383

def RemovedBody379_385 : StackLang.HolProg 64 :=
.seq RemovedBody379_215 RemovedBody379_384

def RemovedBody379_386 : StackLang.HolProg 64 :=
.seq RemovedBody379_214 RemovedBody379_385

def RemovedBody379_387 : StackLang.HolProg 64 :=
.seq RemovedBody379_213 RemovedBody379_386

def RemovedBody379_388 : StackLang.HolProg 64 :=
.seq RemovedBody379_212 RemovedBody379_387

def RemovedBody379_389 : StackLang.HolProg 64 :=
.seq RemovedBody379_211 RemovedBody379_388

def RemovedBody379_390 : StackLang.HolProg 64 :=
.seq RemovedBody379_210 RemovedBody379_389

def RemovedBody379_391 : StackLang.HolProg 64 :=
.seq RemovedBody379_209 RemovedBody379_390

def RemovedBody379_392 : StackLang.HolProg 64 :=
.seq RemovedBody379_208 RemovedBody379_391

def RemovedBody379_393 : StackLang.HolProg 64 :=
.seq RemovedBody379_207 RemovedBody379_392

def RemovedBody379_394 : StackLang.HolProg 64 :=
.seq RemovedBody379_206 RemovedBody379_393

def RemovedBody379_395 : StackLang.HolProg 64 :=
.seq RemovedBody379_205 RemovedBody379_394

def RemovedBody379_396 : StackLang.HolProg 64 :=
.seq RemovedBody379_142 RemovedBody379_395

def RemovedBody379_397 : StackLang.HolProg 64 :=
.seq RemovedBody379_137 RemovedBody379_396

def RemovedBody379_398 : StackLang.HolProg 64 :=
.seq RemovedBody379_136 RemovedBody379_397

def RemovedBody379_399 : StackLang.HolProg 64 :=
.seq RemovedBody379_69 RemovedBody379_398

def RemovedBody379_400 : StackLang.HolProg 64 :=
.seq RemovedBody379_68 RemovedBody379_399

def RemovedBody379_401 : StackLang.HolProg 64 :=
.seq RemovedBody379_67 RemovedBody379_400

def RemovedBody379_402 : StackLang.HolProg 64 :=
.seq RemovedBody379_66 RemovedBody379_401

def RemovedBody379_403 : StackLang.HolProg 64 :=
.seq RemovedBody379_13 RemovedBody379_402

def RemovedBody379_404 : StackLang.HolProg 64 :=
.seq RemovedBody379_6 RemovedBody379_403

def Removed379 : Nat × StackLang.HolProg 64 := (379, RemovedBody379_404)
theorem Removed379_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc379 = Removed379 := by
  kernel_rfl
#print axioms Removed379_eq
end InitECandidate.Proofs.BackendStages
