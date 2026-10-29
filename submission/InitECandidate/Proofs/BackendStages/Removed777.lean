import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc777
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody777_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody777_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody777_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody777_3 : StackLang.HolProg 64 :=
.seq RemovedBody777_1 RemovedBody777_2

def RemovedBody777_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody777_3 RemovedBody777_4

def RemovedBody777_6 : StackLang.HolProg 64 :=
.seq RemovedBody777_0 RemovedBody777_5

def RemovedBody777_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody777_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_9 : StackLang.HolProg 64 :=
.seq RemovedBody777_7 RemovedBody777_8

def RemovedBody777_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3538#64)

def RemovedBody777_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_13 : StackLang.HolProg 64 :=
.seq RemovedBody777_11 RemovedBody777_12

def RemovedBody777_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody777_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody777_17 : StackLang.HolProg 64 :=
.seq RemovedBody777_15 RemovedBody777_16

def RemovedBody777_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody777_17 RemovedBody777_18

def RemovedBody777_20 : StackLang.HolProg 64 :=
.seq RemovedBody777_14 RemovedBody777_19

def RemovedBody777_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody777_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 3

def RemovedBody777_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody777_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody777_30 : StackLang.HolProg 64 :=
.seq RemovedBody777_28 RemovedBody777_29

def RemovedBody777_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody777_32 : StackLang.HolProg 64 :=
.seq RemovedBody777_30 RemovedBody777_31

def RemovedBody777_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_34 : StackLang.HolProg 64 :=
.seq RemovedBody777_32 RemovedBody777_33

def RemovedBody777_35 : StackLang.HolProg 64 :=
.seq RemovedBody777_27 RemovedBody777_34

def RemovedBody777_36 : StackLang.HolProg 64 :=
.seq RemovedBody777_26 RemovedBody777_35

def RemovedBody777_37 : StackLang.HolProg 64 :=
.seq RemovedBody777_25 RemovedBody777_36

def RemovedBody777_38 : StackLang.HolProg 64 :=
.seq RemovedBody777_24 RemovedBody777_37

def RemovedBody777_39 : StackLang.HolProg 64 :=
.seq RemovedBody777_23 RemovedBody777_38

def RemovedBody777_40 : StackLang.HolProg 64 :=
.seq RemovedBody777_22 RemovedBody777_39

def RemovedBody777_41 : StackLang.HolProg 64 :=
.seq RemovedBody777_21 RemovedBody777_40

def RemovedBody777_42 : StackLang.HolProg 64 :=
.seq RemovedBody777_20 RemovedBody777_41

def RemovedBody777_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody777_50 : StackLang.HolProg 64 :=
.seq RemovedBody777_48 RemovedBody777_49

def RemovedBody777_51 : StackLang.HolProg 64 :=
.seq RemovedBody777_47 RemovedBody777_50

def RemovedBody777_52 : StackLang.HolProg 64 :=
.seq RemovedBody777_46 RemovedBody777_51

def RemovedBody777_53 : StackLang.HolProg 64 :=
.seq RemovedBody777_45 RemovedBody777_52

def RemovedBody777_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody777_56 : StackLang.HolProg 64 :=
.seq RemovedBody777_54 RemovedBody777_55

def RemovedBody777_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody777_53, 0, 777, 2)) (Sum.inl 69) (some (RemovedBody777_56, 777, 3))

def RemovedBody777_58 : StackLang.HolProg 64 :=
.seq RemovedBody777_44 RemovedBody777_57

def RemovedBody777_59 : StackLang.HolProg 64 :=
.seq RemovedBody777_43 RemovedBody777_58

def RemovedBody777_60 : StackLang.HolProg 64 :=
.seq RemovedBody777_42 RemovedBody777_59

def RemovedBody777_61 : StackLang.HolProg 64 :=
.seq RemovedBody777_13 RemovedBody777_60

def RemovedBody777_62 : StackLang.HolProg 64 :=
.seq RemovedBody777_10 RemovedBody777_61

def RemovedBody777_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody777_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def RemovedBody777_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3539#64)

def RemovedBody777_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_69 : StackLang.HolProg 64 :=
.seq RemovedBody777_67 RemovedBody777_68

def RemovedBody777_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody777_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody777_73 : StackLang.HolProg 64 :=
.seq RemovedBody777_71 RemovedBody777_72

def RemovedBody777_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody777_73 RemovedBody777_74

def RemovedBody777_76 : StackLang.HolProg 64 :=
.seq RemovedBody777_70 RemovedBody777_75

def RemovedBody777_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody777_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 5

def RemovedBody777_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody777_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody777_86 : StackLang.HolProg 64 :=
.seq RemovedBody777_84 RemovedBody777_85

def RemovedBody777_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody777_88 : StackLang.HolProg 64 :=
.seq RemovedBody777_86 RemovedBody777_87

def RemovedBody777_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_90 : StackLang.HolProg 64 :=
.seq RemovedBody777_88 RemovedBody777_89

def RemovedBody777_91 : StackLang.HolProg 64 :=
.seq RemovedBody777_83 RemovedBody777_90

def RemovedBody777_92 : StackLang.HolProg 64 :=
.seq RemovedBody777_82 RemovedBody777_91

def RemovedBody777_93 : StackLang.HolProg 64 :=
.seq RemovedBody777_81 RemovedBody777_92

def RemovedBody777_94 : StackLang.HolProg 64 :=
.seq RemovedBody777_80 RemovedBody777_93

def RemovedBody777_95 : StackLang.HolProg 64 :=
.seq RemovedBody777_79 RemovedBody777_94

def RemovedBody777_96 : StackLang.HolProg 64 :=
.seq RemovedBody777_78 RemovedBody777_95

def RemovedBody777_97 : StackLang.HolProg 64 :=
.seq RemovedBody777_77 RemovedBody777_96

def RemovedBody777_98 : StackLang.HolProg 64 :=
.seq RemovedBody777_76 RemovedBody777_97

def RemovedBody777_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody777_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_107 : StackLang.HolProg 64 :=
.seq RemovedBody777_105 RemovedBody777_106

def RemovedBody777_108 : StackLang.HolProg 64 :=
.seq RemovedBody777_104 RemovedBody777_107

def RemovedBody777_109 : StackLang.HolProg 64 :=
.seq RemovedBody777_103 RemovedBody777_108

def RemovedBody777_110 : StackLang.HolProg 64 :=
.seq RemovedBody777_102 RemovedBody777_109

def RemovedBody777_111 : StackLang.HolProg 64 :=
.seq RemovedBody777_101 RemovedBody777_110

def RemovedBody777_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody777_114 : StackLang.HolProg 64 :=
.seq RemovedBody777_112 RemovedBody777_113

def RemovedBody777_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody777_111, 0, 777, 4)) (Sum.inl 68) (some (RemovedBody777_114, 777, 5))

def RemovedBody777_116 : StackLang.HolProg 64 :=
.seq RemovedBody777_100 RemovedBody777_115

def RemovedBody777_117 : StackLang.HolProg 64 :=
.seq RemovedBody777_99 RemovedBody777_116

def RemovedBody777_118 : StackLang.HolProg 64 :=
.seq RemovedBody777_98 RemovedBody777_117

def RemovedBody777_119 : StackLang.HolProg 64 :=
.seq RemovedBody777_69 RemovedBody777_118

def RemovedBody777_120 : StackLang.HolProg 64 :=
.seq RemovedBody777_66 RemovedBody777_119

def RemovedBody777_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody777_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody777_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody777_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody777_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody777_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def RemovedBody777_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def RemovedBody777_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4#64)

def RemovedBody777_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3540#64)

def RemovedBody777_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_133 : StackLang.HolProg 64 :=
.seq RemovedBody777_131 RemovedBody777_132

def RemovedBody777_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody777_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody777_137 : StackLang.HolProg 64 :=
.seq RemovedBody777_135 RemovedBody777_136

def RemovedBody777_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody777_137 RemovedBody777_138

def RemovedBody777_140 : StackLang.HolProg 64 :=
.seq RemovedBody777_134 RemovedBody777_139

def RemovedBody777_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody777_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 7

def RemovedBody777_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody777_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody777_150 : StackLang.HolProg 64 :=
.seq RemovedBody777_148 RemovedBody777_149

def RemovedBody777_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody777_152 : StackLang.HolProg 64 :=
.seq RemovedBody777_150 RemovedBody777_151

def RemovedBody777_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_154 : StackLang.HolProg 64 :=
.seq RemovedBody777_152 RemovedBody777_153

def RemovedBody777_155 : StackLang.HolProg 64 :=
.seq RemovedBody777_147 RemovedBody777_154

def RemovedBody777_156 : StackLang.HolProg 64 :=
.seq RemovedBody777_146 RemovedBody777_155

def RemovedBody777_157 : StackLang.HolProg 64 :=
.seq RemovedBody777_145 RemovedBody777_156

def RemovedBody777_158 : StackLang.HolProg 64 :=
.seq RemovedBody777_144 RemovedBody777_157

def RemovedBody777_159 : StackLang.HolProg 64 :=
.seq RemovedBody777_143 RemovedBody777_158

def RemovedBody777_160 : StackLang.HolProg 64 :=
.seq RemovedBody777_142 RemovedBody777_159

def RemovedBody777_161 : StackLang.HolProg 64 :=
.seq RemovedBody777_141 RemovedBody777_160

def RemovedBody777_162 : StackLang.HolProg 64 :=
.seq RemovedBody777_140 RemovedBody777_161

def RemovedBody777_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_170 : StackLang.HolProg 64 :=
.seq RemovedBody777_168 RemovedBody777_169

def RemovedBody777_171 : StackLang.HolProg 64 :=
.seq RemovedBody777_167 RemovedBody777_170

def RemovedBody777_172 : StackLang.HolProg 64 :=
.seq RemovedBody777_166 RemovedBody777_171

def RemovedBody777_173 : StackLang.HolProg 64 :=
.seq RemovedBody777_165 RemovedBody777_172

def RemovedBody777_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody777_176 : StackLang.HolProg 64 :=
.seq RemovedBody777_174 RemovedBody777_175

def RemovedBody777_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody777_173, 0, 777, 6)) (Sum.inl 772) (some (RemovedBody777_176, 777, 7))

def RemovedBody777_178 : StackLang.HolProg 64 :=
.seq RemovedBody777_164 RemovedBody777_177

def RemovedBody777_179 : StackLang.HolProg 64 :=
.seq RemovedBody777_163 RemovedBody777_178

def RemovedBody777_180 : StackLang.HolProg 64 :=
.seq RemovedBody777_162 RemovedBody777_179

def RemovedBody777_181 : StackLang.HolProg 64 :=
.seq RemovedBody777_133 RemovedBody777_180

def RemovedBody777_182 : StackLang.HolProg 64 :=
.seq RemovedBody777_130 RemovedBody777_181

def RemovedBody777_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody777_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody777_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3541#64)

def RemovedBody777_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_188 : StackLang.HolProg 64 :=
.seq RemovedBody777_186 RemovedBody777_187

def RemovedBody777_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody777_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody777_192 : StackLang.HolProg 64 :=
.seq RemovedBody777_190 RemovedBody777_191

def RemovedBody777_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody777_192 RemovedBody777_193

def RemovedBody777_195 : StackLang.HolProg 64 :=
.seq RemovedBody777_189 RemovedBody777_194

def RemovedBody777_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody777_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 9

def RemovedBody777_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody777_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody777_205 : StackLang.HolProg 64 :=
.seq RemovedBody777_203 RemovedBody777_204

def RemovedBody777_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody777_207 : StackLang.HolProg 64 :=
.seq RemovedBody777_205 RemovedBody777_206

def RemovedBody777_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_209 : StackLang.HolProg 64 :=
.seq RemovedBody777_207 RemovedBody777_208

def RemovedBody777_210 : StackLang.HolProg 64 :=
.seq RemovedBody777_202 RemovedBody777_209

def RemovedBody777_211 : StackLang.HolProg 64 :=
.seq RemovedBody777_201 RemovedBody777_210

def RemovedBody777_212 : StackLang.HolProg 64 :=
.seq RemovedBody777_200 RemovedBody777_211

def RemovedBody777_213 : StackLang.HolProg 64 :=
.seq RemovedBody777_199 RemovedBody777_212

def RemovedBody777_214 : StackLang.HolProg 64 :=
.seq RemovedBody777_198 RemovedBody777_213

def RemovedBody777_215 : StackLang.HolProg 64 :=
.seq RemovedBody777_197 RemovedBody777_214

def RemovedBody777_216 : StackLang.HolProg 64 :=
.seq RemovedBody777_196 RemovedBody777_215

def RemovedBody777_217 : StackLang.HolProg 64 :=
.seq RemovedBody777_195 RemovedBody777_216

def RemovedBody777_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody777_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_226 : StackLang.HolProg 64 :=
.seq RemovedBody777_224 RemovedBody777_225

def RemovedBody777_227 : StackLang.HolProg 64 :=
.seq RemovedBody777_223 RemovedBody777_226

def RemovedBody777_228 : StackLang.HolProg 64 :=
.seq RemovedBody777_222 RemovedBody777_227

def RemovedBody777_229 : StackLang.HolProg 64 :=
.seq RemovedBody777_221 RemovedBody777_228

def RemovedBody777_230 : StackLang.HolProg 64 :=
.seq RemovedBody777_220 RemovedBody777_229

def RemovedBody777_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody777_233 : StackLang.HolProg 64 :=
.seq RemovedBody777_231 RemovedBody777_232

def RemovedBody777_234 : StackLang.HolProg 64 :=
.call (some (RemovedBody777_230, 0, 777, 8)) (Sum.inl 767) (some (RemovedBody777_233, 777, 9))

def RemovedBody777_235 : StackLang.HolProg 64 :=
.seq RemovedBody777_219 RemovedBody777_234

def RemovedBody777_236 : StackLang.HolProg 64 :=
.seq RemovedBody777_218 RemovedBody777_235

def RemovedBody777_237 : StackLang.HolProg 64 :=
.seq RemovedBody777_217 RemovedBody777_236

def RemovedBody777_238 : StackLang.HolProg 64 :=
.seq RemovedBody777_188 RemovedBody777_237

def RemovedBody777_239 : StackLang.HolProg 64 :=
.seq RemovedBody777_185 RemovedBody777_238

def RemovedBody777_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody777_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody777_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_243 : StackLang.HolProg 64 :=
.seq RemovedBody777_241 RemovedBody777_242

def RemovedBody777_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3542#64)

def RemovedBody777_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_247 : StackLang.HolProg 64 :=
.seq RemovedBody777_245 RemovedBody777_246

def RemovedBody777_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody777_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody777_251 : StackLang.HolProg 64 :=
.seq RemovedBody777_249 RemovedBody777_250

def RemovedBody777_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_253 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody777_251 RemovedBody777_252

def RemovedBody777_254 : StackLang.HolProg 64 :=
.seq RemovedBody777_248 RemovedBody777_253

def RemovedBody777_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody777_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody777_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 11

def RemovedBody777_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody777_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody777_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody777_264 : StackLang.HolProg 64 :=
.seq RemovedBody777_262 RemovedBody777_263

def RemovedBody777_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody777_266 : StackLang.HolProg 64 :=
.seq RemovedBody777_264 RemovedBody777_265

def RemovedBody777_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_268 : StackLang.HolProg 64 :=
.seq RemovedBody777_266 RemovedBody777_267

def RemovedBody777_269 : StackLang.HolProg 64 :=
.seq RemovedBody777_261 RemovedBody777_268

def RemovedBody777_270 : StackLang.HolProg 64 :=
.seq RemovedBody777_260 RemovedBody777_269

def RemovedBody777_271 : StackLang.HolProg 64 :=
.seq RemovedBody777_259 RemovedBody777_270

def RemovedBody777_272 : StackLang.HolProg 64 :=
.seq RemovedBody777_258 RemovedBody777_271

def RemovedBody777_273 : StackLang.HolProg 64 :=
.seq RemovedBody777_257 RemovedBody777_272

def RemovedBody777_274 : StackLang.HolProg 64 :=
.seq RemovedBody777_256 RemovedBody777_273

def RemovedBody777_275 : StackLang.HolProg 64 :=
.seq RemovedBody777_255 RemovedBody777_274

def RemovedBody777_276 : StackLang.HolProg 64 :=
.seq RemovedBody777_254 RemovedBody777_275

def RemovedBody777_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody777_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody777_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody777_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody777_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_285 : StackLang.HolProg 64 :=
.seq RemovedBody777_283 RemovedBody777_284

def RemovedBody777_286 : StackLang.HolProg 64 :=
.seq RemovedBody777_282 RemovedBody777_285

def RemovedBody777_287 : StackLang.HolProg 64 :=
.seq RemovedBody777_281 RemovedBody777_286

def RemovedBody777_288 : StackLang.HolProg 64 :=
.seq RemovedBody777_280 RemovedBody777_287

def RemovedBody777_289 : StackLang.HolProg 64 :=
.seq RemovedBody777_279 RemovedBody777_288

def RemovedBody777_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody777_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody777_292 : StackLang.HolProg 64 :=
.seq RemovedBody777_290 RemovedBody777_291

def RemovedBody777_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody777_294 : StackLang.HolProg 64 :=
.seq RemovedBody777_292 RemovedBody777_293

def RemovedBody777_295 : StackLang.HolProg 64 :=
.call (some (RemovedBody777_289, 0, 777, 10)) (Sum.inl 70) (some (RemovedBody777_294, 777, 11))

def RemovedBody777_296 : StackLang.HolProg 64 :=
.seq RemovedBody777_278 RemovedBody777_295

def RemovedBody777_297 : StackLang.HolProg 64 :=
.seq RemovedBody777_277 RemovedBody777_296

def RemovedBody777_298 : StackLang.HolProg 64 :=
.seq RemovedBody777_276 RemovedBody777_297

def RemovedBody777_299 : StackLang.HolProg 64 :=
.seq RemovedBody777_247 RemovedBody777_298

def RemovedBody777_300 : StackLang.HolProg 64 :=
.seq RemovedBody777_244 RemovedBody777_299

def RemovedBody777_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody777_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody777_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody777_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody777_305 : StackLang.HolProg 64 :=
.seq RemovedBody777_303 RemovedBody777_304

def RemovedBody777_306 : StackLang.HolProg 64 :=
.seq RemovedBody777_302 RemovedBody777_305

def RemovedBody777_307 : StackLang.HolProg 64 :=
.seq RemovedBody777_301 RemovedBody777_306

def RemovedBody777_308 : StackLang.HolProg 64 :=
.seq RemovedBody777_300 RemovedBody777_307

def RemovedBody777_309 : StackLang.HolProg 64 :=
.seq RemovedBody777_243 RemovedBody777_308

def RemovedBody777_310 : StackLang.HolProg 64 :=
.seq RemovedBody777_240 RemovedBody777_309

def RemovedBody777_311 : StackLang.HolProg 64 :=
.seq RemovedBody777_239 RemovedBody777_310

def RemovedBody777_312 : StackLang.HolProg 64 :=
.seq RemovedBody777_184 RemovedBody777_311

def RemovedBody777_313 : StackLang.HolProg 64 :=
.seq RemovedBody777_183 RemovedBody777_312

def RemovedBody777_314 : StackLang.HolProg 64 :=
.seq RemovedBody777_182 RemovedBody777_313

def RemovedBody777_315 : StackLang.HolProg 64 :=
.seq RemovedBody777_129 RemovedBody777_314

def RemovedBody777_316 : StackLang.HolProg 64 :=
.seq RemovedBody777_128 RemovedBody777_315

def RemovedBody777_317 : StackLang.HolProg 64 :=
.seq RemovedBody777_127 RemovedBody777_316

def RemovedBody777_318 : StackLang.HolProg 64 :=
.seq RemovedBody777_126 RemovedBody777_317

def RemovedBody777_319 : StackLang.HolProg 64 :=
.seq RemovedBody777_125 RemovedBody777_318

def RemovedBody777_320 : StackLang.HolProg 64 :=
.seq RemovedBody777_124 RemovedBody777_319

def RemovedBody777_321 : StackLang.HolProg 64 :=
.seq RemovedBody777_123 RemovedBody777_320

def RemovedBody777_322 : StackLang.HolProg 64 :=
.seq RemovedBody777_122 RemovedBody777_321

def RemovedBody777_323 : StackLang.HolProg 64 :=
.seq RemovedBody777_121 RemovedBody777_322

def RemovedBody777_324 : StackLang.HolProg 64 :=
.seq RemovedBody777_120 RemovedBody777_323

def RemovedBody777_325 : StackLang.HolProg 64 :=
.seq RemovedBody777_65 RemovedBody777_324

def RemovedBody777_326 : StackLang.HolProg 64 :=
.seq RemovedBody777_64 RemovedBody777_325

def RemovedBody777_327 : StackLang.HolProg 64 :=
.seq RemovedBody777_63 RemovedBody777_326

def RemovedBody777_328 : StackLang.HolProg 64 :=
.seq RemovedBody777_62 RemovedBody777_327

def RemovedBody777_329 : StackLang.HolProg 64 :=
.seq RemovedBody777_9 RemovedBody777_328

def RemovedBody777_330 : StackLang.HolProg 64 :=
.seq RemovedBody777_6 RemovedBody777_329

def Removed777 : Nat × StackLang.HolProg 64 := (777, RemovedBody777_330)
theorem Removed777_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc777 = Removed777 := by
  kernel_rfl
#print axioms Removed777_eq
end InitECandidate.Proofs.BackendStages
