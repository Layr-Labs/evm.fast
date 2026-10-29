import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc325
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody325_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody325_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody325_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody325_3 : StackLang.HolProg 64 :=
.seq RemovedBody325_1 RemovedBody325_2

def RemovedBody325_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody325_3 RemovedBody325_4

def RemovedBody325_6 : StackLang.HolProg 64 :=
.seq RemovedBody325_0 RemovedBody325_5

def RemovedBody325_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody325_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody325_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody325_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody325_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody325_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody325_17 : StackLang.HolProg 64 :=
.seq RemovedBody325_15 RemovedBody325_16

def RemovedBody325_18 : StackLang.HolProg 64 :=
.seq RemovedBody325_14 RemovedBody325_17

def RemovedBody325_19 : StackLang.HolProg 64 :=
.seq RemovedBody325_13 RemovedBody325_18

def RemovedBody325_20 : StackLang.HolProg 64 :=
.seq RemovedBody325_12 RemovedBody325_19

def RemovedBody325_21 : StackLang.HolProg 64 :=
.seq RemovedBody325_11 RemovedBody325_20

def RemovedBody325_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody325_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody325_21 RemovedBody325_22

def RemovedBody325_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody325_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody325_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody325_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_33 : StackLang.HolProg 64 :=
.seq RemovedBody325_31 RemovedBody325_32

def RemovedBody325_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 923#64)

def RemovedBody325_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody325_37 : StackLang.HolProg 64 :=
.seq RemovedBody325_35 RemovedBody325_36

def RemovedBody325_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody325_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody325_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody325_41 : StackLang.HolProg 64 :=
.seq RemovedBody325_39 RemovedBody325_40

def RemovedBody325_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody325_41 RemovedBody325_42

def RemovedBody325_44 : StackLang.HolProg 64 :=
.seq RemovedBody325_38 RemovedBody325_43

def RemovedBody325_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody325_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody325_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 3

def RemovedBody325_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody325_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody325_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody325_54 : StackLang.HolProg 64 :=
.seq RemovedBody325_52 RemovedBody325_53

def RemovedBody325_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody325_56 : StackLang.HolProg 64 :=
.seq RemovedBody325_54 RemovedBody325_55

def RemovedBody325_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody325_58 : StackLang.HolProg 64 :=
.seq RemovedBody325_56 RemovedBody325_57

def RemovedBody325_59 : StackLang.HolProg 64 :=
.seq RemovedBody325_51 RemovedBody325_58

def RemovedBody325_60 : StackLang.HolProg 64 :=
.seq RemovedBody325_50 RemovedBody325_59

def RemovedBody325_61 : StackLang.HolProg 64 :=
.seq RemovedBody325_49 RemovedBody325_60

def RemovedBody325_62 : StackLang.HolProg 64 :=
.seq RemovedBody325_48 RemovedBody325_61

def RemovedBody325_63 : StackLang.HolProg 64 :=
.seq RemovedBody325_47 RemovedBody325_62

def RemovedBody325_64 : StackLang.HolProg 64 :=
.seq RemovedBody325_46 RemovedBody325_63

def RemovedBody325_65 : StackLang.HolProg 64 :=
.seq RemovedBody325_45 RemovedBody325_64

def RemovedBody325_66 : StackLang.HolProg 64 :=
.seq RemovedBody325_44 RemovedBody325_65

def RemovedBody325_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody325_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody325_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_74 : StackLang.HolProg 64 :=
.seq RemovedBody325_72 RemovedBody325_73

def RemovedBody325_75 : StackLang.HolProg 64 :=
.seq RemovedBody325_71 RemovedBody325_74

def RemovedBody325_76 : StackLang.HolProg 64 :=
.seq RemovedBody325_70 RemovedBody325_75

def RemovedBody325_77 : StackLang.HolProg 64 :=
.seq RemovedBody325_69 RemovedBody325_76

def RemovedBody325_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody325_80 : StackLang.HolProg 64 :=
.seq RemovedBody325_78 RemovedBody325_79

def RemovedBody325_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody325_77, 0, 325, 2)) (Sum.inl 286) (some (RemovedBody325_80, 325, 3))

def RemovedBody325_82 : StackLang.HolProg 64 :=
.seq RemovedBody325_68 RemovedBody325_81

def RemovedBody325_83 : StackLang.HolProg 64 :=
.seq RemovedBody325_67 RemovedBody325_82

def RemovedBody325_84 : StackLang.HolProg 64 :=
.seq RemovedBody325_66 RemovedBody325_83

def RemovedBody325_85 : StackLang.HolProg 64 :=
.seq RemovedBody325_37 RemovedBody325_84

def RemovedBody325_86 : StackLang.HolProg 64 :=
.seq RemovedBody325_34 RemovedBody325_85

def RemovedBody325_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_89 : StackLang.HolProg 64 :=
.seq RemovedBody325_87 RemovedBody325_88

def RemovedBody325_90 : StackLang.HolProg 64 :=
.seq RemovedBody325_86 RemovedBody325_89

def RemovedBody325_91 : StackLang.HolProg 64 :=
.seq RemovedBody325_33 RemovedBody325_90

def RemovedBody325_92 : StackLang.HolProg 64 :=
.seq RemovedBody325_30 RemovedBody325_91

def RemovedBody325_93 : StackLang.HolProg 64 :=
.seq RemovedBody325_29 RemovedBody325_92

def RemovedBody325_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_96 : StackLang.HolProg 64 :=
.seq RemovedBody325_94 RemovedBody325_95

def RemovedBody325_97 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody325_93 RemovedBody325_96

def RemovedBody325_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody325_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_101 : StackLang.HolProg 64 :=
.seq RemovedBody325_99 RemovedBody325_100

def RemovedBody325_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 924#64)

def RemovedBody325_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody325_105 : StackLang.HolProg 64 :=
.seq RemovedBody325_103 RemovedBody325_104

def RemovedBody325_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody325_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody325_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody325_109 : StackLang.HolProg 64 :=
.seq RemovedBody325_107 RemovedBody325_108

def RemovedBody325_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody325_109 RemovedBody325_110

def RemovedBody325_112 : StackLang.HolProg 64 :=
.seq RemovedBody325_106 RemovedBody325_111

def RemovedBody325_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody325_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody325_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 5

def RemovedBody325_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody325_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody325_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody325_122 : StackLang.HolProg 64 :=
.seq RemovedBody325_120 RemovedBody325_121

def RemovedBody325_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody325_124 : StackLang.HolProg 64 :=
.seq RemovedBody325_122 RemovedBody325_123

def RemovedBody325_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody325_126 : StackLang.HolProg 64 :=
.seq RemovedBody325_124 RemovedBody325_125

def RemovedBody325_127 : StackLang.HolProg 64 :=
.seq RemovedBody325_119 RemovedBody325_126

def RemovedBody325_128 : StackLang.HolProg 64 :=
.seq RemovedBody325_118 RemovedBody325_127

def RemovedBody325_129 : StackLang.HolProg 64 :=
.seq RemovedBody325_117 RemovedBody325_128

def RemovedBody325_130 : StackLang.HolProg 64 :=
.seq RemovedBody325_116 RemovedBody325_129

def RemovedBody325_131 : StackLang.HolProg 64 :=
.seq RemovedBody325_115 RemovedBody325_130

def RemovedBody325_132 : StackLang.HolProg 64 :=
.seq RemovedBody325_114 RemovedBody325_131

def RemovedBody325_133 : StackLang.HolProg 64 :=
.seq RemovedBody325_113 RemovedBody325_132

def RemovedBody325_134 : StackLang.HolProg 64 :=
.seq RemovedBody325_112 RemovedBody325_133

def RemovedBody325_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody325_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody325_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_143 : StackLang.HolProg 64 :=
.seq RemovedBody325_141 RemovedBody325_142

def RemovedBody325_144 : StackLang.HolProg 64 :=
.seq RemovedBody325_140 RemovedBody325_143

def RemovedBody325_145 : StackLang.HolProg 64 :=
.seq RemovedBody325_139 RemovedBody325_144

def RemovedBody325_146 : StackLang.HolProg 64 :=
.seq RemovedBody325_138 RemovedBody325_145

def RemovedBody325_147 : StackLang.HolProg 64 :=
.seq RemovedBody325_137 RemovedBody325_146

def RemovedBody325_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody325_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody325_150 : StackLang.HolProg 64 :=
.seq RemovedBody325_148 RemovedBody325_149

def RemovedBody325_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody325_152 : StackLang.HolProg 64 :=
.seq RemovedBody325_150 RemovedBody325_151

def RemovedBody325_153 : StackLang.HolProg 64 :=
.call (some (RemovedBody325_147, 0, 325, 4)) (Sum.inl 324) (some (RemovedBody325_152, 325, 5))

def RemovedBody325_154 : StackLang.HolProg 64 :=
.seq RemovedBody325_136 RemovedBody325_153

def RemovedBody325_155 : StackLang.HolProg 64 :=
.seq RemovedBody325_135 RemovedBody325_154

def RemovedBody325_156 : StackLang.HolProg 64 :=
.seq RemovedBody325_134 RemovedBody325_155

def RemovedBody325_157 : StackLang.HolProg 64 :=
.seq RemovedBody325_105 RemovedBody325_156

def RemovedBody325_158 : StackLang.HolProg 64 :=
.seq RemovedBody325_102 RemovedBody325_157

def RemovedBody325_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody325_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody325_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody325_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody325_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody325_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody325_167 : StackLang.HolProg 64 :=
.seq RemovedBody325_165 RemovedBody325_166

def RemovedBody325_168 : StackLang.HolProg 64 :=
.seq RemovedBody325_164 RemovedBody325_167

def RemovedBody325_169 : StackLang.HolProg 64 :=
.seq RemovedBody325_163 RemovedBody325_168

def RemovedBody325_170 : StackLang.HolProg 64 :=
.seq RemovedBody325_162 RemovedBody325_169

def RemovedBody325_171 : StackLang.HolProg 64 :=
.seq RemovedBody325_161 RemovedBody325_170

def RemovedBody325_172 : StackLang.HolProg 64 :=
.seq RemovedBody325_160 RemovedBody325_171

def RemovedBody325_173 : StackLang.HolProg 64 :=
.seq RemovedBody325_159 RemovedBody325_172

def RemovedBody325_174 : StackLang.HolProg 64 :=
.seq RemovedBody325_158 RemovedBody325_173

def RemovedBody325_175 : StackLang.HolProg 64 :=
.seq RemovedBody325_101 RemovedBody325_174

def RemovedBody325_176 : StackLang.HolProg 64 :=
.seq RemovedBody325_98 RemovedBody325_175

def RemovedBody325_177 : StackLang.HolProg 64 :=
.seq RemovedBody325_97 RemovedBody325_176

def RemovedBody325_178 : StackLang.HolProg 64 :=
.seq RemovedBody325_28 RemovedBody325_177

def RemovedBody325_179 : StackLang.HolProg 64 :=
.seq RemovedBody325_27 RemovedBody325_178

def RemovedBody325_180 : StackLang.HolProg 64 :=
.seq RemovedBody325_26 RemovedBody325_179

def RemovedBody325_181 : StackLang.HolProg 64 :=
.seq RemovedBody325_25 RemovedBody325_180

def RemovedBody325_182 : StackLang.HolProg 64 :=
.seq RemovedBody325_24 RemovedBody325_181

def RemovedBody325_183 : StackLang.HolProg 64 :=
.seq RemovedBody325_23 RemovedBody325_182

def RemovedBody325_184 : StackLang.HolProg 64 :=
.seq RemovedBody325_10 RemovedBody325_183

def RemovedBody325_185 : StackLang.HolProg 64 :=
.seq RemovedBody325_9 RemovedBody325_184

def RemovedBody325_186 : StackLang.HolProg 64 :=
.seq RemovedBody325_8 RemovedBody325_185

def RemovedBody325_187 : StackLang.HolProg 64 :=
.seq RemovedBody325_7 RemovedBody325_186

def RemovedBody325_188 : StackLang.HolProg 64 :=
.seq RemovedBody325_6 RemovedBody325_187

def Removed325 : Nat × StackLang.HolProg 64 := (325, RemovedBody325_188)
theorem Removed325_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc325 = Removed325 := by
  kernel_rfl
#print axioms Removed325_eq
end InitECandidate.Proofs.BackendStages
