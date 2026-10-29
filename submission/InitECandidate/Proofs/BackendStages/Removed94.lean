import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc94
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody94_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody94_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody94_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody94_3 : StackLang.HolProg 64 :=
.seq RemovedBody94_1 RemovedBody94_2

def RemovedBody94_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody94_3 RemovedBody94_4

def RemovedBody94_6 : StackLang.HolProg 64 :=
.seq RemovedBody94_0 RemovedBody94_5

def RemovedBody94_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody94_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody94_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody94_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody94_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody94_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody94_14 : StackLang.HolProg 64 :=
.seq RemovedBody94_12 RemovedBody94_13

def RemovedBody94_15 : StackLang.HolProg 64 :=
.seq RemovedBody94_11 RemovedBody94_14

def RemovedBody94_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 40#64)

def RemovedBody94_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody94_19 : StackLang.HolProg 64 :=
.seq RemovedBody94_17 RemovedBody94_18

def RemovedBody94_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody94_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody94_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody94_23 : StackLang.HolProg 64 :=
.seq RemovedBody94_21 RemovedBody94_22

def RemovedBody94_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody94_23 RemovedBody94_24

def RemovedBody94_26 : StackLang.HolProg 64 :=
.seq RemovedBody94_20 RemovedBody94_25

def RemovedBody94_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody94_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody94_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 94 3

def RemovedBody94_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody94_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody94_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody94_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody94_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody94_36 : StackLang.HolProg 64 :=
.seq RemovedBody94_34 RemovedBody94_35

def RemovedBody94_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody94_38 : StackLang.HolProg 64 :=
.seq RemovedBody94_36 RemovedBody94_37

def RemovedBody94_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody94_40 : StackLang.HolProg 64 :=
.seq RemovedBody94_38 RemovedBody94_39

def RemovedBody94_41 : StackLang.HolProg 64 :=
.seq RemovedBody94_33 RemovedBody94_40

def RemovedBody94_42 : StackLang.HolProg 64 :=
.seq RemovedBody94_32 RemovedBody94_41

def RemovedBody94_43 : StackLang.HolProg 64 :=
.seq RemovedBody94_31 RemovedBody94_42

def RemovedBody94_44 : StackLang.HolProg 64 :=
.seq RemovedBody94_30 RemovedBody94_43

def RemovedBody94_45 : StackLang.HolProg 64 :=
.seq RemovedBody94_29 RemovedBody94_44

def RemovedBody94_46 : StackLang.HolProg 64 :=
.seq RemovedBody94_28 RemovedBody94_45

def RemovedBody94_47 : StackLang.HolProg 64 :=
.seq RemovedBody94_27 RemovedBody94_46

def RemovedBody94_48 : StackLang.HolProg 64 :=
.seq RemovedBody94_26 RemovedBody94_47

def RemovedBody94_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody94_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody94_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody94_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody94_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody94_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody94_58 : StackLang.HolProg 64 :=
.seq RemovedBody94_56 RemovedBody94_57

def RemovedBody94_59 : StackLang.HolProg 64 :=
.seq RemovedBody94_55 RemovedBody94_58

def RemovedBody94_60 : StackLang.HolProg 64 :=
.seq RemovedBody94_54 RemovedBody94_59

def RemovedBody94_61 : StackLang.HolProg 64 :=
.seq RemovedBody94_53 RemovedBody94_60

def RemovedBody94_62 : StackLang.HolProg 64 :=
.seq RemovedBody94_52 RemovedBody94_61

def RemovedBody94_63 : StackLang.HolProg 64 :=
.seq RemovedBody94_51 RemovedBody94_62

def RemovedBody94_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody94_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody94_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody94_67 : StackLang.HolProg 64 :=
.seq RemovedBody94_65 RemovedBody94_66

def RemovedBody94_68 : StackLang.HolProg 64 :=
.seq RemovedBody94_64 RemovedBody94_67

def RemovedBody94_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody94_70 : StackLang.HolProg 64 :=
.seq RemovedBody94_68 RemovedBody94_69

def RemovedBody94_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody94_63, 0, 94, 2)) (Sum.inl 66) (some (RemovedBody94_70, 94, 3))

def RemovedBody94_72 : StackLang.HolProg 64 :=
.seq RemovedBody94_50 RemovedBody94_71

def RemovedBody94_73 : StackLang.HolProg 64 :=
.seq RemovedBody94_49 RemovedBody94_72

def RemovedBody94_74 : StackLang.HolProg 64 :=
.seq RemovedBody94_48 RemovedBody94_73

def RemovedBody94_75 : StackLang.HolProg 64 :=
.seq RemovedBody94_19 RemovedBody94_74

def RemovedBody94_76 : StackLang.HolProg 64 :=
.seq RemovedBody94_16 RemovedBody94_75

def RemovedBody94_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_79 : StackLang.HolProg 64 :=
.seq RemovedBody94_77 RemovedBody94_78

def RemovedBody94_80 : StackLang.HolProg 64 :=
.seq RemovedBody94_76 RemovedBody94_79

def RemovedBody94_81 : StackLang.HolProg 64 :=
.seq RemovedBody94_15 RemovedBody94_80

def RemovedBody94_82 : StackLang.HolProg 64 :=
.seq RemovedBody94_10 RemovedBody94_81

def RemovedBody94_83 : StackLang.HolProg 64 :=
.seq RemovedBody94_9 RemovedBody94_82

def RemovedBody94_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_86 : StackLang.HolProg 64 :=
.seq RemovedBody94_84 RemovedBody94_85

def RemovedBody94_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody94_83 RemovedBody94_86

def RemovedBody94_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody94_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody94_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody94_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody94_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody94_95 : StackLang.HolProg 64 :=
.seq RemovedBody94_93 RemovedBody94_94

def RemovedBody94_96 : StackLang.HolProg 64 :=
.seq RemovedBody94_92 RemovedBody94_95

def RemovedBody94_97 : StackLang.HolProg 64 :=
.seq RemovedBody94_91 RemovedBody94_96

def RemovedBody94_98 : StackLang.HolProg 64 :=
.seq RemovedBody94_90 RemovedBody94_97

def RemovedBody94_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody94_100 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody94_98 RemovedBody94_99

def RemovedBody94_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody94_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody94_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 64#64)

def RemovedBody94_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody94_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody94_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody94_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody94_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody94_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody94_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody94_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody94_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def RemovedBody94_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody94_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody94_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody94_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_130 : StackLang.HolProg 64 :=
.seq RemovedBody94_128 RemovedBody94_129

def RemovedBody94_131 : StackLang.HolProg 64 :=
.seq RemovedBody94_127 RemovedBody94_130

def RemovedBody94_132 : StackLang.HolProg 64 :=
.seq RemovedBody94_126 RemovedBody94_131

def RemovedBody94_133 : StackLang.HolProg 64 :=
.seq RemovedBody94_125 RemovedBody94_132

def RemovedBody94_134 : StackLang.HolProg 64 :=
.seq RemovedBody94_124 RemovedBody94_133

def RemovedBody94_135 : StackLang.HolProg 64 :=
.seq RemovedBody94_123 RemovedBody94_134

def RemovedBody94_136 : StackLang.HolProg 64 :=
.seq RemovedBody94_122 RemovedBody94_135

def RemovedBody94_137 : StackLang.HolProg 64 :=
.seq RemovedBody94_121 RemovedBody94_136

def RemovedBody94_138 : StackLang.HolProg 64 :=
.seq RemovedBody94_120 RemovedBody94_137

def RemovedBody94_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_141 : StackLang.HolProg 64 :=
.seq RemovedBody94_139 RemovedBody94_140

def RemovedBody94_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody94_138 RemovedBody94_141

def RemovedBody94_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody94_146 : StackLang.HolProg 64 :=
.seq RemovedBody94_144 RemovedBody94_145

def RemovedBody94_147 : StackLang.HolProg 64 :=
.seq RemovedBody94_143 RemovedBody94_146

def RemovedBody94_148 : StackLang.HolProg 64 :=
.seq RemovedBody94_142 RemovedBody94_147

def RemovedBody94_149 : StackLang.HolProg 64 :=
.seq RemovedBody94_119 RemovedBody94_148

def RemovedBody94_150 : StackLang.HolProg 64 :=
.seq RemovedBody94_118 RemovedBody94_149

def RemovedBody94_151 : StackLang.HolProg 64 :=
.seq RemovedBody94_117 RemovedBody94_150

def RemovedBody94_152 : StackLang.HolProg 64 :=
.seq RemovedBody94_116 RemovedBody94_151

def RemovedBody94_153 : StackLang.HolProg 64 :=
.seq RemovedBody94_115 RemovedBody94_152

def RemovedBody94_154 : StackLang.HolProg 64 :=
.seq RemovedBody94_114 RemovedBody94_153

def RemovedBody94_155 : StackLang.HolProg 64 :=
.seq RemovedBody94_113 RemovedBody94_154

def RemovedBody94_156 : StackLang.HolProg 64 :=
.seq RemovedBody94_112 RemovedBody94_155

def RemovedBody94_157 : StackLang.HolProg 64 :=
.seq RemovedBody94_111 RemovedBody94_156

def RemovedBody94_158 : StackLang.HolProg 64 :=
.seq RemovedBody94_110 RemovedBody94_157

def RemovedBody94_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody94_161 : StackLang.HolProg 64 :=
.seq RemovedBody94_159 RemovedBody94_160

def RemovedBody94_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody94_158 RemovedBody94_161

def RemovedBody94_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_165 : StackLang.HolProg 64 :=
.seq RemovedBody94_163 RemovedBody94_164

def RemovedBody94_166 : StackLang.HolProg 64 :=
.seq RemovedBody94_162 RemovedBody94_165

def RemovedBody94_167 : StackLang.HolProg 64 :=
.seq RemovedBody94_109 RemovedBody94_166

def RemovedBody94_168 : StackLang.HolProg 64 :=
.seq RemovedBody94_108 RemovedBody94_167

def RemovedBody94_169 : StackLang.HolProg 64 :=
.loop RemovedBody94_168

def RemovedBody94_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody94_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody94_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody94_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody94_174 : StackLang.HolProg 64 :=
.seq RemovedBody94_172 RemovedBody94_173

def RemovedBody94_175 : StackLang.HolProg 64 :=
.seq RemovedBody94_171 RemovedBody94_174

def RemovedBody94_176 : StackLang.HolProg 64 :=
.seq RemovedBody94_170 RemovedBody94_175

def RemovedBody94_177 : StackLang.HolProg 64 :=
.seq RemovedBody94_169 RemovedBody94_176

def RemovedBody94_178 : StackLang.HolProg 64 :=
.seq RemovedBody94_107 RemovedBody94_177

def RemovedBody94_179 : StackLang.HolProg 64 :=
.seq RemovedBody94_106 RemovedBody94_178

def RemovedBody94_180 : StackLang.HolProg 64 :=
.seq RemovedBody94_105 RemovedBody94_179

def RemovedBody94_181 : StackLang.HolProg 64 :=
.seq RemovedBody94_104 RemovedBody94_180

def RemovedBody94_182 : StackLang.HolProg 64 :=
.seq RemovedBody94_103 RemovedBody94_181

def RemovedBody94_183 : StackLang.HolProg 64 :=
.seq RemovedBody94_102 RemovedBody94_182

def RemovedBody94_184 : StackLang.HolProg 64 :=
.seq RemovedBody94_101 RemovedBody94_183

def RemovedBody94_185 : StackLang.HolProg 64 :=
.seq RemovedBody94_100 RemovedBody94_184

def RemovedBody94_186 : StackLang.HolProg 64 :=
.seq RemovedBody94_89 RemovedBody94_185

def RemovedBody94_187 : StackLang.HolProg 64 :=
.seq RemovedBody94_88 RemovedBody94_186

def RemovedBody94_188 : StackLang.HolProg 64 :=
.seq RemovedBody94_87 RemovedBody94_187

def RemovedBody94_189 : StackLang.HolProg 64 :=
.seq RemovedBody94_8 RemovedBody94_188

def RemovedBody94_190 : StackLang.HolProg 64 :=
.seq RemovedBody94_7 RemovedBody94_189

def RemovedBody94_191 : StackLang.HolProg 64 :=
.seq RemovedBody94_6 RemovedBody94_190

def Removed94 : Nat × StackLang.HolProg 64 := (94, RemovedBody94_191)
theorem Removed94_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc94 = Removed94 := by
  kernel_rfl
#print axioms Removed94_eq
end InitECandidate.Proofs.BackendStages
