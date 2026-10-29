import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc837
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody837_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_3 : StackLang.HolProg 64 :=
.seq RemovedBody837_1 RemovedBody837_2

def RemovedBody837_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_3 RemovedBody837_4

def RemovedBody837_6 : StackLang.HolProg 64 :=
.seq RemovedBody837_0 RemovedBody837_5

def RemovedBody837_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody837_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody837_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4181#64)

def RemovedBody837_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_14 : StackLang.HolProg 64 :=
.seq RemovedBody837_12 RemovedBody837_13

def RemovedBody837_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_18 : StackLang.HolProg 64 :=
.seq RemovedBody837_16 RemovedBody837_17

def RemovedBody837_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_18 RemovedBody837_19

def RemovedBody837_21 : StackLang.HolProg 64 :=
.seq RemovedBody837_15 RemovedBody837_20

def RemovedBody837_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 3

def RemovedBody837_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_31 : StackLang.HolProg 64 :=
.seq RemovedBody837_29 RemovedBody837_30

def RemovedBody837_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_33 : StackLang.HolProg 64 :=
.seq RemovedBody837_31 RemovedBody837_32

def RemovedBody837_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_35 : StackLang.HolProg 64 :=
.seq RemovedBody837_33 RemovedBody837_34

def RemovedBody837_36 : StackLang.HolProg 64 :=
.seq RemovedBody837_28 RemovedBody837_35

def RemovedBody837_37 : StackLang.HolProg 64 :=
.seq RemovedBody837_27 RemovedBody837_36

def RemovedBody837_38 : StackLang.HolProg 64 :=
.seq RemovedBody837_26 RemovedBody837_37

def RemovedBody837_39 : StackLang.HolProg 64 :=
.seq RemovedBody837_25 RemovedBody837_38

def RemovedBody837_40 : StackLang.HolProg 64 :=
.seq RemovedBody837_24 RemovedBody837_39

def RemovedBody837_41 : StackLang.HolProg 64 :=
.seq RemovedBody837_23 RemovedBody837_40

def RemovedBody837_42 : StackLang.HolProg 64 :=
.seq RemovedBody837_22 RemovedBody837_41

def RemovedBody837_43 : StackLang.HolProg 64 :=
.seq RemovedBody837_21 RemovedBody837_42

def RemovedBody837_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_51 : StackLang.HolProg 64 :=
.seq RemovedBody837_49 RemovedBody837_50

def RemovedBody837_52 : StackLang.HolProg 64 :=
.seq RemovedBody837_48 RemovedBody837_51

def RemovedBody837_53 : StackLang.HolProg 64 :=
.seq RemovedBody837_47 RemovedBody837_52

def RemovedBody837_54 : StackLang.HolProg 64 :=
.seq RemovedBody837_46 RemovedBody837_53

def RemovedBody837_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_57 : StackLang.HolProg 64 :=
.seq RemovedBody837_55 RemovedBody837_56

def RemovedBody837_58 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_54, 0, 837, 2)) (Sum.inl 832) (some (RemovedBody837_57, 837, 3))

def RemovedBody837_59 : StackLang.HolProg 64 :=
.seq RemovedBody837_45 RemovedBody837_58

def RemovedBody837_60 : StackLang.HolProg 64 :=
.seq RemovedBody837_44 RemovedBody837_59

def RemovedBody837_61 : StackLang.HolProg 64 :=
.seq RemovedBody837_43 RemovedBody837_60

def RemovedBody837_62 : StackLang.HolProg 64 :=
.seq RemovedBody837_14 RemovedBody837_61

def RemovedBody837_63 : StackLang.HolProg 64 :=
.seq RemovedBody837_11 RemovedBody837_62

def RemovedBody837_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_69 : StackLang.HolProg 64 :=
.seq RemovedBody837_67 RemovedBody837_68

def RemovedBody837_70 : StackLang.HolProg 64 :=
.seq RemovedBody837_66 RemovedBody837_69

def RemovedBody837_71 : StackLang.HolProg 64 :=
.seq RemovedBody837_65 RemovedBody837_70

def RemovedBody837_72 : StackLang.HolProg 64 :=
.seq RemovedBody837_64 RemovedBody837_71

def RemovedBody837_73 : StackLang.HolProg 64 :=
.seq RemovedBody837_63 RemovedBody837_72

def RemovedBody837_74 : StackLang.HolProg 64 :=
.seq RemovedBody837_10 RemovedBody837_73

def RemovedBody837_75 : StackLang.HolProg 64 :=
.seq RemovedBody837_9 RemovedBody837_74

def RemovedBody837_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody837_75 RemovedBody837_76

def RemovedBody837_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def RemovedBody837_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_85 : StackLang.HolProg 64 :=
.seq RemovedBody837_83 RemovedBody837_84

def RemovedBody837_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4182#64)

def RemovedBody837_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_89 : StackLang.HolProg 64 :=
.seq RemovedBody837_87 RemovedBody837_88

def RemovedBody837_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_93 : StackLang.HolProg 64 :=
.seq RemovedBody837_91 RemovedBody837_92

def RemovedBody837_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_93 RemovedBody837_94

def RemovedBody837_96 : StackLang.HolProg 64 :=
.seq RemovedBody837_90 RemovedBody837_95

def RemovedBody837_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 5

def RemovedBody837_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_106 : StackLang.HolProg 64 :=
.seq RemovedBody837_104 RemovedBody837_105

def RemovedBody837_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_108 : StackLang.HolProg 64 :=
.seq RemovedBody837_106 RemovedBody837_107

def RemovedBody837_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_110 : StackLang.HolProg 64 :=
.seq RemovedBody837_108 RemovedBody837_109

def RemovedBody837_111 : StackLang.HolProg 64 :=
.seq RemovedBody837_103 RemovedBody837_110

def RemovedBody837_112 : StackLang.HolProg 64 :=
.seq RemovedBody837_102 RemovedBody837_111

def RemovedBody837_113 : StackLang.HolProg 64 :=
.seq RemovedBody837_101 RemovedBody837_112

def RemovedBody837_114 : StackLang.HolProg 64 :=
.seq RemovedBody837_100 RemovedBody837_113

def RemovedBody837_115 : StackLang.HolProg 64 :=
.seq RemovedBody837_99 RemovedBody837_114

def RemovedBody837_116 : StackLang.HolProg 64 :=
.seq RemovedBody837_98 RemovedBody837_115

def RemovedBody837_117 : StackLang.HolProg 64 :=
.seq RemovedBody837_97 RemovedBody837_116

def RemovedBody837_118 : StackLang.HolProg 64 :=
.seq RemovedBody837_96 RemovedBody837_117

def RemovedBody837_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_126 : StackLang.HolProg 64 :=
.seq RemovedBody837_124 RemovedBody837_125

def RemovedBody837_127 : StackLang.HolProg 64 :=
.seq RemovedBody837_123 RemovedBody837_126

def RemovedBody837_128 : StackLang.HolProg 64 :=
.seq RemovedBody837_122 RemovedBody837_127

def RemovedBody837_129 : StackLang.HolProg 64 :=
.seq RemovedBody837_121 RemovedBody837_128

def RemovedBody837_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_132 : StackLang.HolProg 64 :=
.seq RemovedBody837_130 RemovedBody837_131

def RemovedBody837_133 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_129, 0, 837, 4)) (Sum.inl 831) (some (RemovedBody837_132, 837, 5))

def RemovedBody837_134 : StackLang.HolProg 64 :=
.seq RemovedBody837_120 RemovedBody837_133

def RemovedBody837_135 : StackLang.HolProg 64 :=
.seq RemovedBody837_119 RemovedBody837_134

def RemovedBody837_136 : StackLang.HolProg 64 :=
.seq RemovedBody837_118 RemovedBody837_135

def RemovedBody837_137 : StackLang.HolProg 64 :=
.seq RemovedBody837_89 RemovedBody837_136

def RemovedBody837_138 : StackLang.HolProg 64 :=
.seq RemovedBody837_86 RemovedBody837_137

def RemovedBody837_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_144 : StackLang.HolProg 64 :=
.seq RemovedBody837_142 RemovedBody837_143

def RemovedBody837_145 : StackLang.HolProg 64 :=
.seq RemovedBody837_141 RemovedBody837_144

def RemovedBody837_146 : StackLang.HolProg 64 :=
.seq RemovedBody837_140 RemovedBody837_145

def RemovedBody837_147 : StackLang.HolProg 64 :=
.seq RemovedBody837_139 RemovedBody837_146

def RemovedBody837_148 : StackLang.HolProg 64 :=
.seq RemovedBody837_138 RemovedBody837_147

def RemovedBody837_149 : StackLang.HolProg 64 :=
.seq RemovedBody837_85 RemovedBody837_148

def RemovedBody837_150 : StackLang.HolProg 64 :=
.seq RemovedBody837_82 RemovedBody837_149

def RemovedBody837_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_150 RemovedBody837_151

def RemovedBody837_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def RemovedBody837_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_160 : StackLang.HolProg 64 :=
.seq RemovedBody837_158 RemovedBody837_159

def RemovedBody837_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4183#64)

def RemovedBody837_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_164 : StackLang.HolProg 64 :=
.seq RemovedBody837_162 RemovedBody837_163

def RemovedBody837_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_168 : StackLang.HolProg 64 :=
.seq RemovedBody837_166 RemovedBody837_167

def RemovedBody837_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_168 RemovedBody837_169

def RemovedBody837_171 : StackLang.HolProg 64 :=
.seq RemovedBody837_165 RemovedBody837_170

def RemovedBody837_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 7

def RemovedBody837_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_181 : StackLang.HolProg 64 :=
.seq RemovedBody837_179 RemovedBody837_180

def RemovedBody837_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_183 : StackLang.HolProg 64 :=
.seq RemovedBody837_181 RemovedBody837_182

def RemovedBody837_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_185 : StackLang.HolProg 64 :=
.seq RemovedBody837_183 RemovedBody837_184

def RemovedBody837_186 : StackLang.HolProg 64 :=
.seq RemovedBody837_178 RemovedBody837_185

def RemovedBody837_187 : StackLang.HolProg 64 :=
.seq RemovedBody837_177 RemovedBody837_186

def RemovedBody837_188 : StackLang.HolProg 64 :=
.seq RemovedBody837_176 RemovedBody837_187

def RemovedBody837_189 : StackLang.HolProg 64 :=
.seq RemovedBody837_175 RemovedBody837_188

def RemovedBody837_190 : StackLang.HolProg 64 :=
.seq RemovedBody837_174 RemovedBody837_189

def RemovedBody837_191 : StackLang.HolProg 64 :=
.seq RemovedBody837_173 RemovedBody837_190

def RemovedBody837_192 : StackLang.HolProg 64 :=
.seq RemovedBody837_172 RemovedBody837_191

def RemovedBody837_193 : StackLang.HolProg 64 :=
.seq RemovedBody837_171 RemovedBody837_192

def RemovedBody837_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_201 : StackLang.HolProg 64 :=
.seq RemovedBody837_199 RemovedBody837_200

def RemovedBody837_202 : StackLang.HolProg 64 :=
.seq RemovedBody837_198 RemovedBody837_201

def RemovedBody837_203 : StackLang.HolProg 64 :=
.seq RemovedBody837_197 RemovedBody837_202

def RemovedBody837_204 : StackLang.HolProg 64 :=
.seq RemovedBody837_196 RemovedBody837_203

def RemovedBody837_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_207 : StackLang.HolProg 64 :=
.seq RemovedBody837_205 RemovedBody837_206

def RemovedBody837_208 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_204, 0, 837, 6)) (Sum.inl 833) (some (RemovedBody837_207, 837, 7))

def RemovedBody837_209 : StackLang.HolProg 64 :=
.seq RemovedBody837_195 RemovedBody837_208

def RemovedBody837_210 : StackLang.HolProg 64 :=
.seq RemovedBody837_194 RemovedBody837_209

def RemovedBody837_211 : StackLang.HolProg 64 :=
.seq RemovedBody837_193 RemovedBody837_210

def RemovedBody837_212 : StackLang.HolProg 64 :=
.seq RemovedBody837_164 RemovedBody837_211

def RemovedBody837_213 : StackLang.HolProg 64 :=
.seq RemovedBody837_161 RemovedBody837_212

def RemovedBody837_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_219 : StackLang.HolProg 64 :=
.seq RemovedBody837_217 RemovedBody837_218

def RemovedBody837_220 : StackLang.HolProg 64 :=
.seq RemovedBody837_216 RemovedBody837_219

def RemovedBody837_221 : StackLang.HolProg 64 :=
.seq RemovedBody837_215 RemovedBody837_220

def RemovedBody837_222 : StackLang.HolProg 64 :=
.seq RemovedBody837_214 RemovedBody837_221

def RemovedBody837_223 : StackLang.HolProg 64 :=
.seq RemovedBody837_213 RemovedBody837_222

def RemovedBody837_224 : StackLang.HolProg 64 :=
.seq RemovedBody837_160 RemovedBody837_223

def RemovedBody837_225 : StackLang.HolProg 64 :=
.seq RemovedBody837_157 RemovedBody837_224

def RemovedBody837_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_225 RemovedBody837_226

def RemovedBody837_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def RemovedBody837_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_235 : StackLang.HolProg 64 :=
.seq RemovedBody837_233 RemovedBody837_234

def RemovedBody837_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4184#64)

def RemovedBody837_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_239 : StackLang.HolProg 64 :=
.seq RemovedBody837_237 RemovedBody837_238

def RemovedBody837_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_243 : StackLang.HolProg 64 :=
.seq RemovedBody837_241 RemovedBody837_242

def RemovedBody837_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_243 RemovedBody837_244

def RemovedBody837_246 : StackLang.HolProg 64 :=
.seq RemovedBody837_240 RemovedBody837_245

def RemovedBody837_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 9

def RemovedBody837_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_256 : StackLang.HolProg 64 :=
.seq RemovedBody837_254 RemovedBody837_255

def RemovedBody837_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_258 : StackLang.HolProg 64 :=
.seq RemovedBody837_256 RemovedBody837_257

def RemovedBody837_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_260 : StackLang.HolProg 64 :=
.seq RemovedBody837_258 RemovedBody837_259

def RemovedBody837_261 : StackLang.HolProg 64 :=
.seq RemovedBody837_253 RemovedBody837_260

def RemovedBody837_262 : StackLang.HolProg 64 :=
.seq RemovedBody837_252 RemovedBody837_261

def RemovedBody837_263 : StackLang.HolProg 64 :=
.seq RemovedBody837_251 RemovedBody837_262

def RemovedBody837_264 : StackLang.HolProg 64 :=
.seq RemovedBody837_250 RemovedBody837_263

def RemovedBody837_265 : StackLang.HolProg 64 :=
.seq RemovedBody837_249 RemovedBody837_264

def RemovedBody837_266 : StackLang.HolProg 64 :=
.seq RemovedBody837_248 RemovedBody837_265

def RemovedBody837_267 : StackLang.HolProg 64 :=
.seq RemovedBody837_247 RemovedBody837_266

def RemovedBody837_268 : StackLang.HolProg 64 :=
.seq RemovedBody837_246 RemovedBody837_267

def RemovedBody837_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_276 : StackLang.HolProg 64 :=
.seq RemovedBody837_274 RemovedBody837_275

def RemovedBody837_277 : StackLang.HolProg 64 :=
.seq RemovedBody837_273 RemovedBody837_276

def RemovedBody837_278 : StackLang.HolProg 64 :=
.seq RemovedBody837_272 RemovedBody837_277

def RemovedBody837_279 : StackLang.HolProg 64 :=
.seq RemovedBody837_271 RemovedBody837_278

def RemovedBody837_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_282 : StackLang.HolProg 64 :=
.seq RemovedBody837_280 RemovedBody837_281

def RemovedBody837_283 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_279, 0, 837, 8)) (Sum.inl 830) (some (RemovedBody837_282, 837, 9))

def RemovedBody837_284 : StackLang.HolProg 64 :=
.seq RemovedBody837_270 RemovedBody837_283

def RemovedBody837_285 : StackLang.HolProg 64 :=
.seq RemovedBody837_269 RemovedBody837_284

def RemovedBody837_286 : StackLang.HolProg 64 :=
.seq RemovedBody837_268 RemovedBody837_285

def RemovedBody837_287 : StackLang.HolProg 64 :=
.seq RemovedBody837_239 RemovedBody837_286

def RemovedBody837_288 : StackLang.HolProg 64 :=
.seq RemovedBody837_236 RemovedBody837_287

def RemovedBody837_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_294 : StackLang.HolProg 64 :=
.seq RemovedBody837_292 RemovedBody837_293

def RemovedBody837_295 : StackLang.HolProg 64 :=
.seq RemovedBody837_291 RemovedBody837_294

def RemovedBody837_296 : StackLang.HolProg 64 :=
.seq RemovedBody837_290 RemovedBody837_295

def RemovedBody837_297 : StackLang.HolProg 64 :=
.seq RemovedBody837_289 RemovedBody837_296

def RemovedBody837_298 : StackLang.HolProg 64 :=
.seq RemovedBody837_288 RemovedBody837_297

def RemovedBody837_299 : StackLang.HolProg 64 :=
.seq RemovedBody837_235 RemovedBody837_298

def RemovedBody837_300 : StackLang.HolProg 64 :=
.seq RemovedBody837_232 RemovedBody837_299

def RemovedBody837_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_300 RemovedBody837_301

def RemovedBody837_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 6#64)

def RemovedBody837_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_310 : StackLang.HolProg 64 :=
.seq RemovedBody837_308 RemovedBody837_309

def RemovedBody837_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4185#64)

def RemovedBody837_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_314 : StackLang.HolProg 64 :=
.seq RemovedBody837_312 RemovedBody837_313

def RemovedBody837_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_318 : StackLang.HolProg 64 :=
.seq RemovedBody837_316 RemovedBody837_317

def RemovedBody837_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_320 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_318 RemovedBody837_319

def RemovedBody837_321 : StackLang.HolProg 64 :=
.seq RemovedBody837_315 RemovedBody837_320

def RemovedBody837_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 11

def RemovedBody837_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_331 : StackLang.HolProg 64 :=
.seq RemovedBody837_329 RemovedBody837_330

def RemovedBody837_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_333 : StackLang.HolProg 64 :=
.seq RemovedBody837_331 RemovedBody837_332

def RemovedBody837_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_335 : StackLang.HolProg 64 :=
.seq RemovedBody837_333 RemovedBody837_334

def RemovedBody837_336 : StackLang.HolProg 64 :=
.seq RemovedBody837_328 RemovedBody837_335

def RemovedBody837_337 : StackLang.HolProg 64 :=
.seq RemovedBody837_327 RemovedBody837_336

def RemovedBody837_338 : StackLang.HolProg 64 :=
.seq RemovedBody837_326 RemovedBody837_337

def RemovedBody837_339 : StackLang.HolProg 64 :=
.seq RemovedBody837_325 RemovedBody837_338

def RemovedBody837_340 : StackLang.HolProg 64 :=
.seq RemovedBody837_324 RemovedBody837_339

def RemovedBody837_341 : StackLang.HolProg 64 :=
.seq RemovedBody837_323 RemovedBody837_340

def RemovedBody837_342 : StackLang.HolProg 64 :=
.seq RemovedBody837_322 RemovedBody837_341

def RemovedBody837_343 : StackLang.HolProg 64 :=
.seq RemovedBody837_321 RemovedBody837_342

def RemovedBody837_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_351 : StackLang.HolProg 64 :=
.seq RemovedBody837_349 RemovedBody837_350

def RemovedBody837_352 : StackLang.HolProg 64 :=
.seq RemovedBody837_348 RemovedBody837_351

def RemovedBody837_353 : StackLang.HolProg 64 :=
.seq RemovedBody837_347 RemovedBody837_352

def RemovedBody837_354 : StackLang.HolProg 64 :=
.seq RemovedBody837_346 RemovedBody837_353

def RemovedBody837_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_357 : StackLang.HolProg 64 :=
.seq RemovedBody837_355 RemovedBody837_356

def RemovedBody837_358 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_354, 0, 837, 10)) (Sum.inl 701) (some (RemovedBody837_357, 837, 11))

def RemovedBody837_359 : StackLang.HolProg 64 :=
.seq RemovedBody837_345 RemovedBody837_358

def RemovedBody837_360 : StackLang.HolProg 64 :=
.seq RemovedBody837_344 RemovedBody837_359

def RemovedBody837_361 : StackLang.HolProg 64 :=
.seq RemovedBody837_343 RemovedBody837_360

def RemovedBody837_362 : StackLang.HolProg 64 :=
.seq RemovedBody837_314 RemovedBody837_361

def RemovedBody837_363 : StackLang.HolProg 64 :=
.seq RemovedBody837_311 RemovedBody837_362

def RemovedBody837_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_369 : StackLang.HolProg 64 :=
.seq RemovedBody837_367 RemovedBody837_368

def RemovedBody837_370 : StackLang.HolProg 64 :=
.seq RemovedBody837_366 RemovedBody837_369

def RemovedBody837_371 : StackLang.HolProg 64 :=
.seq RemovedBody837_365 RemovedBody837_370

def RemovedBody837_372 : StackLang.HolProg 64 :=
.seq RemovedBody837_364 RemovedBody837_371

def RemovedBody837_373 : StackLang.HolProg 64 :=
.seq RemovedBody837_363 RemovedBody837_372

def RemovedBody837_374 : StackLang.HolProg 64 :=
.seq RemovedBody837_310 RemovedBody837_373

def RemovedBody837_375 : StackLang.HolProg 64 :=
.seq RemovedBody837_307 RemovedBody837_374

def RemovedBody837_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_375 RemovedBody837_376

def RemovedBody837_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 7#64)

def RemovedBody837_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_385 : StackLang.HolProg 64 :=
.seq RemovedBody837_383 RemovedBody837_384

def RemovedBody837_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4186#64)

def RemovedBody837_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_389 : StackLang.HolProg 64 :=
.seq RemovedBody837_387 RemovedBody837_388

def RemovedBody837_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_393 : StackLang.HolProg 64 :=
.seq RemovedBody837_391 RemovedBody837_392

def RemovedBody837_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_395 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_393 RemovedBody837_394

def RemovedBody837_396 : StackLang.HolProg 64 :=
.seq RemovedBody837_390 RemovedBody837_395

def RemovedBody837_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 13

def RemovedBody837_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_406 : StackLang.HolProg 64 :=
.seq RemovedBody837_404 RemovedBody837_405

def RemovedBody837_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_408 : StackLang.HolProg 64 :=
.seq RemovedBody837_406 RemovedBody837_407

def RemovedBody837_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_410 : StackLang.HolProg 64 :=
.seq RemovedBody837_408 RemovedBody837_409

def RemovedBody837_411 : StackLang.HolProg 64 :=
.seq RemovedBody837_403 RemovedBody837_410

def RemovedBody837_412 : StackLang.HolProg 64 :=
.seq RemovedBody837_402 RemovedBody837_411

def RemovedBody837_413 : StackLang.HolProg 64 :=
.seq RemovedBody837_401 RemovedBody837_412

def RemovedBody837_414 : StackLang.HolProg 64 :=
.seq RemovedBody837_400 RemovedBody837_413

def RemovedBody837_415 : StackLang.HolProg 64 :=
.seq RemovedBody837_399 RemovedBody837_414

def RemovedBody837_416 : StackLang.HolProg 64 :=
.seq RemovedBody837_398 RemovedBody837_415

def RemovedBody837_417 : StackLang.HolProg 64 :=
.seq RemovedBody837_397 RemovedBody837_416

def RemovedBody837_418 : StackLang.HolProg 64 :=
.seq RemovedBody837_396 RemovedBody837_417

def RemovedBody837_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_426 : StackLang.HolProg 64 :=
.seq RemovedBody837_424 RemovedBody837_425

def RemovedBody837_427 : StackLang.HolProg 64 :=
.seq RemovedBody837_423 RemovedBody837_426

def RemovedBody837_428 : StackLang.HolProg 64 :=
.seq RemovedBody837_422 RemovedBody837_427

def RemovedBody837_429 : StackLang.HolProg 64 :=
.seq RemovedBody837_421 RemovedBody837_428

def RemovedBody837_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_431 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_432 : StackLang.HolProg 64 :=
.seq RemovedBody837_430 RemovedBody837_431

def RemovedBody837_433 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_429, 0, 837, 12)) (Sum.inl 702) (some (RemovedBody837_432, 837, 13))

def RemovedBody837_434 : StackLang.HolProg 64 :=
.seq RemovedBody837_420 RemovedBody837_433

def RemovedBody837_435 : StackLang.HolProg 64 :=
.seq RemovedBody837_419 RemovedBody837_434

def RemovedBody837_436 : StackLang.HolProg 64 :=
.seq RemovedBody837_418 RemovedBody837_435

def RemovedBody837_437 : StackLang.HolProg 64 :=
.seq RemovedBody837_389 RemovedBody837_436

def RemovedBody837_438 : StackLang.HolProg 64 :=
.seq RemovedBody837_386 RemovedBody837_437

def RemovedBody837_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_444 : StackLang.HolProg 64 :=
.seq RemovedBody837_442 RemovedBody837_443

def RemovedBody837_445 : StackLang.HolProg 64 :=
.seq RemovedBody837_441 RemovedBody837_444

def RemovedBody837_446 : StackLang.HolProg 64 :=
.seq RemovedBody837_440 RemovedBody837_445

def RemovedBody837_447 : StackLang.HolProg 64 :=
.seq RemovedBody837_439 RemovedBody837_446

def RemovedBody837_448 : StackLang.HolProg 64 :=
.seq RemovedBody837_438 RemovedBody837_447

def RemovedBody837_449 : StackLang.HolProg 64 :=
.seq RemovedBody837_385 RemovedBody837_448

def RemovedBody837_450 : StackLang.HolProg 64 :=
.seq RemovedBody837_382 RemovedBody837_449

def RemovedBody837_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_452 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_450 RemovedBody837_451

def RemovedBody837_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def RemovedBody837_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_460 : StackLang.HolProg 64 :=
.seq RemovedBody837_458 RemovedBody837_459

def RemovedBody837_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4187#64)

def RemovedBody837_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_464 : StackLang.HolProg 64 :=
.seq RemovedBody837_462 RemovedBody837_463

def RemovedBody837_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_468 : StackLang.HolProg 64 :=
.seq RemovedBody837_466 RemovedBody837_467

def RemovedBody837_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_470 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_468 RemovedBody837_469

def RemovedBody837_471 : StackLang.HolProg 64 :=
.seq RemovedBody837_465 RemovedBody837_470

def RemovedBody837_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 15

def RemovedBody837_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_481 : StackLang.HolProg 64 :=
.seq RemovedBody837_479 RemovedBody837_480

def RemovedBody837_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_483 : StackLang.HolProg 64 :=
.seq RemovedBody837_481 RemovedBody837_482

def RemovedBody837_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_485 : StackLang.HolProg 64 :=
.seq RemovedBody837_483 RemovedBody837_484

def RemovedBody837_486 : StackLang.HolProg 64 :=
.seq RemovedBody837_478 RemovedBody837_485

def RemovedBody837_487 : StackLang.HolProg 64 :=
.seq RemovedBody837_477 RemovedBody837_486

def RemovedBody837_488 : StackLang.HolProg 64 :=
.seq RemovedBody837_476 RemovedBody837_487

def RemovedBody837_489 : StackLang.HolProg 64 :=
.seq RemovedBody837_475 RemovedBody837_488

def RemovedBody837_490 : StackLang.HolProg 64 :=
.seq RemovedBody837_474 RemovedBody837_489

def RemovedBody837_491 : StackLang.HolProg 64 :=
.seq RemovedBody837_473 RemovedBody837_490

def RemovedBody837_492 : StackLang.HolProg 64 :=
.seq RemovedBody837_472 RemovedBody837_491

def RemovedBody837_493 : StackLang.HolProg 64 :=
.seq RemovedBody837_471 RemovedBody837_492

def RemovedBody837_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_501 : StackLang.HolProg 64 :=
.seq RemovedBody837_499 RemovedBody837_500

def RemovedBody837_502 : StackLang.HolProg 64 :=
.seq RemovedBody837_498 RemovedBody837_501

def RemovedBody837_503 : StackLang.HolProg 64 :=
.seq RemovedBody837_497 RemovedBody837_502

def RemovedBody837_504 : StackLang.HolProg 64 :=
.seq RemovedBody837_496 RemovedBody837_503

def RemovedBody837_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_506 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_507 : StackLang.HolProg 64 :=
.seq RemovedBody837_505 RemovedBody837_506

def RemovedBody837_508 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_504, 0, 837, 14)) (Sum.inl 703) (some (RemovedBody837_507, 837, 15))

def RemovedBody837_509 : StackLang.HolProg 64 :=
.seq RemovedBody837_495 RemovedBody837_508

def RemovedBody837_510 : StackLang.HolProg 64 :=
.seq RemovedBody837_494 RemovedBody837_509

def RemovedBody837_511 : StackLang.HolProg 64 :=
.seq RemovedBody837_493 RemovedBody837_510

def RemovedBody837_512 : StackLang.HolProg 64 :=
.seq RemovedBody837_464 RemovedBody837_511

def RemovedBody837_513 : StackLang.HolProg 64 :=
.seq RemovedBody837_461 RemovedBody837_512

def RemovedBody837_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_519 : StackLang.HolProg 64 :=
.seq RemovedBody837_517 RemovedBody837_518

def RemovedBody837_520 : StackLang.HolProg 64 :=
.seq RemovedBody837_516 RemovedBody837_519

def RemovedBody837_521 : StackLang.HolProg 64 :=
.seq RemovedBody837_515 RemovedBody837_520

def RemovedBody837_522 : StackLang.HolProg 64 :=
.seq RemovedBody837_514 RemovedBody837_521

def RemovedBody837_523 : StackLang.HolProg 64 :=
.seq RemovedBody837_513 RemovedBody837_522

def RemovedBody837_524 : StackLang.HolProg 64 :=
.seq RemovedBody837_460 RemovedBody837_523

def RemovedBody837_525 : StackLang.HolProg 64 :=
.seq RemovedBody837_457 RemovedBody837_524

def RemovedBody837_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_527 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_525 RemovedBody837_526

def RemovedBody837_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def RemovedBody837_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_535 : StackLang.HolProg 64 :=
.seq RemovedBody837_533 RemovedBody837_534

def RemovedBody837_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4188#64)

def RemovedBody837_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_539 : StackLang.HolProg 64 :=
.seq RemovedBody837_537 RemovedBody837_538

def RemovedBody837_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_543 : StackLang.HolProg 64 :=
.seq RemovedBody837_541 RemovedBody837_542

def RemovedBody837_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_545 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_543 RemovedBody837_544

def RemovedBody837_546 : StackLang.HolProg 64 :=
.seq RemovedBody837_540 RemovedBody837_545

def RemovedBody837_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 17

def RemovedBody837_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_556 : StackLang.HolProg 64 :=
.seq RemovedBody837_554 RemovedBody837_555

def RemovedBody837_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_558 : StackLang.HolProg 64 :=
.seq RemovedBody837_556 RemovedBody837_557

def RemovedBody837_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_560 : StackLang.HolProg 64 :=
.seq RemovedBody837_558 RemovedBody837_559

def RemovedBody837_561 : StackLang.HolProg 64 :=
.seq RemovedBody837_553 RemovedBody837_560

def RemovedBody837_562 : StackLang.HolProg 64 :=
.seq RemovedBody837_552 RemovedBody837_561

def RemovedBody837_563 : StackLang.HolProg 64 :=
.seq RemovedBody837_551 RemovedBody837_562

def RemovedBody837_564 : StackLang.HolProg 64 :=
.seq RemovedBody837_550 RemovedBody837_563

def RemovedBody837_565 : StackLang.HolProg 64 :=
.seq RemovedBody837_549 RemovedBody837_564

def RemovedBody837_566 : StackLang.HolProg 64 :=
.seq RemovedBody837_548 RemovedBody837_565

def RemovedBody837_567 : StackLang.HolProg 64 :=
.seq RemovedBody837_547 RemovedBody837_566

def RemovedBody837_568 : StackLang.HolProg 64 :=
.seq RemovedBody837_546 RemovedBody837_567

def RemovedBody837_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_576 : StackLang.HolProg 64 :=
.seq RemovedBody837_574 RemovedBody837_575

def RemovedBody837_577 : StackLang.HolProg 64 :=
.seq RemovedBody837_573 RemovedBody837_576

def RemovedBody837_578 : StackLang.HolProg 64 :=
.seq RemovedBody837_572 RemovedBody837_577

def RemovedBody837_579 : StackLang.HolProg 64 :=
.seq RemovedBody837_571 RemovedBody837_578

def RemovedBody837_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_581 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_582 : StackLang.HolProg 64 :=
.seq RemovedBody837_580 RemovedBody837_581

def RemovedBody837_583 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_579, 0, 837, 16)) (Sum.inl 836) (some (RemovedBody837_582, 837, 17))

def RemovedBody837_584 : StackLang.HolProg 64 :=
.seq RemovedBody837_570 RemovedBody837_583

def RemovedBody837_585 : StackLang.HolProg 64 :=
.seq RemovedBody837_569 RemovedBody837_584

def RemovedBody837_586 : StackLang.HolProg 64 :=
.seq RemovedBody837_568 RemovedBody837_585

def RemovedBody837_587 : StackLang.HolProg 64 :=
.seq RemovedBody837_539 RemovedBody837_586

def RemovedBody837_588 : StackLang.HolProg 64 :=
.seq RemovedBody837_536 RemovedBody837_587

def RemovedBody837_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_594 : StackLang.HolProg 64 :=
.seq RemovedBody837_592 RemovedBody837_593

def RemovedBody837_595 : StackLang.HolProg 64 :=
.seq RemovedBody837_591 RemovedBody837_594

def RemovedBody837_596 : StackLang.HolProg 64 :=
.seq RemovedBody837_590 RemovedBody837_595

def RemovedBody837_597 : StackLang.HolProg 64 :=
.seq RemovedBody837_589 RemovedBody837_596

def RemovedBody837_598 : StackLang.HolProg 64 :=
.seq RemovedBody837_588 RemovedBody837_597

def RemovedBody837_599 : StackLang.HolProg 64 :=
.seq RemovedBody837_535 RemovedBody837_598

def RemovedBody837_600 : StackLang.HolProg 64 :=
.seq RemovedBody837_532 RemovedBody837_599

def RemovedBody837_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_602 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_600 RemovedBody837_601

def RemovedBody837_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 9#64)

def RemovedBody837_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_610 : StackLang.HolProg 64 :=
.seq RemovedBody837_608 RemovedBody837_609

def RemovedBody837_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4189#64)

def RemovedBody837_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_614 : StackLang.HolProg 64 :=
.seq RemovedBody837_612 RemovedBody837_613

def RemovedBody837_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_618 : StackLang.HolProg 64 :=
.seq RemovedBody837_616 RemovedBody837_617

def RemovedBody837_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_620 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_618 RemovedBody837_619

def RemovedBody837_621 : StackLang.HolProg 64 :=
.seq RemovedBody837_615 RemovedBody837_620

def RemovedBody837_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 19

def RemovedBody837_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_631 : StackLang.HolProg 64 :=
.seq RemovedBody837_629 RemovedBody837_630

def RemovedBody837_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_633 : StackLang.HolProg 64 :=
.seq RemovedBody837_631 RemovedBody837_632

def RemovedBody837_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_635 : StackLang.HolProg 64 :=
.seq RemovedBody837_633 RemovedBody837_634

def RemovedBody837_636 : StackLang.HolProg 64 :=
.seq RemovedBody837_628 RemovedBody837_635

def RemovedBody837_637 : StackLang.HolProg 64 :=
.seq RemovedBody837_627 RemovedBody837_636

def RemovedBody837_638 : StackLang.HolProg 64 :=
.seq RemovedBody837_626 RemovedBody837_637

def RemovedBody837_639 : StackLang.HolProg 64 :=
.seq RemovedBody837_625 RemovedBody837_638

def RemovedBody837_640 : StackLang.HolProg 64 :=
.seq RemovedBody837_624 RemovedBody837_639

def RemovedBody837_641 : StackLang.HolProg 64 :=
.seq RemovedBody837_623 RemovedBody837_640

def RemovedBody837_642 : StackLang.HolProg 64 :=
.seq RemovedBody837_622 RemovedBody837_641

def RemovedBody837_643 : StackLang.HolProg 64 :=
.seq RemovedBody837_621 RemovedBody837_642

def RemovedBody837_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_651 : StackLang.HolProg 64 :=
.seq RemovedBody837_649 RemovedBody837_650

def RemovedBody837_652 : StackLang.HolProg 64 :=
.seq RemovedBody837_648 RemovedBody837_651

def RemovedBody837_653 : StackLang.HolProg 64 :=
.seq RemovedBody837_647 RemovedBody837_652

def RemovedBody837_654 : StackLang.HolProg 64 :=
.seq RemovedBody837_646 RemovedBody837_653

def RemovedBody837_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_656 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_657 : StackLang.HolProg 64 :=
.seq RemovedBody837_655 RemovedBody837_656

def RemovedBody837_658 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_654, 0, 837, 18)) (Sum.inl 834) (some (RemovedBody837_657, 837, 19))

def RemovedBody837_659 : StackLang.HolProg 64 :=
.seq RemovedBody837_645 RemovedBody837_658

def RemovedBody837_660 : StackLang.HolProg 64 :=
.seq RemovedBody837_644 RemovedBody837_659

def RemovedBody837_661 : StackLang.HolProg 64 :=
.seq RemovedBody837_643 RemovedBody837_660

def RemovedBody837_662 : StackLang.HolProg 64 :=
.seq RemovedBody837_614 RemovedBody837_661

def RemovedBody837_663 : StackLang.HolProg 64 :=
.seq RemovedBody837_611 RemovedBody837_662

def RemovedBody837_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_669 : StackLang.HolProg 64 :=
.seq RemovedBody837_667 RemovedBody837_668

def RemovedBody837_670 : StackLang.HolProg 64 :=
.seq RemovedBody837_666 RemovedBody837_669

def RemovedBody837_671 : StackLang.HolProg 64 :=
.seq RemovedBody837_665 RemovedBody837_670

def RemovedBody837_672 : StackLang.HolProg 64 :=
.seq RemovedBody837_664 RemovedBody837_671

def RemovedBody837_673 : StackLang.HolProg 64 :=
.seq RemovedBody837_663 RemovedBody837_672

def RemovedBody837_674 : StackLang.HolProg 64 :=
.seq RemovedBody837_610 RemovedBody837_673

def RemovedBody837_675 : StackLang.HolProg 64 :=
.seq RemovedBody837_607 RemovedBody837_674

def RemovedBody837_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_677 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_675 RemovedBody837_676

def RemovedBody837_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def RemovedBody837_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_685 : StackLang.HolProg 64 :=
.seq RemovedBody837_683 RemovedBody837_684

def RemovedBody837_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4190#64)

def RemovedBody837_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_689 : StackLang.HolProg 64 :=
.seq RemovedBody837_687 RemovedBody837_688

def RemovedBody837_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_693 : StackLang.HolProg 64 :=
.seq RemovedBody837_691 RemovedBody837_692

def RemovedBody837_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_695 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_693 RemovedBody837_694

def RemovedBody837_696 : StackLang.HolProg 64 :=
.seq RemovedBody837_690 RemovedBody837_695

def RemovedBody837_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 21

def RemovedBody837_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_706 : StackLang.HolProg 64 :=
.seq RemovedBody837_704 RemovedBody837_705

def RemovedBody837_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_708 : StackLang.HolProg 64 :=
.seq RemovedBody837_706 RemovedBody837_707

def RemovedBody837_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_710 : StackLang.HolProg 64 :=
.seq RemovedBody837_708 RemovedBody837_709

def RemovedBody837_711 : StackLang.HolProg 64 :=
.seq RemovedBody837_703 RemovedBody837_710

def RemovedBody837_712 : StackLang.HolProg 64 :=
.seq RemovedBody837_702 RemovedBody837_711

def RemovedBody837_713 : StackLang.HolProg 64 :=
.seq RemovedBody837_701 RemovedBody837_712

def RemovedBody837_714 : StackLang.HolProg 64 :=
.seq RemovedBody837_700 RemovedBody837_713

def RemovedBody837_715 : StackLang.HolProg 64 :=
.seq RemovedBody837_699 RemovedBody837_714

def RemovedBody837_716 : StackLang.HolProg 64 :=
.seq RemovedBody837_698 RemovedBody837_715

def RemovedBody837_717 : StackLang.HolProg 64 :=
.seq RemovedBody837_697 RemovedBody837_716

def RemovedBody837_718 : StackLang.HolProg 64 :=
.seq RemovedBody837_696 RemovedBody837_717

def RemovedBody837_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_726 : StackLang.HolProg 64 :=
.seq RemovedBody837_724 RemovedBody837_725

def RemovedBody837_727 : StackLang.HolProg 64 :=
.seq RemovedBody837_723 RemovedBody837_726

def RemovedBody837_728 : StackLang.HolProg 64 :=
.seq RemovedBody837_722 RemovedBody837_727

def RemovedBody837_729 : StackLang.HolProg 64 :=
.seq RemovedBody837_721 RemovedBody837_728

def RemovedBody837_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_731 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_732 : StackLang.HolProg 64 :=
.seq RemovedBody837_730 RemovedBody837_731

def RemovedBody837_733 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_729, 0, 837, 20)) (Sum.inl 828) (some (RemovedBody837_732, 837, 21))

def RemovedBody837_734 : StackLang.HolProg 64 :=
.seq RemovedBody837_720 RemovedBody837_733

def RemovedBody837_735 : StackLang.HolProg 64 :=
.seq RemovedBody837_719 RemovedBody837_734

def RemovedBody837_736 : StackLang.HolProg 64 :=
.seq RemovedBody837_718 RemovedBody837_735

def RemovedBody837_737 : StackLang.HolProg 64 :=
.seq RemovedBody837_689 RemovedBody837_736

def RemovedBody837_738 : StackLang.HolProg 64 :=
.seq RemovedBody837_686 RemovedBody837_737

def RemovedBody837_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_744 : StackLang.HolProg 64 :=
.seq RemovedBody837_742 RemovedBody837_743

def RemovedBody837_745 : StackLang.HolProg 64 :=
.seq RemovedBody837_741 RemovedBody837_744

def RemovedBody837_746 : StackLang.HolProg 64 :=
.seq RemovedBody837_740 RemovedBody837_745

def RemovedBody837_747 : StackLang.HolProg 64 :=
.seq RemovedBody837_739 RemovedBody837_746

def RemovedBody837_748 : StackLang.HolProg 64 :=
.seq RemovedBody837_738 RemovedBody837_747

def RemovedBody837_749 : StackLang.HolProg 64 :=
.seq RemovedBody837_685 RemovedBody837_748

def RemovedBody837_750 : StackLang.HolProg 64 :=
.seq RemovedBody837_682 RemovedBody837_749

def RemovedBody837_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_752 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_750 RemovedBody837_751

def RemovedBody837_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 11#64)

def RemovedBody837_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_760 : StackLang.HolProg 64 :=
.seq RemovedBody837_758 RemovedBody837_759

def RemovedBody837_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4191#64)

def RemovedBody837_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_764 : StackLang.HolProg 64 :=
.seq RemovedBody837_762 RemovedBody837_763

def RemovedBody837_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_768 : StackLang.HolProg 64 :=
.seq RemovedBody837_766 RemovedBody837_767

def RemovedBody837_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_770 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_768 RemovedBody837_769

def RemovedBody837_771 : StackLang.HolProg 64 :=
.seq RemovedBody837_765 RemovedBody837_770

def RemovedBody837_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 23

def RemovedBody837_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_781 : StackLang.HolProg 64 :=
.seq RemovedBody837_779 RemovedBody837_780

def RemovedBody837_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_783 : StackLang.HolProg 64 :=
.seq RemovedBody837_781 RemovedBody837_782

def RemovedBody837_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_785 : StackLang.HolProg 64 :=
.seq RemovedBody837_783 RemovedBody837_784

def RemovedBody837_786 : StackLang.HolProg 64 :=
.seq RemovedBody837_778 RemovedBody837_785

def RemovedBody837_787 : StackLang.HolProg 64 :=
.seq RemovedBody837_777 RemovedBody837_786

def RemovedBody837_788 : StackLang.HolProg 64 :=
.seq RemovedBody837_776 RemovedBody837_787

def RemovedBody837_789 : StackLang.HolProg 64 :=
.seq RemovedBody837_775 RemovedBody837_788

def RemovedBody837_790 : StackLang.HolProg 64 :=
.seq RemovedBody837_774 RemovedBody837_789

def RemovedBody837_791 : StackLang.HolProg 64 :=
.seq RemovedBody837_773 RemovedBody837_790

def RemovedBody837_792 : StackLang.HolProg 64 :=
.seq RemovedBody837_772 RemovedBody837_791

def RemovedBody837_793 : StackLang.HolProg 64 :=
.seq RemovedBody837_771 RemovedBody837_792

def RemovedBody837_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_801 : StackLang.HolProg 64 :=
.seq RemovedBody837_799 RemovedBody837_800

def RemovedBody837_802 : StackLang.HolProg 64 :=
.seq RemovedBody837_798 RemovedBody837_801

def RemovedBody837_803 : StackLang.HolProg 64 :=
.seq RemovedBody837_797 RemovedBody837_802

def RemovedBody837_804 : StackLang.HolProg 64 :=
.seq RemovedBody837_796 RemovedBody837_803

def RemovedBody837_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_806 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_807 : StackLang.HolProg 64 :=
.seq RemovedBody837_805 RemovedBody837_806

def RemovedBody837_808 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_804, 0, 837, 22)) (Sum.inl 821) (some (RemovedBody837_807, 837, 23))

def RemovedBody837_809 : StackLang.HolProg 64 :=
.seq RemovedBody837_795 RemovedBody837_808

def RemovedBody837_810 : StackLang.HolProg 64 :=
.seq RemovedBody837_794 RemovedBody837_809

def RemovedBody837_811 : StackLang.HolProg 64 :=
.seq RemovedBody837_793 RemovedBody837_810

def RemovedBody837_812 : StackLang.HolProg 64 :=
.seq RemovedBody837_764 RemovedBody837_811

def RemovedBody837_813 : StackLang.HolProg 64 :=
.seq RemovedBody837_761 RemovedBody837_812

def RemovedBody837_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_819 : StackLang.HolProg 64 :=
.seq RemovedBody837_817 RemovedBody837_818

def RemovedBody837_820 : StackLang.HolProg 64 :=
.seq RemovedBody837_816 RemovedBody837_819

def RemovedBody837_821 : StackLang.HolProg 64 :=
.seq RemovedBody837_815 RemovedBody837_820

def RemovedBody837_822 : StackLang.HolProg 64 :=
.seq RemovedBody837_814 RemovedBody837_821

def RemovedBody837_823 : StackLang.HolProg 64 :=
.seq RemovedBody837_813 RemovedBody837_822

def RemovedBody837_824 : StackLang.HolProg 64 :=
.seq RemovedBody837_760 RemovedBody837_823

def RemovedBody837_825 : StackLang.HolProg 64 :=
.seq RemovedBody837_757 RemovedBody837_824

def RemovedBody837_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_827 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_825 RemovedBody837_826

def RemovedBody837_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 12#64)

def RemovedBody837_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_835 : StackLang.HolProg 64 :=
.seq RemovedBody837_833 RemovedBody837_834

def RemovedBody837_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4192#64)

def RemovedBody837_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_839 : StackLang.HolProg 64 :=
.seq RemovedBody837_837 RemovedBody837_838

def RemovedBody837_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_843 : StackLang.HolProg 64 :=
.seq RemovedBody837_841 RemovedBody837_842

def RemovedBody837_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_845 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_843 RemovedBody837_844

def RemovedBody837_846 : StackLang.HolProg 64 :=
.seq RemovedBody837_840 RemovedBody837_845

def RemovedBody837_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 25

def RemovedBody837_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_856 : StackLang.HolProg 64 :=
.seq RemovedBody837_854 RemovedBody837_855

def RemovedBody837_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_858 : StackLang.HolProg 64 :=
.seq RemovedBody837_856 RemovedBody837_857

def RemovedBody837_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_860 : StackLang.HolProg 64 :=
.seq RemovedBody837_858 RemovedBody837_859

def RemovedBody837_861 : StackLang.HolProg 64 :=
.seq RemovedBody837_853 RemovedBody837_860

def RemovedBody837_862 : StackLang.HolProg 64 :=
.seq RemovedBody837_852 RemovedBody837_861

def RemovedBody837_863 : StackLang.HolProg 64 :=
.seq RemovedBody837_851 RemovedBody837_862

def RemovedBody837_864 : StackLang.HolProg 64 :=
.seq RemovedBody837_850 RemovedBody837_863

def RemovedBody837_865 : StackLang.HolProg 64 :=
.seq RemovedBody837_849 RemovedBody837_864

def RemovedBody837_866 : StackLang.HolProg 64 :=
.seq RemovedBody837_848 RemovedBody837_865

def RemovedBody837_867 : StackLang.HolProg 64 :=
.seq RemovedBody837_847 RemovedBody837_866

def RemovedBody837_868 : StackLang.HolProg 64 :=
.seq RemovedBody837_846 RemovedBody837_867

def RemovedBody837_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_876 : StackLang.HolProg 64 :=
.seq RemovedBody837_874 RemovedBody837_875

def RemovedBody837_877 : StackLang.HolProg 64 :=
.seq RemovedBody837_873 RemovedBody837_876

def RemovedBody837_878 : StackLang.HolProg 64 :=
.seq RemovedBody837_872 RemovedBody837_877

def RemovedBody837_879 : StackLang.HolProg 64 :=
.seq RemovedBody837_871 RemovedBody837_878

def RemovedBody837_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_881 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_882 : StackLang.HolProg 64 :=
.seq RemovedBody837_880 RemovedBody837_881

def RemovedBody837_883 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_879, 0, 837, 24)) (Sum.inl 822) (some (RemovedBody837_882, 837, 25))

def RemovedBody837_884 : StackLang.HolProg 64 :=
.seq RemovedBody837_870 RemovedBody837_883

def RemovedBody837_885 : StackLang.HolProg 64 :=
.seq RemovedBody837_869 RemovedBody837_884

def RemovedBody837_886 : StackLang.HolProg 64 :=
.seq RemovedBody837_868 RemovedBody837_885

def RemovedBody837_887 : StackLang.HolProg 64 :=
.seq RemovedBody837_839 RemovedBody837_886

def RemovedBody837_888 : StackLang.HolProg 64 :=
.seq RemovedBody837_836 RemovedBody837_887

def RemovedBody837_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_894 : StackLang.HolProg 64 :=
.seq RemovedBody837_892 RemovedBody837_893

def RemovedBody837_895 : StackLang.HolProg 64 :=
.seq RemovedBody837_891 RemovedBody837_894

def RemovedBody837_896 : StackLang.HolProg 64 :=
.seq RemovedBody837_890 RemovedBody837_895

def RemovedBody837_897 : StackLang.HolProg 64 :=
.seq RemovedBody837_889 RemovedBody837_896

def RemovedBody837_898 : StackLang.HolProg 64 :=
.seq RemovedBody837_888 RemovedBody837_897

def RemovedBody837_899 : StackLang.HolProg 64 :=
.seq RemovedBody837_835 RemovedBody837_898

def RemovedBody837_900 : StackLang.HolProg 64 :=
.seq RemovedBody837_832 RemovedBody837_899

def RemovedBody837_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_902 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_900 RemovedBody837_901

def RemovedBody837_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 13#64)

def RemovedBody837_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_910 : StackLang.HolProg 64 :=
.seq RemovedBody837_908 RemovedBody837_909

def RemovedBody837_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4193#64)

def RemovedBody837_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_914 : StackLang.HolProg 64 :=
.seq RemovedBody837_912 RemovedBody837_913

def RemovedBody837_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_918 : StackLang.HolProg 64 :=
.seq RemovedBody837_916 RemovedBody837_917

def RemovedBody837_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_920 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_918 RemovedBody837_919

def RemovedBody837_921 : StackLang.HolProg 64 :=
.seq RemovedBody837_915 RemovedBody837_920

def RemovedBody837_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 27

def RemovedBody837_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_931 : StackLang.HolProg 64 :=
.seq RemovedBody837_929 RemovedBody837_930

def RemovedBody837_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_933 : StackLang.HolProg 64 :=
.seq RemovedBody837_931 RemovedBody837_932

def RemovedBody837_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_935 : StackLang.HolProg 64 :=
.seq RemovedBody837_933 RemovedBody837_934

def RemovedBody837_936 : StackLang.HolProg 64 :=
.seq RemovedBody837_928 RemovedBody837_935

def RemovedBody837_937 : StackLang.HolProg 64 :=
.seq RemovedBody837_927 RemovedBody837_936

def RemovedBody837_938 : StackLang.HolProg 64 :=
.seq RemovedBody837_926 RemovedBody837_937

def RemovedBody837_939 : StackLang.HolProg 64 :=
.seq RemovedBody837_925 RemovedBody837_938

def RemovedBody837_940 : StackLang.HolProg 64 :=
.seq RemovedBody837_924 RemovedBody837_939

def RemovedBody837_941 : StackLang.HolProg 64 :=
.seq RemovedBody837_923 RemovedBody837_940

def RemovedBody837_942 : StackLang.HolProg 64 :=
.seq RemovedBody837_922 RemovedBody837_941

def RemovedBody837_943 : StackLang.HolProg 64 :=
.seq RemovedBody837_921 RemovedBody837_942

def RemovedBody837_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_951 : StackLang.HolProg 64 :=
.seq RemovedBody837_949 RemovedBody837_950

def RemovedBody837_952 : StackLang.HolProg 64 :=
.seq RemovedBody837_948 RemovedBody837_951

def RemovedBody837_953 : StackLang.HolProg 64 :=
.seq RemovedBody837_947 RemovedBody837_952

def RemovedBody837_954 : StackLang.HolProg 64 :=
.seq RemovedBody837_946 RemovedBody837_953

def RemovedBody837_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_956 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_957 : StackLang.HolProg 64 :=
.seq RemovedBody837_955 RemovedBody837_956

def RemovedBody837_958 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_954, 0, 837, 26)) (Sum.inl 823) (some (RemovedBody837_957, 837, 27))

def RemovedBody837_959 : StackLang.HolProg 64 :=
.seq RemovedBody837_945 RemovedBody837_958

def RemovedBody837_960 : StackLang.HolProg 64 :=
.seq RemovedBody837_944 RemovedBody837_959

def RemovedBody837_961 : StackLang.HolProg 64 :=
.seq RemovedBody837_943 RemovedBody837_960

def RemovedBody837_962 : StackLang.HolProg 64 :=
.seq RemovedBody837_914 RemovedBody837_961

def RemovedBody837_963 : StackLang.HolProg 64 :=
.seq RemovedBody837_911 RemovedBody837_962

def RemovedBody837_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_969 : StackLang.HolProg 64 :=
.seq RemovedBody837_967 RemovedBody837_968

def RemovedBody837_970 : StackLang.HolProg 64 :=
.seq RemovedBody837_966 RemovedBody837_969

def RemovedBody837_971 : StackLang.HolProg 64 :=
.seq RemovedBody837_965 RemovedBody837_970

def RemovedBody837_972 : StackLang.HolProg 64 :=
.seq RemovedBody837_964 RemovedBody837_971

def RemovedBody837_973 : StackLang.HolProg 64 :=
.seq RemovedBody837_963 RemovedBody837_972

def RemovedBody837_974 : StackLang.HolProg 64 :=
.seq RemovedBody837_910 RemovedBody837_973

def RemovedBody837_975 : StackLang.HolProg 64 :=
.seq RemovedBody837_907 RemovedBody837_974

def RemovedBody837_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_977 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_975 RemovedBody837_976

def RemovedBody837_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 14#64)

def RemovedBody837_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_985 : StackLang.HolProg 64 :=
.seq RemovedBody837_983 RemovedBody837_984

def RemovedBody837_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4194#64)

def RemovedBody837_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_989 : StackLang.HolProg 64 :=
.seq RemovedBody837_987 RemovedBody837_988

def RemovedBody837_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_993 : StackLang.HolProg 64 :=
.seq RemovedBody837_991 RemovedBody837_992

def RemovedBody837_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_995 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_993 RemovedBody837_994

def RemovedBody837_996 : StackLang.HolProg 64 :=
.seq RemovedBody837_990 RemovedBody837_995

def RemovedBody837_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 29

def RemovedBody837_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_1006 : StackLang.HolProg 64 :=
.seq RemovedBody837_1004 RemovedBody837_1005

def RemovedBody837_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_1008 : StackLang.HolProg 64 :=
.seq RemovedBody837_1006 RemovedBody837_1007

def RemovedBody837_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1010 : StackLang.HolProg 64 :=
.seq RemovedBody837_1008 RemovedBody837_1009

def RemovedBody837_1011 : StackLang.HolProg 64 :=
.seq RemovedBody837_1003 RemovedBody837_1010

def RemovedBody837_1012 : StackLang.HolProg 64 :=
.seq RemovedBody837_1002 RemovedBody837_1011

def RemovedBody837_1013 : StackLang.HolProg 64 :=
.seq RemovedBody837_1001 RemovedBody837_1012

def RemovedBody837_1014 : StackLang.HolProg 64 :=
.seq RemovedBody837_1000 RemovedBody837_1013

def RemovedBody837_1015 : StackLang.HolProg 64 :=
.seq RemovedBody837_999 RemovedBody837_1014

def RemovedBody837_1016 : StackLang.HolProg 64 :=
.seq RemovedBody837_998 RemovedBody837_1015

def RemovedBody837_1017 : StackLang.HolProg 64 :=
.seq RemovedBody837_997 RemovedBody837_1016

def RemovedBody837_1018 : StackLang.HolProg 64 :=
.seq RemovedBody837_996 RemovedBody837_1017

def RemovedBody837_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1026 : StackLang.HolProg 64 :=
.seq RemovedBody837_1024 RemovedBody837_1025

def RemovedBody837_1027 : StackLang.HolProg 64 :=
.seq RemovedBody837_1023 RemovedBody837_1026

def RemovedBody837_1028 : StackLang.HolProg 64 :=
.seq RemovedBody837_1022 RemovedBody837_1027

def RemovedBody837_1029 : StackLang.HolProg 64 :=
.seq RemovedBody837_1021 RemovedBody837_1028

def RemovedBody837_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1031 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_1032 : StackLang.HolProg 64 :=
.seq RemovedBody837_1030 RemovedBody837_1031

def RemovedBody837_1033 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_1029, 0, 837, 28)) (Sum.inl 824) (some (RemovedBody837_1032, 837, 29))

def RemovedBody837_1034 : StackLang.HolProg 64 :=
.seq RemovedBody837_1020 RemovedBody837_1033

def RemovedBody837_1035 : StackLang.HolProg 64 :=
.seq RemovedBody837_1019 RemovedBody837_1034

def RemovedBody837_1036 : StackLang.HolProg 64 :=
.seq RemovedBody837_1018 RemovedBody837_1035

def RemovedBody837_1037 : StackLang.HolProg 64 :=
.seq RemovedBody837_989 RemovedBody837_1036

def RemovedBody837_1038 : StackLang.HolProg 64 :=
.seq RemovedBody837_986 RemovedBody837_1037

def RemovedBody837_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_1044 : StackLang.HolProg 64 :=
.seq RemovedBody837_1042 RemovedBody837_1043

def RemovedBody837_1045 : StackLang.HolProg 64 :=
.seq RemovedBody837_1041 RemovedBody837_1044

def RemovedBody837_1046 : StackLang.HolProg 64 :=
.seq RemovedBody837_1040 RemovedBody837_1045

def RemovedBody837_1047 : StackLang.HolProg 64 :=
.seq RemovedBody837_1039 RemovedBody837_1046

def RemovedBody837_1048 : StackLang.HolProg 64 :=
.seq RemovedBody837_1038 RemovedBody837_1047

def RemovedBody837_1049 : StackLang.HolProg 64 :=
.seq RemovedBody837_985 RemovedBody837_1048

def RemovedBody837_1050 : StackLang.HolProg 64 :=
.seq RemovedBody837_982 RemovedBody837_1049

def RemovedBody837_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1052 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_1050 RemovedBody837_1051

def RemovedBody837_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 15#64)

def RemovedBody837_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1060 : StackLang.HolProg 64 :=
.seq RemovedBody837_1058 RemovedBody837_1059

def RemovedBody837_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4195#64)

def RemovedBody837_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1064 : StackLang.HolProg 64 :=
.seq RemovedBody837_1062 RemovedBody837_1063

def RemovedBody837_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_1068 : StackLang.HolProg 64 :=
.seq RemovedBody837_1066 RemovedBody837_1067

def RemovedBody837_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1070 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_1068 RemovedBody837_1069

def RemovedBody837_1071 : StackLang.HolProg 64 :=
.seq RemovedBody837_1065 RemovedBody837_1070

def RemovedBody837_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 31

def RemovedBody837_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_1080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_1081 : StackLang.HolProg 64 :=
.seq RemovedBody837_1079 RemovedBody837_1080

def RemovedBody837_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_1083 : StackLang.HolProg 64 :=
.seq RemovedBody837_1081 RemovedBody837_1082

def RemovedBody837_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1085 : StackLang.HolProg 64 :=
.seq RemovedBody837_1083 RemovedBody837_1084

def RemovedBody837_1086 : StackLang.HolProg 64 :=
.seq RemovedBody837_1078 RemovedBody837_1085

def RemovedBody837_1087 : StackLang.HolProg 64 :=
.seq RemovedBody837_1077 RemovedBody837_1086

def RemovedBody837_1088 : StackLang.HolProg 64 :=
.seq RemovedBody837_1076 RemovedBody837_1087

def RemovedBody837_1089 : StackLang.HolProg 64 :=
.seq RemovedBody837_1075 RemovedBody837_1088

def RemovedBody837_1090 : StackLang.HolProg 64 :=
.seq RemovedBody837_1074 RemovedBody837_1089

def RemovedBody837_1091 : StackLang.HolProg 64 :=
.seq RemovedBody837_1073 RemovedBody837_1090

def RemovedBody837_1092 : StackLang.HolProg 64 :=
.seq RemovedBody837_1072 RemovedBody837_1091

def RemovedBody837_1093 : StackLang.HolProg 64 :=
.seq RemovedBody837_1071 RemovedBody837_1092

def RemovedBody837_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1101 : StackLang.HolProg 64 :=
.seq RemovedBody837_1099 RemovedBody837_1100

def RemovedBody837_1102 : StackLang.HolProg 64 :=
.seq RemovedBody837_1098 RemovedBody837_1101

def RemovedBody837_1103 : StackLang.HolProg 64 :=
.seq RemovedBody837_1097 RemovedBody837_1102

def RemovedBody837_1104 : StackLang.HolProg 64 :=
.seq RemovedBody837_1096 RemovedBody837_1103

def RemovedBody837_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1106 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_1107 : StackLang.HolProg 64 :=
.seq RemovedBody837_1105 RemovedBody837_1106

def RemovedBody837_1108 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_1104, 0, 837, 30)) (Sum.inl 825) (some (RemovedBody837_1107, 837, 31))

def RemovedBody837_1109 : StackLang.HolProg 64 :=
.seq RemovedBody837_1095 RemovedBody837_1108

def RemovedBody837_1110 : StackLang.HolProg 64 :=
.seq RemovedBody837_1094 RemovedBody837_1109

def RemovedBody837_1111 : StackLang.HolProg 64 :=
.seq RemovedBody837_1093 RemovedBody837_1110

def RemovedBody837_1112 : StackLang.HolProg 64 :=
.seq RemovedBody837_1064 RemovedBody837_1111

def RemovedBody837_1113 : StackLang.HolProg 64 :=
.seq RemovedBody837_1061 RemovedBody837_1112

def RemovedBody837_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_1119 : StackLang.HolProg 64 :=
.seq RemovedBody837_1117 RemovedBody837_1118

def RemovedBody837_1120 : StackLang.HolProg 64 :=
.seq RemovedBody837_1116 RemovedBody837_1119

def RemovedBody837_1121 : StackLang.HolProg 64 :=
.seq RemovedBody837_1115 RemovedBody837_1120

def RemovedBody837_1122 : StackLang.HolProg 64 :=
.seq RemovedBody837_1114 RemovedBody837_1121

def RemovedBody837_1123 : StackLang.HolProg 64 :=
.seq RemovedBody837_1113 RemovedBody837_1122

def RemovedBody837_1124 : StackLang.HolProg 64 :=
.seq RemovedBody837_1060 RemovedBody837_1123

def RemovedBody837_1125 : StackLang.HolProg 64 :=
.seq RemovedBody837_1057 RemovedBody837_1124

def RemovedBody837_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_1125 RemovedBody837_1126

def RemovedBody837_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 16#64)

def RemovedBody837_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1135 : StackLang.HolProg 64 :=
.seq RemovedBody837_1133 RemovedBody837_1134

def RemovedBody837_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4196#64)

def RemovedBody837_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1139 : StackLang.HolProg 64 :=
.seq RemovedBody837_1137 RemovedBody837_1138

def RemovedBody837_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_1143 : StackLang.HolProg 64 :=
.seq RemovedBody837_1141 RemovedBody837_1142

def RemovedBody837_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_1143 RemovedBody837_1144

def RemovedBody837_1146 : StackLang.HolProg 64 :=
.seq RemovedBody837_1140 RemovedBody837_1145

def RemovedBody837_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 33

def RemovedBody837_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_1156 : StackLang.HolProg 64 :=
.seq RemovedBody837_1154 RemovedBody837_1155

def RemovedBody837_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_1158 : StackLang.HolProg 64 :=
.seq RemovedBody837_1156 RemovedBody837_1157

def RemovedBody837_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1160 : StackLang.HolProg 64 :=
.seq RemovedBody837_1158 RemovedBody837_1159

def RemovedBody837_1161 : StackLang.HolProg 64 :=
.seq RemovedBody837_1153 RemovedBody837_1160

def RemovedBody837_1162 : StackLang.HolProg 64 :=
.seq RemovedBody837_1152 RemovedBody837_1161

def RemovedBody837_1163 : StackLang.HolProg 64 :=
.seq RemovedBody837_1151 RemovedBody837_1162

def RemovedBody837_1164 : StackLang.HolProg 64 :=
.seq RemovedBody837_1150 RemovedBody837_1163

def RemovedBody837_1165 : StackLang.HolProg 64 :=
.seq RemovedBody837_1149 RemovedBody837_1164

def RemovedBody837_1166 : StackLang.HolProg 64 :=
.seq RemovedBody837_1148 RemovedBody837_1165

def RemovedBody837_1167 : StackLang.HolProg 64 :=
.seq RemovedBody837_1147 RemovedBody837_1166

def RemovedBody837_1168 : StackLang.HolProg 64 :=
.seq RemovedBody837_1146 RemovedBody837_1167

def RemovedBody837_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1176 : StackLang.HolProg 64 :=
.seq RemovedBody837_1174 RemovedBody837_1175

def RemovedBody837_1177 : StackLang.HolProg 64 :=
.seq RemovedBody837_1173 RemovedBody837_1176

def RemovedBody837_1178 : StackLang.HolProg 64 :=
.seq RemovedBody837_1172 RemovedBody837_1177

def RemovedBody837_1179 : StackLang.HolProg 64 :=
.seq RemovedBody837_1171 RemovedBody837_1178

def RemovedBody837_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_1182 : StackLang.HolProg 64 :=
.seq RemovedBody837_1180 RemovedBody837_1181

def RemovedBody837_1183 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_1179, 0, 837, 32)) (Sum.inl 826) (some (RemovedBody837_1182, 837, 33))

def RemovedBody837_1184 : StackLang.HolProg 64 :=
.seq RemovedBody837_1170 RemovedBody837_1183

def RemovedBody837_1185 : StackLang.HolProg 64 :=
.seq RemovedBody837_1169 RemovedBody837_1184

def RemovedBody837_1186 : StackLang.HolProg 64 :=
.seq RemovedBody837_1168 RemovedBody837_1185

def RemovedBody837_1187 : StackLang.HolProg 64 :=
.seq RemovedBody837_1139 RemovedBody837_1186

def RemovedBody837_1188 : StackLang.HolProg 64 :=
.seq RemovedBody837_1136 RemovedBody837_1187

def RemovedBody837_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_1194 : StackLang.HolProg 64 :=
.seq RemovedBody837_1192 RemovedBody837_1193

def RemovedBody837_1195 : StackLang.HolProg 64 :=
.seq RemovedBody837_1191 RemovedBody837_1194

def RemovedBody837_1196 : StackLang.HolProg 64 :=
.seq RemovedBody837_1190 RemovedBody837_1195

def RemovedBody837_1197 : StackLang.HolProg 64 :=
.seq RemovedBody837_1189 RemovedBody837_1196

def RemovedBody837_1198 : StackLang.HolProg 64 :=
.seq RemovedBody837_1188 RemovedBody837_1197

def RemovedBody837_1199 : StackLang.HolProg 64 :=
.seq RemovedBody837_1135 RemovedBody837_1198

def RemovedBody837_1200 : StackLang.HolProg 64 :=
.seq RemovedBody837_1132 RemovedBody837_1199

def RemovedBody837_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_1200 RemovedBody837_1201

def RemovedBody837_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def RemovedBody837_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1210 : StackLang.HolProg 64 :=
.seq RemovedBody837_1208 RemovedBody837_1209

def RemovedBody837_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4197#64)

def RemovedBody837_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1214 : StackLang.HolProg 64 :=
.seq RemovedBody837_1212 RemovedBody837_1213

def RemovedBody837_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_1218 : StackLang.HolProg 64 :=
.seq RemovedBody837_1216 RemovedBody837_1217

def RemovedBody837_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_1218 RemovedBody837_1219

def RemovedBody837_1221 : StackLang.HolProg 64 :=
.seq RemovedBody837_1215 RemovedBody837_1220

def RemovedBody837_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 35

def RemovedBody837_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_1231 : StackLang.HolProg 64 :=
.seq RemovedBody837_1229 RemovedBody837_1230

def RemovedBody837_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_1233 : StackLang.HolProg 64 :=
.seq RemovedBody837_1231 RemovedBody837_1232

def RemovedBody837_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1235 : StackLang.HolProg 64 :=
.seq RemovedBody837_1233 RemovedBody837_1234

def RemovedBody837_1236 : StackLang.HolProg 64 :=
.seq RemovedBody837_1228 RemovedBody837_1235

def RemovedBody837_1237 : StackLang.HolProg 64 :=
.seq RemovedBody837_1227 RemovedBody837_1236

def RemovedBody837_1238 : StackLang.HolProg 64 :=
.seq RemovedBody837_1226 RemovedBody837_1237

def RemovedBody837_1239 : StackLang.HolProg 64 :=
.seq RemovedBody837_1225 RemovedBody837_1238

def RemovedBody837_1240 : StackLang.HolProg 64 :=
.seq RemovedBody837_1224 RemovedBody837_1239

def RemovedBody837_1241 : StackLang.HolProg 64 :=
.seq RemovedBody837_1223 RemovedBody837_1240

def RemovedBody837_1242 : StackLang.HolProg 64 :=
.seq RemovedBody837_1222 RemovedBody837_1241

def RemovedBody837_1243 : StackLang.HolProg 64 :=
.seq RemovedBody837_1221 RemovedBody837_1242

def RemovedBody837_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1251 : StackLang.HolProg 64 :=
.seq RemovedBody837_1249 RemovedBody837_1250

def RemovedBody837_1252 : StackLang.HolProg 64 :=
.seq RemovedBody837_1248 RemovedBody837_1251

def RemovedBody837_1253 : StackLang.HolProg 64 :=
.seq RemovedBody837_1247 RemovedBody837_1252

def RemovedBody837_1254 : StackLang.HolProg 64 :=
.seq RemovedBody837_1246 RemovedBody837_1253

def RemovedBody837_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1256 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_1257 : StackLang.HolProg 64 :=
.seq RemovedBody837_1255 RemovedBody837_1256

def RemovedBody837_1258 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_1254, 0, 837, 34)) (Sum.inl 827) (some (RemovedBody837_1257, 837, 35))

def RemovedBody837_1259 : StackLang.HolProg 64 :=
.seq RemovedBody837_1245 RemovedBody837_1258

def RemovedBody837_1260 : StackLang.HolProg 64 :=
.seq RemovedBody837_1244 RemovedBody837_1259

def RemovedBody837_1261 : StackLang.HolProg 64 :=
.seq RemovedBody837_1243 RemovedBody837_1260

def RemovedBody837_1262 : StackLang.HolProg 64 :=
.seq RemovedBody837_1214 RemovedBody837_1261

def RemovedBody837_1263 : StackLang.HolProg 64 :=
.seq RemovedBody837_1211 RemovedBody837_1262

def RemovedBody837_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_1269 : StackLang.HolProg 64 :=
.seq RemovedBody837_1267 RemovedBody837_1268

def RemovedBody837_1270 : StackLang.HolProg 64 :=
.seq RemovedBody837_1266 RemovedBody837_1269

def RemovedBody837_1271 : StackLang.HolProg 64 :=
.seq RemovedBody837_1265 RemovedBody837_1270

def RemovedBody837_1272 : StackLang.HolProg 64 :=
.seq RemovedBody837_1264 RemovedBody837_1271

def RemovedBody837_1273 : StackLang.HolProg 64 :=
.seq RemovedBody837_1263 RemovedBody837_1272

def RemovedBody837_1274 : StackLang.HolProg 64 :=
.seq RemovedBody837_1210 RemovedBody837_1273

def RemovedBody837_1275 : StackLang.HolProg 64 :=
.seq RemovedBody837_1207 RemovedBody837_1274

def RemovedBody837_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1277 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_1275 RemovedBody837_1276

def RemovedBody837_1278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 18#64)

def RemovedBody837_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4198#64)

def RemovedBody837_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1287 : StackLang.HolProg 64 :=
.seq RemovedBody837_1285 RemovedBody837_1286

def RemovedBody837_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody837_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody837_1291 : StackLang.HolProg 64 :=
.seq RemovedBody837_1289 RemovedBody837_1290

def RemovedBody837_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1293 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody837_1291 RemovedBody837_1292

def RemovedBody837_1294 : StackLang.HolProg 64 :=
.seq RemovedBody837_1288 RemovedBody837_1293

def RemovedBody837_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody837_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody837_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 837 37

def RemovedBody837_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody837_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody837_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody837_1304 : StackLang.HolProg 64 :=
.seq RemovedBody837_1302 RemovedBody837_1303

def RemovedBody837_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody837_1306 : StackLang.HolProg 64 :=
.seq RemovedBody837_1304 RemovedBody837_1305

def RemovedBody837_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1308 : StackLang.HolProg 64 :=
.seq RemovedBody837_1306 RemovedBody837_1307

def RemovedBody837_1309 : StackLang.HolProg 64 :=
.seq RemovedBody837_1301 RemovedBody837_1308

def RemovedBody837_1310 : StackLang.HolProg 64 :=
.seq RemovedBody837_1300 RemovedBody837_1309

def RemovedBody837_1311 : StackLang.HolProg 64 :=
.seq RemovedBody837_1299 RemovedBody837_1310

def RemovedBody837_1312 : StackLang.HolProg 64 :=
.seq RemovedBody837_1298 RemovedBody837_1311

def RemovedBody837_1313 : StackLang.HolProg 64 :=
.seq RemovedBody837_1297 RemovedBody837_1312

def RemovedBody837_1314 : StackLang.HolProg 64 :=
.seq RemovedBody837_1296 RemovedBody837_1313

def RemovedBody837_1315 : StackLang.HolProg 64 :=
.seq RemovedBody837_1295 RemovedBody837_1314

def RemovedBody837_1316 : StackLang.HolProg 64 :=
.seq RemovedBody837_1294 RemovedBody837_1315

def RemovedBody837_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody837_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1324 : StackLang.HolProg 64 :=
.seq RemovedBody837_1322 RemovedBody837_1323

def RemovedBody837_1325 : StackLang.HolProg 64 :=
.seq RemovedBody837_1321 RemovedBody837_1324

def RemovedBody837_1326 : StackLang.HolProg 64 :=
.seq RemovedBody837_1320 RemovedBody837_1325

def RemovedBody837_1327 : StackLang.HolProg 64 :=
.seq RemovedBody837_1319 RemovedBody837_1326

def RemovedBody837_1328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody837_1329 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_1330 : StackLang.HolProg 64 :=
.seq RemovedBody837_1328 RemovedBody837_1329

def RemovedBody837_1331 : StackLang.HolProg 64 :=
.call (some (RemovedBody837_1327, 0, 837, 36)) (Sum.inl 656) (some (RemovedBody837_1330, 837, 37))

def RemovedBody837_1332 : StackLang.HolProg 64 :=
.seq RemovedBody837_1318 RemovedBody837_1331

def RemovedBody837_1333 : StackLang.HolProg 64 :=
.seq RemovedBody837_1317 RemovedBody837_1332

def RemovedBody837_1334 : StackLang.HolProg 64 :=
.seq RemovedBody837_1316 RemovedBody837_1333

def RemovedBody837_1335 : StackLang.HolProg 64 :=
.seq RemovedBody837_1287 RemovedBody837_1334

def RemovedBody837_1336 : StackLang.HolProg 64 :=
.seq RemovedBody837_1284 RemovedBody837_1335

def RemovedBody837_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody837_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody837_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody837_1342 : StackLang.HolProg 64 :=
.seq RemovedBody837_1340 RemovedBody837_1341

def RemovedBody837_1343 : StackLang.HolProg 64 :=
.seq RemovedBody837_1339 RemovedBody837_1342

def RemovedBody837_1344 : StackLang.HolProg 64 :=
.seq RemovedBody837_1338 RemovedBody837_1343

def RemovedBody837_1345 : StackLang.HolProg 64 :=
.seq RemovedBody837_1337 RemovedBody837_1344

def RemovedBody837_1346 : StackLang.HolProg 64 :=
.seq RemovedBody837_1336 RemovedBody837_1345

def RemovedBody837_1347 : StackLang.HolProg 64 :=
.seq RemovedBody837_1283 RemovedBody837_1346

def RemovedBody837_1348 : StackLang.HolProg 64 :=
.seq RemovedBody837_1282 RemovedBody837_1347

def RemovedBody837_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1350 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody837_1348 RemovedBody837_1349

def RemovedBody837_1351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody837_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 99#64)

def RemovedBody837_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody837_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody837_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody837_1358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody837_1359 : StackLang.HolProg 64 :=
.seq RemovedBody837_1357 RemovedBody837_1358

def RemovedBody837_1360 : StackLang.HolProg 64 :=
.seq RemovedBody837_1356 RemovedBody837_1359

def RemovedBody837_1361 : StackLang.HolProg 64 :=
.seq RemovedBody837_1355 RemovedBody837_1360

def RemovedBody837_1362 : StackLang.HolProg 64 :=
.seq RemovedBody837_1354 RemovedBody837_1361

def RemovedBody837_1363 : StackLang.HolProg 64 :=
.seq RemovedBody837_1353 RemovedBody837_1362

def RemovedBody837_1364 : StackLang.HolProg 64 :=
.seq RemovedBody837_1352 RemovedBody837_1363

def RemovedBody837_1365 : StackLang.HolProg 64 :=
.seq RemovedBody837_1351 RemovedBody837_1364

def RemovedBody837_1366 : StackLang.HolProg 64 :=
.seq RemovedBody837_1350 RemovedBody837_1365

def RemovedBody837_1367 : StackLang.HolProg 64 :=
.seq RemovedBody837_1281 RemovedBody837_1366

def RemovedBody837_1368 : StackLang.HolProg 64 :=
.seq RemovedBody837_1280 RemovedBody837_1367

def RemovedBody837_1369 : StackLang.HolProg 64 :=
.seq RemovedBody837_1279 RemovedBody837_1368

def RemovedBody837_1370 : StackLang.HolProg 64 :=
.seq RemovedBody837_1278 RemovedBody837_1369

def RemovedBody837_1371 : StackLang.HolProg 64 :=
.seq RemovedBody837_1277 RemovedBody837_1370

def RemovedBody837_1372 : StackLang.HolProg 64 :=
.seq RemovedBody837_1206 RemovedBody837_1371

def RemovedBody837_1373 : StackLang.HolProg 64 :=
.seq RemovedBody837_1205 RemovedBody837_1372

def RemovedBody837_1374 : StackLang.HolProg 64 :=
.seq RemovedBody837_1204 RemovedBody837_1373

def RemovedBody837_1375 : StackLang.HolProg 64 :=
.seq RemovedBody837_1203 RemovedBody837_1374

def RemovedBody837_1376 : StackLang.HolProg 64 :=
.seq RemovedBody837_1202 RemovedBody837_1375

def RemovedBody837_1377 : StackLang.HolProg 64 :=
.seq RemovedBody837_1131 RemovedBody837_1376

def RemovedBody837_1378 : StackLang.HolProg 64 :=
.seq RemovedBody837_1130 RemovedBody837_1377

def RemovedBody837_1379 : StackLang.HolProg 64 :=
.seq RemovedBody837_1129 RemovedBody837_1378

def RemovedBody837_1380 : StackLang.HolProg 64 :=
.seq RemovedBody837_1128 RemovedBody837_1379

def RemovedBody837_1381 : StackLang.HolProg 64 :=
.seq RemovedBody837_1127 RemovedBody837_1380

def RemovedBody837_1382 : StackLang.HolProg 64 :=
.seq RemovedBody837_1056 RemovedBody837_1381

def RemovedBody837_1383 : StackLang.HolProg 64 :=
.seq RemovedBody837_1055 RemovedBody837_1382

def RemovedBody837_1384 : StackLang.HolProg 64 :=
.seq RemovedBody837_1054 RemovedBody837_1383

def RemovedBody837_1385 : StackLang.HolProg 64 :=
.seq RemovedBody837_1053 RemovedBody837_1384

def RemovedBody837_1386 : StackLang.HolProg 64 :=
.seq RemovedBody837_1052 RemovedBody837_1385

def RemovedBody837_1387 : StackLang.HolProg 64 :=
.seq RemovedBody837_981 RemovedBody837_1386

def RemovedBody837_1388 : StackLang.HolProg 64 :=
.seq RemovedBody837_980 RemovedBody837_1387

def RemovedBody837_1389 : StackLang.HolProg 64 :=
.seq RemovedBody837_979 RemovedBody837_1388

def RemovedBody837_1390 : StackLang.HolProg 64 :=
.seq RemovedBody837_978 RemovedBody837_1389

def RemovedBody837_1391 : StackLang.HolProg 64 :=
.seq RemovedBody837_977 RemovedBody837_1390

def RemovedBody837_1392 : StackLang.HolProg 64 :=
.seq RemovedBody837_906 RemovedBody837_1391

def RemovedBody837_1393 : StackLang.HolProg 64 :=
.seq RemovedBody837_905 RemovedBody837_1392

def RemovedBody837_1394 : StackLang.HolProg 64 :=
.seq RemovedBody837_904 RemovedBody837_1393

def RemovedBody837_1395 : StackLang.HolProg 64 :=
.seq RemovedBody837_903 RemovedBody837_1394

def RemovedBody837_1396 : StackLang.HolProg 64 :=
.seq RemovedBody837_902 RemovedBody837_1395

def RemovedBody837_1397 : StackLang.HolProg 64 :=
.seq RemovedBody837_831 RemovedBody837_1396

def RemovedBody837_1398 : StackLang.HolProg 64 :=
.seq RemovedBody837_830 RemovedBody837_1397

def RemovedBody837_1399 : StackLang.HolProg 64 :=
.seq RemovedBody837_829 RemovedBody837_1398

def RemovedBody837_1400 : StackLang.HolProg 64 :=
.seq RemovedBody837_828 RemovedBody837_1399

def RemovedBody837_1401 : StackLang.HolProg 64 :=
.seq RemovedBody837_827 RemovedBody837_1400

def RemovedBody837_1402 : StackLang.HolProg 64 :=
.seq RemovedBody837_756 RemovedBody837_1401

def RemovedBody837_1403 : StackLang.HolProg 64 :=
.seq RemovedBody837_755 RemovedBody837_1402

def RemovedBody837_1404 : StackLang.HolProg 64 :=
.seq RemovedBody837_754 RemovedBody837_1403

def RemovedBody837_1405 : StackLang.HolProg 64 :=
.seq RemovedBody837_753 RemovedBody837_1404

def RemovedBody837_1406 : StackLang.HolProg 64 :=
.seq RemovedBody837_752 RemovedBody837_1405

def RemovedBody837_1407 : StackLang.HolProg 64 :=
.seq RemovedBody837_681 RemovedBody837_1406

def RemovedBody837_1408 : StackLang.HolProg 64 :=
.seq RemovedBody837_680 RemovedBody837_1407

def RemovedBody837_1409 : StackLang.HolProg 64 :=
.seq RemovedBody837_679 RemovedBody837_1408

def RemovedBody837_1410 : StackLang.HolProg 64 :=
.seq RemovedBody837_678 RemovedBody837_1409

def RemovedBody837_1411 : StackLang.HolProg 64 :=
.seq RemovedBody837_677 RemovedBody837_1410

def RemovedBody837_1412 : StackLang.HolProg 64 :=
.seq RemovedBody837_606 RemovedBody837_1411

def RemovedBody837_1413 : StackLang.HolProg 64 :=
.seq RemovedBody837_605 RemovedBody837_1412

def RemovedBody837_1414 : StackLang.HolProg 64 :=
.seq RemovedBody837_604 RemovedBody837_1413

def RemovedBody837_1415 : StackLang.HolProg 64 :=
.seq RemovedBody837_603 RemovedBody837_1414

def RemovedBody837_1416 : StackLang.HolProg 64 :=
.seq RemovedBody837_602 RemovedBody837_1415

def RemovedBody837_1417 : StackLang.HolProg 64 :=
.seq RemovedBody837_531 RemovedBody837_1416

def RemovedBody837_1418 : StackLang.HolProg 64 :=
.seq RemovedBody837_530 RemovedBody837_1417

def RemovedBody837_1419 : StackLang.HolProg 64 :=
.seq RemovedBody837_529 RemovedBody837_1418

def RemovedBody837_1420 : StackLang.HolProg 64 :=
.seq RemovedBody837_528 RemovedBody837_1419

def RemovedBody837_1421 : StackLang.HolProg 64 :=
.seq RemovedBody837_527 RemovedBody837_1420

def RemovedBody837_1422 : StackLang.HolProg 64 :=
.seq RemovedBody837_456 RemovedBody837_1421

def RemovedBody837_1423 : StackLang.HolProg 64 :=
.seq RemovedBody837_455 RemovedBody837_1422

def RemovedBody837_1424 : StackLang.HolProg 64 :=
.seq RemovedBody837_454 RemovedBody837_1423

def RemovedBody837_1425 : StackLang.HolProg 64 :=
.seq RemovedBody837_453 RemovedBody837_1424

def RemovedBody837_1426 : StackLang.HolProg 64 :=
.seq RemovedBody837_452 RemovedBody837_1425

def RemovedBody837_1427 : StackLang.HolProg 64 :=
.seq RemovedBody837_381 RemovedBody837_1426

def RemovedBody837_1428 : StackLang.HolProg 64 :=
.seq RemovedBody837_380 RemovedBody837_1427

def RemovedBody837_1429 : StackLang.HolProg 64 :=
.seq RemovedBody837_379 RemovedBody837_1428

def RemovedBody837_1430 : StackLang.HolProg 64 :=
.seq RemovedBody837_378 RemovedBody837_1429

def RemovedBody837_1431 : StackLang.HolProg 64 :=
.seq RemovedBody837_377 RemovedBody837_1430

def RemovedBody837_1432 : StackLang.HolProg 64 :=
.seq RemovedBody837_306 RemovedBody837_1431

def RemovedBody837_1433 : StackLang.HolProg 64 :=
.seq RemovedBody837_305 RemovedBody837_1432

def RemovedBody837_1434 : StackLang.HolProg 64 :=
.seq RemovedBody837_304 RemovedBody837_1433

def RemovedBody837_1435 : StackLang.HolProg 64 :=
.seq RemovedBody837_303 RemovedBody837_1434

def RemovedBody837_1436 : StackLang.HolProg 64 :=
.seq RemovedBody837_302 RemovedBody837_1435

def RemovedBody837_1437 : StackLang.HolProg 64 :=
.seq RemovedBody837_231 RemovedBody837_1436

def RemovedBody837_1438 : StackLang.HolProg 64 :=
.seq RemovedBody837_230 RemovedBody837_1437

def RemovedBody837_1439 : StackLang.HolProg 64 :=
.seq RemovedBody837_229 RemovedBody837_1438

def RemovedBody837_1440 : StackLang.HolProg 64 :=
.seq RemovedBody837_228 RemovedBody837_1439

def RemovedBody837_1441 : StackLang.HolProg 64 :=
.seq RemovedBody837_227 RemovedBody837_1440

def RemovedBody837_1442 : StackLang.HolProg 64 :=
.seq RemovedBody837_156 RemovedBody837_1441

def RemovedBody837_1443 : StackLang.HolProg 64 :=
.seq RemovedBody837_155 RemovedBody837_1442

def RemovedBody837_1444 : StackLang.HolProg 64 :=
.seq RemovedBody837_154 RemovedBody837_1443

def RemovedBody837_1445 : StackLang.HolProg 64 :=
.seq RemovedBody837_153 RemovedBody837_1444

def RemovedBody837_1446 : StackLang.HolProg 64 :=
.seq RemovedBody837_152 RemovedBody837_1445

def RemovedBody837_1447 : StackLang.HolProg 64 :=
.seq RemovedBody837_81 RemovedBody837_1446

def RemovedBody837_1448 : StackLang.HolProg 64 :=
.seq RemovedBody837_80 RemovedBody837_1447

def RemovedBody837_1449 : StackLang.HolProg 64 :=
.seq RemovedBody837_79 RemovedBody837_1448

def RemovedBody837_1450 : StackLang.HolProg 64 :=
.seq RemovedBody837_78 RemovedBody837_1449

def RemovedBody837_1451 : StackLang.HolProg 64 :=
.seq RemovedBody837_77 RemovedBody837_1450

def RemovedBody837_1452 : StackLang.HolProg 64 :=
.seq RemovedBody837_8 RemovedBody837_1451

def RemovedBody837_1453 : StackLang.HolProg 64 :=
.seq RemovedBody837_7 RemovedBody837_1452

def RemovedBody837_1454 : StackLang.HolProg 64 :=
.seq RemovedBody837_6 RemovedBody837_1453

def Removed837 : Nat × StackLang.HolProg 64 := (837, RemovedBody837_1454)
theorem Removed837_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc837 = Removed837 := by
  kernel_rfl
#print axioms Removed837_eq
end InitECandidate.Proofs.BackendStages
