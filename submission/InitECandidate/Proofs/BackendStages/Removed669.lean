import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc669
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody669_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody669_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_3 : StackLang.HolProg 64 :=
.seq RemovedBody669_1 RemovedBody669_2

def RemovedBody669_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_3 RemovedBody669_4

def RemovedBody669_6 : StackLang.HolProg 64 :=
.seq RemovedBody669_0 RemovedBody669_5

def RemovedBody669_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_10 : StackLang.HolProg 64 :=
.seq RemovedBody669_8 RemovedBody669_9

def RemovedBody669_11 : StackLang.HolProg 64 :=
.seq RemovedBody669_7 RemovedBody669_10

def RemovedBody669_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2773#64)

def RemovedBody669_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_15 : StackLang.HolProg 64 :=
.seq RemovedBody669_13 RemovedBody669_14

def RemovedBody669_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_19 : StackLang.HolProg 64 :=
.seq RemovedBody669_17 RemovedBody669_18

def RemovedBody669_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_19 RemovedBody669_20

def RemovedBody669_22 : StackLang.HolProg 64 :=
.seq RemovedBody669_16 RemovedBody669_21

def RemovedBody669_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 3

def RemovedBody669_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_32 : StackLang.HolProg 64 :=
.seq RemovedBody669_30 RemovedBody669_31

def RemovedBody669_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_34 : StackLang.HolProg 64 :=
.seq RemovedBody669_32 RemovedBody669_33

def RemovedBody669_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_36 : StackLang.HolProg 64 :=
.seq RemovedBody669_34 RemovedBody669_35

def RemovedBody669_37 : StackLang.HolProg 64 :=
.seq RemovedBody669_29 RemovedBody669_36

def RemovedBody669_38 : StackLang.HolProg 64 :=
.seq RemovedBody669_28 RemovedBody669_37

def RemovedBody669_39 : StackLang.HolProg 64 :=
.seq RemovedBody669_27 RemovedBody669_38

def RemovedBody669_40 : StackLang.HolProg 64 :=
.seq RemovedBody669_26 RemovedBody669_39

def RemovedBody669_41 : StackLang.HolProg 64 :=
.seq RemovedBody669_25 RemovedBody669_40

def RemovedBody669_42 : StackLang.HolProg 64 :=
.seq RemovedBody669_24 RemovedBody669_41

def RemovedBody669_43 : StackLang.HolProg 64 :=
.seq RemovedBody669_23 RemovedBody669_42

def RemovedBody669_44 : StackLang.HolProg 64 :=
.seq RemovedBody669_22 RemovedBody669_43

def RemovedBody669_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_52 : StackLang.HolProg 64 :=
.seq RemovedBody669_50 RemovedBody669_51

def RemovedBody669_53 : StackLang.HolProg 64 :=
.seq RemovedBody669_49 RemovedBody669_52

def RemovedBody669_54 : StackLang.HolProg 64 :=
.seq RemovedBody669_48 RemovedBody669_53

def RemovedBody669_55 : StackLang.HolProg 64 :=
.seq RemovedBody669_47 RemovedBody669_54

def RemovedBody669_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_58 : StackLang.HolProg 64 :=
.seq RemovedBody669_56 RemovedBody669_57

def RemovedBody669_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_55, 0, 669, 2)) (Sum.inl 69) (some (RemovedBody669_58, 669, 3))

def RemovedBody669_60 : StackLang.HolProg 64 :=
.seq RemovedBody669_46 RemovedBody669_59

def RemovedBody669_61 : StackLang.HolProg 64 :=
.seq RemovedBody669_45 RemovedBody669_60

def RemovedBody669_62 : StackLang.HolProg 64 :=
.seq RemovedBody669_44 RemovedBody669_61

def RemovedBody669_63 : StackLang.HolProg 64 :=
.seq RemovedBody669_15 RemovedBody669_62

def RemovedBody669_64 : StackLang.HolProg 64 :=
.seq RemovedBody669_12 RemovedBody669_63

def RemovedBody669_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 736#64)

def RemovedBody669_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2774#64)

def RemovedBody669_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_71 : StackLang.HolProg 64 :=
.seq RemovedBody669_69 RemovedBody669_70

def RemovedBody669_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_75 : StackLang.HolProg 64 :=
.seq RemovedBody669_73 RemovedBody669_74

def RemovedBody669_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_75 RemovedBody669_76

def RemovedBody669_78 : StackLang.HolProg 64 :=
.seq RemovedBody669_72 RemovedBody669_77

def RemovedBody669_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 5

def RemovedBody669_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_88 : StackLang.HolProg 64 :=
.seq RemovedBody669_86 RemovedBody669_87

def RemovedBody669_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_90 : StackLang.HolProg 64 :=
.seq RemovedBody669_88 RemovedBody669_89

def RemovedBody669_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_92 : StackLang.HolProg 64 :=
.seq RemovedBody669_90 RemovedBody669_91

def RemovedBody669_93 : StackLang.HolProg 64 :=
.seq RemovedBody669_85 RemovedBody669_92

def RemovedBody669_94 : StackLang.HolProg 64 :=
.seq RemovedBody669_84 RemovedBody669_93

def RemovedBody669_95 : StackLang.HolProg 64 :=
.seq RemovedBody669_83 RemovedBody669_94

def RemovedBody669_96 : StackLang.HolProg 64 :=
.seq RemovedBody669_82 RemovedBody669_95

def RemovedBody669_97 : StackLang.HolProg 64 :=
.seq RemovedBody669_81 RemovedBody669_96

def RemovedBody669_98 : StackLang.HolProg 64 :=
.seq RemovedBody669_80 RemovedBody669_97

def RemovedBody669_99 : StackLang.HolProg 64 :=
.seq RemovedBody669_79 RemovedBody669_98

def RemovedBody669_100 : StackLang.HolProg 64 :=
.seq RemovedBody669_78 RemovedBody669_99

def RemovedBody669_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_109 : StackLang.HolProg 64 :=
.seq RemovedBody669_107 RemovedBody669_108

def RemovedBody669_110 : StackLang.HolProg 64 :=
.seq RemovedBody669_106 RemovedBody669_109

def RemovedBody669_111 : StackLang.HolProg 64 :=
.seq RemovedBody669_105 RemovedBody669_110

def RemovedBody669_112 : StackLang.HolProg 64 :=
.seq RemovedBody669_104 RemovedBody669_111

def RemovedBody669_113 : StackLang.HolProg 64 :=
.seq RemovedBody669_103 RemovedBody669_112

def RemovedBody669_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_116 : StackLang.HolProg 64 :=
.seq RemovedBody669_114 RemovedBody669_115

def RemovedBody669_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_113, 0, 669, 4)) (Sum.inl 68) (some (RemovedBody669_116, 669, 5))

def RemovedBody669_118 : StackLang.HolProg 64 :=
.seq RemovedBody669_102 RemovedBody669_117

def RemovedBody669_119 : StackLang.HolProg 64 :=
.seq RemovedBody669_101 RemovedBody669_118

def RemovedBody669_120 : StackLang.HolProg 64 :=
.seq RemovedBody669_100 RemovedBody669_119

def RemovedBody669_121 : StackLang.HolProg 64 :=
.seq RemovedBody669_71 RemovedBody669_120

def RemovedBody669_122 : StackLang.HolProg 64 :=
.seq RemovedBody669_68 RemovedBody669_121

def RemovedBody669_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody669_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 23#64)

def RemovedBody669_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody669_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody669_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody669_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody669_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody669_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 11#64)

def RemovedBody669_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551605#64)))

def RemovedBody669_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_141 : StackLang.HolProg 64 :=
.seq RemovedBody669_139 RemovedBody669_140

def RemovedBody669_142 : StackLang.HolProg 64 :=
.seq RemovedBody669_138 RemovedBody669_141

def RemovedBody669_143 : StackLang.HolProg 64 :=
.seq RemovedBody669_137 RemovedBody669_142

def RemovedBody669_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_146 : StackLang.HolProg 64 :=
.seq RemovedBody669_144 RemovedBody669_145

def RemovedBody669_147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody669_143 RemovedBody669_146

def RemovedBody669_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_152 : StackLang.HolProg 64 :=
.seq RemovedBody669_150 RemovedBody669_151

def RemovedBody669_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_155 : StackLang.HolProg 64 :=
.seq RemovedBody669_153 RemovedBody669_154

def RemovedBody669_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody669_158 : StackLang.HolProg 64 :=
.seq RemovedBody669_156 RemovedBody669_157

def RemovedBody669_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_165 : StackLang.HolProg 64 :=
.seq RemovedBody669_163 RemovedBody669_164

def RemovedBody669_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_168 : StackLang.HolProg 64 :=
.seq RemovedBody669_166 RemovedBody669_167

def RemovedBody669_169 : StackLang.HolProg 64 :=
.seq RemovedBody669_165 RemovedBody669_168

def RemovedBody669_170 : StackLang.HolProg 64 :=
.seq RemovedBody669_162 RemovedBody669_169

def RemovedBody669_171 : StackLang.HolProg 64 :=
.seq RemovedBody669_161 RemovedBody669_170

def RemovedBody669_172 : StackLang.HolProg 64 :=
.seq RemovedBody669_160 RemovedBody669_171

def RemovedBody669_173 : StackLang.HolProg 64 :=
.seq RemovedBody669_159 RemovedBody669_172

def RemovedBody669_174 : StackLang.HolProg 64 :=
.seq RemovedBody669_158 RemovedBody669_173

def RemovedBody669_175 : StackLang.HolProg 64 :=
.seq RemovedBody669_155 RemovedBody669_174

def RemovedBody669_176 : StackLang.HolProg 64 :=
.seq RemovedBody669_152 RemovedBody669_175

def RemovedBody669_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody669_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody669_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody669_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody669_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody669_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody669_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody669_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody669_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody669_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody669_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody669_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody669_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody669_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody669_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody669_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2775#64)

def RemovedBody669_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_208 : StackLang.HolProg 64 :=
.seq RemovedBody669_206 RemovedBody669_207

def RemovedBody669_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_212 : StackLang.HolProg 64 :=
.seq RemovedBody669_210 RemovedBody669_211

def RemovedBody669_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_212 RemovedBody669_213

def RemovedBody669_215 : StackLang.HolProg 64 :=
.seq RemovedBody669_209 RemovedBody669_214

def RemovedBody669_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 7

def RemovedBody669_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_225 : StackLang.HolProg 64 :=
.seq RemovedBody669_223 RemovedBody669_224

def RemovedBody669_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_227 : StackLang.HolProg 64 :=
.seq RemovedBody669_225 RemovedBody669_226

def RemovedBody669_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_229 : StackLang.HolProg 64 :=
.seq RemovedBody669_227 RemovedBody669_228

def RemovedBody669_230 : StackLang.HolProg 64 :=
.seq RemovedBody669_222 RemovedBody669_229

def RemovedBody669_231 : StackLang.HolProg 64 :=
.seq RemovedBody669_221 RemovedBody669_230

def RemovedBody669_232 : StackLang.HolProg 64 :=
.seq RemovedBody669_220 RemovedBody669_231

def RemovedBody669_233 : StackLang.HolProg 64 :=
.seq RemovedBody669_219 RemovedBody669_232

def RemovedBody669_234 : StackLang.HolProg 64 :=
.seq RemovedBody669_218 RemovedBody669_233

def RemovedBody669_235 : StackLang.HolProg 64 :=
.seq RemovedBody669_217 RemovedBody669_234

def RemovedBody669_236 : StackLang.HolProg 64 :=
.seq RemovedBody669_216 RemovedBody669_235

def RemovedBody669_237 : StackLang.HolProg 64 :=
.seq RemovedBody669_215 RemovedBody669_236

def RemovedBody669_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody669_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody669_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody669_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_254 : StackLang.HolProg 64 :=
.seq RemovedBody669_252 RemovedBody669_253

def RemovedBody669_255 : StackLang.HolProg 64 :=
.seq RemovedBody669_251 RemovedBody669_254

def RemovedBody669_256 : StackLang.HolProg 64 :=
.seq RemovedBody669_250 RemovedBody669_255

def RemovedBody669_257 : StackLang.HolProg 64 :=
.seq RemovedBody669_249 RemovedBody669_256

def RemovedBody669_258 : StackLang.HolProg 64 :=
.seq RemovedBody669_248 RemovedBody669_257

def RemovedBody669_259 : StackLang.HolProg 64 :=
.seq RemovedBody669_247 RemovedBody669_258

def RemovedBody669_260 : StackLang.HolProg 64 :=
.seq RemovedBody669_246 RemovedBody669_259

def RemovedBody669_261 : StackLang.HolProg 64 :=
.seq RemovedBody669_245 RemovedBody669_260

def RemovedBody669_262 : StackLang.HolProg 64 :=
.seq RemovedBody669_244 RemovedBody669_261

def RemovedBody669_263 : StackLang.HolProg 64 :=
.seq RemovedBody669_243 RemovedBody669_262

def RemovedBody669_264 : StackLang.HolProg 64 :=
.seq RemovedBody669_242 RemovedBody669_263

def RemovedBody669_265 : StackLang.HolProg 64 :=
.seq RemovedBody669_241 RemovedBody669_264

def RemovedBody669_266 : StackLang.HolProg 64 :=
.seq RemovedBody669_240 RemovedBody669_265

def RemovedBody669_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_273 : StackLang.HolProg 64 :=
.seq RemovedBody669_271 RemovedBody669_272

def RemovedBody669_274 : StackLang.HolProg 64 :=
.seq RemovedBody669_270 RemovedBody669_273

def RemovedBody669_275 : StackLang.HolProg 64 :=
.seq RemovedBody669_269 RemovedBody669_274

def RemovedBody669_276 : StackLang.HolProg 64 :=
.seq RemovedBody669_268 RemovedBody669_275

def RemovedBody669_277 : StackLang.HolProg 64 :=
.seq RemovedBody669_267 RemovedBody669_276

def RemovedBody669_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_279 : StackLang.HolProg 64 :=
.seq RemovedBody669_277 RemovedBody669_278

def RemovedBody669_280 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_266, 0, 669, 6)) (Sum.inl 661) (some (RemovedBody669_279, 669, 7))

def RemovedBody669_281 : StackLang.HolProg 64 :=
.seq RemovedBody669_239 RemovedBody669_280

def RemovedBody669_282 : StackLang.HolProg 64 :=
.seq RemovedBody669_238 RemovedBody669_281

def RemovedBody669_283 : StackLang.HolProg 64 :=
.seq RemovedBody669_237 RemovedBody669_282

def RemovedBody669_284 : StackLang.HolProg 64 :=
.seq RemovedBody669_208 RemovedBody669_283

def RemovedBody669_285 : StackLang.HolProg 64 :=
.seq RemovedBody669_205 RemovedBody669_284

def RemovedBody669_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody669_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2776#64)

def RemovedBody669_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_291 : StackLang.HolProg 64 :=
.seq RemovedBody669_289 RemovedBody669_290

def RemovedBody669_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_295 : StackLang.HolProg 64 :=
.seq RemovedBody669_293 RemovedBody669_294

def RemovedBody669_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_295 RemovedBody669_296

def RemovedBody669_298 : StackLang.HolProg 64 :=
.seq RemovedBody669_292 RemovedBody669_297

def RemovedBody669_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 9

def RemovedBody669_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_308 : StackLang.HolProg 64 :=
.seq RemovedBody669_306 RemovedBody669_307

def RemovedBody669_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_310 : StackLang.HolProg 64 :=
.seq RemovedBody669_308 RemovedBody669_309

def RemovedBody669_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_312 : StackLang.HolProg 64 :=
.seq RemovedBody669_310 RemovedBody669_311

def RemovedBody669_313 : StackLang.HolProg 64 :=
.seq RemovedBody669_305 RemovedBody669_312

def RemovedBody669_314 : StackLang.HolProg 64 :=
.seq RemovedBody669_304 RemovedBody669_313

def RemovedBody669_315 : StackLang.HolProg 64 :=
.seq RemovedBody669_303 RemovedBody669_314

def RemovedBody669_316 : StackLang.HolProg 64 :=
.seq RemovedBody669_302 RemovedBody669_315

def RemovedBody669_317 : StackLang.HolProg 64 :=
.seq RemovedBody669_301 RemovedBody669_316

def RemovedBody669_318 : StackLang.HolProg 64 :=
.seq RemovedBody669_300 RemovedBody669_317

def RemovedBody669_319 : StackLang.HolProg 64 :=
.seq RemovedBody669_299 RemovedBody669_318

def RemovedBody669_320 : StackLang.HolProg 64 :=
.seq RemovedBody669_298 RemovedBody669_319

def RemovedBody669_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_329 : StackLang.HolProg 64 :=
.seq RemovedBody669_327 RemovedBody669_328

def RemovedBody669_330 : StackLang.HolProg 64 :=
.seq RemovedBody669_326 RemovedBody669_329

def RemovedBody669_331 : StackLang.HolProg 64 :=
.seq RemovedBody669_325 RemovedBody669_330

def RemovedBody669_332 : StackLang.HolProg 64 :=
.seq RemovedBody669_324 RemovedBody669_331

def RemovedBody669_333 : StackLang.HolProg 64 :=
.seq RemovedBody669_323 RemovedBody669_332

def RemovedBody669_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_336 : StackLang.HolProg 64 :=
.seq RemovedBody669_334 RemovedBody669_335

def RemovedBody669_337 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_333, 0, 669, 8)) (Sum.inl 658) (some (RemovedBody669_336, 669, 9))

def RemovedBody669_338 : StackLang.HolProg 64 :=
.seq RemovedBody669_322 RemovedBody669_337

def RemovedBody669_339 : StackLang.HolProg 64 :=
.seq RemovedBody669_321 RemovedBody669_338

def RemovedBody669_340 : StackLang.HolProg 64 :=
.seq RemovedBody669_320 RemovedBody669_339

def RemovedBody669_341 : StackLang.HolProg 64 :=
.seq RemovedBody669_291 RemovedBody669_340

def RemovedBody669_342 : StackLang.HolProg 64 :=
.seq RemovedBody669_288 RemovedBody669_341

def RemovedBody669_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody669_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_350 : StackLang.HolProg 64 :=
.seq RemovedBody669_348 RemovedBody669_349

def RemovedBody669_351 : StackLang.HolProg 64 :=
.seq RemovedBody669_347 RemovedBody669_350

def RemovedBody669_352 : StackLang.HolProg 64 :=
.seq RemovedBody669_346 RemovedBody669_351

def RemovedBody669_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody669_354 : StackLang.HolProg 64 :=
.seq RemovedBody669_352 RemovedBody669_353

def RemovedBody669_355 : StackLang.HolProg 64 :=
.seq RemovedBody669_345 RemovedBody669_354

def RemovedBody669_356 : StackLang.HolProg 64 :=
.seq RemovedBody669_344 RemovedBody669_355

def RemovedBody669_357 : StackLang.HolProg 64 :=
.seq RemovedBody669_343 RemovedBody669_356

def RemovedBody669_358 : StackLang.HolProg 64 :=
.seq RemovedBody669_342 RemovedBody669_357

def RemovedBody669_359 : StackLang.HolProg 64 :=
.seq RemovedBody669_287 RemovedBody669_358

def RemovedBody669_360 : StackLang.HolProg 64 :=
.seq RemovedBody669_286 RemovedBody669_359

def RemovedBody669_361 : StackLang.HolProg 64 :=
.seq RemovedBody669_285 RemovedBody669_360

def RemovedBody669_362 : StackLang.HolProg 64 :=
.seq RemovedBody669_204 RemovedBody669_361

def RemovedBody669_363 : StackLang.HolProg 64 :=
.seq RemovedBody669_203 RemovedBody669_362

def RemovedBody669_364 : StackLang.HolProg 64 :=
.seq RemovedBody669_202 RemovedBody669_363

def RemovedBody669_365 : StackLang.HolProg 64 :=
.seq RemovedBody669_201 RemovedBody669_364

def RemovedBody669_366 : StackLang.HolProg 64 :=
.seq RemovedBody669_200 RemovedBody669_365

def RemovedBody669_367 : StackLang.HolProg 64 :=
.seq RemovedBody669_199 RemovedBody669_366

def RemovedBody669_368 : StackLang.HolProg 64 :=
.seq RemovedBody669_198 RemovedBody669_367

def RemovedBody669_369 : StackLang.HolProg 64 :=
.seq RemovedBody669_197 RemovedBody669_368

def RemovedBody669_370 : StackLang.HolProg 64 :=
.seq RemovedBody669_196 RemovedBody669_369

def RemovedBody669_371 : StackLang.HolProg 64 :=
.seq RemovedBody669_195 RemovedBody669_370

def RemovedBody669_372 : StackLang.HolProg 64 :=
.seq RemovedBody669_194 RemovedBody669_371

def RemovedBody669_373 : StackLang.HolProg 64 :=
.seq RemovedBody669_193 RemovedBody669_372

def RemovedBody669_374 : StackLang.HolProg 64 :=
.seq RemovedBody669_192 RemovedBody669_373

def RemovedBody669_375 : StackLang.HolProg 64 :=
.seq RemovedBody669_191 RemovedBody669_374

def RemovedBody669_376 : StackLang.HolProg 64 :=
.seq RemovedBody669_190 RemovedBody669_375

def RemovedBody669_377 : StackLang.HolProg 64 :=
.seq RemovedBody669_189 RemovedBody669_376

def RemovedBody669_378 : StackLang.HolProg 64 :=
.seq RemovedBody669_188 RemovedBody669_377

def RemovedBody669_379 : StackLang.HolProg 64 :=
.seq RemovedBody669_187 RemovedBody669_378

def RemovedBody669_380 : StackLang.HolProg 64 :=
.seq RemovedBody669_186 RemovedBody669_379

def RemovedBody669_381 : StackLang.HolProg 64 :=
.seq RemovedBody669_185 RemovedBody669_380

def RemovedBody669_382 : StackLang.HolProg 64 :=
.seq RemovedBody669_184 RemovedBody669_381

def RemovedBody669_383 : StackLang.HolProg 64 :=
.seq RemovedBody669_183 RemovedBody669_382

def RemovedBody669_384 : StackLang.HolProg 64 :=
.seq RemovedBody669_182 RemovedBody669_383

def RemovedBody669_385 : StackLang.HolProg 64 :=
.seq RemovedBody669_181 RemovedBody669_384

def RemovedBody669_386 : StackLang.HolProg 64 :=
.seq RemovedBody669_180 RemovedBody669_385

def RemovedBody669_387 : StackLang.HolProg 64 :=
.seq RemovedBody669_179 RemovedBody669_386

def RemovedBody669_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody669_391 : StackLang.HolProg 64 :=
.seq RemovedBody669_389 RemovedBody669_390

def RemovedBody669_392 : StackLang.HolProg 64 :=
.seq RemovedBody669_388 RemovedBody669_391

def RemovedBody669_393 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody669_387 RemovedBody669_392

def RemovedBody669_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody669_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_405 : StackLang.HolProg 64 :=
.seq RemovedBody669_403 RemovedBody669_404

def RemovedBody669_406 : StackLang.HolProg 64 :=
.seq RemovedBody669_402 RemovedBody669_405

def RemovedBody669_407 : StackLang.HolProg 64 :=
.seq RemovedBody669_401 RemovedBody669_406

def RemovedBody669_408 : StackLang.HolProg 64 :=
.seq RemovedBody669_400 RemovedBody669_407

def RemovedBody669_409 : StackLang.HolProg 64 :=
.seq RemovedBody669_399 RemovedBody669_408

def RemovedBody669_410 : StackLang.HolProg 64 :=
.seq RemovedBody669_398 RemovedBody669_409

def RemovedBody669_411 : StackLang.HolProg 64 :=
.seq RemovedBody669_397 RemovedBody669_410

def RemovedBody669_412 : StackLang.HolProg 64 :=
.seq RemovedBody669_396 RemovedBody669_411

def RemovedBody669_413 : StackLang.HolProg 64 :=
.seq RemovedBody669_395 RemovedBody669_412

def RemovedBody669_414 : StackLang.HolProg 64 :=
.seq RemovedBody669_394 RemovedBody669_413

def RemovedBody669_415 : StackLang.HolProg 64 :=
.seq RemovedBody669_393 RemovedBody669_414

def RemovedBody669_416 : StackLang.HolProg 64 :=
.seq RemovedBody669_178 RemovedBody669_415

def RemovedBody669_417 : StackLang.HolProg 64 :=
.seq RemovedBody669_177 RemovedBody669_416

def RemovedBody669_418 : StackLang.HolProg 64 :=
.loop RemovedBody669_417

def RemovedBody669_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_430 : StackLang.HolProg 64 :=
.seq RemovedBody669_428 RemovedBody669_429

def RemovedBody669_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_433 : StackLang.HolProg 64 :=
.seq RemovedBody669_431 RemovedBody669_432

def RemovedBody669_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_436 : StackLang.HolProg 64 :=
.seq RemovedBody669_434 RemovedBody669_435

def RemovedBody669_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_439 : StackLang.HolProg 64 :=
.seq RemovedBody669_437 RemovedBody669_438

def RemovedBody669_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody669_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_442 : StackLang.HolProg 64 :=
.seq RemovedBody669_440 RemovedBody669_441

def RemovedBody669_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody669_445 : StackLang.HolProg 64 :=
.seq RemovedBody669_443 RemovedBody669_444

def RemovedBody669_446 : StackLang.HolProg 64 :=
.seq RemovedBody669_442 RemovedBody669_445

def RemovedBody669_447 : StackLang.HolProg 64 :=
.seq RemovedBody669_439 RemovedBody669_446

def RemovedBody669_448 : StackLang.HolProg 64 :=
.seq RemovedBody669_436 RemovedBody669_447

def RemovedBody669_449 : StackLang.HolProg 64 :=
.seq RemovedBody669_433 RemovedBody669_448

def RemovedBody669_450 : StackLang.HolProg 64 :=
.seq RemovedBody669_430 RemovedBody669_449

def RemovedBody669_451 : StackLang.HolProg 64 :=
.seq RemovedBody669_427 RemovedBody669_450

def RemovedBody669_452 : StackLang.HolProg 64 :=
.seq RemovedBody669_426 RemovedBody669_451

def RemovedBody669_453 : StackLang.HolProg 64 :=
.seq RemovedBody669_425 RemovedBody669_452

def RemovedBody669_454 : StackLang.HolProg 64 :=
.seq RemovedBody669_424 RemovedBody669_453

def RemovedBody669_455 : StackLang.HolProg 64 :=
.seq RemovedBody669_423 RemovedBody669_454

def RemovedBody669_456 : StackLang.HolProg 64 :=
.seq RemovedBody669_422 RemovedBody669_455

def RemovedBody669_457 : StackLang.HolProg 64 :=
.seq RemovedBody669_421 RemovedBody669_456

def RemovedBody669_458 : StackLang.HolProg 64 :=
.seq RemovedBody669_420 RemovedBody669_457

def RemovedBody669_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2777#64)

def RemovedBody669_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_462 : StackLang.HolProg 64 :=
.seq RemovedBody669_460 RemovedBody669_461

def RemovedBody669_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_466 : StackLang.HolProg 64 :=
.seq RemovedBody669_464 RemovedBody669_465

def RemovedBody669_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_468 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_466 RemovedBody669_467

def RemovedBody669_469 : StackLang.HolProg 64 :=
.seq RemovedBody669_463 RemovedBody669_468

def RemovedBody669_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 11

def RemovedBody669_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_479 : StackLang.HolProg 64 :=
.seq RemovedBody669_477 RemovedBody669_478

def RemovedBody669_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_481 : StackLang.HolProg 64 :=
.seq RemovedBody669_479 RemovedBody669_480

def RemovedBody669_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_483 : StackLang.HolProg 64 :=
.seq RemovedBody669_481 RemovedBody669_482

def RemovedBody669_484 : StackLang.HolProg 64 :=
.seq RemovedBody669_476 RemovedBody669_483

def RemovedBody669_485 : StackLang.HolProg 64 :=
.seq RemovedBody669_475 RemovedBody669_484

def RemovedBody669_486 : StackLang.HolProg 64 :=
.seq RemovedBody669_474 RemovedBody669_485

def RemovedBody669_487 : StackLang.HolProg 64 :=
.seq RemovedBody669_473 RemovedBody669_486

def RemovedBody669_488 : StackLang.HolProg 64 :=
.seq RemovedBody669_472 RemovedBody669_487

def RemovedBody669_489 : StackLang.HolProg 64 :=
.seq RemovedBody669_471 RemovedBody669_488

def RemovedBody669_490 : StackLang.HolProg 64 :=
.seq RemovedBody669_470 RemovedBody669_489

def RemovedBody669_491 : StackLang.HolProg 64 :=
.seq RemovedBody669_469 RemovedBody669_490

def RemovedBody669_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_501 : StackLang.HolProg 64 :=
.seq RemovedBody669_499 RemovedBody669_500

def RemovedBody669_502 : StackLang.HolProg 64 :=
.seq RemovedBody669_498 RemovedBody669_501

def RemovedBody669_503 : StackLang.HolProg 64 :=
.seq RemovedBody669_497 RemovedBody669_502

def RemovedBody669_504 : StackLang.HolProg 64 :=
.seq RemovedBody669_496 RemovedBody669_503

def RemovedBody669_505 : StackLang.HolProg 64 :=
.seq RemovedBody669_495 RemovedBody669_504

def RemovedBody669_506 : StackLang.HolProg 64 :=
.seq RemovedBody669_494 RemovedBody669_505

def RemovedBody669_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_509 : StackLang.HolProg 64 :=
.seq RemovedBody669_507 RemovedBody669_508

def RemovedBody669_510 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_511 : StackLang.HolProg 64 :=
.seq RemovedBody669_509 RemovedBody669_510

def RemovedBody669_512 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_506, 0, 669, 10)) (Sum.inl 658) (some (RemovedBody669_511, 669, 11))

def RemovedBody669_513 : StackLang.HolProg 64 :=
.seq RemovedBody669_493 RemovedBody669_512

def RemovedBody669_514 : StackLang.HolProg 64 :=
.seq RemovedBody669_492 RemovedBody669_513

def RemovedBody669_515 : StackLang.HolProg 64 :=
.seq RemovedBody669_491 RemovedBody669_514

def RemovedBody669_516 : StackLang.HolProg 64 :=
.seq RemovedBody669_462 RemovedBody669_515

def RemovedBody669_517 : StackLang.HolProg 64 :=
.seq RemovedBody669_459 RemovedBody669_516

def RemovedBody669_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody669_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody669_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody669_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody669_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody669_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody669_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody669_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody669_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody669_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody669_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody669_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody669_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody669_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_544 : StackLang.HolProg 64 :=
.seq RemovedBody669_542 RemovedBody669_543

def RemovedBody669_545 : StackLang.HolProg 64 :=
.seq RemovedBody669_541 RemovedBody669_544

def RemovedBody669_546 : StackLang.HolProg 64 :=
.seq RemovedBody669_540 RemovedBody669_545

def RemovedBody669_547 : StackLang.HolProg 64 :=
.seq RemovedBody669_539 RemovedBody669_546

def RemovedBody669_548 : StackLang.HolProg 64 :=
.seq RemovedBody669_538 RemovedBody669_547

def RemovedBody669_549 : StackLang.HolProg 64 :=
.seq RemovedBody669_537 RemovedBody669_548

def RemovedBody669_550 : StackLang.HolProg 64 :=
.seq RemovedBody669_536 RemovedBody669_549

def RemovedBody669_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2778#64)

def RemovedBody669_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_554 : StackLang.HolProg 64 :=
.seq RemovedBody669_552 RemovedBody669_553

def RemovedBody669_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_558 : StackLang.HolProg 64 :=
.seq RemovedBody669_556 RemovedBody669_557

def RemovedBody669_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_560 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_558 RemovedBody669_559

def RemovedBody669_561 : StackLang.HolProg 64 :=
.seq RemovedBody669_555 RemovedBody669_560

def RemovedBody669_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 13

def RemovedBody669_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_571 : StackLang.HolProg 64 :=
.seq RemovedBody669_569 RemovedBody669_570

def RemovedBody669_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_573 : StackLang.HolProg 64 :=
.seq RemovedBody669_571 RemovedBody669_572

def RemovedBody669_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_575 : StackLang.HolProg 64 :=
.seq RemovedBody669_573 RemovedBody669_574

def RemovedBody669_576 : StackLang.HolProg 64 :=
.seq RemovedBody669_568 RemovedBody669_575

def RemovedBody669_577 : StackLang.HolProg 64 :=
.seq RemovedBody669_567 RemovedBody669_576

def RemovedBody669_578 : StackLang.HolProg 64 :=
.seq RemovedBody669_566 RemovedBody669_577

def RemovedBody669_579 : StackLang.HolProg 64 :=
.seq RemovedBody669_565 RemovedBody669_578

def RemovedBody669_580 : StackLang.HolProg 64 :=
.seq RemovedBody669_564 RemovedBody669_579

def RemovedBody669_581 : StackLang.HolProg 64 :=
.seq RemovedBody669_563 RemovedBody669_580

def RemovedBody669_582 : StackLang.HolProg 64 :=
.seq RemovedBody669_562 RemovedBody669_581

def RemovedBody669_583 : StackLang.HolProg 64 :=
.seq RemovedBody669_561 RemovedBody669_582

def RemovedBody669_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody669_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody669_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody669_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_597 : StackLang.HolProg 64 :=
.seq RemovedBody669_595 RemovedBody669_596

def RemovedBody669_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_601 : StackLang.HolProg 64 :=
.seq RemovedBody669_599 RemovedBody669_600

def RemovedBody669_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_605 : StackLang.HolProg 64 :=
.seq RemovedBody669_603 RemovedBody669_604

def RemovedBody669_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody669_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_608 : StackLang.HolProg 64 :=
.seq RemovedBody669_606 RemovedBody669_607

def RemovedBody669_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_610 : StackLang.HolProg 64 :=
.seq RemovedBody669_608 RemovedBody669_609

def RemovedBody669_611 : StackLang.HolProg 64 :=
.seq RemovedBody669_605 RemovedBody669_610

def RemovedBody669_612 : StackLang.HolProg 64 :=
.seq RemovedBody669_602 RemovedBody669_611

def RemovedBody669_613 : StackLang.HolProg 64 :=
.seq RemovedBody669_601 RemovedBody669_612

def RemovedBody669_614 : StackLang.HolProg 64 :=
.seq RemovedBody669_598 RemovedBody669_613

def RemovedBody669_615 : StackLang.HolProg 64 :=
.seq RemovedBody669_597 RemovedBody669_614

def RemovedBody669_616 : StackLang.HolProg 64 :=
.seq RemovedBody669_594 RemovedBody669_615

def RemovedBody669_617 : StackLang.HolProg 64 :=
.seq RemovedBody669_593 RemovedBody669_616

def RemovedBody669_618 : StackLang.HolProg 64 :=
.seq RemovedBody669_592 RemovedBody669_617

def RemovedBody669_619 : StackLang.HolProg 64 :=
.seq RemovedBody669_591 RemovedBody669_618

def RemovedBody669_620 : StackLang.HolProg 64 :=
.seq RemovedBody669_590 RemovedBody669_619

def RemovedBody669_621 : StackLang.HolProg 64 :=
.seq RemovedBody669_589 RemovedBody669_620

def RemovedBody669_622 : StackLang.HolProg 64 :=
.seq RemovedBody669_588 RemovedBody669_621

def RemovedBody669_623 : StackLang.HolProg 64 :=
.seq RemovedBody669_587 RemovedBody669_622

def RemovedBody669_624 : StackLang.HolProg 64 :=
.seq RemovedBody669_586 RemovedBody669_623

def RemovedBody669_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_628 : StackLang.HolProg 64 :=
.seq RemovedBody669_626 RemovedBody669_627

def RemovedBody669_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_632 : StackLang.HolProg 64 :=
.seq RemovedBody669_630 RemovedBody669_631

def RemovedBody669_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody669_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_636 : StackLang.HolProg 64 :=
.seq RemovedBody669_634 RemovedBody669_635

def RemovedBody669_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody669_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_639 : StackLang.HolProg 64 :=
.seq RemovedBody669_637 RemovedBody669_638

def RemovedBody669_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_641 : StackLang.HolProg 64 :=
.seq RemovedBody669_639 RemovedBody669_640

def RemovedBody669_642 : StackLang.HolProg 64 :=
.seq RemovedBody669_636 RemovedBody669_641

def RemovedBody669_643 : StackLang.HolProg 64 :=
.seq RemovedBody669_633 RemovedBody669_642

def RemovedBody669_644 : StackLang.HolProg 64 :=
.seq RemovedBody669_632 RemovedBody669_643

def RemovedBody669_645 : StackLang.HolProg 64 :=
.seq RemovedBody669_629 RemovedBody669_644

def RemovedBody669_646 : StackLang.HolProg 64 :=
.seq RemovedBody669_628 RemovedBody669_645

def RemovedBody669_647 : StackLang.HolProg 64 :=
.seq RemovedBody669_625 RemovedBody669_646

def RemovedBody669_648 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_649 : StackLang.HolProg 64 :=
.seq RemovedBody669_647 RemovedBody669_648

def RemovedBody669_650 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_624, 0, 669, 12)) (Sum.inl 661) (some (RemovedBody669_649, 669, 13))

def RemovedBody669_651 : StackLang.HolProg 64 :=
.seq RemovedBody669_585 RemovedBody669_650

def RemovedBody669_652 : StackLang.HolProg 64 :=
.seq RemovedBody669_584 RemovedBody669_651

def RemovedBody669_653 : StackLang.HolProg 64 :=
.seq RemovedBody669_583 RemovedBody669_652

def RemovedBody669_654 : StackLang.HolProg 64 :=
.seq RemovedBody669_554 RemovedBody669_653

def RemovedBody669_655 : StackLang.HolProg 64 :=
.seq RemovedBody669_551 RemovedBody669_654

def RemovedBody669_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody669_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2779#64)

def RemovedBody669_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_661 : StackLang.HolProg 64 :=
.seq RemovedBody669_659 RemovedBody669_660

def RemovedBody669_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_665 : StackLang.HolProg 64 :=
.seq RemovedBody669_663 RemovedBody669_664

def RemovedBody669_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_667 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_665 RemovedBody669_666

def RemovedBody669_668 : StackLang.HolProg 64 :=
.seq RemovedBody669_662 RemovedBody669_667

def RemovedBody669_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 15

def RemovedBody669_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_678 : StackLang.HolProg 64 :=
.seq RemovedBody669_676 RemovedBody669_677

def RemovedBody669_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_680 : StackLang.HolProg 64 :=
.seq RemovedBody669_678 RemovedBody669_679

def RemovedBody669_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_682 : StackLang.HolProg 64 :=
.seq RemovedBody669_680 RemovedBody669_681

def RemovedBody669_683 : StackLang.HolProg 64 :=
.seq RemovedBody669_675 RemovedBody669_682

def RemovedBody669_684 : StackLang.HolProg 64 :=
.seq RemovedBody669_674 RemovedBody669_683

def RemovedBody669_685 : StackLang.HolProg 64 :=
.seq RemovedBody669_673 RemovedBody669_684

def RemovedBody669_686 : StackLang.HolProg 64 :=
.seq RemovedBody669_672 RemovedBody669_685

def RemovedBody669_687 : StackLang.HolProg 64 :=
.seq RemovedBody669_671 RemovedBody669_686

def RemovedBody669_688 : StackLang.HolProg 64 :=
.seq RemovedBody669_670 RemovedBody669_687

def RemovedBody669_689 : StackLang.HolProg 64 :=
.seq RemovedBody669_669 RemovedBody669_688

def RemovedBody669_690 : StackLang.HolProg 64 :=
.seq RemovedBody669_668 RemovedBody669_689

def RemovedBody669_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody669_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_703 : StackLang.HolProg 64 :=
.seq RemovedBody669_701 RemovedBody669_702

def RemovedBody669_704 : StackLang.HolProg 64 :=
.seq RemovedBody669_700 RemovedBody669_703

def RemovedBody669_705 : StackLang.HolProg 64 :=
.seq RemovedBody669_699 RemovedBody669_704

def RemovedBody669_706 : StackLang.HolProg 64 :=
.seq RemovedBody669_698 RemovedBody669_705

def RemovedBody669_707 : StackLang.HolProg 64 :=
.seq RemovedBody669_697 RemovedBody669_706

def RemovedBody669_708 : StackLang.HolProg 64 :=
.seq RemovedBody669_696 RemovedBody669_707

def RemovedBody669_709 : StackLang.HolProg 64 :=
.seq RemovedBody669_695 RemovedBody669_708

def RemovedBody669_710 : StackLang.HolProg 64 :=
.seq RemovedBody669_694 RemovedBody669_709

def RemovedBody669_711 : StackLang.HolProg 64 :=
.seq RemovedBody669_693 RemovedBody669_710

def RemovedBody669_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody669_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody669_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_717 : StackLang.HolProg 64 :=
.seq RemovedBody669_715 RemovedBody669_716

def RemovedBody669_718 : StackLang.HolProg 64 :=
.seq RemovedBody669_714 RemovedBody669_717

def RemovedBody669_719 : StackLang.HolProg 64 :=
.seq RemovedBody669_713 RemovedBody669_718

def RemovedBody669_720 : StackLang.HolProg 64 :=
.seq RemovedBody669_712 RemovedBody669_719

def RemovedBody669_721 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_722 : StackLang.HolProg 64 :=
.seq RemovedBody669_720 RemovedBody669_721

def RemovedBody669_723 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_711, 0, 669, 14)) (Sum.inl 658) (some (RemovedBody669_722, 669, 15))

def RemovedBody669_724 : StackLang.HolProg 64 :=
.seq RemovedBody669_692 RemovedBody669_723

def RemovedBody669_725 : StackLang.HolProg 64 :=
.seq RemovedBody669_691 RemovedBody669_724

def RemovedBody669_726 : StackLang.HolProg 64 :=
.seq RemovedBody669_690 RemovedBody669_725

def RemovedBody669_727 : StackLang.HolProg 64 :=
.seq RemovedBody669_661 RemovedBody669_726

def RemovedBody669_728 : StackLang.HolProg 64 :=
.seq RemovedBody669_658 RemovedBody669_727

def RemovedBody669_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_731 : StackLang.HolProg 64 :=
.seq RemovedBody669_729 RemovedBody669_730

def RemovedBody669_732 : StackLang.HolProg 64 :=
.seq RemovedBody669_728 RemovedBody669_731

def RemovedBody669_733 : StackLang.HolProg 64 :=
.seq RemovedBody669_657 RemovedBody669_732

def RemovedBody669_734 : StackLang.HolProg 64 :=
.seq RemovedBody669_656 RemovedBody669_733

def RemovedBody669_735 : StackLang.HolProg 64 :=
.seq RemovedBody669_655 RemovedBody669_734

def RemovedBody669_736 : StackLang.HolProg 64 :=
.seq RemovedBody669_550 RemovedBody669_735

def RemovedBody669_737 : StackLang.HolProg 64 :=
.seq RemovedBody669_535 RemovedBody669_736

def RemovedBody669_738 : StackLang.HolProg 64 :=
.seq RemovedBody669_534 RemovedBody669_737

def RemovedBody669_739 : StackLang.HolProg 64 :=
.seq RemovedBody669_533 RemovedBody669_738

def RemovedBody669_740 : StackLang.HolProg 64 :=
.seq RemovedBody669_532 RemovedBody669_739

def RemovedBody669_741 : StackLang.HolProg 64 :=
.seq RemovedBody669_531 RemovedBody669_740

def RemovedBody669_742 : StackLang.HolProg 64 :=
.seq RemovedBody669_530 RemovedBody669_741

def RemovedBody669_743 : StackLang.HolProg 64 :=
.seq RemovedBody669_529 RemovedBody669_742

def RemovedBody669_744 : StackLang.HolProg 64 :=
.seq RemovedBody669_528 RemovedBody669_743

def RemovedBody669_745 : StackLang.HolProg 64 :=
.seq RemovedBody669_527 RemovedBody669_744

def RemovedBody669_746 : StackLang.HolProg 64 :=
.seq RemovedBody669_526 RemovedBody669_745

def RemovedBody669_747 : StackLang.HolProg 64 :=
.seq RemovedBody669_525 RemovedBody669_746

def RemovedBody669_748 : StackLang.HolProg 64 :=
.seq RemovedBody669_524 RemovedBody669_747

def RemovedBody669_749 : StackLang.HolProg 64 :=
.seq RemovedBody669_523 RemovedBody669_748

def RemovedBody669_750 : StackLang.HolProg 64 :=
.seq RemovedBody669_522 RemovedBody669_749

def RemovedBody669_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody669_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody669_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_755 : StackLang.HolProg 64 :=
.seq RemovedBody669_753 RemovedBody669_754

def RemovedBody669_756 : StackLang.HolProg 64 :=
.seq RemovedBody669_752 RemovedBody669_755

def RemovedBody669_757 : StackLang.HolProg 64 :=
.seq RemovedBody669_751 RemovedBody669_756

def RemovedBody669_758 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody669_750 RemovedBody669_757

def RemovedBody669_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody669_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody669_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody669_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody669_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody669_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody669_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody669_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody669_776 : StackLang.HolProg 64 :=
.seq RemovedBody669_774 RemovedBody669_775

def RemovedBody669_777 : StackLang.HolProg 64 :=
.seq RemovedBody669_773 RemovedBody669_776

def RemovedBody669_778 : StackLang.HolProg 64 :=
.seq RemovedBody669_772 RemovedBody669_777

def RemovedBody669_779 : StackLang.HolProg 64 :=
.seq RemovedBody669_771 RemovedBody669_778

def RemovedBody669_780 : StackLang.HolProg 64 :=
.seq RemovedBody669_770 RemovedBody669_779

def RemovedBody669_781 : StackLang.HolProg 64 :=
.seq RemovedBody669_769 RemovedBody669_780

def RemovedBody669_782 : StackLang.HolProg 64 :=
.seq RemovedBody669_768 RemovedBody669_781

def RemovedBody669_783 : StackLang.HolProg 64 :=
.seq RemovedBody669_767 RemovedBody669_782

def RemovedBody669_784 : StackLang.HolProg 64 :=
.seq RemovedBody669_766 RemovedBody669_783

def RemovedBody669_785 : StackLang.HolProg 64 :=
.seq RemovedBody669_765 RemovedBody669_784

def RemovedBody669_786 : StackLang.HolProg 64 :=
.seq RemovedBody669_764 RemovedBody669_785

def RemovedBody669_787 : StackLang.HolProg 64 :=
.seq RemovedBody669_763 RemovedBody669_786

def RemovedBody669_788 : StackLang.HolProg 64 :=
.seq RemovedBody669_762 RemovedBody669_787

def RemovedBody669_789 : StackLang.HolProg 64 :=
.seq RemovedBody669_761 RemovedBody669_788

def RemovedBody669_790 : StackLang.HolProg 64 :=
.seq RemovedBody669_760 RemovedBody669_789

def RemovedBody669_791 : StackLang.HolProg 64 :=
.seq RemovedBody669_759 RemovedBody669_790

def RemovedBody669_792 : StackLang.HolProg 64 :=
.seq RemovedBody669_758 RemovedBody669_791

def RemovedBody669_793 : StackLang.HolProg 64 :=
.seq RemovedBody669_521 RemovedBody669_792

def RemovedBody669_794 : StackLang.HolProg 64 :=
.seq RemovedBody669_520 RemovedBody669_793

def RemovedBody669_795 : StackLang.HolProg 64 :=
.seq RemovedBody669_519 RemovedBody669_794

def RemovedBody669_796 : StackLang.HolProg 64 :=
.seq RemovedBody669_518 RemovedBody669_795

def RemovedBody669_797 : StackLang.HolProg 64 :=
.seq RemovedBody669_517 RemovedBody669_796

def RemovedBody669_798 : StackLang.HolProg 64 :=
.seq RemovedBody669_458 RemovedBody669_797

def RemovedBody669_799 : StackLang.HolProg 64 :=
.seq RemovedBody669_419 RemovedBody669_798

def RemovedBody669_800 : StackLang.HolProg 64 :=
.seq RemovedBody669_418 RemovedBody669_799

def RemovedBody669_801 : StackLang.HolProg 64 :=
.seq RemovedBody669_176 RemovedBody669_800

def RemovedBody669_802 : StackLang.HolProg 64 :=
.seq RemovedBody669_149 RemovedBody669_801

def RemovedBody669_803 : StackLang.HolProg 64 :=
.seq RemovedBody669_148 RemovedBody669_802

def RemovedBody669_804 : StackLang.HolProg 64 :=
.seq RemovedBody669_147 RemovedBody669_803

def RemovedBody669_805 : StackLang.HolProg 64 :=
.seq RemovedBody669_136 RemovedBody669_804

def RemovedBody669_806 : StackLang.HolProg 64 :=
.seq RemovedBody669_135 RemovedBody669_805

def RemovedBody669_807 : StackLang.HolProg 64 :=
.seq RemovedBody669_134 RemovedBody669_806

def RemovedBody669_808 : StackLang.HolProg 64 :=
.seq RemovedBody669_133 RemovedBody669_807

def RemovedBody669_809 : StackLang.HolProg 64 :=
.seq RemovedBody669_132 RemovedBody669_808

def RemovedBody669_810 : StackLang.HolProg 64 :=
.seq RemovedBody669_131 RemovedBody669_809

def RemovedBody669_811 : StackLang.HolProg 64 :=
.seq RemovedBody669_130 RemovedBody669_810

def RemovedBody669_812 : StackLang.HolProg 64 :=
.seq RemovedBody669_129 RemovedBody669_811

def RemovedBody669_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody669_815 : StackLang.HolProg 64 :=
.seq RemovedBody669_813 RemovedBody669_814

def RemovedBody669_816 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody669_812 RemovedBody669_815

def RemovedBody669_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_822 : StackLang.HolProg 64 :=
.seq RemovedBody669_820 RemovedBody669_821

def RemovedBody669_823 : StackLang.HolProg 64 :=
.seq RemovedBody669_819 RemovedBody669_822

def RemovedBody669_824 : StackLang.HolProg 64 :=
.seq RemovedBody669_818 RemovedBody669_823

def RemovedBody669_825 : StackLang.HolProg 64 :=
.seq RemovedBody669_817 RemovedBody669_824

def RemovedBody669_826 : StackLang.HolProg 64 :=
.seq RemovedBody669_816 RemovedBody669_825

def RemovedBody669_827 : StackLang.HolProg 64 :=
.seq RemovedBody669_128 RemovedBody669_826

def RemovedBody669_828 : StackLang.HolProg 64 :=
.seq RemovedBody669_127 RemovedBody669_827

def RemovedBody669_829 : StackLang.HolProg 64 :=
.loop RemovedBody669_828

def RemovedBody669_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2780#64)

def RemovedBody669_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_835 : StackLang.HolProg 64 :=
.seq RemovedBody669_833 RemovedBody669_834

def RemovedBody669_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_839 : StackLang.HolProg 64 :=
.seq RemovedBody669_837 RemovedBody669_838

def RemovedBody669_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_841 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_839 RemovedBody669_840

def RemovedBody669_842 : StackLang.HolProg 64 :=
.seq RemovedBody669_836 RemovedBody669_841

def RemovedBody669_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 17

def RemovedBody669_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_852 : StackLang.HolProg 64 :=
.seq RemovedBody669_850 RemovedBody669_851

def RemovedBody669_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_854 : StackLang.HolProg 64 :=
.seq RemovedBody669_852 RemovedBody669_853

def RemovedBody669_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_856 : StackLang.HolProg 64 :=
.seq RemovedBody669_854 RemovedBody669_855

def RemovedBody669_857 : StackLang.HolProg 64 :=
.seq RemovedBody669_849 RemovedBody669_856

def RemovedBody669_858 : StackLang.HolProg 64 :=
.seq RemovedBody669_848 RemovedBody669_857

def RemovedBody669_859 : StackLang.HolProg 64 :=
.seq RemovedBody669_847 RemovedBody669_858

def RemovedBody669_860 : StackLang.HolProg 64 :=
.seq RemovedBody669_846 RemovedBody669_859

def RemovedBody669_861 : StackLang.HolProg 64 :=
.seq RemovedBody669_845 RemovedBody669_860

def RemovedBody669_862 : StackLang.HolProg 64 :=
.seq RemovedBody669_844 RemovedBody669_861

def RemovedBody669_863 : StackLang.HolProg 64 :=
.seq RemovedBody669_843 RemovedBody669_862

def RemovedBody669_864 : StackLang.HolProg 64 :=
.seq RemovedBody669_842 RemovedBody669_863

def RemovedBody669_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_873 : StackLang.HolProg 64 :=
.seq RemovedBody669_871 RemovedBody669_872

def RemovedBody669_874 : StackLang.HolProg 64 :=
.seq RemovedBody669_870 RemovedBody669_873

def RemovedBody669_875 : StackLang.HolProg 64 :=
.seq RemovedBody669_869 RemovedBody669_874

def RemovedBody669_876 : StackLang.HolProg 64 :=
.seq RemovedBody669_868 RemovedBody669_875

def RemovedBody669_877 : StackLang.HolProg 64 :=
.seq RemovedBody669_867 RemovedBody669_876

def RemovedBody669_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody669_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody669_880 : StackLang.HolProg 64 :=
.seq RemovedBody669_878 RemovedBody669_879

def RemovedBody669_881 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_882 : StackLang.HolProg 64 :=
.seq RemovedBody669_880 RemovedBody669_881

def RemovedBody669_883 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_877, 0, 669, 16)) (Sum.inl 667) (some (RemovedBody669_882, 669, 17))

def RemovedBody669_884 : StackLang.HolProg 64 :=
.seq RemovedBody669_866 RemovedBody669_883

def RemovedBody669_885 : StackLang.HolProg 64 :=
.seq RemovedBody669_865 RemovedBody669_884

def RemovedBody669_886 : StackLang.HolProg 64 :=
.seq RemovedBody669_864 RemovedBody669_885

def RemovedBody669_887 : StackLang.HolProg 64 :=
.seq RemovedBody669_835 RemovedBody669_886

def RemovedBody669_888 : StackLang.HolProg 64 :=
.seq RemovedBody669_832 RemovedBody669_887

def RemovedBody669_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody669_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 384#64)

def RemovedBody669_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2781#64)

def RemovedBody669_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_896 : StackLang.HolProg 64 :=
.seq RemovedBody669_894 RemovedBody669_895

def RemovedBody669_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_900 : StackLang.HolProg 64 :=
.seq RemovedBody669_898 RemovedBody669_899

def RemovedBody669_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_902 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_900 RemovedBody669_901

def RemovedBody669_903 : StackLang.HolProg 64 :=
.seq RemovedBody669_897 RemovedBody669_902

def RemovedBody669_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 19

def RemovedBody669_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_913 : StackLang.HolProg 64 :=
.seq RemovedBody669_911 RemovedBody669_912

def RemovedBody669_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_915 : StackLang.HolProg 64 :=
.seq RemovedBody669_913 RemovedBody669_914

def RemovedBody669_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_917 : StackLang.HolProg 64 :=
.seq RemovedBody669_915 RemovedBody669_916

def RemovedBody669_918 : StackLang.HolProg 64 :=
.seq RemovedBody669_910 RemovedBody669_917

def RemovedBody669_919 : StackLang.HolProg 64 :=
.seq RemovedBody669_909 RemovedBody669_918

def RemovedBody669_920 : StackLang.HolProg 64 :=
.seq RemovedBody669_908 RemovedBody669_919

def RemovedBody669_921 : StackLang.HolProg 64 :=
.seq RemovedBody669_907 RemovedBody669_920

def RemovedBody669_922 : StackLang.HolProg 64 :=
.seq RemovedBody669_906 RemovedBody669_921

def RemovedBody669_923 : StackLang.HolProg 64 :=
.seq RemovedBody669_905 RemovedBody669_922

def RemovedBody669_924 : StackLang.HolProg 64 :=
.seq RemovedBody669_904 RemovedBody669_923

def RemovedBody669_925 : StackLang.HolProg 64 :=
.seq RemovedBody669_903 RemovedBody669_924

def RemovedBody669_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_933 : StackLang.HolProg 64 :=
.seq RemovedBody669_931 RemovedBody669_932

def RemovedBody669_934 : StackLang.HolProg 64 :=
.seq RemovedBody669_930 RemovedBody669_933

def RemovedBody669_935 : StackLang.HolProg 64 :=
.seq RemovedBody669_929 RemovedBody669_934

def RemovedBody669_936 : StackLang.HolProg 64 :=
.seq RemovedBody669_928 RemovedBody669_935

def RemovedBody669_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody669_938 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_939 : StackLang.HolProg 64 :=
.seq RemovedBody669_937 RemovedBody669_938

def RemovedBody669_940 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_936, 0, 669, 18)) (Sum.inl 77) (some (RemovedBody669_939, 669, 19))

def RemovedBody669_941 : StackLang.HolProg 64 :=
.seq RemovedBody669_927 RemovedBody669_940

def RemovedBody669_942 : StackLang.HolProg 64 :=
.seq RemovedBody669_926 RemovedBody669_941

def RemovedBody669_943 : StackLang.HolProg 64 :=
.seq RemovedBody669_925 RemovedBody669_942

def RemovedBody669_944 : StackLang.HolProg 64 :=
.seq RemovedBody669_896 RemovedBody669_943

def RemovedBody669_945 : StackLang.HolProg 64 :=
.seq RemovedBody669_893 RemovedBody669_944

def RemovedBody669_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody669_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2782#64)

def RemovedBody669_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_951 : StackLang.HolProg 64 :=
.seq RemovedBody669_949 RemovedBody669_950

def RemovedBody669_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody669_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody669_955 : StackLang.HolProg 64 :=
.seq RemovedBody669_953 RemovedBody669_954

def RemovedBody669_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_957 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody669_955 RemovedBody669_956

def RemovedBody669_958 : StackLang.HolProg 64 :=
.seq RemovedBody669_952 RemovedBody669_957

def RemovedBody669_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody669_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody669_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 21

def RemovedBody669_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody669_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody669_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody669_968 : StackLang.HolProg 64 :=
.seq RemovedBody669_966 RemovedBody669_967

def RemovedBody669_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody669_970 : StackLang.HolProg 64 :=
.seq RemovedBody669_968 RemovedBody669_969

def RemovedBody669_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_972 : StackLang.HolProg 64 :=
.seq RemovedBody669_970 RemovedBody669_971

def RemovedBody669_973 : StackLang.HolProg 64 :=
.seq RemovedBody669_965 RemovedBody669_972

def RemovedBody669_974 : StackLang.HolProg 64 :=
.seq RemovedBody669_964 RemovedBody669_973

def RemovedBody669_975 : StackLang.HolProg 64 :=
.seq RemovedBody669_963 RemovedBody669_974

def RemovedBody669_976 : StackLang.HolProg 64 :=
.seq RemovedBody669_962 RemovedBody669_975

def RemovedBody669_977 : StackLang.HolProg 64 :=
.seq RemovedBody669_961 RemovedBody669_976

def RemovedBody669_978 : StackLang.HolProg 64 :=
.seq RemovedBody669_960 RemovedBody669_977

def RemovedBody669_979 : StackLang.HolProg 64 :=
.seq RemovedBody669_959 RemovedBody669_978

def RemovedBody669_980 : StackLang.HolProg 64 :=
.seq RemovedBody669_958 RemovedBody669_979

def RemovedBody669_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody669_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody669_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody669_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_988 : StackLang.HolProg 64 :=
.seq RemovedBody669_986 RemovedBody669_987

def RemovedBody669_989 : StackLang.HolProg 64 :=
.seq RemovedBody669_985 RemovedBody669_988

def RemovedBody669_990 : StackLang.HolProg 64 :=
.seq RemovedBody669_984 RemovedBody669_989

def RemovedBody669_991 : StackLang.HolProg 64 :=
.seq RemovedBody669_983 RemovedBody669_990

def RemovedBody669_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody669_993 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody669_994 : StackLang.HolProg 64 :=
.seq RemovedBody669_992 RemovedBody669_993

def RemovedBody669_995 : StackLang.HolProg 64 :=
.call (some (RemovedBody669_991, 0, 669, 20)) (Sum.inl 70) (some (RemovedBody669_994, 669, 21))

def RemovedBody669_996 : StackLang.HolProg 64 :=
.seq RemovedBody669_982 RemovedBody669_995

def RemovedBody669_997 : StackLang.HolProg 64 :=
.seq RemovedBody669_981 RemovedBody669_996

def RemovedBody669_998 : StackLang.HolProg 64 :=
.seq RemovedBody669_980 RemovedBody669_997

def RemovedBody669_999 : StackLang.HolProg 64 :=
.seq RemovedBody669_951 RemovedBody669_998

def RemovedBody669_1000 : StackLang.HolProg 64 :=
.seq RemovedBody669_948 RemovedBody669_999

def RemovedBody669_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody669_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody669_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody669_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody669_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody669_1006 : StackLang.HolProg 64 :=
.seq RemovedBody669_1004 RemovedBody669_1005

def RemovedBody669_1007 : StackLang.HolProg 64 :=
.seq RemovedBody669_1003 RemovedBody669_1006

def RemovedBody669_1008 : StackLang.HolProg 64 :=
.seq RemovedBody669_1002 RemovedBody669_1007

def RemovedBody669_1009 : StackLang.HolProg 64 :=
.seq RemovedBody669_1001 RemovedBody669_1008

def RemovedBody669_1010 : StackLang.HolProg 64 :=
.seq RemovedBody669_1000 RemovedBody669_1009

def RemovedBody669_1011 : StackLang.HolProg 64 :=
.seq RemovedBody669_947 RemovedBody669_1010

def RemovedBody669_1012 : StackLang.HolProg 64 :=
.seq RemovedBody669_946 RemovedBody669_1011

def RemovedBody669_1013 : StackLang.HolProg 64 :=
.seq RemovedBody669_945 RemovedBody669_1012

def RemovedBody669_1014 : StackLang.HolProg 64 :=
.seq RemovedBody669_892 RemovedBody669_1013

def RemovedBody669_1015 : StackLang.HolProg 64 :=
.seq RemovedBody669_891 RemovedBody669_1014

def RemovedBody669_1016 : StackLang.HolProg 64 :=
.seq RemovedBody669_890 RemovedBody669_1015

def RemovedBody669_1017 : StackLang.HolProg 64 :=
.seq RemovedBody669_889 RemovedBody669_1016

def RemovedBody669_1018 : StackLang.HolProg 64 :=
.seq RemovedBody669_888 RemovedBody669_1017

def RemovedBody669_1019 : StackLang.HolProg 64 :=
.seq RemovedBody669_831 RemovedBody669_1018

def RemovedBody669_1020 : StackLang.HolProg 64 :=
.seq RemovedBody669_830 RemovedBody669_1019

def RemovedBody669_1021 : StackLang.HolProg 64 :=
.seq RemovedBody669_829 RemovedBody669_1020

def RemovedBody669_1022 : StackLang.HolProg 64 :=
.seq RemovedBody669_126 RemovedBody669_1021

def RemovedBody669_1023 : StackLang.HolProg 64 :=
.seq RemovedBody669_125 RemovedBody669_1022

def RemovedBody669_1024 : StackLang.HolProg 64 :=
.seq RemovedBody669_124 RemovedBody669_1023

def RemovedBody669_1025 : StackLang.HolProg 64 :=
.seq RemovedBody669_123 RemovedBody669_1024

def RemovedBody669_1026 : StackLang.HolProg 64 :=
.seq RemovedBody669_122 RemovedBody669_1025

def RemovedBody669_1027 : StackLang.HolProg 64 :=
.seq RemovedBody669_67 RemovedBody669_1026

def RemovedBody669_1028 : StackLang.HolProg 64 :=
.seq RemovedBody669_66 RemovedBody669_1027

def RemovedBody669_1029 : StackLang.HolProg 64 :=
.seq RemovedBody669_65 RemovedBody669_1028

def RemovedBody669_1030 : StackLang.HolProg 64 :=
.seq RemovedBody669_64 RemovedBody669_1029

def RemovedBody669_1031 : StackLang.HolProg 64 :=
.seq RemovedBody669_11 RemovedBody669_1030

def RemovedBody669_1032 : StackLang.HolProg 64 :=
.seq RemovedBody669_6 RemovedBody669_1031

def Removed669 : Nat × StackLang.HolProg 64 := (669, RemovedBody669_1032)
theorem Removed669_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc669 = Removed669 := by
  kernel_rfl
#print axioms Removed669_eq
end InitECandidate.Proofs.BackendStages
