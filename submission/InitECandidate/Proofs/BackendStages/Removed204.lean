import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc204
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody204_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody204_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody204_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody204_3 : StackLang.HolProg 64 :=
.seq RemovedBody204_1 RemovedBody204_2

def RemovedBody204_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody204_3 RemovedBody204_4

def RemovedBody204_6 : StackLang.HolProg 64 :=
.seq RemovedBody204_0 RemovedBody204_5

def RemovedBody204_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody204_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody204_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody204_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody204_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody204_12 : StackLang.HolProg 64 :=
.seq RemovedBody204_10 RemovedBody204_11

def RemovedBody204_13 : StackLang.HolProg 64 :=
.seq RemovedBody204_9 RemovedBody204_12

def RemovedBody204_14 : StackLang.HolProg 64 :=
.seq RemovedBody204_8 RemovedBody204_13

def RemovedBody204_15 : StackLang.HolProg 64 :=
.seq RemovedBody204_7 RemovedBody204_14

def RemovedBody204_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 257#64)

def RemovedBody204_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody204_19 : StackLang.HolProg 64 :=
.seq RemovedBody204_17 RemovedBody204_18

def RemovedBody204_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody204_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody204_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody204_23 : StackLang.HolProg 64 :=
.seq RemovedBody204_21 RemovedBody204_22

def RemovedBody204_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody204_23 RemovedBody204_24

def RemovedBody204_26 : StackLang.HolProg 64 :=
.seq RemovedBody204_20 RemovedBody204_25

def RemovedBody204_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody204_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody204_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 204 3

def RemovedBody204_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody204_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody204_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody204_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody204_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody204_36 : StackLang.HolProg 64 :=
.seq RemovedBody204_34 RemovedBody204_35

def RemovedBody204_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody204_38 : StackLang.HolProg 64 :=
.seq RemovedBody204_36 RemovedBody204_37

def RemovedBody204_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody204_40 : StackLang.HolProg 64 :=
.seq RemovedBody204_38 RemovedBody204_39

def RemovedBody204_41 : StackLang.HolProg 64 :=
.seq RemovedBody204_33 RemovedBody204_40

def RemovedBody204_42 : StackLang.HolProg 64 :=
.seq RemovedBody204_32 RemovedBody204_41

def RemovedBody204_43 : StackLang.HolProg 64 :=
.seq RemovedBody204_31 RemovedBody204_42

def RemovedBody204_44 : StackLang.HolProg 64 :=
.seq RemovedBody204_30 RemovedBody204_43

def RemovedBody204_45 : StackLang.HolProg 64 :=
.seq RemovedBody204_29 RemovedBody204_44

def RemovedBody204_46 : StackLang.HolProg 64 :=
.seq RemovedBody204_28 RemovedBody204_45

def RemovedBody204_47 : StackLang.HolProg 64 :=
.seq RemovedBody204_27 RemovedBody204_46

def RemovedBody204_48 : StackLang.HolProg 64 :=
.seq RemovedBody204_26 RemovedBody204_47

def RemovedBody204_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody204_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody204_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody204_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody204_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody204_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody204_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody204_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody204_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody204_61 : StackLang.HolProg 64 :=
.seq RemovedBody204_59 RemovedBody204_60

def RemovedBody204_62 : StackLang.HolProg 64 :=
.seq RemovedBody204_58 RemovedBody204_61

def RemovedBody204_63 : StackLang.HolProg 64 :=
.seq RemovedBody204_57 RemovedBody204_62

def RemovedBody204_64 : StackLang.HolProg 64 :=
.seq RemovedBody204_56 RemovedBody204_63

def RemovedBody204_65 : StackLang.HolProg 64 :=
.seq RemovedBody204_55 RemovedBody204_64

def RemovedBody204_66 : StackLang.HolProg 64 :=
.seq RemovedBody204_54 RemovedBody204_65

def RemovedBody204_67 : StackLang.HolProg 64 :=
.seq RemovedBody204_53 RemovedBody204_66

def RemovedBody204_68 : StackLang.HolProg 64 :=
.seq RemovedBody204_52 RemovedBody204_67

def RemovedBody204_69 : StackLang.HolProg 64 :=
.seq RemovedBody204_51 RemovedBody204_68

def RemovedBody204_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody204_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody204_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody204_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody204_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody204_75 : StackLang.HolProg 64 :=
.seq RemovedBody204_73 RemovedBody204_74

def RemovedBody204_76 : StackLang.HolProg 64 :=
.seq RemovedBody204_72 RemovedBody204_75

def RemovedBody204_77 : StackLang.HolProg 64 :=
.seq RemovedBody204_71 RemovedBody204_76

def RemovedBody204_78 : StackLang.HolProg 64 :=
.seq RemovedBody204_70 RemovedBody204_77

def RemovedBody204_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody204_80 : StackLang.HolProg 64 :=
.seq RemovedBody204_78 RemovedBody204_79

def RemovedBody204_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody204_69, 0, 204, 2)) (Sum.inl 102) (some (RemovedBody204_80, 204, 3))

def RemovedBody204_82 : StackLang.HolProg 64 :=
.seq RemovedBody204_50 RemovedBody204_81

def RemovedBody204_83 : StackLang.HolProg 64 :=
.seq RemovedBody204_49 RemovedBody204_82

def RemovedBody204_84 : StackLang.HolProg 64 :=
.seq RemovedBody204_48 RemovedBody204_83

def RemovedBody204_85 : StackLang.HolProg 64 :=
.seq RemovedBody204_19 RemovedBody204_84

def RemovedBody204_86 : StackLang.HolProg 64 :=
.seq RemovedBody204_16 RemovedBody204_85

def RemovedBody204_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody204_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody204_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody204_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody204_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody204_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody204_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody204_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody204_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody204_98 : StackLang.HolProg 64 :=
.seq RemovedBody204_96 RemovedBody204_97

def RemovedBody204_99 : StackLang.HolProg 64 :=
.seq RemovedBody204_95 RemovedBody204_98

def RemovedBody204_100 : StackLang.HolProg 64 :=
.seq RemovedBody204_94 RemovedBody204_99

def RemovedBody204_101 : StackLang.HolProg 64 :=
.seq RemovedBody204_93 RemovedBody204_100

def RemovedBody204_102 : StackLang.HolProg 64 :=
.seq RemovedBody204_92 RemovedBody204_101

def RemovedBody204_103 : StackLang.HolProg 64 :=
.seq RemovedBody204_91 RemovedBody204_102

def RemovedBody204_104 : StackLang.HolProg 64 :=
.seq RemovedBody204_90 RemovedBody204_103

def RemovedBody204_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody204_104 RemovedBody204_105

def RemovedBody204_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody204_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody204_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def RemovedBody204_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def RemovedBody204_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def RemovedBody204_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744069414583343#64)

def RemovedBody204_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody204_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody204_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def RemovedBody204_118 : StackLang.HolProg 64 :=
.seq RemovedBody204_116 RemovedBody204_117

def RemovedBody204_119 : StackLang.HolProg 64 :=
.seq RemovedBody204_115 RemovedBody204_118

def RemovedBody204_120 : StackLang.HolProg 64 :=
.seq RemovedBody204_114 RemovedBody204_119

def RemovedBody204_121 : StackLang.HolProg 64 :=
.seq RemovedBody204_113 RemovedBody204_120

def RemovedBody204_122 : StackLang.HolProg 64 :=
.seq RemovedBody204_112 RemovedBody204_121

def RemovedBody204_123 : StackLang.HolProg 64 :=
.seq RemovedBody204_111 RemovedBody204_122

def RemovedBody204_124 : StackLang.HolProg 64 :=
.seq RemovedBody204_110 RemovedBody204_123

def RemovedBody204_125 : StackLang.HolProg 64 :=
.seq RemovedBody204_109 RemovedBody204_124

def RemovedBody204_126 : StackLang.HolProg 64 :=
.seq RemovedBody204_108 RemovedBody204_125

def RemovedBody204_127 : StackLang.HolProg 64 :=
.seq RemovedBody204_107 RemovedBody204_126

def RemovedBody204_128 : StackLang.HolProg 64 :=
.seq RemovedBody204_106 RemovedBody204_127

def RemovedBody204_129 : StackLang.HolProg 64 :=
.seq RemovedBody204_89 RemovedBody204_128

def RemovedBody204_130 : StackLang.HolProg 64 :=
.seq RemovedBody204_88 RemovedBody204_129

def RemovedBody204_131 : StackLang.HolProg 64 :=
.seq RemovedBody204_87 RemovedBody204_130

def RemovedBody204_132 : StackLang.HolProg 64 :=
.seq RemovedBody204_86 RemovedBody204_131

def RemovedBody204_133 : StackLang.HolProg 64 :=
.seq RemovedBody204_15 RemovedBody204_132

def RemovedBody204_134 : StackLang.HolProg 64 :=
.seq RemovedBody204_6 RemovedBody204_133

def Removed204 : Nat × StackLang.HolProg 64 := (204, RemovedBody204_134)
theorem Removed204_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc204 = Removed204 := by
  kernel_rfl
#print axioms Removed204_eq
end InitECandidate.Proofs.BackendStages
