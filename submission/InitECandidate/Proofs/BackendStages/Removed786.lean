import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc786
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody786_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody786_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_3 : StackLang.HolProg 64 :=
.seq RemovedBody786_1 RemovedBody786_2

def RemovedBody786_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_3 RemovedBody786_4

def RemovedBody786_6 : StackLang.HolProg 64 :=
.seq RemovedBody786_0 RemovedBody786_5

def RemovedBody786_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody786_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_10 : StackLang.HolProg 64 :=
.seq RemovedBody786_8 RemovedBody786_9

def RemovedBody786_11 : StackLang.HolProg 64 :=
.seq RemovedBody786_7 RemovedBody786_10

def RemovedBody786_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3634#64)

def RemovedBody786_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_15 : StackLang.HolProg 64 :=
.seq RemovedBody786_13 RemovedBody786_14

def RemovedBody786_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_19 : StackLang.HolProg 64 :=
.seq RemovedBody786_17 RemovedBody786_18

def RemovedBody786_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_19 RemovedBody786_20

def RemovedBody786_22 : StackLang.HolProg 64 :=
.seq RemovedBody786_16 RemovedBody786_21

def RemovedBody786_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 3

def RemovedBody786_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_32 : StackLang.HolProg 64 :=
.seq RemovedBody786_30 RemovedBody786_31

def RemovedBody786_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_34 : StackLang.HolProg 64 :=
.seq RemovedBody786_32 RemovedBody786_33

def RemovedBody786_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_36 : StackLang.HolProg 64 :=
.seq RemovedBody786_34 RemovedBody786_35

def RemovedBody786_37 : StackLang.HolProg 64 :=
.seq RemovedBody786_29 RemovedBody786_36

def RemovedBody786_38 : StackLang.HolProg 64 :=
.seq RemovedBody786_28 RemovedBody786_37

def RemovedBody786_39 : StackLang.HolProg 64 :=
.seq RemovedBody786_27 RemovedBody786_38

def RemovedBody786_40 : StackLang.HolProg 64 :=
.seq RemovedBody786_26 RemovedBody786_39

def RemovedBody786_41 : StackLang.HolProg 64 :=
.seq RemovedBody786_25 RemovedBody786_40

def RemovedBody786_42 : StackLang.HolProg 64 :=
.seq RemovedBody786_24 RemovedBody786_41

def RemovedBody786_43 : StackLang.HolProg 64 :=
.seq RemovedBody786_23 RemovedBody786_42

def RemovedBody786_44 : StackLang.HolProg 64 :=
.seq RemovedBody786_22 RemovedBody786_43

def RemovedBody786_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody786_52 : StackLang.HolProg 64 :=
.seq RemovedBody786_50 RemovedBody786_51

def RemovedBody786_53 : StackLang.HolProg 64 :=
.seq RemovedBody786_49 RemovedBody786_52

def RemovedBody786_54 : StackLang.HolProg 64 :=
.seq RemovedBody786_48 RemovedBody786_53

def RemovedBody786_55 : StackLang.HolProg 64 :=
.seq RemovedBody786_47 RemovedBody786_54

def RemovedBody786_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_58 : StackLang.HolProg 64 :=
.seq RemovedBody786_56 RemovedBody786_57

def RemovedBody786_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_55, 0, 786, 2)) (Sum.inl 69) (some (RemovedBody786_58, 786, 3))

def RemovedBody786_60 : StackLang.HolProg 64 :=
.seq RemovedBody786_46 RemovedBody786_59

def RemovedBody786_61 : StackLang.HolProg 64 :=
.seq RemovedBody786_45 RemovedBody786_60

def RemovedBody786_62 : StackLang.HolProg 64 :=
.seq RemovedBody786_44 RemovedBody786_61

def RemovedBody786_63 : StackLang.HolProg 64 :=
.seq RemovedBody786_15 RemovedBody786_62

def RemovedBody786_64 : StackLang.HolProg 64 :=
.seq RemovedBody786_12 RemovedBody786_63

def RemovedBody786_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody786_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody786_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3635#64)

def RemovedBody786_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_71 : StackLang.HolProg 64 :=
.seq RemovedBody786_69 RemovedBody786_70

def RemovedBody786_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_75 : StackLang.HolProg 64 :=
.seq RemovedBody786_73 RemovedBody786_74

def RemovedBody786_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_75 RemovedBody786_76

def RemovedBody786_78 : StackLang.HolProg 64 :=
.seq RemovedBody786_72 RemovedBody786_77

def RemovedBody786_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 5

def RemovedBody786_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_88 : StackLang.HolProg 64 :=
.seq RemovedBody786_86 RemovedBody786_87

def RemovedBody786_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_90 : StackLang.HolProg 64 :=
.seq RemovedBody786_88 RemovedBody786_89

def RemovedBody786_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_92 : StackLang.HolProg 64 :=
.seq RemovedBody786_90 RemovedBody786_91

def RemovedBody786_93 : StackLang.HolProg 64 :=
.seq RemovedBody786_85 RemovedBody786_92

def RemovedBody786_94 : StackLang.HolProg 64 :=
.seq RemovedBody786_84 RemovedBody786_93

def RemovedBody786_95 : StackLang.HolProg 64 :=
.seq RemovedBody786_83 RemovedBody786_94

def RemovedBody786_96 : StackLang.HolProg 64 :=
.seq RemovedBody786_82 RemovedBody786_95

def RemovedBody786_97 : StackLang.HolProg 64 :=
.seq RemovedBody786_81 RemovedBody786_96

def RemovedBody786_98 : StackLang.HolProg 64 :=
.seq RemovedBody786_80 RemovedBody786_97

def RemovedBody786_99 : StackLang.HolProg 64 :=
.seq RemovedBody786_79 RemovedBody786_98

def RemovedBody786_100 : StackLang.HolProg 64 :=
.seq RemovedBody786_78 RemovedBody786_99

def RemovedBody786_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody786_108 : StackLang.HolProg 64 :=
.seq RemovedBody786_106 RemovedBody786_107

def RemovedBody786_109 : StackLang.HolProg 64 :=
.seq RemovedBody786_105 RemovedBody786_108

def RemovedBody786_110 : StackLang.HolProg 64 :=
.seq RemovedBody786_104 RemovedBody786_109

def RemovedBody786_111 : StackLang.HolProg 64 :=
.seq RemovedBody786_103 RemovedBody786_110

def RemovedBody786_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_114 : StackLang.HolProg 64 :=
.seq RemovedBody786_112 RemovedBody786_113

def RemovedBody786_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_111, 0, 786, 4)) (Sum.inl 68) (some (RemovedBody786_114, 786, 5))

def RemovedBody786_116 : StackLang.HolProg 64 :=
.seq RemovedBody786_102 RemovedBody786_115

def RemovedBody786_117 : StackLang.HolProg 64 :=
.seq RemovedBody786_101 RemovedBody786_116

def RemovedBody786_118 : StackLang.HolProg 64 :=
.seq RemovedBody786_100 RemovedBody786_117

def RemovedBody786_119 : StackLang.HolProg 64 :=
.seq RemovedBody786_71 RemovedBody786_118

def RemovedBody786_120 : StackLang.HolProg 64 :=
.seq RemovedBody786_68 RemovedBody786_119

def RemovedBody786_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody786_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody786_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3636#64)

def RemovedBody786_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_127 : StackLang.HolProg 64 :=
.seq RemovedBody786_125 RemovedBody786_126

def RemovedBody786_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_131 : StackLang.HolProg 64 :=
.seq RemovedBody786_129 RemovedBody786_130

def RemovedBody786_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_131 RemovedBody786_132

def RemovedBody786_134 : StackLang.HolProg 64 :=
.seq RemovedBody786_128 RemovedBody786_133

def RemovedBody786_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 7

def RemovedBody786_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_144 : StackLang.HolProg 64 :=
.seq RemovedBody786_142 RemovedBody786_143

def RemovedBody786_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_146 : StackLang.HolProg 64 :=
.seq RemovedBody786_144 RemovedBody786_145

def RemovedBody786_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_148 : StackLang.HolProg 64 :=
.seq RemovedBody786_146 RemovedBody786_147

def RemovedBody786_149 : StackLang.HolProg 64 :=
.seq RemovedBody786_141 RemovedBody786_148

def RemovedBody786_150 : StackLang.HolProg 64 :=
.seq RemovedBody786_140 RemovedBody786_149

def RemovedBody786_151 : StackLang.HolProg 64 :=
.seq RemovedBody786_139 RemovedBody786_150

def RemovedBody786_152 : StackLang.HolProg 64 :=
.seq RemovedBody786_138 RemovedBody786_151

def RemovedBody786_153 : StackLang.HolProg 64 :=
.seq RemovedBody786_137 RemovedBody786_152

def RemovedBody786_154 : StackLang.HolProg 64 :=
.seq RemovedBody786_136 RemovedBody786_153

def RemovedBody786_155 : StackLang.HolProg 64 :=
.seq RemovedBody786_135 RemovedBody786_154

def RemovedBody786_156 : StackLang.HolProg 64 :=
.seq RemovedBody786_134 RemovedBody786_155

def RemovedBody786_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody786_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody786_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_168 : StackLang.HolProg 64 :=
.seq RemovedBody786_166 RemovedBody786_167

def RemovedBody786_169 : StackLang.HolProg 64 :=
.seq RemovedBody786_165 RemovedBody786_168

def RemovedBody786_170 : StackLang.HolProg 64 :=
.seq RemovedBody786_164 RemovedBody786_169

def RemovedBody786_171 : StackLang.HolProg 64 :=
.seq RemovedBody786_163 RemovedBody786_170

def RemovedBody786_172 : StackLang.HolProg 64 :=
.seq RemovedBody786_162 RemovedBody786_171

def RemovedBody786_173 : StackLang.HolProg 64 :=
.seq RemovedBody786_161 RemovedBody786_172

def RemovedBody786_174 : StackLang.HolProg 64 :=
.seq RemovedBody786_160 RemovedBody786_173

def RemovedBody786_175 : StackLang.HolProg 64 :=
.seq RemovedBody786_159 RemovedBody786_174

def RemovedBody786_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody786_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_180 : StackLang.HolProg 64 :=
.seq RemovedBody786_178 RemovedBody786_179

def RemovedBody786_181 : StackLang.HolProg 64 :=
.seq RemovedBody786_177 RemovedBody786_180

def RemovedBody786_182 : StackLang.HolProg 64 :=
.seq RemovedBody786_176 RemovedBody786_181

def RemovedBody786_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_184 : StackLang.HolProg 64 :=
.seq RemovedBody786_182 RemovedBody786_183

def RemovedBody786_185 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_175, 0, 786, 6)) (Sum.inl 68) (some (RemovedBody786_184, 786, 7))

def RemovedBody786_186 : StackLang.HolProg 64 :=
.seq RemovedBody786_158 RemovedBody786_185

def RemovedBody786_187 : StackLang.HolProg 64 :=
.seq RemovedBody786_157 RemovedBody786_186

def RemovedBody786_188 : StackLang.HolProg 64 :=
.seq RemovedBody786_156 RemovedBody786_187

def RemovedBody786_189 : StackLang.HolProg 64 :=
.seq RemovedBody786_127 RemovedBody786_188

def RemovedBody786_190 : StackLang.HolProg 64 :=
.seq RemovedBody786_124 RemovedBody786_189

def RemovedBody786_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody786_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody786_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_195 : StackLang.HolProg 64 :=
.seq RemovedBody786_193 RemovedBody786_194

def RemovedBody786_196 : StackLang.HolProg 64 :=
.seq RemovedBody786_192 RemovedBody786_195

def RemovedBody786_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3637#64)

def RemovedBody786_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_200 : StackLang.HolProg 64 :=
.seq RemovedBody786_198 RemovedBody786_199

def RemovedBody786_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_204 : StackLang.HolProg 64 :=
.seq RemovedBody786_202 RemovedBody786_203

def RemovedBody786_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_206 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_204 RemovedBody786_205

def RemovedBody786_207 : StackLang.HolProg 64 :=
.seq RemovedBody786_201 RemovedBody786_206

def RemovedBody786_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 9

def RemovedBody786_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_217 : StackLang.HolProg 64 :=
.seq RemovedBody786_215 RemovedBody786_216

def RemovedBody786_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_219 : StackLang.HolProg 64 :=
.seq RemovedBody786_217 RemovedBody786_218

def RemovedBody786_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_221 : StackLang.HolProg 64 :=
.seq RemovedBody786_219 RemovedBody786_220

def RemovedBody786_222 : StackLang.HolProg 64 :=
.seq RemovedBody786_214 RemovedBody786_221

def RemovedBody786_223 : StackLang.HolProg 64 :=
.seq RemovedBody786_213 RemovedBody786_222

def RemovedBody786_224 : StackLang.HolProg 64 :=
.seq RemovedBody786_212 RemovedBody786_223

def RemovedBody786_225 : StackLang.HolProg 64 :=
.seq RemovedBody786_211 RemovedBody786_224

def RemovedBody786_226 : StackLang.HolProg 64 :=
.seq RemovedBody786_210 RemovedBody786_225

def RemovedBody786_227 : StackLang.HolProg 64 :=
.seq RemovedBody786_209 RemovedBody786_226

def RemovedBody786_228 : StackLang.HolProg 64 :=
.seq RemovedBody786_208 RemovedBody786_227

def RemovedBody786_229 : StackLang.HolProg 64 :=
.seq RemovedBody786_207 RemovedBody786_228

def RemovedBody786_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_238 : StackLang.HolProg 64 :=
.seq RemovedBody786_236 RemovedBody786_237

def RemovedBody786_239 : StackLang.HolProg 64 :=
.seq RemovedBody786_235 RemovedBody786_238

def RemovedBody786_240 : StackLang.HolProg 64 :=
.seq RemovedBody786_234 RemovedBody786_239

def RemovedBody786_241 : StackLang.HolProg 64 :=
.seq RemovedBody786_233 RemovedBody786_240

def RemovedBody786_242 : StackLang.HolProg 64 :=
.seq RemovedBody786_232 RemovedBody786_241

def RemovedBody786_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_245 : StackLang.HolProg 64 :=
.seq RemovedBody786_243 RemovedBody786_244

def RemovedBody786_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_247 : StackLang.HolProg 64 :=
.seq RemovedBody786_245 RemovedBody786_246

def RemovedBody786_248 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_242, 0, 786, 8)) (Sum.inl 740) (some (RemovedBody786_247, 786, 9))

def RemovedBody786_249 : StackLang.HolProg 64 :=
.seq RemovedBody786_231 RemovedBody786_248

def RemovedBody786_250 : StackLang.HolProg 64 :=
.seq RemovedBody786_230 RemovedBody786_249

def RemovedBody786_251 : StackLang.HolProg 64 :=
.seq RemovedBody786_229 RemovedBody786_250

def RemovedBody786_252 : StackLang.HolProg 64 :=
.seq RemovedBody786_200 RemovedBody786_251

def RemovedBody786_253 : StackLang.HolProg 64 :=
.seq RemovedBody786_197 RemovedBody786_252

def RemovedBody786_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody786_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_258 : StackLang.HolProg 64 :=
.seq RemovedBody786_256 RemovedBody786_257

def RemovedBody786_259 : StackLang.HolProg 64 :=
.seq RemovedBody786_255 RemovedBody786_258

def RemovedBody786_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3638#64)

def RemovedBody786_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_263 : StackLang.HolProg 64 :=
.seq RemovedBody786_261 RemovedBody786_262

def RemovedBody786_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_267 : StackLang.HolProg 64 :=
.seq RemovedBody786_265 RemovedBody786_266

def RemovedBody786_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_267 RemovedBody786_268

def RemovedBody786_270 : StackLang.HolProg 64 :=
.seq RemovedBody786_264 RemovedBody786_269

def RemovedBody786_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 11

def RemovedBody786_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_280 : StackLang.HolProg 64 :=
.seq RemovedBody786_278 RemovedBody786_279

def RemovedBody786_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_282 : StackLang.HolProg 64 :=
.seq RemovedBody786_280 RemovedBody786_281

def RemovedBody786_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_284 : StackLang.HolProg 64 :=
.seq RemovedBody786_282 RemovedBody786_283

def RemovedBody786_285 : StackLang.HolProg 64 :=
.seq RemovedBody786_277 RemovedBody786_284

def RemovedBody786_286 : StackLang.HolProg 64 :=
.seq RemovedBody786_276 RemovedBody786_285

def RemovedBody786_287 : StackLang.HolProg 64 :=
.seq RemovedBody786_275 RemovedBody786_286

def RemovedBody786_288 : StackLang.HolProg 64 :=
.seq RemovedBody786_274 RemovedBody786_287

def RemovedBody786_289 : StackLang.HolProg 64 :=
.seq RemovedBody786_273 RemovedBody786_288

def RemovedBody786_290 : StackLang.HolProg 64 :=
.seq RemovedBody786_272 RemovedBody786_289

def RemovedBody786_291 : StackLang.HolProg 64 :=
.seq RemovedBody786_271 RemovedBody786_290

def RemovedBody786_292 : StackLang.HolProg 64 :=
.seq RemovedBody786_270 RemovedBody786_291

def RemovedBody786_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_301 : StackLang.HolProg 64 :=
.seq RemovedBody786_299 RemovedBody786_300

def RemovedBody786_302 : StackLang.HolProg 64 :=
.seq RemovedBody786_298 RemovedBody786_301

def RemovedBody786_303 : StackLang.HolProg 64 :=
.seq RemovedBody786_297 RemovedBody786_302

def RemovedBody786_304 : StackLang.HolProg 64 :=
.seq RemovedBody786_296 RemovedBody786_303

def RemovedBody786_305 : StackLang.HolProg 64 :=
.seq RemovedBody786_295 RemovedBody786_304

def RemovedBody786_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_308 : StackLang.HolProg 64 :=
.seq RemovedBody786_306 RemovedBody786_307

def RemovedBody786_309 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_310 : StackLang.HolProg 64 :=
.seq RemovedBody786_308 RemovedBody786_309

def RemovedBody786_311 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_305, 0, 786, 10)) (Sum.inl 740) (some (RemovedBody786_310, 786, 11))

def RemovedBody786_312 : StackLang.HolProg 64 :=
.seq RemovedBody786_294 RemovedBody786_311

def RemovedBody786_313 : StackLang.HolProg 64 :=
.seq RemovedBody786_293 RemovedBody786_312

def RemovedBody786_314 : StackLang.HolProg 64 :=
.seq RemovedBody786_292 RemovedBody786_313

def RemovedBody786_315 : StackLang.HolProg 64 :=
.seq RemovedBody786_263 RemovedBody786_314

def RemovedBody786_316 : StackLang.HolProg 64 :=
.seq RemovedBody786_260 RemovedBody786_315

def RemovedBody786_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody786_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_320 : StackLang.HolProg 64 :=
.seq RemovedBody786_318 RemovedBody786_319

def RemovedBody786_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3639#64)

def RemovedBody786_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_324 : StackLang.HolProg 64 :=
.seq RemovedBody786_322 RemovedBody786_323

def RemovedBody786_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_328 : StackLang.HolProg 64 :=
.seq RemovedBody786_326 RemovedBody786_327

def RemovedBody786_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_330 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_328 RemovedBody786_329

def RemovedBody786_331 : StackLang.HolProg 64 :=
.seq RemovedBody786_325 RemovedBody786_330

def RemovedBody786_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 13

def RemovedBody786_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_341 : StackLang.HolProg 64 :=
.seq RemovedBody786_339 RemovedBody786_340

def RemovedBody786_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_343 : StackLang.HolProg 64 :=
.seq RemovedBody786_341 RemovedBody786_342

def RemovedBody786_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_345 : StackLang.HolProg 64 :=
.seq RemovedBody786_343 RemovedBody786_344

def RemovedBody786_346 : StackLang.HolProg 64 :=
.seq RemovedBody786_338 RemovedBody786_345

def RemovedBody786_347 : StackLang.HolProg 64 :=
.seq RemovedBody786_337 RemovedBody786_346

def RemovedBody786_348 : StackLang.HolProg 64 :=
.seq RemovedBody786_336 RemovedBody786_347

def RemovedBody786_349 : StackLang.HolProg 64 :=
.seq RemovedBody786_335 RemovedBody786_348

def RemovedBody786_350 : StackLang.HolProg 64 :=
.seq RemovedBody786_334 RemovedBody786_349

def RemovedBody786_351 : StackLang.HolProg 64 :=
.seq RemovedBody786_333 RemovedBody786_350

def RemovedBody786_352 : StackLang.HolProg 64 :=
.seq RemovedBody786_332 RemovedBody786_351

def RemovedBody786_353 : StackLang.HolProg 64 :=
.seq RemovedBody786_331 RemovedBody786_352

def RemovedBody786_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_361 : StackLang.HolProg 64 :=
.seq RemovedBody786_359 RemovedBody786_360

def RemovedBody786_362 : StackLang.HolProg 64 :=
.seq RemovedBody786_358 RemovedBody786_361

def RemovedBody786_363 : StackLang.HolProg 64 :=
.seq RemovedBody786_357 RemovedBody786_362

def RemovedBody786_364 : StackLang.HolProg 64 :=
.seq RemovedBody786_356 RemovedBody786_363

def RemovedBody786_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_366 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_367 : StackLang.HolProg 64 :=
.seq RemovedBody786_365 RemovedBody786_366

def RemovedBody786_368 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_364, 0, 786, 12)) (Sum.inl 739) (some (RemovedBody786_367, 786, 13))

def RemovedBody786_369 : StackLang.HolProg 64 :=
.seq RemovedBody786_355 RemovedBody786_368

def RemovedBody786_370 : StackLang.HolProg 64 :=
.seq RemovedBody786_354 RemovedBody786_369

def RemovedBody786_371 : StackLang.HolProg 64 :=
.seq RemovedBody786_353 RemovedBody786_370

def RemovedBody786_372 : StackLang.HolProg 64 :=
.seq RemovedBody786_324 RemovedBody786_371

def RemovedBody786_373 : StackLang.HolProg 64 :=
.seq RemovedBody786_321 RemovedBody786_372

def RemovedBody786_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody786_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody786_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody786_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def RemovedBody786_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody786_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody786_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_383 : StackLang.HolProg 64 :=
.seq RemovedBody786_381 RemovedBody786_382

def RemovedBody786_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3640#64)

def RemovedBody786_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_387 : StackLang.HolProg 64 :=
.seq RemovedBody786_385 RemovedBody786_386

def RemovedBody786_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_391 : StackLang.HolProg 64 :=
.seq RemovedBody786_389 RemovedBody786_390

def RemovedBody786_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_393 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_391 RemovedBody786_392

def RemovedBody786_394 : StackLang.HolProg 64 :=
.seq RemovedBody786_388 RemovedBody786_393

def RemovedBody786_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 15

def RemovedBody786_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_404 : StackLang.HolProg 64 :=
.seq RemovedBody786_402 RemovedBody786_403

def RemovedBody786_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_406 : StackLang.HolProg 64 :=
.seq RemovedBody786_404 RemovedBody786_405

def RemovedBody786_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_408 : StackLang.HolProg 64 :=
.seq RemovedBody786_406 RemovedBody786_407

def RemovedBody786_409 : StackLang.HolProg 64 :=
.seq RemovedBody786_401 RemovedBody786_408

def RemovedBody786_410 : StackLang.HolProg 64 :=
.seq RemovedBody786_400 RemovedBody786_409

def RemovedBody786_411 : StackLang.HolProg 64 :=
.seq RemovedBody786_399 RemovedBody786_410

def RemovedBody786_412 : StackLang.HolProg 64 :=
.seq RemovedBody786_398 RemovedBody786_411

def RemovedBody786_413 : StackLang.HolProg 64 :=
.seq RemovedBody786_397 RemovedBody786_412

def RemovedBody786_414 : StackLang.HolProg 64 :=
.seq RemovedBody786_396 RemovedBody786_413

def RemovedBody786_415 : StackLang.HolProg 64 :=
.seq RemovedBody786_395 RemovedBody786_414

def RemovedBody786_416 : StackLang.HolProg 64 :=
.seq RemovedBody786_394 RemovedBody786_415

def RemovedBody786_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody786_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_425 : StackLang.HolProg 64 :=
.seq RemovedBody786_423 RemovedBody786_424

def RemovedBody786_426 : StackLang.HolProg 64 :=
.seq RemovedBody786_422 RemovedBody786_425

def RemovedBody786_427 : StackLang.HolProg 64 :=
.seq RemovedBody786_421 RemovedBody786_426

def RemovedBody786_428 : StackLang.HolProg 64 :=
.seq RemovedBody786_420 RemovedBody786_427

def RemovedBody786_429 : StackLang.HolProg 64 :=
.seq RemovedBody786_419 RemovedBody786_428

def RemovedBody786_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody786_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_432 : StackLang.HolProg 64 :=
.seq RemovedBody786_430 RemovedBody786_431

def RemovedBody786_433 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_434 : StackLang.HolProg 64 :=
.seq RemovedBody786_432 RemovedBody786_433

def RemovedBody786_435 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_429, 0, 786, 14)) (Sum.inl 734) (some (RemovedBody786_434, 786, 15))

def RemovedBody786_436 : StackLang.HolProg 64 :=
.seq RemovedBody786_418 RemovedBody786_435

def RemovedBody786_437 : StackLang.HolProg 64 :=
.seq RemovedBody786_417 RemovedBody786_436

def RemovedBody786_438 : StackLang.HolProg 64 :=
.seq RemovedBody786_416 RemovedBody786_437

def RemovedBody786_439 : StackLang.HolProg 64 :=
.seq RemovedBody786_387 RemovedBody786_438

def RemovedBody786_440 : StackLang.HolProg 64 :=
.seq RemovedBody786_384 RemovedBody786_439

def RemovedBody786_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody786_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3641#64)

def RemovedBody786_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_446 : StackLang.HolProg 64 :=
.seq RemovedBody786_444 RemovedBody786_445

def RemovedBody786_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_450 : StackLang.HolProg 64 :=
.seq RemovedBody786_448 RemovedBody786_449

def RemovedBody786_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_452 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_450 RemovedBody786_451

def RemovedBody786_453 : StackLang.HolProg 64 :=
.seq RemovedBody786_447 RemovedBody786_452

def RemovedBody786_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 17

def RemovedBody786_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_463 : StackLang.HolProg 64 :=
.seq RemovedBody786_461 RemovedBody786_462

def RemovedBody786_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_465 : StackLang.HolProg 64 :=
.seq RemovedBody786_463 RemovedBody786_464

def RemovedBody786_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_467 : StackLang.HolProg 64 :=
.seq RemovedBody786_465 RemovedBody786_466

def RemovedBody786_468 : StackLang.HolProg 64 :=
.seq RemovedBody786_460 RemovedBody786_467

def RemovedBody786_469 : StackLang.HolProg 64 :=
.seq RemovedBody786_459 RemovedBody786_468

def RemovedBody786_470 : StackLang.HolProg 64 :=
.seq RemovedBody786_458 RemovedBody786_469

def RemovedBody786_471 : StackLang.HolProg 64 :=
.seq RemovedBody786_457 RemovedBody786_470

def RemovedBody786_472 : StackLang.HolProg 64 :=
.seq RemovedBody786_456 RemovedBody786_471

def RemovedBody786_473 : StackLang.HolProg 64 :=
.seq RemovedBody786_455 RemovedBody786_472

def RemovedBody786_474 : StackLang.HolProg 64 :=
.seq RemovedBody786_454 RemovedBody786_473

def RemovedBody786_475 : StackLang.HolProg 64 :=
.seq RemovedBody786_453 RemovedBody786_474

def RemovedBody786_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody786_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody786_484 : StackLang.HolProg 64 :=
.seq RemovedBody786_482 RemovedBody786_483

def RemovedBody786_485 : StackLang.HolProg 64 :=
.seq RemovedBody786_481 RemovedBody786_484

def RemovedBody786_486 : StackLang.HolProg 64 :=
.seq RemovedBody786_480 RemovedBody786_485

def RemovedBody786_487 : StackLang.HolProg 64 :=
.seq RemovedBody786_479 RemovedBody786_486

def RemovedBody786_488 : StackLang.HolProg 64 :=
.seq RemovedBody786_478 RemovedBody786_487

def RemovedBody786_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody786_490 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_491 : StackLang.HolProg 64 :=
.seq RemovedBody786_489 RemovedBody786_490

def RemovedBody786_492 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_488, 0, 786, 16)) (Sum.inl 733) (some (RemovedBody786_491, 786, 17))

def RemovedBody786_493 : StackLang.HolProg 64 :=
.seq RemovedBody786_477 RemovedBody786_492

def RemovedBody786_494 : StackLang.HolProg 64 :=
.seq RemovedBody786_476 RemovedBody786_493

def RemovedBody786_495 : StackLang.HolProg 64 :=
.seq RemovedBody786_475 RemovedBody786_494

def RemovedBody786_496 : StackLang.HolProg 64 :=
.seq RemovedBody786_446 RemovedBody786_495

def RemovedBody786_497 : StackLang.HolProg 64 :=
.seq RemovedBody786_443 RemovedBody786_496

def RemovedBody786_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody786_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody786_501 : StackLang.HolProg 64 :=
.seq RemovedBody786_499 RemovedBody786_500

def RemovedBody786_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3642#64)

def RemovedBody786_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_505 : StackLang.HolProg 64 :=
.seq RemovedBody786_503 RemovedBody786_504

def RemovedBody786_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody786_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody786_509 : StackLang.HolProg 64 :=
.seq RemovedBody786_507 RemovedBody786_508

def RemovedBody786_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_511 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody786_509 RemovedBody786_510

def RemovedBody786_512 : StackLang.HolProg 64 :=
.seq RemovedBody786_506 RemovedBody786_511

def RemovedBody786_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody786_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody786_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 19

def RemovedBody786_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody786_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody786_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody786_522 : StackLang.HolProg 64 :=
.seq RemovedBody786_520 RemovedBody786_521

def RemovedBody786_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody786_524 : StackLang.HolProg 64 :=
.seq RemovedBody786_522 RemovedBody786_523

def RemovedBody786_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_526 : StackLang.HolProg 64 :=
.seq RemovedBody786_524 RemovedBody786_525

def RemovedBody786_527 : StackLang.HolProg 64 :=
.seq RemovedBody786_519 RemovedBody786_526

def RemovedBody786_528 : StackLang.HolProg 64 :=
.seq RemovedBody786_518 RemovedBody786_527

def RemovedBody786_529 : StackLang.HolProg 64 :=
.seq RemovedBody786_517 RemovedBody786_528

def RemovedBody786_530 : StackLang.HolProg 64 :=
.seq RemovedBody786_516 RemovedBody786_529

def RemovedBody786_531 : StackLang.HolProg 64 :=
.seq RemovedBody786_515 RemovedBody786_530

def RemovedBody786_532 : StackLang.HolProg 64 :=
.seq RemovedBody786_514 RemovedBody786_531

def RemovedBody786_533 : StackLang.HolProg 64 :=
.seq RemovedBody786_513 RemovedBody786_532

def RemovedBody786_534 : StackLang.HolProg 64 :=
.seq RemovedBody786_512 RemovedBody786_533

def RemovedBody786_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody786_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody786_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody786_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody786_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody786_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody786_543 : StackLang.HolProg 64 :=
.seq RemovedBody786_541 RemovedBody786_542

def RemovedBody786_544 : StackLang.HolProg 64 :=
.seq RemovedBody786_540 RemovedBody786_543

def RemovedBody786_545 : StackLang.HolProg 64 :=
.seq RemovedBody786_539 RemovedBody786_544

def RemovedBody786_546 : StackLang.HolProg 64 :=
.seq RemovedBody786_538 RemovedBody786_545

def RemovedBody786_547 : StackLang.HolProg 64 :=
.seq RemovedBody786_537 RemovedBody786_546

def RemovedBody786_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody786_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody786_550 : StackLang.HolProg 64 :=
.seq RemovedBody786_548 RemovedBody786_549

def RemovedBody786_551 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody786_552 : StackLang.HolProg 64 :=
.seq RemovedBody786_550 RemovedBody786_551

def RemovedBody786_553 : StackLang.HolProg 64 :=
.call (some (RemovedBody786_547, 0, 786, 18)) (Sum.inl 70) (some (RemovedBody786_552, 786, 19))

def RemovedBody786_554 : StackLang.HolProg 64 :=
.seq RemovedBody786_536 RemovedBody786_553

def RemovedBody786_555 : StackLang.HolProg 64 :=
.seq RemovedBody786_535 RemovedBody786_554

def RemovedBody786_556 : StackLang.HolProg 64 :=
.seq RemovedBody786_534 RemovedBody786_555

def RemovedBody786_557 : StackLang.HolProg 64 :=
.seq RemovedBody786_505 RemovedBody786_556

def RemovedBody786_558 : StackLang.HolProg 64 :=
.seq RemovedBody786_502 RemovedBody786_557

def RemovedBody786_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody786_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody786_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody786_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody786_563 : StackLang.HolProg 64 :=
.seq RemovedBody786_561 RemovedBody786_562

def RemovedBody786_564 : StackLang.HolProg 64 :=
.seq RemovedBody786_560 RemovedBody786_563

def RemovedBody786_565 : StackLang.HolProg 64 :=
.seq RemovedBody786_559 RemovedBody786_564

def RemovedBody786_566 : StackLang.HolProg 64 :=
.seq RemovedBody786_558 RemovedBody786_565

def RemovedBody786_567 : StackLang.HolProg 64 :=
.seq RemovedBody786_501 RemovedBody786_566

def RemovedBody786_568 : StackLang.HolProg 64 :=
.seq RemovedBody786_498 RemovedBody786_567

def RemovedBody786_569 : StackLang.HolProg 64 :=
.seq RemovedBody786_497 RemovedBody786_568

def RemovedBody786_570 : StackLang.HolProg 64 :=
.seq RemovedBody786_442 RemovedBody786_569

def RemovedBody786_571 : StackLang.HolProg 64 :=
.seq RemovedBody786_441 RemovedBody786_570

def RemovedBody786_572 : StackLang.HolProg 64 :=
.seq RemovedBody786_440 RemovedBody786_571

def RemovedBody786_573 : StackLang.HolProg 64 :=
.seq RemovedBody786_383 RemovedBody786_572

def RemovedBody786_574 : StackLang.HolProg 64 :=
.seq RemovedBody786_380 RemovedBody786_573

def RemovedBody786_575 : StackLang.HolProg 64 :=
.seq RemovedBody786_379 RemovedBody786_574

def RemovedBody786_576 : StackLang.HolProg 64 :=
.seq RemovedBody786_378 RemovedBody786_575

def RemovedBody786_577 : StackLang.HolProg 64 :=
.seq RemovedBody786_377 RemovedBody786_576

def RemovedBody786_578 : StackLang.HolProg 64 :=
.seq RemovedBody786_376 RemovedBody786_577

def RemovedBody786_579 : StackLang.HolProg 64 :=
.seq RemovedBody786_375 RemovedBody786_578

def RemovedBody786_580 : StackLang.HolProg 64 :=
.seq RemovedBody786_374 RemovedBody786_579

def RemovedBody786_581 : StackLang.HolProg 64 :=
.seq RemovedBody786_373 RemovedBody786_580

def RemovedBody786_582 : StackLang.HolProg 64 :=
.seq RemovedBody786_320 RemovedBody786_581

def RemovedBody786_583 : StackLang.HolProg 64 :=
.seq RemovedBody786_317 RemovedBody786_582

def RemovedBody786_584 : StackLang.HolProg 64 :=
.seq RemovedBody786_316 RemovedBody786_583

def RemovedBody786_585 : StackLang.HolProg 64 :=
.seq RemovedBody786_259 RemovedBody786_584

def RemovedBody786_586 : StackLang.HolProg 64 :=
.seq RemovedBody786_254 RemovedBody786_585

def RemovedBody786_587 : StackLang.HolProg 64 :=
.seq RemovedBody786_253 RemovedBody786_586

def RemovedBody786_588 : StackLang.HolProg 64 :=
.seq RemovedBody786_196 RemovedBody786_587

def RemovedBody786_589 : StackLang.HolProg 64 :=
.seq RemovedBody786_191 RemovedBody786_588

def RemovedBody786_590 : StackLang.HolProg 64 :=
.seq RemovedBody786_190 RemovedBody786_589

def RemovedBody786_591 : StackLang.HolProg 64 :=
.seq RemovedBody786_123 RemovedBody786_590

def RemovedBody786_592 : StackLang.HolProg 64 :=
.seq RemovedBody786_122 RemovedBody786_591

def RemovedBody786_593 : StackLang.HolProg 64 :=
.seq RemovedBody786_121 RemovedBody786_592

def RemovedBody786_594 : StackLang.HolProg 64 :=
.seq RemovedBody786_120 RemovedBody786_593

def RemovedBody786_595 : StackLang.HolProg 64 :=
.seq RemovedBody786_67 RemovedBody786_594

def RemovedBody786_596 : StackLang.HolProg 64 :=
.seq RemovedBody786_66 RemovedBody786_595

def RemovedBody786_597 : StackLang.HolProg 64 :=
.seq RemovedBody786_65 RemovedBody786_596

def RemovedBody786_598 : StackLang.HolProg 64 :=
.seq RemovedBody786_64 RemovedBody786_597

def RemovedBody786_599 : StackLang.HolProg 64 :=
.seq RemovedBody786_11 RemovedBody786_598

def RemovedBody786_600 : StackLang.HolProg 64 :=
.seq RemovedBody786_6 RemovedBody786_599

def Removed786 : Nat × StackLang.HolProg 64 := (786, RemovedBody786_600)
theorem Removed786_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc786 = Removed786 := by
  kernel_rfl
#print axioms Removed786_eq
end InitECandidate.Proofs.BackendStages
