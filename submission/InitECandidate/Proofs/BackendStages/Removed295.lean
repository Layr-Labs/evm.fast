import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc295
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody295_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody295_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody295_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody295_3 : StackLang.HolProg 64 :=
.seq RemovedBody295_1 RemovedBody295_2

def RemovedBody295_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody295_3 RemovedBody295_4

def RemovedBody295_6 : StackLang.HolProg 64 :=
.seq RemovedBody295_0 RemovedBody295_5

def RemovedBody295_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody295_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody295_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody295_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody295_11 : StackLang.HolProg 64 :=
.seq RemovedBody295_9 RemovedBody295_10

def RemovedBody295_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 801#64)

def RemovedBody295_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody295_15 : StackLang.HolProg 64 :=
.seq RemovedBody295_13 RemovedBody295_14

def RemovedBody295_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody295_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody295_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody295_19 : StackLang.HolProg 64 :=
.seq RemovedBody295_17 RemovedBody295_18

def RemovedBody295_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody295_19 RemovedBody295_20

def RemovedBody295_22 : StackLang.HolProg 64 :=
.seq RemovedBody295_16 RemovedBody295_21

def RemovedBody295_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody295_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody295_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 295 3

def RemovedBody295_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody295_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody295_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody295_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody295_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody295_32 : StackLang.HolProg 64 :=
.seq RemovedBody295_30 RemovedBody295_31

def RemovedBody295_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody295_34 : StackLang.HolProg 64 :=
.seq RemovedBody295_32 RemovedBody295_33

def RemovedBody295_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody295_36 : StackLang.HolProg 64 :=
.seq RemovedBody295_34 RemovedBody295_35

def RemovedBody295_37 : StackLang.HolProg 64 :=
.seq RemovedBody295_29 RemovedBody295_36

def RemovedBody295_38 : StackLang.HolProg 64 :=
.seq RemovedBody295_28 RemovedBody295_37

def RemovedBody295_39 : StackLang.HolProg 64 :=
.seq RemovedBody295_27 RemovedBody295_38

def RemovedBody295_40 : StackLang.HolProg 64 :=
.seq RemovedBody295_26 RemovedBody295_39

def RemovedBody295_41 : StackLang.HolProg 64 :=
.seq RemovedBody295_25 RemovedBody295_40

def RemovedBody295_42 : StackLang.HolProg 64 :=
.seq RemovedBody295_24 RemovedBody295_41

def RemovedBody295_43 : StackLang.HolProg 64 :=
.seq RemovedBody295_23 RemovedBody295_42

def RemovedBody295_44 : StackLang.HolProg 64 :=
.seq RemovedBody295_22 RemovedBody295_43

def RemovedBody295_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody295_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody295_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody295_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody295_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody295_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody295_54 : StackLang.HolProg 64 :=
.seq RemovedBody295_52 RemovedBody295_53

def RemovedBody295_55 : StackLang.HolProg 64 :=
.seq RemovedBody295_51 RemovedBody295_54

def RemovedBody295_56 : StackLang.HolProg 64 :=
.seq RemovedBody295_50 RemovedBody295_55

def RemovedBody295_57 : StackLang.HolProg 64 :=
.seq RemovedBody295_49 RemovedBody295_56

def RemovedBody295_58 : StackLang.HolProg 64 :=
.seq RemovedBody295_48 RemovedBody295_57

def RemovedBody295_59 : StackLang.HolProg 64 :=
.seq RemovedBody295_47 RemovedBody295_58

def RemovedBody295_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody295_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody295_62 : StackLang.HolProg 64 :=
.seq RemovedBody295_60 RemovedBody295_61

def RemovedBody295_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody295_64 : StackLang.HolProg 64 :=
.seq RemovedBody295_62 RemovedBody295_63

def RemovedBody295_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody295_59, 0, 295, 2)) (Sum.inl 68) (some (RemovedBody295_64, 295, 3))

def RemovedBody295_66 : StackLang.HolProg 64 :=
.seq RemovedBody295_46 RemovedBody295_65

def RemovedBody295_67 : StackLang.HolProg 64 :=
.seq RemovedBody295_45 RemovedBody295_66

def RemovedBody295_68 : StackLang.HolProg 64 :=
.seq RemovedBody295_44 RemovedBody295_67

def RemovedBody295_69 : StackLang.HolProg 64 :=
.seq RemovedBody295_15 RemovedBody295_68

def RemovedBody295_70 : StackLang.HolProg 64 :=
.seq RemovedBody295_12 RemovedBody295_69

def RemovedBody295_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody295_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody295_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody295_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody295_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody295_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody295_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody295_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody295_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody295_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody295_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody295_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody295_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody295_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody295_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody295_93 : StackLang.HolProg 64 :=
.seq RemovedBody295_91 RemovedBody295_92

def RemovedBody295_94 : StackLang.HolProg 64 :=
.seq RemovedBody295_90 RemovedBody295_93

def RemovedBody295_95 : StackLang.HolProg 64 :=
.seq RemovedBody295_89 RemovedBody295_94

def RemovedBody295_96 : StackLang.HolProg 64 :=
.seq RemovedBody295_88 RemovedBody295_95

def RemovedBody295_97 : StackLang.HolProg 64 :=
.seq RemovedBody295_87 RemovedBody295_96

def RemovedBody295_98 : StackLang.HolProg 64 :=
.seq RemovedBody295_86 RemovedBody295_97

def RemovedBody295_99 : StackLang.HolProg 64 :=
.seq RemovedBody295_85 RemovedBody295_98

def RemovedBody295_100 : StackLang.HolProg 64 :=
.seq RemovedBody295_84 RemovedBody295_99

def RemovedBody295_101 : StackLang.HolProg 64 :=
.seq RemovedBody295_83 RemovedBody295_100

def RemovedBody295_102 : StackLang.HolProg 64 :=
.seq RemovedBody295_82 RemovedBody295_101

def RemovedBody295_103 : StackLang.HolProg 64 :=
.seq RemovedBody295_81 RemovedBody295_102

def RemovedBody295_104 : StackLang.HolProg 64 :=
.seq RemovedBody295_80 RemovedBody295_103

def RemovedBody295_105 : StackLang.HolProg 64 :=
.seq RemovedBody295_79 RemovedBody295_104

def RemovedBody295_106 : StackLang.HolProg 64 :=
.seq RemovedBody295_78 RemovedBody295_105

def RemovedBody295_107 : StackLang.HolProg 64 :=
.seq RemovedBody295_77 RemovedBody295_106

def RemovedBody295_108 : StackLang.HolProg 64 :=
.seq RemovedBody295_76 RemovedBody295_107

def RemovedBody295_109 : StackLang.HolProg 64 :=
.seq RemovedBody295_75 RemovedBody295_108

def RemovedBody295_110 : StackLang.HolProg 64 :=
.seq RemovedBody295_74 RemovedBody295_109

def RemovedBody295_111 : StackLang.HolProg 64 :=
.seq RemovedBody295_73 RemovedBody295_110

def RemovedBody295_112 : StackLang.HolProg 64 :=
.seq RemovedBody295_72 RemovedBody295_111

def RemovedBody295_113 : StackLang.HolProg 64 :=
.seq RemovedBody295_71 RemovedBody295_112

def RemovedBody295_114 : StackLang.HolProg 64 :=
.seq RemovedBody295_70 RemovedBody295_113

def RemovedBody295_115 : StackLang.HolProg 64 :=
.seq RemovedBody295_11 RemovedBody295_114

def RemovedBody295_116 : StackLang.HolProg 64 :=
.seq RemovedBody295_8 RemovedBody295_115

def RemovedBody295_117 : StackLang.HolProg 64 :=
.seq RemovedBody295_7 RemovedBody295_116

def RemovedBody295_118 : StackLang.HolProg 64 :=
.seq RemovedBody295_6 RemovedBody295_117

def Removed295 : Nat × StackLang.HolProg 64 := (295, RemovedBody295_118)
theorem Removed295_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc295 = Removed295 := by
  kernel_rfl
#print axioms Removed295_eq
end InitECandidate.Proofs.BackendStages
