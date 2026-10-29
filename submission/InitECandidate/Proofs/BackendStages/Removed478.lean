import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc478
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody478_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody478_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody478_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody478_3 : StackLang.HolProg 64 :=
.seq RemovedBody478_1 RemovedBody478_2

def RemovedBody478_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody478_3 RemovedBody478_4

def RemovedBody478_6 : StackLang.HolProg 64 :=
.seq RemovedBody478_0 RemovedBody478_5

def RemovedBody478_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody478_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody478_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody478_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody478_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody478_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody478_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1499#64)

def RemovedBody478_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody478_18 : StackLang.HolProg 64 :=
.seq RemovedBody478_16 RemovedBody478_17

def RemovedBody478_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody478_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody478_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody478_22 : StackLang.HolProg 64 :=
.seq RemovedBody478_20 RemovedBody478_21

def RemovedBody478_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody478_22 RemovedBody478_23

def RemovedBody478_25 : StackLang.HolProg 64 :=
.seq RemovedBody478_19 RemovedBody478_24

def RemovedBody478_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody478_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody478_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 3

def RemovedBody478_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody478_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody478_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody478_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody478_35 : StackLang.HolProg 64 :=
.seq RemovedBody478_33 RemovedBody478_34

def RemovedBody478_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody478_37 : StackLang.HolProg 64 :=
.seq RemovedBody478_35 RemovedBody478_36

def RemovedBody478_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody478_39 : StackLang.HolProg 64 :=
.seq RemovedBody478_37 RemovedBody478_38

def RemovedBody478_40 : StackLang.HolProg 64 :=
.seq RemovedBody478_32 RemovedBody478_39

def RemovedBody478_41 : StackLang.HolProg 64 :=
.seq RemovedBody478_31 RemovedBody478_40

def RemovedBody478_42 : StackLang.HolProg 64 :=
.seq RemovedBody478_30 RemovedBody478_41

def RemovedBody478_43 : StackLang.HolProg 64 :=
.seq RemovedBody478_29 RemovedBody478_42

def RemovedBody478_44 : StackLang.HolProg 64 :=
.seq RemovedBody478_28 RemovedBody478_43

def RemovedBody478_45 : StackLang.HolProg 64 :=
.seq RemovedBody478_27 RemovedBody478_44

def RemovedBody478_46 : StackLang.HolProg 64 :=
.seq RemovedBody478_26 RemovedBody478_45

def RemovedBody478_47 : StackLang.HolProg 64 :=
.seq RemovedBody478_25 RemovedBody478_46

def RemovedBody478_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody478_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody478_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody478_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_55 : StackLang.HolProg 64 :=
.seq RemovedBody478_53 RemovedBody478_54

def RemovedBody478_56 : StackLang.HolProg 64 :=
.seq RemovedBody478_52 RemovedBody478_55

def RemovedBody478_57 : StackLang.HolProg 64 :=
.seq RemovedBody478_51 RemovedBody478_56

def RemovedBody478_58 : StackLang.HolProg 64 :=
.seq RemovedBody478_50 RemovedBody478_57

def RemovedBody478_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody478_61 : StackLang.HolProg 64 :=
.seq RemovedBody478_59 RemovedBody478_60

def RemovedBody478_62 : StackLang.HolProg 64 :=
.call (some (RemovedBody478_58, 0, 478, 2)) (Sum.inl 476) (some (RemovedBody478_61, 478, 3))

def RemovedBody478_63 : StackLang.HolProg 64 :=
.seq RemovedBody478_49 RemovedBody478_62

def RemovedBody478_64 : StackLang.HolProg 64 :=
.seq RemovedBody478_48 RemovedBody478_63

def RemovedBody478_65 : StackLang.HolProg 64 :=
.seq RemovedBody478_47 RemovedBody478_64

def RemovedBody478_66 : StackLang.HolProg 64 :=
.seq RemovedBody478_18 RemovedBody478_65

def RemovedBody478_67 : StackLang.HolProg 64 :=
.seq RemovedBody478_15 RemovedBody478_66

def RemovedBody478_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody478_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_70 : StackLang.HolProg 64 :=
.seq RemovedBody478_68 RemovedBody478_69

def RemovedBody478_71 : StackLang.HolProg 64 :=
.seq RemovedBody478_67 RemovedBody478_70

def RemovedBody478_72 : StackLang.HolProg 64 :=
.seq RemovedBody478_14 RemovedBody478_71

def RemovedBody478_73 : StackLang.HolProg 64 :=
.seq RemovedBody478_13 RemovedBody478_72

def RemovedBody478_74 : StackLang.HolProg 64 :=
.seq RemovedBody478_12 RemovedBody478_73

def RemovedBody478_75 : StackLang.HolProg 64 :=
.seq RemovedBody478_11 RemovedBody478_74

def RemovedBody478_76 : StackLang.HolProg 64 :=
.seq RemovedBody478_10 RemovedBody478_75

def RemovedBody478_77 : StackLang.HolProg 64 :=
.seq RemovedBody478_9 RemovedBody478_76

def RemovedBody478_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody478_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody478_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody478_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody478_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody478_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1500#64)

def RemovedBody478_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody478_87 : StackLang.HolProg 64 :=
.seq RemovedBody478_85 RemovedBody478_86

def RemovedBody478_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody478_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody478_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody478_91 : StackLang.HolProg 64 :=
.seq RemovedBody478_89 RemovedBody478_90

def RemovedBody478_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody478_91 RemovedBody478_92

def RemovedBody478_94 : StackLang.HolProg 64 :=
.seq RemovedBody478_88 RemovedBody478_93

def RemovedBody478_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody478_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody478_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 5

def RemovedBody478_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody478_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody478_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody478_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody478_104 : StackLang.HolProg 64 :=
.seq RemovedBody478_102 RemovedBody478_103

def RemovedBody478_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody478_106 : StackLang.HolProg 64 :=
.seq RemovedBody478_104 RemovedBody478_105

def RemovedBody478_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody478_108 : StackLang.HolProg 64 :=
.seq RemovedBody478_106 RemovedBody478_107

def RemovedBody478_109 : StackLang.HolProg 64 :=
.seq RemovedBody478_101 RemovedBody478_108

def RemovedBody478_110 : StackLang.HolProg 64 :=
.seq RemovedBody478_100 RemovedBody478_109

def RemovedBody478_111 : StackLang.HolProg 64 :=
.seq RemovedBody478_99 RemovedBody478_110

def RemovedBody478_112 : StackLang.HolProg 64 :=
.seq RemovedBody478_98 RemovedBody478_111

def RemovedBody478_113 : StackLang.HolProg 64 :=
.seq RemovedBody478_97 RemovedBody478_112

def RemovedBody478_114 : StackLang.HolProg 64 :=
.seq RemovedBody478_96 RemovedBody478_113

def RemovedBody478_115 : StackLang.HolProg 64 :=
.seq RemovedBody478_95 RemovedBody478_114

def RemovedBody478_116 : StackLang.HolProg 64 :=
.seq RemovedBody478_94 RemovedBody478_115

def RemovedBody478_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody478_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody478_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody478_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_124 : StackLang.HolProg 64 :=
.seq RemovedBody478_122 RemovedBody478_123

def RemovedBody478_125 : StackLang.HolProg 64 :=
.seq RemovedBody478_121 RemovedBody478_124

def RemovedBody478_126 : StackLang.HolProg 64 :=
.seq RemovedBody478_120 RemovedBody478_125

def RemovedBody478_127 : StackLang.HolProg 64 :=
.seq RemovedBody478_119 RemovedBody478_126

def RemovedBody478_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody478_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody478_130 : StackLang.HolProg 64 :=
.seq RemovedBody478_128 RemovedBody478_129

def RemovedBody478_131 : StackLang.HolProg 64 :=
.call (some (RemovedBody478_127, 0, 478, 4)) (Sum.inl 476) (some (RemovedBody478_130, 478, 5))

def RemovedBody478_132 : StackLang.HolProg 64 :=
.seq RemovedBody478_118 RemovedBody478_131

def RemovedBody478_133 : StackLang.HolProg 64 :=
.seq RemovedBody478_117 RemovedBody478_132

def RemovedBody478_134 : StackLang.HolProg 64 :=
.seq RemovedBody478_116 RemovedBody478_133

def RemovedBody478_135 : StackLang.HolProg 64 :=
.seq RemovedBody478_87 RemovedBody478_134

def RemovedBody478_136 : StackLang.HolProg 64 :=
.seq RemovedBody478_84 RemovedBody478_135

def RemovedBody478_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody478_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_139 : StackLang.HolProg 64 :=
.seq RemovedBody478_137 RemovedBody478_138

def RemovedBody478_140 : StackLang.HolProg 64 :=
.seq RemovedBody478_136 RemovedBody478_139

def RemovedBody478_141 : StackLang.HolProg 64 :=
.seq RemovedBody478_83 RemovedBody478_140

def RemovedBody478_142 : StackLang.HolProg 64 :=
.seq RemovedBody478_82 RemovedBody478_141

def RemovedBody478_143 : StackLang.HolProg 64 :=
.seq RemovedBody478_81 RemovedBody478_142

def RemovedBody478_144 : StackLang.HolProg 64 :=
.seq RemovedBody478_80 RemovedBody478_143

def RemovedBody478_145 : StackLang.HolProg 64 :=
.seq RemovedBody478_79 RemovedBody478_144

def RemovedBody478_146 : StackLang.HolProg 64 :=
.seq RemovedBody478_78 RemovedBody478_145

def RemovedBody478_147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody478_77 RemovedBody478_146

def RemovedBody478_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody478_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody478_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody478_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody478_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody478_153 : StackLang.HolProg 64 :=
.seq RemovedBody478_151 RemovedBody478_152

def RemovedBody478_154 : StackLang.HolProg 64 :=
.seq RemovedBody478_150 RemovedBody478_153

def RemovedBody478_155 : StackLang.HolProg 64 :=
.seq RemovedBody478_149 RemovedBody478_154

def RemovedBody478_156 : StackLang.HolProg 64 :=
.seq RemovedBody478_148 RemovedBody478_155

def RemovedBody478_157 : StackLang.HolProg 64 :=
.seq RemovedBody478_147 RemovedBody478_156

def RemovedBody478_158 : StackLang.HolProg 64 :=
.seq RemovedBody478_8 RemovedBody478_157

def RemovedBody478_159 : StackLang.HolProg 64 :=
.seq RemovedBody478_7 RemovedBody478_158

def RemovedBody478_160 : StackLang.HolProg 64 :=
.seq RemovedBody478_6 RemovedBody478_159

def Removed478 : Nat × StackLang.HolProg 64 := (478, RemovedBody478_160)
theorem Removed478_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc478 = Removed478 := by
  kernel_rfl
#print axioms Removed478_eq
end InitECandidate.Proofs.BackendStages
