import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc269
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody269_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody269_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody269_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody269_3 : StackLang.HolProg 64 :=
.seq RemovedBody269_1 RemovedBody269_2

def RemovedBody269_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody269_3 RemovedBody269_4

def RemovedBody269_6 : StackLang.HolProg 64 :=
.seq RemovedBody269_0 RemovedBody269_5

def RemovedBody269_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody269_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody269_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody269_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody269_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody269_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody269_16 : StackLang.HolProg 64 :=
.seq RemovedBody269_14 RemovedBody269_15

def RemovedBody269_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 655#64)

def RemovedBody269_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody269_20 : StackLang.HolProg 64 :=
.seq RemovedBody269_18 RemovedBody269_19

def RemovedBody269_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody269_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody269_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody269_24 : StackLang.HolProg 64 :=
.seq RemovedBody269_22 RemovedBody269_23

def RemovedBody269_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody269_24 RemovedBody269_25

def RemovedBody269_27 : StackLang.HolProg 64 :=
.seq RemovedBody269_21 RemovedBody269_26

def RemovedBody269_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody269_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody269_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 269 3

def RemovedBody269_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody269_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody269_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody269_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody269_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody269_37 : StackLang.HolProg 64 :=
.seq RemovedBody269_35 RemovedBody269_36

def RemovedBody269_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody269_39 : StackLang.HolProg 64 :=
.seq RemovedBody269_37 RemovedBody269_38

def RemovedBody269_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody269_41 : StackLang.HolProg 64 :=
.seq RemovedBody269_39 RemovedBody269_40

def RemovedBody269_42 : StackLang.HolProg 64 :=
.seq RemovedBody269_34 RemovedBody269_41

def RemovedBody269_43 : StackLang.HolProg 64 :=
.seq RemovedBody269_33 RemovedBody269_42

def RemovedBody269_44 : StackLang.HolProg 64 :=
.seq RemovedBody269_32 RemovedBody269_43

def RemovedBody269_45 : StackLang.HolProg 64 :=
.seq RemovedBody269_31 RemovedBody269_44

def RemovedBody269_46 : StackLang.HolProg 64 :=
.seq RemovedBody269_30 RemovedBody269_45

def RemovedBody269_47 : StackLang.HolProg 64 :=
.seq RemovedBody269_29 RemovedBody269_46

def RemovedBody269_48 : StackLang.HolProg 64 :=
.seq RemovedBody269_28 RemovedBody269_47

def RemovedBody269_49 : StackLang.HolProg 64 :=
.seq RemovedBody269_27 RemovedBody269_48

def RemovedBody269_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody269_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody269_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody269_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody269_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody269_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody269_59 : StackLang.HolProg 64 :=
.seq RemovedBody269_57 RemovedBody269_58

def RemovedBody269_60 : StackLang.HolProg 64 :=
.seq RemovedBody269_56 RemovedBody269_59

def RemovedBody269_61 : StackLang.HolProg 64 :=
.seq RemovedBody269_55 RemovedBody269_60

def RemovedBody269_62 : StackLang.HolProg 64 :=
.seq RemovedBody269_54 RemovedBody269_61

def RemovedBody269_63 : StackLang.HolProg 64 :=
.seq RemovedBody269_53 RemovedBody269_62

def RemovedBody269_64 : StackLang.HolProg 64 :=
.seq RemovedBody269_52 RemovedBody269_63

def RemovedBody269_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody269_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody269_67 : StackLang.HolProg 64 :=
.seq RemovedBody269_65 RemovedBody269_66

def RemovedBody269_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody269_69 : StackLang.HolProg 64 :=
.seq RemovedBody269_67 RemovedBody269_68

def RemovedBody269_70 : StackLang.HolProg 64 :=
.call (some (RemovedBody269_64, 0, 269, 2)) (Sum.inl 161) (some (RemovedBody269_69, 269, 3))

def RemovedBody269_71 : StackLang.HolProg 64 :=
.seq RemovedBody269_51 RemovedBody269_70

def RemovedBody269_72 : StackLang.HolProg 64 :=
.seq RemovedBody269_50 RemovedBody269_71

def RemovedBody269_73 : StackLang.HolProg 64 :=
.seq RemovedBody269_49 RemovedBody269_72

def RemovedBody269_74 : StackLang.HolProg 64 :=
.seq RemovedBody269_20 RemovedBody269_73

def RemovedBody269_75 : StackLang.HolProg 64 :=
.seq RemovedBody269_17 RemovedBody269_74

def RemovedBody269_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody269_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody269_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody269_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody269_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody269_86 : StackLang.HolProg 64 :=
.seq RemovedBody269_84 RemovedBody269_85

def RemovedBody269_87 : StackLang.HolProg 64 :=
.seq RemovedBody269_83 RemovedBody269_86

def RemovedBody269_88 : StackLang.HolProg 64 :=
.seq RemovedBody269_82 RemovedBody269_87

def RemovedBody269_89 : StackLang.HolProg 64 :=
.seq RemovedBody269_81 RemovedBody269_88

def RemovedBody269_90 : StackLang.HolProg 64 :=
.seq RemovedBody269_80 RemovedBody269_89

def RemovedBody269_91 : StackLang.HolProg 64 :=
.seq RemovedBody269_79 RemovedBody269_90

def RemovedBody269_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody269_91 RemovedBody269_92

def RemovedBody269_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody269_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody269_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody269_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody269_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody269_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody269_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody269_110 : StackLang.HolProg 64 :=
.seq RemovedBody269_108 RemovedBody269_109

def RemovedBody269_111 : StackLang.HolProg 64 :=
.seq RemovedBody269_107 RemovedBody269_110

def RemovedBody269_112 : StackLang.HolProg 64 :=
.seq RemovedBody269_106 RemovedBody269_111

def RemovedBody269_113 : StackLang.HolProg 64 :=
.seq RemovedBody269_105 RemovedBody269_112

def RemovedBody269_114 : StackLang.HolProg 64 :=
.seq RemovedBody269_104 RemovedBody269_113

def RemovedBody269_115 : StackLang.HolProg 64 :=
.seq RemovedBody269_103 RemovedBody269_114

def RemovedBody269_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody269_115 RemovedBody269_116

def RemovedBody269_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_121 : StackLang.HolProg 64 :=
.seq RemovedBody269_119 RemovedBody269_120

def RemovedBody269_122 : StackLang.HolProg 64 :=
.seq RemovedBody269_118 RemovedBody269_121

def RemovedBody269_123 : StackLang.HolProg 64 :=
.seq RemovedBody269_117 RemovedBody269_122

def RemovedBody269_124 : StackLang.HolProg 64 :=
.seq RemovedBody269_102 RemovedBody269_123

def RemovedBody269_125 : StackLang.HolProg 64 :=
.seq RemovedBody269_101 RemovedBody269_124

def RemovedBody269_126 : StackLang.HolProg 64 :=
.seq RemovedBody269_100 RemovedBody269_125

def RemovedBody269_127 : StackLang.HolProg 64 :=
.seq RemovedBody269_99 RemovedBody269_126

def RemovedBody269_128 : StackLang.HolProg 64 :=
.seq RemovedBody269_98 RemovedBody269_127

def RemovedBody269_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_131 : StackLang.HolProg 64 :=
.seq RemovedBody269_129 RemovedBody269_130

def RemovedBody269_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody269_128 RemovedBody269_131

def RemovedBody269_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody269_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def RemovedBody269_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody269_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody269_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody269_145 : StackLang.HolProg 64 :=
.seq RemovedBody269_143 RemovedBody269_144

def RemovedBody269_146 : StackLang.HolProg 64 :=
.seq RemovedBody269_142 RemovedBody269_145

def RemovedBody269_147 : StackLang.HolProg 64 :=
.seq RemovedBody269_141 RemovedBody269_146

def RemovedBody269_148 : StackLang.HolProg 64 :=
.seq RemovedBody269_140 RemovedBody269_147

def RemovedBody269_149 : StackLang.HolProg 64 :=
.seq RemovedBody269_139 RemovedBody269_148

def RemovedBody269_150 : StackLang.HolProg 64 :=
.seq RemovedBody269_138 RemovedBody269_149

def RemovedBody269_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody269_150 RemovedBody269_151

def RemovedBody269_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_156 : StackLang.HolProg 64 :=
.seq RemovedBody269_154 RemovedBody269_155

def RemovedBody269_157 : StackLang.HolProg 64 :=
.seq RemovedBody269_153 RemovedBody269_156

def RemovedBody269_158 : StackLang.HolProg 64 :=
.seq RemovedBody269_152 RemovedBody269_157

def RemovedBody269_159 : StackLang.HolProg 64 :=
.seq RemovedBody269_137 RemovedBody269_158

def RemovedBody269_160 : StackLang.HolProg 64 :=
.seq RemovedBody269_136 RemovedBody269_159

def RemovedBody269_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody269_163 : StackLang.HolProg 64 :=
.seq RemovedBody269_161 RemovedBody269_162

def RemovedBody269_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody269_160 RemovedBody269_163

def RemovedBody269_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody269_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody269_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody269_168 : StackLang.HolProg 64 :=
.seq RemovedBody269_166 RemovedBody269_167

def RemovedBody269_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody269_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody269_171 : StackLang.HolProg 64 :=
.seq RemovedBody269_169 RemovedBody269_170

def RemovedBody269_172 : StackLang.HolProg 64 :=
.seq RemovedBody269_168 RemovedBody269_171

def RemovedBody269_173 : StackLang.HolProg 64 :=
.seq RemovedBody269_165 RemovedBody269_172

def RemovedBody269_174 : StackLang.HolProg 64 :=
.seq RemovedBody269_164 RemovedBody269_173

def RemovedBody269_175 : StackLang.HolProg 64 :=
.seq RemovedBody269_135 RemovedBody269_174

def RemovedBody269_176 : StackLang.HolProg 64 :=
.seq RemovedBody269_134 RemovedBody269_175

def RemovedBody269_177 : StackLang.HolProg 64 :=
.seq RemovedBody269_133 RemovedBody269_176

def RemovedBody269_178 : StackLang.HolProg 64 :=
.seq RemovedBody269_132 RemovedBody269_177

def RemovedBody269_179 : StackLang.HolProg 64 :=
.seq RemovedBody269_97 RemovedBody269_178

def RemovedBody269_180 : StackLang.HolProg 64 :=
.seq RemovedBody269_96 RemovedBody269_179

def RemovedBody269_181 : StackLang.HolProg 64 :=
.seq RemovedBody269_95 RemovedBody269_180

def RemovedBody269_182 : StackLang.HolProg 64 :=
.seq RemovedBody269_94 RemovedBody269_181

def RemovedBody269_183 : StackLang.HolProg 64 :=
.seq RemovedBody269_93 RemovedBody269_182

def RemovedBody269_184 : StackLang.HolProg 64 :=
.seq RemovedBody269_78 RemovedBody269_183

def RemovedBody269_185 : StackLang.HolProg 64 :=
.seq RemovedBody269_77 RemovedBody269_184

def RemovedBody269_186 : StackLang.HolProg 64 :=
.seq RemovedBody269_76 RemovedBody269_185

def RemovedBody269_187 : StackLang.HolProg 64 :=
.seq RemovedBody269_75 RemovedBody269_186

def RemovedBody269_188 : StackLang.HolProg 64 :=
.seq RemovedBody269_16 RemovedBody269_187

def RemovedBody269_189 : StackLang.HolProg 64 :=
.seq RemovedBody269_13 RemovedBody269_188

def RemovedBody269_190 : StackLang.HolProg 64 :=
.seq RemovedBody269_12 RemovedBody269_189

def RemovedBody269_191 : StackLang.HolProg 64 :=
.seq RemovedBody269_11 RemovedBody269_190

def RemovedBody269_192 : StackLang.HolProg 64 :=
.seq RemovedBody269_10 RemovedBody269_191

def RemovedBody269_193 : StackLang.HolProg 64 :=
.seq RemovedBody269_9 RemovedBody269_192

def RemovedBody269_194 : StackLang.HolProg 64 :=
.seq RemovedBody269_8 RemovedBody269_193

def RemovedBody269_195 : StackLang.HolProg 64 :=
.seq RemovedBody269_7 RemovedBody269_194

def RemovedBody269_196 : StackLang.HolProg 64 :=
.seq RemovedBody269_6 RemovedBody269_195

def Removed269 : Nat × StackLang.HolProg 64 := (269, RemovedBody269_196)
theorem Removed269_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc269 = Removed269 := by
  kernel_rfl
#print axioms Removed269_eq
end InitECandidate.Proofs.BackendStages
