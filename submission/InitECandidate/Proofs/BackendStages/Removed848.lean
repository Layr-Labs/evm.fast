import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc848
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody848_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody848_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_3 : StackLang.HolProg 64 :=
.seq RemovedBody848_1 RemovedBody848_2

def RemovedBody848_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_3 RemovedBody848_4

def RemovedBody848_6 : StackLang.HolProg 64 :=
.seq RemovedBody848_0 RemovedBody848_5

def RemovedBody848_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 576#64)

def RemovedBody848_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 60#64)

def RemovedBody848_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody848_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody848_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_16 : StackLang.HolProg 64 :=
.seq RemovedBody848_14 RemovedBody848_15

def RemovedBody848_17 : StackLang.HolProg 64 :=
.seq RemovedBody848_13 RemovedBody848_16

def RemovedBody848_18 : StackLang.HolProg 64 :=
.seq RemovedBody848_12 RemovedBody848_17

def RemovedBody848_19 : StackLang.HolProg 64 :=
.seq RemovedBody848_11 RemovedBody848_18

def RemovedBody848_20 : StackLang.HolProg 64 :=
.seq RemovedBody848_10 RemovedBody848_19

def RemovedBody848_21 : StackLang.HolProg 64 :=
.seq RemovedBody848_9 RemovedBody848_20

def RemovedBody848_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_21 RemovedBody848_22

def RemovedBody848_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody848_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_29 : StackLang.HolProg 64 :=
.seq RemovedBody848_27 RemovedBody848_28

def RemovedBody848_30 : StackLang.HolProg 64 :=
.seq RemovedBody848_26 RemovedBody848_29

def RemovedBody848_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4241#64)

def RemovedBody848_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_34 : StackLang.HolProg 64 :=
.seq RemovedBody848_32 RemovedBody848_33

def RemovedBody848_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_38 : StackLang.HolProg 64 :=
.seq RemovedBody848_36 RemovedBody848_37

def RemovedBody848_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_38 RemovedBody848_39

def RemovedBody848_41 : StackLang.HolProg 64 :=
.seq RemovedBody848_35 RemovedBody848_40

def RemovedBody848_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 3

def RemovedBody848_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_51 : StackLang.HolProg 64 :=
.seq RemovedBody848_49 RemovedBody848_50

def RemovedBody848_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_53 : StackLang.HolProg 64 :=
.seq RemovedBody848_51 RemovedBody848_52

def RemovedBody848_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_55 : StackLang.HolProg 64 :=
.seq RemovedBody848_53 RemovedBody848_54

def RemovedBody848_56 : StackLang.HolProg 64 :=
.seq RemovedBody848_48 RemovedBody848_55

def RemovedBody848_57 : StackLang.HolProg 64 :=
.seq RemovedBody848_47 RemovedBody848_56

def RemovedBody848_58 : StackLang.HolProg 64 :=
.seq RemovedBody848_46 RemovedBody848_57

def RemovedBody848_59 : StackLang.HolProg 64 :=
.seq RemovedBody848_45 RemovedBody848_58

def RemovedBody848_60 : StackLang.HolProg 64 :=
.seq RemovedBody848_44 RemovedBody848_59

def RemovedBody848_61 : StackLang.HolProg 64 :=
.seq RemovedBody848_43 RemovedBody848_60

def RemovedBody848_62 : StackLang.HolProg 64 :=
.seq RemovedBody848_42 RemovedBody848_61

def RemovedBody848_63 : StackLang.HolProg 64 :=
.seq RemovedBody848_41 RemovedBody848_62

def RemovedBody848_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_72 : StackLang.HolProg 64 :=
.seq RemovedBody848_70 RemovedBody848_71

def RemovedBody848_73 : StackLang.HolProg 64 :=
.seq RemovedBody848_69 RemovedBody848_72

def RemovedBody848_74 : StackLang.HolProg 64 :=
.seq RemovedBody848_68 RemovedBody848_73

def RemovedBody848_75 : StackLang.HolProg 64 :=
.seq RemovedBody848_67 RemovedBody848_74

def RemovedBody848_76 : StackLang.HolProg 64 :=
.seq RemovedBody848_66 RemovedBody848_75

def RemovedBody848_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_79 : StackLang.HolProg 64 :=
.seq RemovedBody848_77 RemovedBody848_78

def RemovedBody848_80 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_76, 0, 848, 2)) (Sum.inl 69) (some (RemovedBody848_79, 848, 3))

def RemovedBody848_81 : StackLang.HolProg 64 :=
.seq RemovedBody848_65 RemovedBody848_80

def RemovedBody848_82 : StackLang.HolProg 64 :=
.seq RemovedBody848_64 RemovedBody848_81

def RemovedBody848_83 : StackLang.HolProg 64 :=
.seq RemovedBody848_63 RemovedBody848_82

def RemovedBody848_84 : StackLang.HolProg 64 :=
.seq RemovedBody848_34 RemovedBody848_83

def RemovedBody848_85 : StackLang.HolProg 64 :=
.seq RemovedBody848_31 RemovedBody848_84

def RemovedBody848_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody848_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody848_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_93 : StackLang.HolProg 64 :=
.seq RemovedBody848_91 RemovedBody848_92

def RemovedBody848_94 : StackLang.HolProg 64 :=
.seq RemovedBody848_90 RemovedBody848_93

def RemovedBody848_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4242#64)

def RemovedBody848_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_98 : StackLang.HolProg 64 :=
.seq RemovedBody848_96 RemovedBody848_97

def RemovedBody848_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_102 : StackLang.HolProg 64 :=
.seq RemovedBody848_100 RemovedBody848_101

def RemovedBody848_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_102 RemovedBody848_103

def RemovedBody848_105 : StackLang.HolProg 64 :=
.seq RemovedBody848_99 RemovedBody848_104

def RemovedBody848_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 5

def RemovedBody848_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_115 : StackLang.HolProg 64 :=
.seq RemovedBody848_113 RemovedBody848_114

def RemovedBody848_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_117 : StackLang.HolProg 64 :=
.seq RemovedBody848_115 RemovedBody848_116

def RemovedBody848_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_119 : StackLang.HolProg 64 :=
.seq RemovedBody848_117 RemovedBody848_118

def RemovedBody848_120 : StackLang.HolProg 64 :=
.seq RemovedBody848_112 RemovedBody848_119

def RemovedBody848_121 : StackLang.HolProg 64 :=
.seq RemovedBody848_111 RemovedBody848_120

def RemovedBody848_122 : StackLang.HolProg 64 :=
.seq RemovedBody848_110 RemovedBody848_121

def RemovedBody848_123 : StackLang.HolProg 64 :=
.seq RemovedBody848_109 RemovedBody848_122

def RemovedBody848_124 : StackLang.HolProg 64 :=
.seq RemovedBody848_108 RemovedBody848_123

def RemovedBody848_125 : StackLang.HolProg 64 :=
.seq RemovedBody848_107 RemovedBody848_124

def RemovedBody848_126 : StackLang.HolProg 64 :=
.seq RemovedBody848_106 RemovedBody848_125

def RemovedBody848_127 : StackLang.HolProg 64 :=
.seq RemovedBody848_105 RemovedBody848_126

def RemovedBody848_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_135 : StackLang.HolProg 64 :=
.seq RemovedBody848_133 RemovedBody848_134

def RemovedBody848_136 : StackLang.HolProg 64 :=
.seq RemovedBody848_132 RemovedBody848_135

def RemovedBody848_137 : StackLang.HolProg 64 :=
.seq RemovedBody848_131 RemovedBody848_136

def RemovedBody848_138 : StackLang.HolProg 64 :=
.seq RemovedBody848_130 RemovedBody848_137

def RemovedBody848_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_141 : StackLang.HolProg 64 :=
.seq RemovedBody848_139 RemovedBody848_140

def RemovedBody848_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_138, 0, 848, 4)) (Sum.inl 80) (some (RemovedBody848_141, 848, 5))

def RemovedBody848_143 : StackLang.HolProg 64 :=
.seq RemovedBody848_129 RemovedBody848_142

def RemovedBody848_144 : StackLang.HolProg 64 :=
.seq RemovedBody848_128 RemovedBody848_143

def RemovedBody848_145 : StackLang.HolProg 64 :=
.seq RemovedBody848_127 RemovedBody848_144

def RemovedBody848_146 : StackLang.HolProg 64 :=
.seq RemovedBody848_98 RemovedBody848_145

def RemovedBody848_147 : StackLang.HolProg 64 :=
.seq RemovedBody848_95 RemovedBody848_146

def RemovedBody848_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4243#64)

def RemovedBody848_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_155 : StackLang.HolProg 64 :=
.seq RemovedBody848_153 RemovedBody848_154

def RemovedBody848_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_159 : StackLang.HolProg 64 :=
.seq RemovedBody848_157 RemovedBody848_158

def RemovedBody848_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_159 RemovedBody848_160

def RemovedBody848_162 : StackLang.HolProg 64 :=
.seq RemovedBody848_156 RemovedBody848_161

def RemovedBody848_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 7

def RemovedBody848_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_172 : StackLang.HolProg 64 :=
.seq RemovedBody848_170 RemovedBody848_171

def RemovedBody848_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_174 : StackLang.HolProg 64 :=
.seq RemovedBody848_172 RemovedBody848_173

def RemovedBody848_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_176 : StackLang.HolProg 64 :=
.seq RemovedBody848_174 RemovedBody848_175

def RemovedBody848_177 : StackLang.HolProg 64 :=
.seq RemovedBody848_169 RemovedBody848_176

def RemovedBody848_178 : StackLang.HolProg 64 :=
.seq RemovedBody848_168 RemovedBody848_177

def RemovedBody848_179 : StackLang.HolProg 64 :=
.seq RemovedBody848_167 RemovedBody848_178

def RemovedBody848_180 : StackLang.HolProg 64 :=
.seq RemovedBody848_166 RemovedBody848_179

def RemovedBody848_181 : StackLang.HolProg 64 :=
.seq RemovedBody848_165 RemovedBody848_180

def RemovedBody848_182 : StackLang.HolProg 64 :=
.seq RemovedBody848_164 RemovedBody848_181

def RemovedBody848_183 : StackLang.HolProg 64 :=
.seq RemovedBody848_163 RemovedBody848_182

def RemovedBody848_184 : StackLang.HolProg 64 :=
.seq RemovedBody848_162 RemovedBody848_183

def RemovedBody848_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_193 : StackLang.HolProg 64 :=
.seq RemovedBody848_191 RemovedBody848_192

def RemovedBody848_194 : StackLang.HolProg 64 :=
.seq RemovedBody848_190 RemovedBody848_193

def RemovedBody848_195 : StackLang.HolProg 64 :=
.seq RemovedBody848_189 RemovedBody848_194

def RemovedBody848_196 : StackLang.HolProg 64 :=
.seq RemovedBody848_188 RemovedBody848_195

def RemovedBody848_197 : StackLang.HolProg 64 :=
.seq RemovedBody848_187 RemovedBody848_196

def RemovedBody848_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_200 : StackLang.HolProg 64 :=
.seq RemovedBody848_198 RemovedBody848_199

def RemovedBody848_201 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_197, 0, 848, 6)) (Sum.inl 85) (some (RemovedBody848_200, 848, 7))

def RemovedBody848_202 : StackLang.HolProg 64 :=
.seq RemovedBody848_186 RemovedBody848_201

def RemovedBody848_203 : StackLang.HolProg 64 :=
.seq RemovedBody848_185 RemovedBody848_202

def RemovedBody848_204 : StackLang.HolProg 64 :=
.seq RemovedBody848_184 RemovedBody848_203

def RemovedBody848_205 : StackLang.HolProg 64 :=
.seq RemovedBody848_155 RemovedBody848_204

def RemovedBody848_206 : StackLang.HolProg 64 :=
.seq RemovedBody848_152 RemovedBody848_205

def RemovedBody848_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody848_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_212 : StackLang.HolProg 64 :=
.seq RemovedBody848_210 RemovedBody848_211

def RemovedBody848_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4244#64)

def RemovedBody848_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_216 : StackLang.HolProg 64 :=
.seq RemovedBody848_214 RemovedBody848_215

def RemovedBody848_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_220 : StackLang.HolProg 64 :=
.seq RemovedBody848_218 RemovedBody848_219

def RemovedBody848_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_222 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_220 RemovedBody848_221

def RemovedBody848_223 : StackLang.HolProg 64 :=
.seq RemovedBody848_217 RemovedBody848_222

def RemovedBody848_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 9

def RemovedBody848_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_233 : StackLang.HolProg 64 :=
.seq RemovedBody848_231 RemovedBody848_232

def RemovedBody848_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_235 : StackLang.HolProg 64 :=
.seq RemovedBody848_233 RemovedBody848_234

def RemovedBody848_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_237 : StackLang.HolProg 64 :=
.seq RemovedBody848_235 RemovedBody848_236

def RemovedBody848_238 : StackLang.HolProg 64 :=
.seq RemovedBody848_230 RemovedBody848_237

def RemovedBody848_239 : StackLang.HolProg 64 :=
.seq RemovedBody848_229 RemovedBody848_238

def RemovedBody848_240 : StackLang.HolProg 64 :=
.seq RemovedBody848_228 RemovedBody848_239

def RemovedBody848_241 : StackLang.HolProg 64 :=
.seq RemovedBody848_227 RemovedBody848_240

def RemovedBody848_242 : StackLang.HolProg 64 :=
.seq RemovedBody848_226 RemovedBody848_241

def RemovedBody848_243 : StackLang.HolProg 64 :=
.seq RemovedBody848_225 RemovedBody848_242

def RemovedBody848_244 : StackLang.HolProg 64 :=
.seq RemovedBody848_224 RemovedBody848_243

def RemovedBody848_245 : StackLang.HolProg 64 :=
.seq RemovedBody848_223 RemovedBody848_244

def RemovedBody848_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_255 : StackLang.HolProg 64 :=
.seq RemovedBody848_253 RemovedBody848_254

def RemovedBody848_256 : StackLang.HolProg 64 :=
.seq RemovedBody848_252 RemovedBody848_255

def RemovedBody848_257 : StackLang.HolProg 64 :=
.seq RemovedBody848_251 RemovedBody848_256

def RemovedBody848_258 : StackLang.HolProg 64 :=
.seq RemovedBody848_250 RemovedBody848_257

def RemovedBody848_259 : StackLang.HolProg 64 :=
.seq RemovedBody848_249 RemovedBody848_258

def RemovedBody848_260 : StackLang.HolProg 64 :=
.seq RemovedBody848_248 RemovedBody848_259

def RemovedBody848_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_263 : StackLang.HolProg 64 :=
.seq RemovedBody848_261 RemovedBody848_262

def RemovedBody848_264 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_265 : StackLang.HolProg 64 :=
.seq RemovedBody848_263 RemovedBody848_264

def RemovedBody848_266 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_260, 0, 848, 8)) (Sum.inl 80) (some (RemovedBody848_265, 848, 9))

def RemovedBody848_267 : StackLang.HolProg 64 :=
.seq RemovedBody848_247 RemovedBody848_266

def RemovedBody848_268 : StackLang.HolProg 64 :=
.seq RemovedBody848_246 RemovedBody848_267

def RemovedBody848_269 : StackLang.HolProg 64 :=
.seq RemovedBody848_245 RemovedBody848_268

def RemovedBody848_270 : StackLang.HolProg 64 :=
.seq RemovedBody848_216 RemovedBody848_269

def RemovedBody848_271 : StackLang.HolProg 64 :=
.seq RemovedBody848_213 RemovedBody848_270

def RemovedBody848_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_277 : StackLang.HolProg 64 :=
.seq RemovedBody848_275 RemovedBody848_276

def RemovedBody848_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_280 : StackLang.HolProg 64 :=
.seq RemovedBody848_278 RemovedBody848_279

def RemovedBody848_281 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_277 RemovedBody848_280

def RemovedBody848_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 160#64)

def RemovedBody848_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_287 : StackLang.HolProg 64 :=
.seq RemovedBody848_285 RemovedBody848_286

def RemovedBody848_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_290 : StackLang.HolProg 64 :=
.seq RemovedBody848_288 RemovedBody848_289

def RemovedBody848_291 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_287 RemovedBody848_290

def RemovedBody848_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_299 : StackLang.HolProg 64 :=
.seq RemovedBody848_297 RemovedBody848_298

def RemovedBody848_300 : StackLang.HolProg 64 :=
.seq RemovedBody848_296 RemovedBody848_299

def RemovedBody848_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_303 : StackLang.HolProg 64 :=
.seq RemovedBody848_301 RemovedBody848_302

def RemovedBody848_304 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_300 RemovedBody848_303

def RemovedBody848_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody848_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4245#64)

def RemovedBody848_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_313 : StackLang.HolProg 64 :=
.seq RemovedBody848_311 RemovedBody848_312

def RemovedBody848_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_317 : StackLang.HolProg 64 :=
.seq RemovedBody848_315 RemovedBody848_316

def RemovedBody848_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_319 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_317 RemovedBody848_318

def RemovedBody848_320 : StackLang.HolProg 64 :=
.seq RemovedBody848_314 RemovedBody848_319

def RemovedBody848_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 11

def RemovedBody848_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_330 : StackLang.HolProg 64 :=
.seq RemovedBody848_328 RemovedBody848_329

def RemovedBody848_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_332 : StackLang.HolProg 64 :=
.seq RemovedBody848_330 RemovedBody848_331

def RemovedBody848_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_334 : StackLang.HolProg 64 :=
.seq RemovedBody848_332 RemovedBody848_333

def RemovedBody848_335 : StackLang.HolProg 64 :=
.seq RemovedBody848_327 RemovedBody848_334

def RemovedBody848_336 : StackLang.HolProg 64 :=
.seq RemovedBody848_326 RemovedBody848_335

def RemovedBody848_337 : StackLang.HolProg 64 :=
.seq RemovedBody848_325 RemovedBody848_336

def RemovedBody848_338 : StackLang.HolProg 64 :=
.seq RemovedBody848_324 RemovedBody848_337

def RemovedBody848_339 : StackLang.HolProg 64 :=
.seq RemovedBody848_323 RemovedBody848_338

def RemovedBody848_340 : StackLang.HolProg 64 :=
.seq RemovedBody848_322 RemovedBody848_339

def RemovedBody848_341 : StackLang.HolProg 64 :=
.seq RemovedBody848_321 RemovedBody848_340

def RemovedBody848_342 : StackLang.HolProg 64 :=
.seq RemovedBody848_320 RemovedBody848_341

def RemovedBody848_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_351 : StackLang.HolProg 64 :=
.seq RemovedBody848_349 RemovedBody848_350

def RemovedBody848_352 : StackLang.HolProg 64 :=
.seq RemovedBody848_348 RemovedBody848_351

def RemovedBody848_353 : StackLang.HolProg 64 :=
.seq RemovedBody848_347 RemovedBody848_352

def RemovedBody848_354 : StackLang.HolProg 64 :=
.seq RemovedBody848_346 RemovedBody848_353

def RemovedBody848_355 : StackLang.HolProg 64 :=
.seq RemovedBody848_345 RemovedBody848_354

def RemovedBody848_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_358 : StackLang.HolProg 64 :=
.seq RemovedBody848_356 RemovedBody848_357

def RemovedBody848_359 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_355, 0, 848, 10)) (Sum.inl 80) (some (RemovedBody848_358, 848, 11))

def RemovedBody848_360 : StackLang.HolProg 64 :=
.seq RemovedBody848_344 RemovedBody848_359

def RemovedBody848_361 : StackLang.HolProg 64 :=
.seq RemovedBody848_343 RemovedBody848_360

def RemovedBody848_362 : StackLang.HolProg 64 :=
.seq RemovedBody848_342 RemovedBody848_361

def RemovedBody848_363 : StackLang.HolProg 64 :=
.seq RemovedBody848_313 RemovedBody848_362

def RemovedBody848_364 : StackLang.HolProg 64 :=
.seq RemovedBody848_310 RemovedBody848_363

def RemovedBody848_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody848_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_370 : StackLang.HolProg 64 :=
.seq RemovedBody848_368 RemovedBody848_369

def RemovedBody848_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4246#64)

def RemovedBody848_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_374 : StackLang.HolProg 64 :=
.seq RemovedBody848_372 RemovedBody848_373

def RemovedBody848_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_378 : StackLang.HolProg 64 :=
.seq RemovedBody848_376 RemovedBody848_377

def RemovedBody848_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_380 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_378 RemovedBody848_379

def RemovedBody848_381 : StackLang.HolProg 64 :=
.seq RemovedBody848_375 RemovedBody848_380

def RemovedBody848_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 13

def RemovedBody848_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_391 : StackLang.HolProg 64 :=
.seq RemovedBody848_389 RemovedBody848_390

def RemovedBody848_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_393 : StackLang.HolProg 64 :=
.seq RemovedBody848_391 RemovedBody848_392

def RemovedBody848_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_395 : StackLang.HolProg 64 :=
.seq RemovedBody848_393 RemovedBody848_394

def RemovedBody848_396 : StackLang.HolProg 64 :=
.seq RemovedBody848_388 RemovedBody848_395

def RemovedBody848_397 : StackLang.HolProg 64 :=
.seq RemovedBody848_387 RemovedBody848_396

def RemovedBody848_398 : StackLang.HolProg 64 :=
.seq RemovedBody848_386 RemovedBody848_397

def RemovedBody848_399 : StackLang.HolProg 64 :=
.seq RemovedBody848_385 RemovedBody848_398

def RemovedBody848_400 : StackLang.HolProg 64 :=
.seq RemovedBody848_384 RemovedBody848_399

def RemovedBody848_401 : StackLang.HolProg 64 :=
.seq RemovedBody848_383 RemovedBody848_400

def RemovedBody848_402 : StackLang.HolProg 64 :=
.seq RemovedBody848_382 RemovedBody848_401

def RemovedBody848_403 : StackLang.HolProg 64 :=
.seq RemovedBody848_381 RemovedBody848_402

def RemovedBody848_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_413 : StackLang.HolProg 64 :=
.seq RemovedBody848_411 RemovedBody848_412

def RemovedBody848_414 : StackLang.HolProg 64 :=
.seq RemovedBody848_410 RemovedBody848_413

def RemovedBody848_415 : StackLang.HolProg 64 :=
.seq RemovedBody848_409 RemovedBody848_414

def RemovedBody848_416 : StackLang.HolProg 64 :=
.seq RemovedBody848_408 RemovedBody848_415

def RemovedBody848_417 : StackLang.HolProg 64 :=
.seq RemovedBody848_407 RemovedBody848_416

def RemovedBody848_418 : StackLang.HolProg 64 :=
.seq RemovedBody848_406 RemovedBody848_417

def RemovedBody848_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_421 : StackLang.HolProg 64 :=
.seq RemovedBody848_419 RemovedBody848_420

def RemovedBody848_422 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_423 : StackLang.HolProg 64 :=
.seq RemovedBody848_421 RemovedBody848_422

def RemovedBody848_424 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_418, 0, 848, 12)) (Sum.inl 85) (some (RemovedBody848_423, 848, 13))

def RemovedBody848_425 : StackLang.HolProg 64 :=
.seq RemovedBody848_405 RemovedBody848_424

def RemovedBody848_426 : StackLang.HolProg 64 :=
.seq RemovedBody848_404 RemovedBody848_425

def RemovedBody848_427 : StackLang.HolProg 64 :=
.seq RemovedBody848_403 RemovedBody848_426

def RemovedBody848_428 : StackLang.HolProg 64 :=
.seq RemovedBody848_374 RemovedBody848_427

def RemovedBody848_429 : StackLang.HolProg 64 :=
.seq RemovedBody848_371 RemovedBody848_428

def RemovedBody848_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_435 : StackLang.HolProg 64 :=
.seq RemovedBody848_433 RemovedBody848_434

def RemovedBody848_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_438 : StackLang.HolProg 64 :=
.seq RemovedBody848_436 RemovedBody848_437

def RemovedBody848_439 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_435 RemovedBody848_438

def RemovedBody848_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def RemovedBody848_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_445 : StackLang.HolProg 64 :=
.seq RemovedBody848_443 RemovedBody848_444

def RemovedBody848_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_448 : StackLang.HolProg 64 :=
.seq RemovedBody848_446 RemovedBody848_447

def RemovedBody848_449 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_445 RemovedBody848_448

def RemovedBody848_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_457 : StackLang.HolProg 64 :=
.seq RemovedBody848_455 RemovedBody848_456

def RemovedBody848_458 : StackLang.HolProg 64 :=
.seq RemovedBody848_454 RemovedBody848_457

def RemovedBody848_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_461 : StackLang.HolProg 64 :=
.seq RemovedBody848_459 RemovedBody848_460

def RemovedBody848_462 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_458 RemovedBody848_461

def RemovedBody848_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody848_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4247#64)

def RemovedBody848_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_471 : StackLang.HolProg 64 :=
.seq RemovedBody848_469 RemovedBody848_470

def RemovedBody848_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_475 : StackLang.HolProg 64 :=
.seq RemovedBody848_473 RemovedBody848_474

def RemovedBody848_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_477 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_475 RemovedBody848_476

def RemovedBody848_478 : StackLang.HolProg 64 :=
.seq RemovedBody848_472 RemovedBody848_477

def RemovedBody848_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 15

def RemovedBody848_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_488 : StackLang.HolProg 64 :=
.seq RemovedBody848_486 RemovedBody848_487

def RemovedBody848_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_490 : StackLang.HolProg 64 :=
.seq RemovedBody848_488 RemovedBody848_489

def RemovedBody848_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_492 : StackLang.HolProg 64 :=
.seq RemovedBody848_490 RemovedBody848_491

def RemovedBody848_493 : StackLang.HolProg 64 :=
.seq RemovedBody848_485 RemovedBody848_492

def RemovedBody848_494 : StackLang.HolProg 64 :=
.seq RemovedBody848_484 RemovedBody848_493

def RemovedBody848_495 : StackLang.HolProg 64 :=
.seq RemovedBody848_483 RemovedBody848_494

def RemovedBody848_496 : StackLang.HolProg 64 :=
.seq RemovedBody848_482 RemovedBody848_495

def RemovedBody848_497 : StackLang.HolProg 64 :=
.seq RemovedBody848_481 RemovedBody848_496

def RemovedBody848_498 : StackLang.HolProg 64 :=
.seq RemovedBody848_480 RemovedBody848_497

def RemovedBody848_499 : StackLang.HolProg 64 :=
.seq RemovedBody848_479 RemovedBody848_498

def RemovedBody848_500 : StackLang.HolProg 64 :=
.seq RemovedBody848_478 RemovedBody848_499

def RemovedBody848_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_509 : StackLang.HolProg 64 :=
.seq RemovedBody848_507 RemovedBody848_508

def RemovedBody848_510 : StackLang.HolProg 64 :=
.seq RemovedBody848_506 RemovedBody848_509

def RemovedBody848_511 : StackLang.HolProg 64 :=
.seq RemovedBody848_505 RemovedBody848_510

def RemovedBody848_512 : StackLang.HolProg 64 :=
.seq RemovedBody848_504 RemovedBody848_511

def RemovedBody848_513 : StackLang.HolProg 64 :=
.seq RemovedBody848_503 RemovedBody848_512

def RemovedBody848_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_515 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_516 : StackLang.HolProg 64 :=
.seq RemovedBody848_514 RemovedBody848_515

def RemovedBody848_517 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_513, 0, 848, 14)) (Sum.inl 80) (some (RemovedBody848_516, 848, 15))

def RemovedBody848_518 : StackLang.HolProg 64 :=
.seq RemovedBody848_502 RemovedBody848_517

def RemovedBody848_519 : StackLang.HolProg 64 :=
.seq RemovedBody848_501 RemovedBody848_518

def RemovedBody848_520 : StackLang.HolProg 64 :=
.seq RemovedBody848_500 RemovedBody848_519

def RemovedBody848_521 : StackLang.HolProg 64 :=
.seq RemovedBody848_471 RemovedBody848_520

def RemovedBody848_522 : StackLang.HolProg 64 :=
.seq RemovedBody848_468 RemovedBody848_521

def RemovedBody848_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody848_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_528 : StackLang.HolProg 64 :=
.seq RemovedBody848_526 RemovedBody848_527

def RemovedBody848_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4248#64)

def RemovedBody848_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_532 : StackLang.HolProg 64 :=
.seq RemovedBody848_530 RemovedBody848_531

def RemovedBody848_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_536 : StackLang.HolProg 64 :=
.seq RemovedBody848_534 RemovedBody848_535

def RemovedBody848_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_538 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_536 RemovedBody848_537

def RemovedBody848_539 : StackLang.HolProg 64 :=
.seq RemovedBody848_533 RemovedBody848_538

def RemovedBody848_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 17

def RemovedBody848_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_549 : StackLang.HolProg 64 :=
.seq RemovedBody848_547 RemovedBody848_548

def RemovedBody848_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_551 : StackLang.HolProg 64 :=
.seq RemovedBody848_549 RemovedBody848_550

def RemovedBody848_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_553 : StackLang.HolProg 64 :=
.seq RemovedBody848_551 RemovedBody848_552

def RemovedBody848_554 : StackLang.HolProg 64 :=
.seq RemovedBody848_546 RemovedBody848_553

def RemovedBody848_555 : StackLang.HolProg 64 :=
.seq RemovedBody848_545 RemovedBody848_554

def RemovedBody848_556 : StackLang.HolProg 64 :=
.seq RemovedBody848_544 RemovedBody848_555

def RemovedBody848_557 : StackLang.HolProg 64 :=
.seq RemovedBody848_543 RemovedBody848_556

def RemovedBody848_558 : StackLang.HolProg 64 :=
.seq RemovedBody848_542 RemovedBody848_557

def RemovedBody848_559 : StackLang.HolProg 64 :=
.seq RemovedBody848_541 RemovedBody848_558

def RemovedBody848_560 : StackLang.HolProg 64 :=
.seq RemovedBody848_540 RemovedBody848_559

def RemovedBody848_561 : StackLang.HolProg 64 :=
.seq RemovedBody848_539 RemovedBody848_560

def RemovedBody848_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_571 : StackLang.HolProg 64 :=
.seq RemovedBody848_569 RemovedBody848_570

def RemovedBody848_572 : StackLang.HolProg 64 :=
.seq RemovedBody848_568 RemovedBody848_571

def RemovedBody848_573 : StackLang.HolProg 64 :=
.seq RemovedBody848_567 RemovedBody848_572

def RemovedBody848_574 : StackLang.HolProg 64 :=
.seq RemovedBody848_566 RemovedBody848_573

def RemovedBody848_575 : StackLang.HolProg 64 :=
.seq RemovedBody848_565 RemovedBody848_574

def RemovedBody848_576 : StackLang.HolProg 64 :=
.seq RemovedBody848_564 RemovedBody848_575

def RemovedBody848_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_579 : StackLang.HolProg 64 :=
.seq RemovedBody848_577 RemovedBody848_578

def RemovedBody848_580 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_581 : StackLang.HolProg 64 :=
.seq RemovedBody848_579 RemovedBody848_580

def RemovedBody848_582 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_576, 0, 848, 16)) (Sum.inl 85) (some (RemovedBody848_581, 848, 17))

def RemovedBody848_583 : StackLang.HolProg 64 :=
.seq RemovedBody848_563 RemovedBody848_582

def RemovedBody848_584 : StackLang.HolProg 64 :=
.seq RemovedBody848_562 RemovedBody848_583

def RemovedBody848_585 : StackLang.HolProg 64 :=
.seq RemovedBody848_561 RemovedBody848_584

def RemovedBody848_586 : StackLang.HolProg 64 :=
.seq RemovedBody848_532 RemovedBody848_585

def RemovedBody848_587 : StackLang.HolProg 64 :=
.seq RemovedBody848_529 RemovedBody848_586

def RemovedBody848_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_593 : StackLang.HolProg 64 :=
.seq RemovedBody848_591 RemovedBody848_592

def RemovedBody848_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_596 : StackLang.HolProg 64 :=
.seq RemovedBody848_594 RemovedBody848_595

def RemovedBody848_597 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_593 RemovedBody848_596

def RemovedBody848_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 320#64)

def RemovedBody848_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_603 : StackLang.HolProg 64 :=
.seq RemovedBody848_601 RemovedBody848_602

def RemovedBody848_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_606 : StackLang.HolProg 64 :=
.seq RemovedBody848_604 RemovedBody848_605

def RemovedBody848_607 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_603 RemovedBody848_606

def RemovedBody848_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_615 : StackLang.HolProg 64 :=
.seq RemovedBody848_613 RemovedBody848_614

def RemovedBody848_616 : StackLang.HolProg 64 :=
.seq RemovedBody848_612 RemovedBody848_615

def RemovedBody848_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_619 : StackLang.HolProg 64 :=
.seq RemovedBody848_617 RemovedBody848_618

def RemovedBody848_620 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_616 RemovedBody848_619

def RemovedBody848_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody848_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4249#64)

def RemovedBody848_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_629 : StackLang.HolProg 64 :=
.seq RemovedBody848_627 RemovedBody848_628

def RemovedBody848_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_633 : StackLang.HolProg 64 :=
.seq RemovedBody848_631 RemovedBody848_632

def RemovedBody848_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_635 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_633 RemovedBody848_634

def RemovedBody848_636 : StackLang.HolProg 64 :=
.seq RemovedBody848_630 RemovedBody848_635

def RemovedBody848_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 19

def RemovedBody848_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_646 : StackLang.HolProg 64 :=
.seq RemovedBody848_644 RemovedBody848_645

def RemovedBody848_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_648 : StackLang.HolProg 64 :=
.seq RemovedBody848_646 RemovedBody848_647

def RemovedBody848_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_650 : StackLang.HolProg 64 :=
.seq RemovedBody848_648 RemovedBody848_649

def RemovedBody848_651 : StackLang.HolProg 64 :=
.seq RemovedBody848_643 RemovedBody848_650

def RemovedBody848_652 : StackLang.HolProg 64 :=
.seq RemovedBody848_642 RemovedBody848_651

def RemovedBody848_653 : StackLang.HolProg 64 :=
.seq RemovedBody848_641 RemovedBody848_652

def RemovedBody848_654 : StackLang.HolProg 64 :=
.seq RemovedBody848_640 RemovedBody848_653

def RemovedBody848_655 : StackLang.HolProg 64 :=
.seq RemovedBody848_639 RemovedBody848_654

def RemovedBody848_656 : StackLang.HolProg 64 :=
.seq RemovedBody848_638 RemovedBody848_655

def RemovedBody848_657 : StackLang.HolProg 64 :=
.seq RemovedBody848_637 RemovedBody848_656

def RemovedBody848_658 : StackLang.HolProg 64 :=
.seq RemovedBody848_636 RemovedBody848_657

def RemovedBody848_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_667 : StackLang.HolProg 64 :=
.seq RemovedBody848_665 RemovedBody848_666

def RemovedBody848_668 : StackLang.HolProg 64 :=
.seq RemovedBody848_664 RemovedBody848_667

def RemovedBody848_669 : StackLang.HolProg 64 :=
.seq RemovedBody848_663 RemovedBody848_668

def RemovedBody848_670 : StackLang.HolProg 64 :=
.seq RemovedBody848_662 RemovedBody848_669

def RemovedBody848_671 : StackLang.HolProg 64 :=
.seq RemovedBody848_661 RemovedBody848_670

def RemovedBody848_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_673 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_674 : StackLang.HolProg 64 :=
.seq RemovedBody848_672 RemovedBody848_673

def RemovedBody848_675 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_671, 0, 848, 18)) (Sum.inl 80) (some (RemovedBody848_674, 848, 19))

def RemovedBody848_676 : StackLang.HolProg 64 :=
.seq RemovedBody848_660 RemovedBody848_675

def RemovedBody848_677 : StackLang.HolProg 64 :=
.seq RemovedBody848_659 RemovedBody848_676

def RemovedBody848_678 : StackLang.HolProg 64 :=
.seq RemovedBody848_658 RemovedBody848_677

def RemovedBody848_679 : StackLang.HolProg 64 :=
.seq RemovedBody848_629 RemovedBody848_678

def RemovedBody848_680 : StackLang.HolProg 64 :=
.seq RemovedBody848_626 RemovedBody848_679

def RemovedBody848_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody848_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_686 : StackLang.HolProg 64 :=
.seq RemovedBody848_684 RemovedBody848_685

def RemovedBody848_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4250#64)

def RemovedBody848_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_690 : StackLang.HolProg 64 :=
.seq RemovedBody848_688 RemovedBody848_689

def RemovedBody848_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_694 : StackLang.HolProg 64 :=
.seq RemovedBody848_692 RemovedBody848_693

def RemovedBody848_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_696 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_694 RemovedBody848_695

def RemovedBody848_697 : StackLang.HolProg 64 :=
.seq RemovedBody848_691 RemovedBody848_696

def RemovedBody848_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 21

def RemovedBody848_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_707 : StackLang.HolProg 64 :=
.seq RemovedBody848_705 RemovedBody848_706

def RemovedBody848_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_709 : StackLang.HolProg 64 :=
.seq RemovedBody848_707 RemovedBody848_708

def RemovedBody848_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_711 : StackLang.HolProg 64 :=
.seq RemovedBody848_709 RemovedBody848_710

def RemovedBody848_712 : StackLang.HolProg 64 :=
.seq RemovedBody848_704 RemovedBody848_711

def RemovedBody848_713 : StackLang.HolProg 64 :=
.seq RemovedBody848_703 RemovedBody848_712

def RemovedBody848_714 : StackLang.HolProg 64 :=
.seq RemovedBody848_702 RemovedBody848_713

def RemovedBody848_715 : StackLang.HolProg 64 :=
.seq RemovedBody848_701 RemovedBody848_714

def RemovedBody848_716 : StackLang.HolProg 64 :=
.seq RemovedBody848_700 RemovedBody848_715

def RemovedBody848_717 : StackLang.HolProg 64 :=
.seq RemovedBody848_699 RemovedBody848_716

def RemovedBody848_718 : StackLang.HolProg 64 :=
.seq RemovedBody848_698 RemovedBody848_717

def RemovedBody848_719 : StackLang.HolProg 64 :=
.seq RemovedBody848_697 RemovedBody848_718

def RemovedBody848_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_729 : StackLang.HolProg 64 :=
.seq RemovedBody848_727 RemovedBody848_728

def RemovedBody848_730 : StackLang.HolProg 64 :=
.seq RemovedBody848_726 RemovedBody848_729

def RemovedBody848_731 : StackLang.HolProg 64 :=
.seq RemovedBody848_725 RemovedBody848_730

def RemovedBody848_732 : StackLang.HolProg 64 :=
.seq RemovedBody848_724 RemovedBody848_731

def RemovedBody848_733 : StackLang.HolProg 64 :=
.seq RemovedBody848_723 RemovedBody848_732

def RemovedBody848_734 : StackLang.HolProg 64 :=
.seq RemovedBody848_722 RemovedBody848_733

def RemovedBody848_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_737 : StackLang.HolProg 64 :=
.seq RemovedBody848_735 RemovedBody848_736

def RemovedBody848_738 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_739 : StackLang.HolProg 64 :=
.seq RemovedBody848_737 RemovedBody848_738

def RemovedBody848_740 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_734, 0, 848, 20)) (Sum.inl 85) (some (RemovedBody848_739, 848, 21))

def RemovedBody848_741 : StackLang.HolProg 64 :=
.seq RemovedBody848_721 RemovedBody848_740

def RemovedBody848_742 : StackLang.HolProg 64 :=
.seq RemovedBody848_720 RemovedBody848_741

def RemovedBody848_743 : StackLang.HolProg 64 :=
.seq RemovedBody848_719 RemovedBody848_742

def RemovedBody848_744 : StackLang.HolProg 64 :=
.seq RemovedBody848_690 RemovedBody848_743

def RemovedBody848_745 : StackLang.HolProg 64 :=
.seq RemovedBody848_687 RemovedBody848_744

def RemovedBody848_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_751 : StackLang.HolProg 64 :=
.seq RemovedBody848_749 RemovedBody848_750

def RemovedBody848_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_754 : StackLang.HolProg 64 :=
.seq RemovedBody848_752 RemovedBody848_753

def RemovedBody848_755 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_751 RemovedBody848_754

def RemovedBody848_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 384#64)

def RemovedBody848_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_761 : StackLang.HolProg 64 :=
.seq RemovedBody848_759 RemovedBody848_760

def RemovedBody848_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_764 : StackLang.HolProg 64 :=
.seq RemovedBody848_762 RemovedBody848_763

def RemovedBody848_765 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_761 RemovedBody848_764

def RemovedBody848_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_773 : StackLang.HolProg 64 :=
.seq RemovedBody848_771 RemovedBody848_772

def RemovedBody848_774 : StackLang.HolProg 64 :=
.seq RemovedBody848_770 RemovedBody848_773

def RemovedBody848_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_777 : StackLang.HolProg 64 :=
.seq RemovedBody848_775 RemovedBody848_776

def RemovedBody848_778 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_774 RemovedBody848_777

def RemovedBody848_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody848_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4251#64)

def RemovedBody848_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_787 : StackLang.HolProg 64 :=
.seq RemovedBody848_785 RemovedBody848_786

def RemovedBody848_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_791 : StackLang.HolProg 64 :=
.seq RemovedBody848_789 RemovedBody848_790

def RemovedBody848_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_793 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_791 RemovedBody848_792

def RemovedBody848_794 : StackLang.HolProg 64 :=
.seq RemovedBody848_788 RemovedBody848_793

def RemovedBody848_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 23

def RemovedBody848_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_804 : StackLang.HolProg 64 :=
.seq RemovedBody848_802 RemovedBody848_803

def RemovedBody848_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_806 : StackLang.HolProg 64 :=
.seq RemovedBody848_804 RemovedBody848_805

def RemovedBody848_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_808 : StackLang.HolProg 64 :=
.seq RemovedBody848_806 RemovedBody848_807

def RemovedBody848_809 : StackLang.HolProg 64 :=
.seq RemovedBody848_801 RemovedBody848_808

def RemovedBody848_810 : StackLang.HolProg 64 :=
.seq RemovedBody848_800 RemovedBody848_809

def RemovedBody848_811 : StackLang.HolProg 64 :=
.seq RemovedBody848_799 RemovedBody848_810

def RemovedBody848_812 : StackLang.HolProg 64 :=
.seq RemovedBody848_798 RemovedBody848_811

def RemovedBody848_813 : StackLang.HolProg 64 :=
.seq RemovedBody848_797 RemovedBody848_812

def RemovedBody848_814 : StackLang.HolProg 64 :=
.seq RemovedBody848_796 RemovedBody848_813

def RemovedBody848_815 : StackLang.HolProg 64 :=
.seq RemovedBody848_795 RemovedBody848_814

def RemovedBody848_816 : StackLang.HolProg 64 :=
.seq RemovedBody848_794 RemovedBody848_815

def RemovedBody848_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_825 : StackLang.HolProg 64 :=
.seq RemovedBody848_823 RemovedBody848_824

def RemovedBody848_826 : StackLang.HolProg 64 :=
.seq RemovedBody848_822 RemovedBody848_825

def RemovedBody848_827 : StackLang.HolProg 64 :=
.seq RemovedBody848_821 RemovedBody848_826

def RemovedBody848_828 : StackLang.HolProg 64 :=
.seq RemovedBody848_820 RemovedBody848_827

def RemovedBody848_829 : StackLang.HolProg 64 :=
.seq RemovedBody848_819 RemovedBody848_828

def RemovedBody848_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_831 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_832 : StackLang.HolProg 64 :=
.seq RemovedBody848_830 RemovedBody848_831

def RemovedBody848_833 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_829, 0, 848, 22)) (Sum.inl 80) (some (RemovedBody848_832, 848, 23))

def RemovedBody848_834 : StackLang.HolProg 64 :=
.seq RemovedBody848_818 RemovedBody848_833

def RemovedBody848_835 : StackLang.HolProg 64 :=
.seq RemovedBody848_817 RemovedBody848_834

def RemovedBody848_836 : StackLang.HolProg 64 :=
.seq RemovedBody848_816 RemovedBody848_835

def RemovedBody848_837 : StackLang.HolProg 64 :=
.seq RemovedBody848_787 RemovedBody848_836

def RemovedBody848_838 : StackLang.HolProg 64 :=
.seq RemovedBody848_784 RemovedBody848_837

def RemovedBody848_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def RemovedBody848_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_844 : StackLang.HolProg 64 :=
.seq RemovedBody848_842 RemovedBody848_843

def RemovedBody848_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4252#64)

def RemovedBody848_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_848 : StackLang.HolProg 64 :=
.seq RemovedBody848_846 RemovedBody848_847

def RemovedBody848_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_852 : StackLang.HolProg 64 :=
.seq RemovedBody848_850 RemovedBody848_851

def RemovedBody848_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_854 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_852 RemovedBody848_853

def RemovedBody848_855 : StackLang.HolProg 64 :=
.seq RemovedBody848_849 RemovedBody848_854

def RemovedBody848_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 25

def RemovedBody848_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_865 : StackLang.HolProg 64 :=
.seq RemovedBody848_863 RemovedBody848_864

def RemovedBody848_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_867 : StackLang.HolProg 64 :=
.seq RemovedBody848_865 RemovedBody848_866

def RemovedBody848_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_869 : StackLang.HolProg 64 :=
.seq RemovedBody848_867 RemovedBody848_868

def RemovedBody848_870 : StackLang.HolProg 64 :=
.seq RemovedBody848_862 RemovedBody848_869

def RemovedBody848_871 : StackLang.HolProg 64 :=
.seq RemovedBody848_861 RemovedBody848_870

def RemovedBody848_872 : StackLang.HolProg 64 :=
.seq RemovedBody848_860 RemovedBody848_871

def RemovedBody848_873 : StackLang.HolProg 64 :=
.seq RemovedBody848_859 RemovedBody848_872

def RemovedBody848_874 : StackLang.HolProg 64 :=
.seq RemovedBody848_858 RemovedBody848_873

def RemovedBody848_875 : StackLang.HolProg 64 :=
.seq RemovedBody848_857 RemovedBody848_874

def RemovedBody848_876 : StackLang.HolProg 64 :=
.seq RemovedBody848_856 RemovedBody848_875

def RemovedBody848_877 : StackLang.HolProg 64 :=
.seq RemovedBody848_855 RemovedBody848_876

def RemovedBody848_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_887 : StackLang.HolProg 64 :=
.seq RemovedBody848_885 RemovedBody848_886

def RemovedBody848_888 : StackLang.HolProg 64 :=
.seq RemovedBody848_884 RemovedBody848_887

def RemovedBody848_889 : StackLang.HolProg 64 :=
.seq RemovedBody848_883 RemovedBody848_888

def RemovedBody848_890 : StackLang.HolProg 64 :=
.seq RemovedBody848_882 RemovedBody848_889

def RemovedBody848_891 : StackLang.HolProg 64 :=
.seq RemovedBody848_881 RemovedBody848_890

def RemovedBody848_892 : StackLang.HolProg 64 :=
.seq RemovedBody848_880 RemovedBody848_891

def RemovedBody848_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_895 : StackLang.HolProg 64 :=
.seq RemovedBody848_893 RemovedBody848_894

def RemovedBody848_896 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_897 : StackLang.HolProg 64 :=
.seq RemovedBody848_895 RemovedBody848_896

def RemovedBody848_898 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_892, 0, 848, 24)) (Sum.inl 85) (some (RemovedBody848_897, 848, 25))

def RemovedBody848_899 : StackLang.HolProg 64 :=
.seq RemovedBody848_879 RemovedBody848_898

def RemovedBody848_900 : StackLang.HolProg 64 :=
.seq RemovedBody848_878 RemovedBody848_899

def RemovedBody848_901 : StackLang.HolProg 64 :=
.seq RemovedBody848_877 RemovedBody848_900

def RemovedBody848_902 : StackLang.HolProg 64 :=
.seq RemovedBody848_848 RemovedBody848_901

def RemovedBody848_903 : StackLang.HolProg 64 :=
.seq RemovedBody848_845 RemovedBody848_902

def RemovedBody848_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_909 : StackLang.HolProg 64 :=
.seq RemovedBody848_907 RemovedBody848_908

def RemovedBody848_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_912 : StackLang.HolProg 64 :=
.seq RemovedBody848_910 RemovedBody848_911

def RemovedBody848_913 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_909 RemovedBody848_912

def RemovedBody848_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 512#64)

def RemovedBody848_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_919 : StackLang.HolProg 64 :=
.seq RemovedBody848_917 RemovedBody848_918

def RemovedBody848_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_922 : StackLang.HolProg 64 :=
.seq RemovedBody848_920 RemovedBody848_921

def RemovedBody848_923 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_919 RemovedBody848_922

def RemovedBody848_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_931 : StackLang.HolProg 64 :=
.seq RemovedBody848_929 RemovedBody848_930

def RemovedBody848_932 : StackLang.HolProg 64 :=
.seq RemovedBody848_928 RemovedBody848_931

def RemovedBody848_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_935 : StackLang.HolProg 64 :=
.seq RemovedBody848_933 RemovedBody848_934

def RemovedBody848_936 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_932 RemovedBody848_935

def RemovedBody848_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody848_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4253#64)

def RemovedBody848_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_945 : StackLang.HolProg 64 :=
.seq RemovedBody848_943 RemovedBody848_944

def RemovedBody848_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_949 : StackLang.HolProg 64 :=
.seq RemovedBody848_947 RemovedBody848_948

def RemovedBody848_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_951 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_949 RemovedBody848_950

def RemovedBody848_952 : StackLang.HolProg 64 :=
.seq RemovedBody848_946 RemovedBody848_951

def RemovedBody848_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 27

def RemovedBody848_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_962 : StackLang.HolProg 64 :=
.seq RemovedBody848_960 RemovedBody848_961

def RemovedBody848_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_964 : StackLang.HolProg 64 :=
.seq RemovedBody848_962 RemovedBody848_963

def RemovedBody848_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_966 : StackLang.HolProg 64 :=
.seq RemovedBody848_964 RemovedBody848_965

def RemovedBody848_967 : StackLang.HolProg 64 :=
.seq RemovedBody848_959 RemovedBody848_966

def RemovedBody848_968 : StackLang.HolProg 64 :=
.seq RemovedBody848_958 RemovedBody848_967

def RemovedBody848_969 : StackLang.HolProg 64 :=
.seq RemovedBody848_957 RemovedBody848_968

def RemovedBody848_970 : StackLang.HolProg 64 :=
.seq RemovedBody848_956 RemovedBody848_969

def RemovedBody848_971 : StackLang.HolProg 64 :=
.seq RemovedBody848_955 RemovedBody848_970

def RemovedBody848_972 : StackLang.HolProg 64 :=
.seq RemovedBody848_954 RemovedBody848_971

def RemovedBody848_973 : StackLang.HolProg 64 :=
.seq RemovedBody848_953 RemovedBody848_972

def RemovedBody848_974 : StackLang.HolProg 64 :=
.seq RemovedBody848_952 RemovedBody848_973

def RemovedBody848_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_983 : StackLang.HolProg 64 :=
.seq RemovedBody848_981 RemovedBody848_982

def RemovedBody848_984 : StackLang.HolProg 64 :=
.seq RemovedBody848_980 RemovedBody848_983

def RemovedBody848_985 : StackLang.HolProg 64 :=
.seq RemovedBody848_979 RemovedBody848_984

def RemovedBody848_986 : StackLang.HolProg 64 :=
.seq RemovedBody848_978 RemovedBody848_985

def RemovedBody848_987 : StackLang.HolProg 64 :=
.seq RemovedBody848_977 RemovedBody848_986

def RemovedBody848_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_989 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_990 : StackLang.HolProg 64 :=
.seq RemovedBody848_988 RemovedBody848_989

def RemovedBody848_991 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_987, 0, 848, 26)) (Sum.inl 80) (some (RemovedBody848_990, 848, 27))

def RemovedBody848_992 : StackLang.HolProg 64 :=
.seq RemovedBody848_976 RemovedBody848_991

def RemovedBody848_993 : StackLang.HolProg 64 :=
.seq RemovedBody848_975 RemovedBody848_992

def RemovedBody848_994 : StackLang.HolProg 64 :=
.seq RemovedBody848_974 RemovedBody848_993

def RemovedBody848_995 : StackLang.HolProg 64 :=
.seq RemovedBody848_945 RemovedBody848_994

def RemovedBody848_996 : StackLang.HolProg 64 :=
.seq RemovedBody848_942 RemovedBody848_995

def RemovedBody848_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def RemovedBody848_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1002 : StackLang.HolProg 64 :=
.seq RemovedBody848_1000 RemovedBody848_1001

def RemovedBody848_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4254#64)

def RemovedBody848_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1006 : StackLang.HolProg 64 :=
.seq RemovedBody848_1004 RemovedBody848_1005

def RemovedBody848_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1010 : StackLang.HolProg 64 :=
.seq RemovedBody848_1008 RemovedBody848_1009

def RemovedBody848_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1012 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1010 RemovedBody848_1011

def RemovedBody848_1013 : StackLang.HolProg 64 :=
.seq RemovedBody848_1007 RemovedBody848_1012

def RemovedBody848_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 29

def RemovedBody848_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1023 : StackLang.HolProg 64 :=
.seq RemovedBody848_1021 RemovedBody848_1022

def RemovedBody848_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1025 : StackLang.HolProg 64 :=
.seq RemovedBody848_1023 RemovedBody848_1024

def RemovedBody848_1026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1027 : StackLang.HolProg 64 :=
.seq RemovedBody848_1025 RemovedBody848_1026

def RemovedBody848_1028 : StackLang.HolProg 64 :=
.seq RemovedBody848_1020 RemovedBody848_1027

def RemovedBody848_1029 : StackLang.HolProg 64 :=
.seq RemovedBody848_1019 RemovedBody848_1028

def RemovedBody848_1030 : StackLang.HolProg 64 :=
.seq RemovedBody848_1018 RemovedBody848_1029

def RemovedBody848_1031 : StackLang.HolProg 64 :=
.seq RemovedBody848_1017 RemovedBody848_1030

def RemovedBody848_1032 : StackLang.HolProg 64 :=
.seq RemovedBody848_1016 RemovedBody848_1031

def RemovedBody848_1033 : StackLang.HolProg 64 :=
.seq RemovedBody848_1015 RemovedBody848_1032

def RemovedBody848_1034 : StackLang.HolProg 64 :=
.seq RemovedBody848_1014 RemovedBody848_1033

def RemovedBody848_1035 : StackLang.HolProg 64 :=
.seq RemovedBody848_1013 RemovedBody848_1034

def RemovedBody848_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1045 : StackLang.HolProg 64 :=
.seq RemovedBody848_1043 RemovedBody848_1044

def RemovedBody848_1046 : StackLang.HolProg 64 :=
.seq RemovedBody848_1042 RemovedBody848_1045

def RemovedBody848_1047 : StackLang.HolProg 64 :=
.seq RemovedBody848_1041 RemovedBody848_1046

def RemovedBody848_1048 : StackLang.HolProg 64 :=
.seq RemovedBody848_1040 RemovedBody848_1047

def RemovedBody848_1049 : StackLang.HolProg 64 :=
.seq RemovedBody848_1039 RemovedBody848_1048

def RemovedBody848_1050 : StackLang.HolProg 64 :=
.seq RemovedBody848_1038 RemovedBody848_1049

def RemovedBody848_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1053 : StackLang.HolProg 64 :=
.seq RemovedBody848_1051 RemovedBody848_1052

def RemovedBody848_1054 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1055 : StackLang.HolProg 64 :=
.seq RemovedBody848_1053 RemovedBody848_1054

def RemovedBody848_1056 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1050, 0, 848, 28)) (Sum.inl 85) (some (RemovedBody848_1055, 848, 29))

def RemovedBody848_1057 : StackLang.HolProg 64 :=
.seq RemovedBody848_1037 RemovedBody848_1056

def RemovedBody848_1058 : StackLang.HolProg 64 :=
.seq RemovedBody848_1036 RemovedBody848_1057

def RemovedBody848_1059 : StackLang.HolProg 64 :=
.seq RemovedBody848_1035 RemovedBody848_1058

def RemovedBody848_1060 : StackLang.HolProg 64 :=
.seq RemovedBody848_1006 RemovedBody848_1059

def RemovedBody848_1061 : StackLang.HolProg 64 :=
.seq RemovedBody848_1003 RemovedBody848_1060

def RemovedBody848_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1067 : StackLang.HolProg 64 :=
.seq RemovedBody848_1065 RemovedBody848_1066

def RemovedBody848_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1070 : StackLang.HolProg 64 :=
.seq RemovedBody848_1068 RemovedBody848_1069

def RemovedBody848_1071 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1067 RemovedBody848_1070

def RemovedBody848_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def RemovedBody848_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1077 : StackLang.HolProg 64 :=
.seq RemovedBody848_1075 RemovedBody848_1076

def RemovedBody848_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1080 : StackLang.HolProg 64 :=
.seq RemovedBody848_1078 RemovedBody848_1079

def RemovedBody848_1081 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1077 RemovedBody848_1080

def RemovedBody848_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_1086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1089 : StackLang.HolProg 64 :=
.seq RemovedBody848_1087 RemovedBody848_1088

def RemovedBody848_1090 : StackLang.HolProg 64 :=
.seq RemovedBody848_1086 RemovedBody848_1089

def RemovedBody848_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1093 : StackLang.HolProg 64 :=
.seq RemovedBody848_1091 RemovedBody848_1092

def RemovedBody848_1094 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1090 RemovedBody848_1093

def RemovedBody848_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 256#64)))

def RemovedBody848_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4255#64)

def RemovedBody848_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1103 : StackLang.HolProg 64 :=
.seq RemovedBody848_1101 RemovedBody848_1102

def RemovedBody848_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1107 : StackLang.HolProg 64 :=
.seq RemovedBody848_1105 RemovedBody848_1106

def RemovedBody848_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1107 RemovedBody848_1108

def RemovedBody848_1110 : StackLang.HolProg 64 :=
.seq RemovedBody848_1104 RemovedBody848_1109

def RemovedBody848_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 31

def RemovedBody848_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1120 : StackLang.HolProg 64 :=
.seq RemovedBody848_1118 RemovedBody848_1119

def RemovedBody848_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1122 : StackLang.HolProg 64 :=
.seq RemovedBody848_1120 RemovedBody848_1121

def RemovedBody848_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1124 : StackLang.HolProg 64 :=
.seq RemovedBody848_1122 RemovedBody848_1123

def RemovedBody848_1125 : StackLang.HolProg 64 :=
.seq RemovedBody848_1117 RemovedBody848_1124

def RemovedBody848_1126 : StackLang.HolProg 64 :=
.seq RemovedBody848_1116 RemovedBody848_1125

def RemovedBody848_1127 : StackLang.HolProg 64 :=
.seq RemovedBody848_1115 RemovedBody848_1126

def RemovedBody848_1128 : StackLang.HolProg 64 :=
.seq RemovedBody848_1114 RemovedBody848_1127

def RemovedBody848_1129 : StackLang.HolProg 64 :=
.seq RemovedBody848_1113 RemovedBody848_1128

def RemovedBody848_1130 : StackLang.HolProg 64 :=
.seq RemovedBody848_1112 RemovedBody848_1129

def RemovedBody848_1131 : StackLang.HolProg 64 :=
.seq RemovedBody848_1111 RemovedBody848_1130

def RemovedBody848_1132 : StackLang.HolProg 64 :=
.seq RemovedBody848_1110 RemovedBody848_1131

def RemovedBody848_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1141 : StackLang.HolProg 64 :=
.seq RemovedBody848_1139 RemovedBody848_1140

def RemovedBody848_1142 : StackLang.HolProg 64 :=
.seq RemovedBody848_1138 RemovedBody848_1141

def RemovedBody848_1143 : StackLang.HolProg 64 :=
.seq RemovedBody848_1137 RemovedBody848_1142

def RemovedBody848_1144 : StackLang.HolProg 64 :=
.seq RemovedBody848_1136 RemovedBody848_1143

def RemovedBody848_1145 : StackLang.HolProg 64 :=
.seq RemovedBody848_1135 RemovedBody848_1144

def RemovedBody848_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1147 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1148 : StackLang.HolProg 64 :=
.seq RemovedBody848_1146 RemovedBody848_1147

def RemovedBody848_1149 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1145, 0, 848, 30)) (Sum.inl 80) (some (RemovedBody848_1148, 848, 31))

def RemovedBody848_1150 : StackLang.HolProg 64 :=
.seq RemovedBody848_1134 RemovedBody848_1149

def RemovedBody848_1151 : StackLang.HolProg 64 :=
.seq RemovedBody848_1133 RemovedBody848_1150

def RemovedBody848_1152 : StackLang.HolProg 64 :=
.seq RemovedBody848_1132 RemovedBody848_1151

def RemovedBody848_1153 : StackLang.HolProg 64 :=
.seq RemovedBody848_1103 RemovedBody848_1152

def RemovedBody848_1154 : StackLang.HolProg 64 :=
.seq RemovedBody848_1100 RemovedBody848_1153

def RemovedBody848_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 280#64)))

def RemovedBody848_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1160 : StackLang.HolProg 64 :=
.seq RemovedBody848_1158 RemovedBody848_1159

def RemovedBody848_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4256#64)

def RemovedBody848_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1164 : StackLang.HolProg 64 :=
.seq RemovedBody848_1162 RemovedBody848_1163

def RemovedBody848_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1168 : StackLang.HolProg 64 :=
.seq RemovedBody848_1166 RemovedBody848_1167

def RemovedBody848_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1168 RemovedBody848_1169

def RemovedBody848_1171 : StackLang.HolProg 64 :=
.seq RemovedBody848_1165 RemovedBody848_1170

def RemovedBody848_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 33

def RemovedBody848_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1181 : StackLang.HolProg 64 :=
.seq RemovedBody848_1179 RemovedBody848_1180

def RemovedBody848_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1183 : StackLang.HolProg 64 :=
.seq RemovedBody848_1181 RemovedBody848_1182

def RemovedBody848_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1185 : StackLang.HolProg 64 :=
.seq RemovedBody848_1183 RemovedBody848_1184

def RemovedBody848_1186 : StackLang.HolProg 64 :=
.seq RemovedBody848_1178 RemovedBody848_1185

def RemovedBody848_1187 : StackLang.HolProg 64 :=
.seq RemovedBody848_1177 RemovedBody848_1186

def RemovedBody848_1188 : StackLang.HolProg 64 :=
.seq RemovedBody848_1176 RemovedBody848_1187

def RemovedBody848_1189 : StackLang.HolProg 64 :=
.seq RemovedBody848_1175 RemovedBody848_1188

def RemovedBody848_1190 : StackLang.HolProg 64 :=
.seq RemovedBody848_1174 RemovedBody848_1189

def RemovedBody848_1191 : StackLang.HolProg 64 :=
.seq RemovedBody848_1173 RemovedBody848_1190

def RemovedBody848_1192 : StackLang.HolProg 64 :=
.seq RemovedBody848_1172 RemovedBody848_1191

def RemovedBody848_1193 : StackLang.HolProg 64 :=
.seq RemovedBody848_1171 RemovedBody848_1192

def RemovedBody848_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1203 : StackLang.HolProg 64 :=
.seq RemovedBody848_1201 RemovedBody848_1202

def RemovedBody848_1204 : StackLang.HolProg 64 :=
.seq RemovedBody848_1200 RemovedBody848_1203

def RemovedBody848_1205 : StackLang.HolProg 64 :=
.seq RemovedBody848_1199 RemovedBody848_1204

def RemovedBody848_1206 : StackLang.HolProg 64 :=
.seq RemovedBody848_1198 RemovedBody848_1205

def RemovedBody848_1207 : StackLang.HolProg 64 :=
.seq RemovedBody848_1197 RemovedBody848_1206

def RemovedBody848_1208 : StackLang.HolProg 64 :=
.seq RemovedBody848_1196 RemovedBody848_1207

def RemovedBody848_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1211 : StackLang.HolProg 64 :=
.seq RemovedBody848_1209 RemovedBody848_1210

def RemovedBody848_1212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1213 : StackLang.HolProg 64 :=
.seq RemovedBody848_1211 RemovedBody848_1212

def RemovedBody848_1214 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1208, 0, 848, 32)) (Sum.inl 85) (some (RemovedBody848_1213, 848, 33))

def RemovedBody848_1215 : StackLang.HolProg 64 :=
.seq RemovedBody848_1195 RemovedBody848_1214

def RemovedBody848_1216 : StackLang.HolProg 64 :=
.seq RemovedBody848_1194 RemovedBody848_1215

def RemovedBody848_1217 : StackLang.HolProg 64 :=
.seq RemovedBody848_1193 RemovedBody848_1216

def RemovedBody848_1218 : StackLang.HolProg 64 :=
.seq RemovedBody848_1164 RemovedBody848_1217

def RemovedBody848_1219 : StackLang.HolProg 64 :=
.seq RemovedBody848_1161 RemovedBody848_1218

def RemovedBody848_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1225 : StackLang.HolProg 64 :=
.seq RemovedBody848_1223 RemovedBody848_1224

def RemovedBody848_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1228 : StackLang.HolProg 64 :=
.seq RemovedBody848_1226 RemovedBody848_1227

def RemovedBody848_1229 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1225 RemovedBody848_1228

def RemovedBody848_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody848_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1235 : StackLang.HolProg 64 :=
.seq RemovedBody848_1233 RemovedBody848_1234

def RemovedBody848_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1238 : StackLang.HolProg 64 :=
.seq RemovedBody848_1236 RemovedBody848_1237

def RemovedBody848_1239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1235 RemovedBody848_1238

def RemovedBody848_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1247 : StackLang.HolProg 64 :=
.seq RemovedBody848_1245 RemovedBody848_1246

def RemovedBody848_1248 : StackLang.HolProg 64 :=
.seq RemovedBody848_1244 RemovedBody848_1247

def RemovedBody848_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1251 : StackLang.HolProg 64 :=
.seq RemovedBody848_1249 RemovedBody848_1250

def RemovedBody848_1252 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1248 RemovedBody848_1251

def RemovedBody848_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 320#64)))

def RemovedBody848_1256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4257#64)

def RemovedBody848_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1261 : StackLang.HolProg 64 :=
.seq RemovedBody848_1259 RemovedBody848_1260

def RemovedBody848_1262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1265 : StackLang.HolProg 64 :=
.seq RemovedBody848_1263 RemovedBody848_1264

def RemovedBody848_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1265 RemovedBody848_1266

def RemovedBody848_1268 : StackLang.HolProg 64 :=
.seq RemovedBody848_1262 RemovedBody848_1267

def RemovedBody848_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 35

def RemovedBody848_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1278 : StackLang.HolProg 64 :=
.seq RemovedBody848_1276 RemovedBody848_1277

def RemovedBody848_1279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1280 : StackLang.HolProg 64 :=
.seq RemovedBody848_1278 RemovedBody848_1279

def RemovedBody848_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1282 : StackLang.HolProg 64 :=
.seq RemovedBody848_1280 RemovedBody848_1281

def RemovedBody848_1283 : StackLang.HolProg 64 :=
.seq RemovedBody848_1275 RemovedBody848_1282

def RemovedBody848_1284 : StackLang.HolProg 64 :=
.seq RemovedBody848_1274 RemovedBody848_1283

def RemovedBody848_1285 : StackLang.HolProg 64 :=
.seq RemovedBody848_1273 RemovedBody848_1284

def RemovedBody848_1286 : StackLang.HolProg 64 :=
.seq RemovedBody848_1272 RemovedBody848_1285

def RemovedBody848_1287 : StackLang.HolProg 64 :=
.seq RemovedBody848_1271 RemovedBody848_1286

def RemovedBody848_1288 : StackLang.HolProg 64 :=
.seq RemovedBody848_1270 RemovedBody848_1287

def RemovedBody848_1289 : StackLang.HolProg 64 :=
.seq RemovedBody848_1269 RemovedBody848_1288

def RemovedBody848_1290 : StackLang.HolProg 64 :=
.seq RemovedBody848_1268 RemovedBody848_1289

def RemovedBody848_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1299 : StackLang.HolProg 64 :=
.seq RemovedBody848_1297 RemovedBody848_1298

def RemovedBody848_1300 : StackLang.HolProg 64 :=
.seq RemovedBody848_1296 RemovedBody848_1299

def RemovedBody848_1301 : StackLang.HolProg 64 :=
.seq RemovedBody848_1295 RemovedBody848_1300

def RemovedBody848_1302 : StackLang.HolProg 64 :=
.seq RemovedBody848_1294 RemovedBody848_1301

def RemovedBody848_1303 : StackLang.HolProg 64 :=
.seq RemovedBody848_1293 RemovedBody848_1302

def RemovedBody848_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1305 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1306 : StackLang.HolProg 64 :=
.seq RemovedBody848_1304 RemovedBody848_1305

def RemovedBody848_1307 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1303, 0, 848, 34)) (Sum.inl 80) (some (RemovedBody848_1306, 848, 35))

def RemovedBody848_1308 : StackLang.HolProg 64 :=
.seq RemovedBody848_1292 RemovedBody848_1307

def RemovedBody848_1309 : StackLang.HolProg 64 :=
.seq RemovedBody848_1291 RemovedBody848_1308

def RemovedBody848_1310 : StackLang.HolProg 64 :=
.seq RemovedBody848_1290 RemovedBody848_1309

def RemovedBody848_1311 : StackLang.HolProg 64 :=
.seq RemovedBody848_1261 RemovedBody848_1310

def RemovedBody848_1312 : StackLang.HolProg 64 :=
.seq RemovedBody848_1258 RemovedBody848_1311

def RemovedBody848_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 344#64)))

def RemovedBody848_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1318 : StackLang.HolProg 64 :=
.seq RemovedBody848_1316 RemovedBody848_1317

def RemovedBody848_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4258#64)

def RemovedBody848_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1322 : StackLang.HolProg 64 :=
.seq RemovedBody848_1320 RemovedBody848_1321

def RemovedBody848_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1326 : StackLang.HolProg 64 :=
.seq RemovedBody848_1324 RemovedBody848_1325

def RemovedBody848_1327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1326 RemovedBody848_1327

def RemovedBody848_1329 : StackLang.HolProg 64 :=
.seq RemovedBody848_1323 RemovedBody848_1328

def RemovedBody848_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 37

def RemovedBody848_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1339 : StackLang.HolProg 64 :=
.seq RemovedBody848_1337 RemovedBody848_1338

def RemovedBody848_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1341 : StackLang.HolProg 64 :=
.seq RemovedBody848_1339 RemovedBody848_1340

def RemovedBody848_1342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1343 : StackLang.HolProg 64 :=
.seq RemovedBody848_1341 RemovedBody848_1342

def RemovedBody848_1344 : StackLang.HolProg 64 :=
.seq RemovedBody848_1336 RemovedBody848_1343

def RemovedBody848_1345 : StackLang.HolProg 64 :=
.seq RemovedBody848_1335 RemovedBody848_1344

def RemovedBody848_1346 : StackLang.HolProg 64 :=
.seq RemovedBody848_1334 RemovedBody848_1345

def RemovedBody848_1347 : StackLang.HolProg 64 :=
.seq RemovedBody848_1333 RemovedBody848_1346

def RemovedBody848_1348 : StackLang.HolProg 64 :=
.seq RemovedBody848_1332 RemovedBody848_1347

def RemovedBody848_1349 : StackLang.HolProg 64 :=
.seq RemovedBody848_1331 RemovedBody848_1348

def RemovedBody848_1350 : StackLang.HolProg 64 :=
.seq RemovedBody848_1330 RemovedBody848_1349

def RemovedBody848_1351 : StackLang.HolProg 64 :=
.seq RemovedBody848_1329 RemovedBody848_1350

def RemovedBody848_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1361 : StackLang.HolProg 64 :=
.seq RemovedBody848_1359 RemovedBody848_1360

def RemovedBody848_1362 : StackLang.HolProg 64 :=
.seq RemovedBody848_1358 RemovedBody848_1361

def RemovedBody848_1363 : StackLang.HolProg 64 :=
.seq RemovedBody848_1357 RemovedBody848_1362

def RemovedBody848_1364 : StackLang.HolProg 64 :=
.seq RemovedBody848_1356 RemovedBody848_1363

def RemovedBody848_1365 : StackLang.HolProg 64 :=
.seq RemovedBody848_1355 RemovedBody848_1364

def RemovedBody848_1366 : StackLang.HolProg 64 :=
.seq RemovedBody848_1354 RemovedBody848_1365

def RemovedBody848_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1369 : StackLang.HolProg 64 :=
.seq RemovedBody848_1367 RemovedBody848_1368

def RemovedBody848_1370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1371 : StackLang.HolProg 64 :=
.seq RemovedBody848_1369 RemovedBody848_1370

def RemovedBody848_1372 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1366, 0, 848, 36)) (Sum.inl 85) (some (RemovedBody848_1371, 848, 37))

def RemovedBody848_1373 : StackLang.HolProg 64 :=
.seq RemovedBody848_1353 RemovedBody848_1372

def RemovedBody848_1374 : StackLang.HolProg 64 :=
.seq RemovedBody848_1352 RemovedBody848_1373

def RemovedBody848_1375 : StackLang.HolProg 64 :=
.seq RemovedBody848_1351 RemovedBody848_1374

def RemovedBody848_1376 : StackLang.HolProg 64 :=
.seq RemovedBody848_1322 RemovedBody848_1375

def RemovedBody848_1377 : StackLang.HolProg 64 :=
.seq RemovedBody848_1319 RemovedBody848_1376

def RemovedBody848_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1383 : StackLang.HolProg 64 :=
.seq RemovedBody848_1381 RemovedBody848_1382

def RemovedBody848_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_1385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1386 : StackLang.HolProg 64 :=
.seq RemovedBody848_1384 RemovedBody848_1385

def RemovedBody848_1387 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1383 RemovedBody848_1386

def RemovedBody848_1388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody848_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1393 : StackLang.HolProg 64 :=
.seq RemovedBody848_1391 RemovedBody848_1392

def RemovedBody848_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1396 : StackLang.HolProg 64 :=
.seq RemovedBody848_1394 RemovedBody848_1395

def RemovedBody848_1397 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1393 RemovedBody848_1396

def RemovedBody848_1398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_1400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1405 : StackLang.HolProg 64 :=
.seq RemovedBody848_1403 RemovedBody848_1404

def RemovedBody848_1406 : StackLang.HolProg 64 :=
.seq RemovedBody848_1402 RemovedBody848_1405

def RemovedBody848_1407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1409 : StackLang.HolProg 64 :=
.seq RemovedBody848_1407 RemovedBody848_1408

def RemovedBody848_1410 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1406 RemovedBody848_1409

def RemovedBody848_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def RemovedBody848_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4259#64)

def RemovedBody848_1418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1419 : StackLang.HolProg 64 :=
.seq RemovedBody848_1417 RemovedBody848_1418

def RemovedBody848_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1423 : StackLang.HolProg 64 :=
.seq RemovedBody848_1421 RemovedBody848_1422

def RemovedBody848_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1423 RemovedBody848_1424

def RemovedBody848_1426 : StackLang.HolProg 64 :=
.seq RemovedBody848_1420 RemovedBody848_1425

def RemovedBody848_1427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 39

def RemovedBody848_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1436 : StackLang.HolProg 64 :=
.seq RemovedBody848_1434 RemovedBody848_1435

def RemovedBody848_1437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1438 : StackLang.HolProg 64 :=
.seq RemovedBody848_1436 RemovedBody848_1437

def RemovedBody848_1439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1440 : StackLang.HolProg 64 :=
.seq RemovedBody848_1438 RemovedBody848_1439

def RemovedBody848_1441 : StackLang.HolProg 64 :=
.seq RemovedBody848_1433 RemovedBody848_1440

def RemovedBody848_1442 : StackLang.HolProg 64 :=
.seq RemovedBody848_1432 RemovedBody848_1441

def RemovedBody848_1443 : StackLang.HolProg 64 :=
.seq RemovedBody848_1431 RemovedBody848_1442

def RemovedBody848_1444 : StackLang.HolProg 64 :=
.seq RemovedBody848_1430 RemovedBody848_1443

def RemovedBody848_1445 : StackLang.HolProg 64 :=
.seq RemovedBody848_1429 RemovedBody848_1444

def RemovedBody848_1446 : StackLang.HolProg 64 :=
.seq RemovedBody848_1428 RemovedBody848_1445

def RemovedBody848_1447 : StackLang.HolProg 64 :=
.seq RemovedBody848_1427 RemovedBody848_1446

def RemovedBody848_1448 : StackLang.HolProg 64 :=
.seq RemovedBody848_1426 RemovedBody848_1447

def RemovedBody848_1449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1457 : StackLang.HolProg 64 :=
.seq RemovedBody848_1455 RemovedBody848_1456

def RemovedBody848_1458 : StackLang.HolProg 64 :=
.seq RemovedBody848_1454 RemovedBody848_1457

def RemovedBody848_1459 : StackLang.HolProg 64 :=
.seq RemovedBody848_1453 RemovedBody848_1458

def RemovedBody848_1460 : StackLang.HolProg 64 :=
.seq RemovedBody848_1452 RemovedBody848_1459

def RemovedBody848_1461 : StackLang.HolProg 64 :=
.seq RemovedBody848_1451 RemovedBody848_1460

def RemovedBody848_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1463 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1464 : StackLang.HolProg 64 :=
.seq RemovedBody848_1462 RemovedBody848_1463

def RemovedBody848_1465 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1461, 0, 848, 38)) (Sum.inl 80) (some (RemovedBody848_1464, 848, 39))

def RemovedBody848_1466 : StackLang.HolProg 64 :=
.seq RemovedBody848_1450 RemovedBody848_1465

def RemovedBody848_1467 : StackLang.HolProg 64 :=
.seq RemovedBody848_1449 RemovedBody848_1466

def RemovedBody848_1468 : StackLang.HolProg 64 :=
.seq RemovedBody848_1448 RemovedBody848_1467

def RemovedBody848_1469 : StackLang.HolProg 64 :=
.seq RemovedBody848_1419 RemovedBody848_1468

def RemovedBody848_1470 : StackLang.HolProg 64 :=
.seq RemovedBody848_1416 RemovedBody848_1469

def RemovedBody848_1471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 408#64)))

def RemovedBody848_1474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1476 : StackLang.HolProg 64 :=
.seq RemovedBody848_1474 RemovedBody848_1475

def RemovedBody848_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4260#64)

def RemovedBody848_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1480 : StackLang.HolProg 64 :=
.seq RemovedBody848_1478 RemovedBody848_1479

def RemovedBody848_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1484 : StackLang.HolProg 64 :=
.seq RemovedBody848_1482 RemovedBody848_1483

def RemovedBody848_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1486 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1484 RemovedBody848_1485

def RemovedBody848_1487 : StackLang.HolProg 64 :=
.seq RemovedBody848_1481 RemovedBody848_1486

def RemovedBody848_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 41

def RemovedBody848_1491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1497 : StackLang.HolProg 64 :=
.seq RemovedBody848_1495 RemovedBody848_1496

def RemovedBody848_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1499 : StackLang.HolProg 64 :=
.seq RemovedBody848_1497 RemovedBody848_1498

def RemovedBody848_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1501 : StackLang.HolProg 64 :=
.seq RemovedBody848_1499 RemovedBody848_1500

def RemovedBody848_1502 : StackLang.HolProg 64 :=
.seq RemovedBody848_1494 RemovedBody848_1501

def RemovedBody848_1503 : StackLang.HolProg 64 :=
.seq RemovedBody848_1493 RemovedBody848_1502

def RemovedBody848_1504 : StackLang.HolProg 64 :=
.seq RemovedBody848_1492 RemovedBody848_1503

def RemovedBody848_1505 : StackLang.HolProg 64 :=
.seq RemovedBody848_1491 RemovedBody848_1504

def RemovedBody848_1506 : StackLang.HolProg 64 :=
.seq RemovedBody848_1490 RemovedBody848_1505

def RemovedBody848_1507 : StackLang.HolProg 64 :=
.seq RemovedBody848_1489 RemovedBody848_1506

def RemovedBody848_1508 : StackLang.HolProg 64 :=
.seq RemovedBody848_1488 RemovedBody848_1507

def RemovedBody848_1509 : StackLang.HolProg 64 :=
.seq RemovedBody848_1487 RemovedBody848_1508

def RemovedBody848_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1519 : StackLang.HolProg 64 :=
.seq RemovedBody848_1517 RemovedBody848_1518

def RemovedBody848_1520 : StackLang.HolProg 64 :=
.seq RemovedBody848_1516 RemovedBody848_1519

def RemovedBody848_1521 : StackLang.HolProg 64 :=
.seq RemovedBody848_1515 RemovedBody848_1520

def RemovedBody848_1522 : StackLang.HolProg 64 :=
.seq RemovedBody848_1514 RemovedBody848_1521

def RemovedBody848_1523 : StackLang.HolProg 64 :=
.seq RemovedBody848_1513 RemovedBody848_1522

def RemovedBody848_1524 : StackLang.HolProg 64 :=
.seq RemovedBody848_1512 RemovedBody848_1523

def RemovedBody848_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1527 : StackLang.HolProg 64 :=
.seq RemovedBody848_1525 RemovedBody848_1526

def RemovedBody848_1528 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1529 : StackLang.HolProg 64 :=
.seq RemovedBody848_1527 RemovedBody848_1528

def RemovedBody848_1530 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1524, 0, 848, 40)) (Sum.inl 85) (some (RemovedBody848_1529, 848, 41))

def RemovedBody848_1531 : StackLang.HolProg 64 :=
.seq RemovedBody848_1511 RemovedBody848_1530

def RemovedBody848_1532 : StackLang.HolProg 64 :=
.seq RemovedBody848_1510 RemovedBody848_1531

def RemovedBody848_1533 : StackLang.HolProg 64 :=
.seq RemovedBody848_1509 RemovedBody848_1532

def RemovedBody848_1534 : StackLang.HolProg 64 :=
.seq RemovedBody848_1480 RemovedBody848_1533

def RemovedBody848_1535 : StackLang.HolProg 64 :=
.seq RemovedBody848_1477 RemovedBody848_1534

def RemovedBody848_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody848_1540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1541 : StackLang.HolProg 64 :=
.seq RemovedBody848_1539 RemovedBody848_1540

def RemovedBody848_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1544 : StackLang.HolProg 64 :=
.seq RemovedBody848_1542 RemovedBody848_1543

def RemovedBody848_1545 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1541 RemovedBody848_1544

def RemovedBody848_1546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody848_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_1550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1551 : StackLang.HolProg 64 :=
.seq RemovedBody848_1549 RemovedBody848_1550

def RemovedBody848_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1554 : StackLang.HolProg 64 :=
.seq RemovedBody848_1552 RemovedBody848_1553

def RemovedBody848_1555 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1551 RemovedBody848_1554

def RemovedBody848_1556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody848_1558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_1560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1563 : StackLang.HolProg 64 :=
.seq RemovedBody848_1561 RemovedBody848_1562

def RemovedBody848_1564 : StackLang.HolProg 64 :=
.seq RemovedBody848_1560 RemovedBody848_1563

def RemovedBody848_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1567 : StackLang.HolProg 64 :=
.seq RemovedBody848_1565 RemovedBody848_1566

def RemovedBody848_1568 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1564 RemovedBody848_1567

def RemovedBody848_1569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 512#64)))

def RemovedBody848_1572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody848_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4261#64)

def RemovedBody848_1576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1577 : StackLang.HolProg 64 :=
.seq RemovedBody848_1575 RemovedBody848_1576

def RemovedBody848_1578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1581 : StackLang.HolProg 64 :=
.seq RemovedBody848_1579 RemovedBody848_1580

def RemovedBody848_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1583 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1581 RemovedBody848_1582

def RemovedBody848_1584 : StackLang.HolProg 64 :=
.seq RemovedBody848_1578 RemovedBody848_1583

def RemovedBody848_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 43

def RemovedBody848_1588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1594 : StackLang.HolProg 64 :=
.seq RemovedBody848_1592 RemovedBody848_1593

def RemovedBody848_1595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1596 : StackLang.HolProg 64 :=
.seq RemovedBody848_1594 RemovedBody848_1595

def RemovedBody848_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1598 : StackLang.HolProg 64 :=
.seq RemovedBody848_1596 RemovedBody848_1597

def RemovedBody848_1599 : StackLang.HolProg 64 :=
.seq RemovedBody848_1591 RemovedBody848_1598

def RemovedBody848_1600 : StackLang.HolProg 64 :=
.seq RemovedBody848_1590 RemovedBody848_1599

def RemovedBody848_1601 : StackLang.HolProg 64 :=
.seq RemovedBody848_1589 RemovedBody848_1600

def RemovedBody848_1602 : StackLang.HolProg 64 :=
.seq RemovedBody848_1588 RemovedBody848_1601

def RemovedBody848_1603 : StackLang.HolProg 64 :=
.seq RemovedBody848_1587 RemovedBody848_1602

def RemovedBody848_1604 : StackLang.HolProg 64 :=
.seq RemovedBody848_1586 RemovedBody848_1603

def RemovedBody848_1605 : StackLang.HolProg 64 :=
.seq RemovedBody848_1585 RemovedBody848_1604

def RemovedBody848_1606 : StackLang.HolProg 64 :=
.seq RemovedBody848_1584 RemovedBody848_1605

def RemovedBody848_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1615 : StackLang.HolProg 64 :=
.seq RemovedBody848_1613 RemovedBody848_1614

def RemovedBody848_1616 : StackLang.HolProg 64 :=
.seq RemovedBody848_1612 RemovedBody848_1615

def RemovedBody848_1617 : StackLang.HolProg 64 :=
.seq RemovedBody848_1611 RemovedBody848_1616

def RemovedBody848_1618 : StackLang.HolProg 64 :=
.seq RemovedBody848_1610 RemovedBody848_1617

def RemovedBody848_1619 : StackLang.HolProg 64 :=
.seq RemovedBody848_1609 RemovedBody848_1618

def RemovedBody848_1620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1621 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1622 : StackLang.HolProg 64 :=
.seq RemovedBody848_1620 RemovedBody848_1621

def RemovedBody848_1623 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1619, 0, 848, 42)) (Sum.inl 80) (some (RemovedBody848_1622, 848, 43))

def RemovedBody848_1624 : StackLang.HolProg 64 :=
.seq RemovedBody848_1608 RemovedBody848_1623

def RemovedBody848_1625 : StackLang.HolProg 64 :=
.seq RemovedBody848_1607 RemovedBody848_1624

def RemovedBody848_1626 : StackLang.HolProg 64 :=
.seq RemovedBody848_1606 RemovedBody848_1625

def RemovedBody848_1627 : StackLang.HolProg 64 :=
.seq RemovedBody848_1577 RemovedBody848_1626

def RemovedBody848_1628 : StackLang.HolProg 64 :=
.seq RemovedBody848_1574 RemovedBody848_1627

def RemovedBody848_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 536#64)))

def RemovedBody848_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1634 : StackLang.HolProg 64 :=
.seq RemovedBody848_1632 RemovedBody848_1633

def RemovedBody848_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4262#64)

def RemovedBody848_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1638 : StackLang.HolProg 64 :=
.seq RemovedBody848_1636 RemovedBody848_1637

def RemovedBody848_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1642 : StackLang.HolProg 64 :=
.seq RemovedBody848_1640 RemovedBody848_1641

def RemovedBody848_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1644 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1642 RemovedBody848_1643

def RemovedBody848_1645 : StackLang.HolProg 64 :=
.seq RemovedBody848_1639 RemovedBody848_1644

def RemovedBody848_1646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 45

def RemovedBody848_1649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1655 : StackLang.HolProg 64 :=
.seq RemovedBody848_1653 RemovedBody848_1654

def RemovedBody848_1656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1657 : StackLang.HolProg 64 :=
.seq RemovedBody848_1655 RemovedBody848_1656

def RemovedBody848_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1659 : StackLang.HolProg 64 :=
.seq RemovedBody848_1657 RemovedBody848_1658

def RemovedBody848_1660 : StackLang.HolProg 64 :=
.seq RemovedBody848_1652 RemovedBody848_1659

def RemovedBody848_1661 : StackLang.HolProg 64 :=
.seq RemovedBody848_1651 RemovedBody848_1660

def RemovedBody848_1662 : StackLang.HolProg 64 :=
.seq RemovedBody848_1650 RemovedBody848_1661

def RemovedBody848_1663 : StackLang.HolProg 64 :=
.seq RemovedBody848_1649 RemovedBody848_1662

def RemovedBody848_1664 : StackLang.HolProg 64 :=
.seq RemovedBody848_1648 RemovedBody848_1663

def RemovedBody848_1665 : StackLang.HolProg 64 :=
.seq RemovedBody848_1647 RemovedBody848_1664

def RemovedBody848_1666 : StackLang.HolProg 64 :=
.seq RemovedBody848_1646 RemovedBody848_1665

def RemovedBody848_1667 : StackLang.HolProg 64 :=
.seq RemovedBody848_1645 RemovedBody848_1666

def RemovedBody848_1668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1679 : StackLang.HolProg 64 :=
.seq RemovedBody848_1677 RemovedBody848_1678

def RemovedBody848_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1682 : StackLang.HolProg 64 :=
.seq RemovedBody848_1680 RemovedBody848_1681

def RemovedBody848_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1685 : StackLang.HolProg 64 :=
.seq RemovedBody848_1683 RemovedBody848_1684

def RemovedBody848_1686 : StackLang.HolProg 64 :=
.seq RemovedBody848_1682 RemovedBody848_1685

def RemovedBody848_1687 : StackLang.HolProg 64 :=
.seq RemovedBody848_1679 RemovedBody848_1686

def RemovedBody848_1688 : StackLang.HolProg 64 :=
.seq RemovedBody848_1676 RemovedBody848_1687

def RemovedBody848_1689 : StackLang.HolProg 64 :=
.seq RemovedBody848_1675 RemovedBody848_1688

def RemovedBody848_1690 : StackLang.HolProg 64 :=
.seq RemovedBody848_1674 RemovedBody848_1689

def RemovedBody848_1691 : StackLang.HolProg 64 :=
.seq RemovedBody848_1673 RemovedBody848_1690

def RemovedBody848_1692 : StackLang.HolProg 64 :=
.seq RemovedBody848_1672 RemovedBody848_1691

def RemovedBody848_1693 : StackLang.HolProg 64 :=
.seq RemovedBody848_1671 RemovedBody848_1692

def RemovedBody848_1694 : StackLang.HolProg 64 :=
.seq RemovedBody848_1670 RemovedBody848_1693

def RemovedBody848_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1699 : StackLang.HolProg 64 :=
.seq RemovedBody848_1697 RemovedBody848_1698

def RemovedBody848_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1702 : StackLang.HolProg 64 :=
.seq RemovedBody848_1700 RemovedBody848_1701

def RemovedBody848_1703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1705 : StackLang.HolProg 64 :=
.seq RemovedBody848_1703 RemovedBody848_1704

def RemovedBody848_1706 : StackLang.HolProg 64 :=
.seq RemovedBody848_1702 RemovedBody848_1705

def RemovedBody848_1707 : StackLang.HolProg 64 :=
.seq RemovedBody848_1699 RemovedBody848_1706

def RemovedBody848_1708 : StackLang.HolProg 64 :=
.seq RemovedBody848_1696 RemovedBody848_1707

def RemovedBody848_1709 : StackLang.HolProg 64 :=
.seq RemovedBody848_1695 RemovedBody848_1708

def RemovedBody848_1710 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1711 : StackLang.HolProg 64 :=
.seq RemovedBody848_1709 RemovedBody848_1710

def RemovedBody848_1712 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1694, 0, 848, 44)) (Sum.inl 85) (some (RemovedBody848_1711, 848, 45))

def RemovedBody848_1713 : StackLang.HolProg 64 :=
.seq RemovedBody848_1669 RemovedBody848_1712

def RemovedBody848_1714 : StackLang.HolProg 64 :=
.seq RemovedBody848_1668 RemovedBody848_1713

def RemovedBody848_1715 : StackLang.HolProg 64 :=
.seq RemovedBody848_1667 RemovedBody848_1714

def RemovedBody848_1716 : StackLang.HolProg 64 :=
.seq RemovedBody848_1638 RemovedBody848_1715

def RemovedBody848_1717 : StackLang.HolProg 64 :=
.seq RemovedBody848_1635 RemovedBody848_1716

def RemovedBody848_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody848_1722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1723 : StackLang.HolProg 64 :=
.seq RemovedBody848_1721 RemovedBody848_1722

def RemovedBody848_1724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1726 : StackLang.HolProg 64 :=
.seq RemovedBody848_1724 RemovedBody848_1725

def RemovedBody848_1727 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1723 RemovedBody848_1726

def RemovedBody848_1728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def RemovedBody848_1731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody848_1732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1733 : StackLang.HolProg 64 :=
.seq RemovedBody848_1731 RemovedBody848_1732

def RemovedBody848_1734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody848_1735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1736 : StackLang.HolProg 64 :=
.seq RemovedBody848_1734 RemovedBody848_1735

def RemovedBody848_1737 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody848_1733 RemovedBody848_1736

def RemovedBody848_1738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody848_1740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody848_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody848_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1745 : StackLang.HolProg 64 :=
.seq RemovedBody848_1743 RemovedBody848_1744

def RemovedBody848_1746 : StackLang.HolProg 64 :=
.seq RemovedBody848_1742 RemovedBody848_1745

def RemovedBody848_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1749 : StackLang.HolProg 64 :=
.seq RemovedBody848_1747 RemovedBody848_1748

def RemovedBody848_1750 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody848_1746 RemovedBody848_1749

def RemovedBody848_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody848_1753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4263#64)

def RemovedBody848_1755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1756 : StackLang.HolProg 64 :=
.seq RemovedBody848_1754 RemovedBody848_1755

def RemovedBody848_1757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1760 : StackLang.HolProg 64 :=
.seq RemovedBody848_1758 RemovedBody848_1759

def RemovedBody848_1761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1762 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1760 RemovedBody848_1761

def RemovedBody848_1763 : StackLang.HolProg 64 :=
.seq RemovedBody848_1757 RemovedBody848_1762

def RemovedBody848_1764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 47

def RemovedBody848_1767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1773 : StackLang.HolProg 64 :=
.seq RemovedBody848_1771 RemovedBody848_1772

def RemovedBody848_1774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1775 : StackLang.HolProg 64 :=
.seq RemovedBody848_1773 RemovedBody848_1774

def RemovedBody848_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1777 : StackLang.HolProg 64 :=
.seq RemovedBody848_1775 RemovedBody848_1776

def RemovedBody848_1778 : StackLang.HolProg 64 :=
.seq RemovedBody848_1770 RemovedBody848_1777

def RemovedBody848_1779 : StackLang.HolProg 64 :=
.seq RemovedBody848_1769 RemovedBody848_1778

def RemovedBody848_1780 : StackLang.HolProg 64 :=
.seq RemovedBody848_1768 RemovedBody848_1779

def RemovedBody848_1781 : StackLang.HolProg 64 :=
.seq RemovedBody848_1767 RemovedBody848_1780

def RemovedBody848_1782 : StackLang.HolProg 64 :=
.seq RemovedBody848_1766 RemovedBody848_1781

def RemovedBody848_1783 : StackLang.HolProg 64 :=
.seq RemovedBody848_1765 RemovedBody848_1782

def RemovedBody848_1784 : StackLang.HolProg 64 :=
.seq RemovedBody848_1764 RemovedBody848_1783

def RemovedBody848_1785 : StackLang.HolProg 64 :=
.seq RemovedBody848_1763 RemovedBody848_1784

def RemovedBody848_1786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1795 : StackLang.HolProg 64 :=
.seq RemovedBody848_1793 RemovedBody848_1794

def RemovedBody848_1796 : StackLang.HolProg 64 :=
.seq RemovedBody848_1792 RemovedBody848_1795

def RemovedBody848_1797 : StackLang.HolProg 64 :=
.seq RemovedBody848_1791 RemovedBody848_1796

def RemovedBody848_1798 : StackLang.HolProg 64 :=
.seq RemovedBody848_1790 RemovedBody848_1797

def RemovedBody848_1799 : StackLang.HolProg 64 :=
.seq RemovedBody848_1789 RemovedBody848_1798

def RemovedBody848_1800 : StackLang.HolProg 64 :=
.seq RemovedBody848_1788 RemovedBody848_1799

def RemovedBody848_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody848_1804 : StackLang.HolProg 64 :=
.seq RemovedBody848_1802 RemovedBody848_1803

def RemovedBody848_1805 : StackLang.HolProg 64 :=
.seq RemovedBody848_1801 RemovedBody848_1804

def RemovedBody848_1806 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1807 : StackLang.HolProg 64 :=
.seq RemovedBody848_1805 RemovedBody848_1806

def RemovedBody848_1808 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1800, 0, 848, 46)) (Sum.inl 70) (some (RemovedBody848_1807, 848, 47))

def RemovedBody848_1809 : StackLang.HolProg 64 :=
.seq RemovedBody848_1787 RemovedBody848_1808

def RemovedBody848_1810 : StackLang.HolProg 64 :=
.seq RemovedBody848_1786 RemovedBody848_1809

def RemovedBody848_1811 : StackLang.HolProg 64 :=
.seq RemovedBody848_1785 RemovedBody848_1810

def RemovedBody848_1812 : StackLang.HolProg 64 :=
.seq RemovedBody848_1756 RemovedBody848_1811

def RemovedBody848_1813 : StackLang.HolProg 64 :=
.seq RemovedBody848_1753 RemovedBody848_1812

def RemovedBody848_1814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_1817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 61#64)

def RemovedBody848_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody848_1821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody848_1822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1823 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1824 : StackLang.HolProg 64 :=
.seq RemovedBody848_1822 RemovedBody848_1823

def RemovedBody848_1825 : StackLang.HolProg 64 :=
.seq RemovedBody848_1821 RemovedBody848_1824

def RemovedBody848_1826 : StackLang.HolProg 64 :=
.seq RemovedBody848_1820 RemovedBody848_1825

def RemovedBody848_1827 : StackLang.HolProg 64 :=
.seq RemovedBody848_1819 RemovedBody848_1826

def RemovedBody848_1828 : StackLang.HolProg 64 :=
.seq RemovedBody848_1818 RemovedBody848_1827

def RemovedBody848_1829 : StackLang.HolProg 64 :=
.seq RemovedBody848_1817 RemovedBody848_1828

def RemovedBody848_1830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1831 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody848_1829 RemovedBody848_1830

def RemovedBody848_1832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody848_1835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody848_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 48#64)

def RemovedBody848_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1839 : StackLang.HolProg 64 :=
.seq RemovedBody848_1837 RemovedBody848_1838

def RemovedBody848_1840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4264#64)

def RemovedBody848_1842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1843 : StackLang.HolProg 64 :=
.seq RemovedBody848_1841 RemovedBody848_1842

def RemovedBody848_1844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1847 : StackLang.HolProg 64 :=
.seq RemovedBody848_1845 RemovedBody848_1846

def RemovedBody848_1848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1849 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1847 RemovedBody848_1848

def RemovedBody848_1850 : StackLang.HolProg 64 :=
.seq RemovedBody848_1844 RemovedBody848_1849

def RemovedBody848_1851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 49

def RemovedBody848_1854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1860 : StackLang.HolProg 64 :=
.seq RemovedBody848_1858 RemovedBody848_1859

def RemovedBody848_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1862 : StackLang.HolProg 64 :=
.seq RemovedBody848_1860 RemovedBody848_1861

def RemovedBody848_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1864 : StackLang.HolProg 64 :=
.seq RemovedBody848_1862 RemovedBody848_1863

def RemovedBody848_1865 : StackLang.HolProg 64 :=
.seq RemovedBody848_1857 RemovedBody848_1864

def RemovedBody848_1866 : StackLang.HolProg 64 :=
.seq RemovedBody848_1856 RemovedBody848_1865

def RemovedBody848_1867 : StackLang.HolProg 64 :=
.seq RemovedBody848_1855 RemovedBody848_1866

def RemovedBody848_1868 : StackLang.HolProg 64 :=
.seq RemovedBody848_1854 RemovedBody848_1867

def RemovedBody848_1869 : StackLang.HolProg 64 :=
.seq RemovedBody848_1853 RemovedBody848_1868

def RemovedBody848_1870 : StackLang.HolProg 64 :=
.seq RemovedBody848_1852 RemovedBody848_1869

def RemovedBody848_1871 : StackLang.HolProg 64 :=
.seq RemovedBody848_1851 RemovedBody848_1870

def RemovedBody848_1872 : StackLang.HolProg 64 :=
.seq RemovedBody848_1850 RemovedBody848_1871

def RemovedBody848_1873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1881 : StackLang.HolProg 64 :=
.seq RemovedBody848_1879 RemovedBody848_1880

def RemovedBody848_1882 : StackLang.HolProg 64 :=
.seq RemovedBody848_1878 RemovedBody848_1881

def RemovedBody848_1883 : StackLang.HolProg 64 :=
.seq RemovedBody848_1877 RemovedBody848_1882

def RemovedBody848_1884 : StackLang.HolProg 64 :=
.seq RemovedBody848_1876 RemovedBody848_1883

def RemovedBody848_1885 : StackLang.HolProg 64 :=
.seq RemovedBody848_1875 RemovedBody848_1884

def RemovedBody848_1886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1888 : StackLang.HolProg 64 :=
.seq RemovedBody848_1886 RemovedBody848_1887

def RemovedBody848_1889 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1890 : StackLang.HolProg 64 :=
.seq RemovedBody848_1888 RemovedBody848_1889

def RemovedBody848_1891 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1885, 0, 848, 48)) (Sum.inl 77) (some (RemovedBody848_1890, 848, 49))

def RemovedBody848_1892 : StackLang.HolProg 64 :=
.seq RemovedBody848_1874 RemovedBody848_1891

def RemovedBody848_1893 : StackLang.HolProg 64 :=
.seq RemovedBody848_1873 RemovedBody848_1892

def RemovedBody848_1894 : StackLang.HolProg 64 :=
.seq RemovedBody848_1872 RemovedBody848_1893

def RemovedBody848_1895 : StackLang.HolProg 64 :=
.seq RemovedBody848_1843 RemovedBody848_1894

def RemovedBody848_1896 : StackLang.HolProg 64 :=
.seq RemovedBody848_1840 RemovedBody848_1895

def RemovedBody848_1897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody848_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody848_1902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody848_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1905 : StackLang.HolProg 64 :=
.seq RemovedBody848_1903 RemovedBody848_1904

def RemovedBody848_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4265#64)

def RemovedBody848_1908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1909 : StackLang.HolProg 64 :=
.seq RemovedBody848_1907 RemovedBody848_1908

def RemovedBody848_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1913 : StackLang.HolProg 64 :=
.seq RemovedBody848_1911 RemovedBody848_1912

def RemovedBody848_1914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1915 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1913 RemovedBody848_1914

def RemovedBody848_1916 : StackLang.HolProg 64 :=
.seq RemovedBody848_1910 RemovedBody848_1915

def RemovedBody848_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 51

def RemovedBody848_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1926 : StackLang.HolProg 64 :=
.seq RemovedBody848_1924 RemovedBody848_1925

def RemovedBody848_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1928 : StackLang.HolProg 64 :=
.seq RemovedBody848_1926 RemovedBody848_1927

def RemovedBody848_1929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1930 : StackLang.HolProg 64 :=
.seq RemovedBody848_1928 RemovedBody848_1929

def RemovedBody848_1931 : StackLang.HolProg 64 :=
.seq RemovedBody848_1923 RemovedBody848_1930

def RemovedBody848_1932 : StackLang.HolProg 64 :=
.seq RemovedBody848_1922 RemovedBody848_1931

def RemovedBody848_1933 : StackLang.HolProg 64 :=
.seq RemovedBody848_1921 RemovedBody848_1932

def RemovedBody848_1934 : StackLang.HolProg 64 :=
.seq RemovedBody848_1920 RemovedBody848_1933

def RemovedBody848_1935 : StackLang.HolProg 64 :=
.seq RemovedBody848_1919 RemovedBody848_1934

def RemovedBody848_1936 : StackLang.HolProg 64 :=
.seq RemovedBody848_1918 RemovedBody848_1935

def RemovedBody848_1937 : StackLang.HolProg 64 :=
.seq RemovedBody848_1917 RemovedBody848_1936

def RemovedBody848_1938 : StackLang.HolProg 64 :=
.seq RemovedBody848_1916 RemovedBody848_1937

def RemovedBody848_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1947 : StackLang.HolProg 64 :=
.seq RemovedBody848_1945 RemovedBody848_1946

def RemovedBody848_1948 : StackLang.HolProg 64 :=
.seq RemovedBody848_1944 RemovedBody848_1947

def RemovedBody848_1949 : StackLang.HolProg 64 :=
.seq RemovedBody848_1943 RemovedBody848_1948

def RemovedBody848_1950 : StackLang.HolProg 64 :=
.seq RemovedBody848_1942 RemovedBody848_1949

def RemovedBody848_1951 : StackLang.HolProg 64 :=
.seq RemovedBody848_1941 RemovedBody848_1950

def RemovedBody848_1952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1954 : StackLang.HolProg 64 :=
.seq RemovedBody848_1952 RemovedBody848_1953

def RemovedBody848_1955 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_1956 : StackLang.HolProg 64 :=
.seq RemovedBody848_1954 RemovedBody848_1955

def RemovedBody848_1957 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_1951, 0, 848, 50)) (Sum.inl 77) (some (RemovedBody848_1956, 848, 51))

def RemovedBody848_1958 : StackLang.HolProg 64 :=
.seq RemovedBody848_1940 RemovedBody848_1957

def RemovedBody848_1959 : StackLang.HolProg 64 :=
.seq RemovedBody848_1939 RemovedBody848_1958

def RemovedBody848_1960 : StackLang.HolProg 64 :=
.seq RemovedBody848_1938 RemovedBody848_1959

def RemovedBody848_1961 : StackLang.HolProg 64 :=
.seq RemovedBody848_1909 RemovedBody848_1960

def RemovedBody848_1962 : StackLang.HolProg 64 :=
.seq RemovedBody848_1906 RemovedBody848_1961

def RemovedBody848_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody848_1966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 352#64)))

def RemovedBody848_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def RemovedBody848_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_1971 : StackLang.HolProg 64 :=
.seq RemovedBody848_1969 RemovedBody848_1970

def RemovedBody848_1972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4266#64)

def RemovedBody848_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1975 : StackLang.HolProg 64 :=
.seq RemovedBody848_1973 RemovedBody848_1974

def RemovedBody848_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_1978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_1979 : StackLang.HolProg 64 :=
.seq RemovedBody848_1977 RemovedBody848_1978

def RemovedBody848_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1981 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_1979 RemovedBody848_1980

def RemovedBody848_1982 : StackLang.HolProg 64 :=
.seq RemovedBody848_1976 RemovedBody848_1981

def RemovedBody848_1983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_1984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_1985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 53

def RemovedBody848_1986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_1990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_1991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_1992 : StackLang.HolProg 64 :=
.seq RemovedBody848_1990 RemovedBody848_1991

def RemovedBody848_1993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_1994 : StackLang.HolProg 64 :=
.seq RemovedBody848_1992 RemovedBody848_1993

def RemovedBody848_1995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_1996 : StackLang.HolProg 64 :=
.seq RemovedBody848_1994 RemovedBody848_1995

def RemovedBody848_1997 : StackLang.HolProg 64 :=
.seq RemovedBody848_1989 RemovedBody848_1996

def RemovedBody848_1998 : StackLang.HolProg 64 :=
.seq RemovedBody848_1988 RemovedBody848_1997

def RemovedBody848_1999 : StackLang.HolProg 64 :=
.seq RemovedBody848_1987 RemovedBody848_1998

def RemovedBody848_2000 : StackLang.HolProg 64 :=
.seq RemovedBody848_1986 RemovedBody848_1999

def RemovedBody848_2001 : StackLang.HolProg 64 :=
.seq RemovedBody848_1985 RemovedBody848_2000

def RemovedBody848_2002 : StackLang.HolProg 64 :=
.seq RemovedBody848_1984 RemovedBody848_2001

def RemovedBody848_2003 : StackLang.HolProg 64 :=
.seq RemovedBody848_1983 RemovedBody848_2002

def RemovedBody848_2004 : StackLang.HolProg 64 :=
.seq RemovedBody848_1982 RemovedBody848_2003

def RemovedBody848_2005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_2012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_2013 : StackLang.HolProg 64 :=
.seq RemovedBody848_2011 RemovedBody848_2012

def RemovedBody848_2014 : StackLang.HolProg 64 :=
.seq RemovedBody848_2010 RemovedBody848_2013

def RemovedBody848_2015 : StackLang.HolProg 64 :=
.seq RemovedBody848_2009 RemovedBody848_2014

def RemovedBody848_2016 : StackLang.HolProg 64 :=
.seq RemovedBody848_2008 RemovedBody848_2015

def RemovedBody848_2017 : StackLang.HolProg 64 :=
.seq RemovedBody848_2007 RemovedBody848_2016

def RemovedBody848_2018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_2019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_2020 : StackLang.HolProg 64 :=
.seq RemovedBody848_2018 RemovedBody848_2019

def RemovedBody848_2021 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_2022 : StackLang.HolProg 64 :=
.seq RemovedBody848_2020 RemovedBody848_2021

def RemovedBody848_2023 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_2017, 0, 848, 52)) (Sum.inl 77) (some (RemovedBody848_2022, 848, 53))

def RemovedBody848_2024 : StackLang.HolProg 64 :=
.seq RemovedBody848_2006 RemovedBody848_2023

def RemovedBody848_2025 : StackLang.HolProg 64 :=
.seq RemovedBody848_2005 RemovedBody848_2024

def RemovedBody848_2026 : StackLang.HolProg 64 :=
.seq RemovedBody848_2004 RemovedBody848_2025

def RemovedBody848_2027 : StackLang.HolProg 64 :=
.seq RemovedBody848_1975 RemovedBody848_2026

def RemovedBody848_2028 : StackLang.HolProg 64 :=
.seq RemovedBody848_1972 RemovedBody848_2027

def RemovedBody848_2029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_2030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody848_2032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 416#64)))

def RemovedBody848_2034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 96#64)

def RemovedBody848_2035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_2036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_2037 : StackLang.HolProg 64 :=
.seq RemovedBody848_2035 RemovedBody848_2036

def RemovedBody848_2038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4267#64)

def RemovedBody848_2040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_2041 : StackLang.HolProg 64 :=
.seq RemovedBody848_2039 RemovedBody848_2040

def RemovedBody848_2042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_2045 : StackLang.HolProg 64 :=
.seq RemovedBody848_2043 RemovedBody848_2044

def RemovedBody848_2046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2047 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_2045 RemovedBody848_2046

def RemovedBody848_2048 : StackLang.HolProg 64 :=
.seq RemovedBody848_2042 RemovedBody848_2047

def RemovedBody848_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 55

def RemovedBody848_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_2057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_2058 : StackLang.HolProg 64 :=
.seq RemovedBody848_2056 RemovedBody848_2057

def RemovedBody848_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_2060 : StackLang.HolProg 64 :=
.seq RemovedBody848_2058 RemovedBody848_2059

def RemovedBody848_2061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_2062 : StackLang.HolProg 64 :=
.seq RemovedBody848_2060 RemovedBody848_2061

def RemovedBody848_2063 : StackLang.HolProg 64 :=
.seq RemovedBody848_2055 RemovedBody848_2062

def RemovedBody848_2064 : StackLang.HolProg 64 :=
.seq RemovedBody848_2054 RemovedBody848_2063

def RemovedBody848_2065 : StackLang.HolProg 64 :=
.seq RemovedBody848_2053 RemovedBody848_2064

def RemovedBody848_2066 : StackLang.HolProg 64 :=
.seq RemovedBody848_2052 RemovedBody848_2065

def RemovedBody848_2067 : StackLang.HolProg 64 :=
.seq RemovedBody848_2051 RemovedBody848_2066

def RemovedBody848_2068 : StackLang.HolProg 64 :=
.seq RemovedBody848_2050 RemovedBody848_2067

def RemovedBody848_2069 : StackLang.HolProg 64 :=
.seq RemovedBody848_2049 RemovedBody848_2068

def RemovedBody848_2070 : StackLang.HolProg 64 :=
.seq RemovedBody848_2048 RemovedBody848_2069

def RemovedBody848_2071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_2075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_2077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_2079 : StackLang.HolProg 64 :=
.seq RemovedBody848_2077 RemovedBody848_2078

def RemovedBody848_2080 : StackLang.HolProg 64 :=
.seq RemovedBody848_2076 RemovedBody848_2079

def RemovedBody848_2081 : StackLang.HolProg 64 :=
.seq RemovedBody848_2075 RemovedBody848_2080

def RemovedBody848_2082 : StackLang.HolProg 64 :=
.seq RemovedBody848_2074 RemovedBody848_2081

def RemovedBody848_2083 : StackLang.HolProg 64 :=
.seq RemovedBody848_2073 RemovedBody848_2082

def RemovedBody848_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody848_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody848_2086 : StackLang.HolProg 64 :=
.seq RemovedBody848_2084 RemovedBody848_2085

def RemovedBody848_2087 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_2088 : StackLang.HolProg 64 :=
.seq RemovedBody848_2086 RemovedBody848_2087

def RemovedBody848_2089 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_2083, 0, 848, 54)) (Sum.inl 77) (some (RemovedBody848_2088, 848, 55))

def RemovedBody848_2090 : StackLang.HolProg 64 :=
.seq RemovedBody848_2072 RemovedBody848_2089

def RemovedBody848_2091 : StackLang.HolProg 64 :=
.seq RemovedBody848_2071 RemovedBody848_2090

def RemovedBody848_2092 : StackLang.HolProg 64 :=
.seq RemovedBody848_2070 RemovedBody848_2091

def RemovedBody848_2093 : StackLang.HolProg 64 :=
.seq RemovedBody848_2041 RemovedBody848_2092

def RemovedBody848_2094 : StackLang.HolProg 64 :=
.seq RemovedBody848_2038 RemovedBody848_2093

def RemovedBody848_2095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_2096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def RemovedBody848_2098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 544#64)))

def RemovedBody848_2100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def RemovedBody848_2101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4268#64)

def RemovedBody848_2104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_2105 : StackLang.HolProg 64 :=
.seq RemovedBody848_2103 RemovedBody848_2104

def RemovedBody848_2106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_2107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody848_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody848_2109 : StackLang.HolProg 64 :=
.seq RemovedBody848_2107 RemovedBody848_2108

def RemovedBody848_2110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody848_2109 RemovedBody848_2110

def RemovedBody848_2112 : StackLang.HolProg 64 :=
.seq RemovedBody848_2106 RemovedBody848_2111

def RemovedBody848_2113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody848_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody848_2115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 848 57

def RemovedBody848_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody848_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_2119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody848_2121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody848_2122 : StackLang.HolProg 64 :=
.seq RemovedBody848_2120 RemovedBody848_2121

def RemovedBody848_2123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody848_2124 : StackLang.HolProg 64 :=
.seq RemovedBody848_2122 RemovedBody848_2123

def RemovedBody848_2125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_2126 : StackLang.HolProg 64 :=
.seq RemovedBody848_2124 RemovedBody848_2125

def RemovedBody848_2127 : StackLang.HolProg 64 :=
.seq RemovedBody848_2119 RemovedBody848_2126

def RemovedBody848_2128 : StackLang.HolProg 64 :=
.seq RemovedBody848_2118 RemovedBody848_2127

def RemovedBody848_2129 : StackLang.HolProg 64 :=
.seq RemovedBody848_2117 RemovedBody848_2128

def RemovedBody848_2130 : StackLang.HolProg 64 :=
.seq RemovedBody848_2116 RemovedBody848_2129

def RemovedBody848_2131 : StackLang.HolProg 64 :=
.seq RemovedBody848_2115 RemovedBody848_2130

def RemovedBody848_2132 : StackLang.HolProg 64 :=
.seq RemovedBody848_2114 RemovedBody848_2131

def RemovedBody848_2133 : StackLang.HolProg 64 :=
.seq RemovedBody848_2113 RemovedBody848_2132

def RemovedBody848_2134 : StackLang.HolProg 64 :=
.seq RemovedBody848_2112 RemovedBody848_2133

def RemovedBody848_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody848_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody848_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody848_2141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody848_2142 : StackLang.HolProg 64 :=
.seq RemovedBody848_2140 RemovedBody848_2141

def RemovedBody848_2143 : StackLang.HolProg 64 :=
.seq RemovedBody848_2139 RemovedBody848_2142

def RemovedBody848_2144 : StackLang.HolProg 64 :=
.seq RemovedBody848_2138 RemovedBody848_2143

def RemovedBody848_2145 : StackLang.HolProg 64 :=
.seq RemovedBody848_2137 RemovedBody848_2144

def RemovedBody848_2146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody848_2147 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody848_2148 : StackLang.HolProg 64 :=
.seq RemovedBody848_2146 RemovedBody848_2147

def RemovedBody848_2149 : StackLang.HolProg 64 :=
.call (some (RemovedBody848_2145, 0, 848, 56)) (Sum.inl 77) (some (RemovedBody848_2148, 848, 57))

def RemovedBody848_2150 : StackLang.HolProg 64 :=
.seq RemovedBody848_2136 RemovedBody848_2149

def RemovedBody848_2151 : StackLang.HolProg 64 :=
.seq RemovedBody848_2135 RemovedBody848_2150

def RemovedBody848_2152 : StackLang.HolProg 64 :=
.seq RemovedBody848_2134 RemovedBody848_2151

def RemovedBody848_2153 : StackLang.HolProg 64 :=
.seq RemovedBody848_2105 RemovedBody848_2152

def RemovedBody848_2154 : StackLang.HolProg 64 :=
.seq RemovedBody848_2102 RemovedBody848_2153

def RemovedBody848_2155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody848_2156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody848_2157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody848_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody848_2159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody848_2160 : StackLang.HolProg 64 :=
.seq RemovedBody848_2158 RemovedBody848_2159

def RemovedBody848_2161 : StackLang.HolProg 64 :=
.seq RemovedBody848_2157 RemovedBody848_2160

def RemovedBody848_2162 : StackLang.HolProg 64 :=
.seq RemovedBody848_2156 RemovedBody848_2161

def RemovedBody848_2163 : StackLang.HolProg 64 :=
.seq RemovedBody848_2155 RemovedBody848_2162

def RemovedBody848_2164 : StackLang.HolProg 64 :=
.seq RemovedBody848_2154 RemovedBody848_2163

def RemovedBody848_2165 : StackLang.HolProg 64 :=
.seq RemovedBody848_2101 RemovedBody848_2164

def RemovedBody848_2166 : StackLang.HolProg 64 :=
.seq RemovedBody848_2100 RemovedBody848_2165

def RemovedBody848_2167 : StackLang.HolProg 64 :=
.seq RemovedBody848_2099 RemovedBody848_2166

def RemovedBody848_2168 : StackLang.HolProg 64 :=
.seq RemovedBody848_2098 RemovedBody848_2167

def RemovedBody848_2169 : StackLang.HolProg 64 :=
.seq RemovedBody848_2097 RemovedBody848_2168

def RemovedBody848_2170 : StackLang.HolProg 64 :=
.seq RemovedBody848_2096 RemovedBody848_2169

def RemovedBody848_2171 : StackLang.HolProg 64 :=
.seq RemovedBody848_2095 RemovedBody848_2170

def RemovedBody848_2172 : StackLang.HolProg 64 :=
.seq RemovedBody848_2094 RemovedBody848_2171

def RemovedBody848_2173 : StackLang.HolProg 64 :=
.seq RemovedBody848_2037 RemovedBody848_2172

def RemovedBody848_2174 : StackLang.HolProg 64 :=
.seq RemovedBody848_2034 RemovedBody848_2173

def RemovedBody848_2175 : StackLang.HolProg 64 :=
.seq RemovedBody848_2033 RemovedBody848_2174

def RemovedBody848_2176 : StackLang.HolProg 64 :=
.seq RemovedBody848_2032 RemovedBody848_2175

def RemovedBody848_2177 : StackLang.HolProg 64 :=
.seq RemovedBody848_2031 RemovedBody848_2176

def RemovedBody848_2178 : StackLang.HolProg 64 :=
.seq RemovedBody848_2030 RemovedBody848_2177

def RemovedBody848_2179 : StackLang.HolProg 64 :=
.seq RemovedBody848_2029 RemovedBody848_2178

def RemovedBody848_2180 : StackLang.HolProg 64 :=
.seq RemovedBody848_2028 RemovedBody848_2179

def RemovedBody848_2181 : StackLang.HolProg 64 :=
.seq RemovedBody848_1971 RemovedBody848_2180

def RemovedBody848_2182 : StackLang.HolProg 64 :=
.seq RemovedBody848_1968 RemovedBody848_2181

def RemovedBody848_2183 : StackLang.HolProg 64 :=
.seq RemovedBody848_1967 RemovedBody848_2182

def RemovedBody848_2184 : StackLang.HolProg 64 :=
.seq RemovedBody848_1966 RemovedBody848_2183

def RemovedBody848_2185 : StackLang.HolProg 64 :=
.seq RemovedBody848_1965 RemovedBody848_2184

def RemovedBody848_2186 : StackLang.HolProg 64 :=
.seq RemovedBody848_1964 RemovedBody848_2185

def RemovedBody848_2187 : StackLang.HolProg 64 :=
.seq RemovedBody848_1963 RemovedBody848_2186

def RemovedBody848_2188 : StackLang.HolProg 64 :=
.seq RemovedBody848_1962 RemovedBody848_2187

def RemovedBody848_2189 : StackLang.HolProg 64 :=
.seq RemovedBody848_1905 RemovedBody848_2188

def RemovedBody848_2190 : StackLang.HolProg 64 :=
.seq RemovedBody848_1902 RemovedBody848_2189

def RemovedBody848_2191 : StackLang.HolProg 64 :=
.seq RemovedBody848_1901 RemovedBody848_2190

def RemovedBody848_2192 : StackLang.HolProg 64 :=
.seq RemovedBody848_1900 RemovedBody848_2191

def RemovedBody848_2193 : StackLang.HolProg 64 :=
.seq RemovedBody848_1899 RemovedBody848_2192

def RemovedBody848_2194 : StackLang.HolProg 64 :=
.seq RemovedBody848_1898 RemovedBody848_2193

def RemovedBody848_2195 : StackLang.HolProg 64 :=
.seq RemovedBody848_1897 RemovedBody848_2194

def RemovedBody848_2196 : StackLang.HolProg 64 :=
.seq RemovedBody848_1896 RemovedBody848_2195

def RemovedBody848_2197 : StackLang.HolProg 64 :=
.seq RemovedBody848_1839 RemovedBody848_2196

def RemovedBody848_2198 : StackLang.HolProg 64 :=
.seq RemovedBody848_1836 RemovedBody848_2197

def RemovedBody848_2199 : StackLang.HolProg 64 :=
.seq RemovedBody848_1835 RemovedBody848_2198

def RemovedBody848_2200 : StackLang.HolProg 64 :=
.seq RemovedBody848_1834 RemovedBody848_2199

def RemovedBody848_2201 : StackLang.HolProg 64 :=
.seq RemovedBody848_1833 RemovedBody848_2200

def RemovedBody848_2202 : StackLang.HolProg 64 :=
.seq RemovedBody848_1832 RemovedBody848_2201

def RemovedBody848_2203 : StackLang.HolProg 64 :=
.seq RemovedBody848_1831 RemovedBody848_2202

def RemovedBody848_2204 : StackLang.HolProg 64 :=
.seq RemovedBody848_1816 RemovedBody848_2203

def RemovedBody848_2205 : StackLang.HolProg 64 :=
.seq RemovedBody848_1815 RemovedBody848_2204

def RemovedBody848_2206 : StackLang.HolProg 64 :=
.seq RemovedBody848_1814 RemovedBody848_2205

def RemovedBody848_2207 : StackLang.HolProg 64 :=
.seq RemovedBody848_1813 RemovedBody848_2206

def RemovedBody848_2208 : StackLang.HolProg 64 :=
.seq RemovedBody848_1752 RemovedBody848_2207

def RemovedBody848_2209 : StackLang.HolProg 64 :=
.seq RemovedBody848_1751 RemovedBody848_2208

def RemovedBody848_2210 : StackLang.HolProg 64 :=
.seq RemovedBody848_1750 RemovedBody848_2209

def RemovedBody848_2211 : StackLang.HolProg 64 :=
.seq RemovedBody848_1741 RemovedBody848_2210

def RemovedBody848_2212 : StackLang.HolProg 64 :=
.seq RemovedBody848_1740 RemovedBody848_2211

def RemovedBody848_2213 : StackLang.HolProg 64 :=
.seq RemovedBody848_1739 RemovedBody848_2212

def RemovedBody848_2214 : StackLang.HolProg 64 :=
.seq RemovedBody848_1738 RemovedBody848_2213

def RemovedBody848_2215 : StackLang.HolProg 64 :=
.seq RemovedBody848_1737 RemovedBody848_2214

def RemovedBody848_2216 : StackLang.HolProg 64 :=
.seq RemovedBody848_1730 RemovedBody848_2215

def RemovedBody848_2217 : StackLang.HolProg 64 :=
.seq RemovedBody848_1729 RemovedBody848_2216

def RemovedBody848_2218 : StackLang.HolProg 64 :=
.seq RemovedBody848_1728 RemovedBody848_2217

def RemovedBody848_2219 : StackLang.HolProg 64 :=
.seq RemovedBody848_1727 RemovedBody848_2218

def RemovedBody848_2220 : StackLang.HolProg 64 :=
.seq RemovedBody848_1720 RemovedBody848_2219

def RemovedBody848_2221 : StackLang.HolProg 64 :=
.seq RemovedBody848_1719 RemovedBody848_2220

def RemovedBody848_2222 : StackLang.HolProg 64 :=
.seq RemovedBody848_1718 RemovedBody848_2221

def RemovedBody848_2223 : StackLang.HolProg 64 :=
.seq RemovedBody848_1717 RemovedBody848_2222

def RemovedBody848_2224 : StackLang.HolProg 64 :=
.seq RemovedBody848_1634 RemovedBody848_2223

def RemovedBody848_2225 : StackLang.HolProg 64 :=
.seq RemovedBody848_1631 RemovedBody848_2224

def RemovedBody848_2226 : StackLang.HolProg 64 :=
.seq RemovedBody848_1630 RemovedBody848_2225

def RemovedBody848_2227 : StackLang.HolProg 64 :=
.seq RemovedBody848_1629 RemovedBody848_2226

def RemovedBody848_2228 : StackLang.HolProg 64 :=
.seq RemovedBody848_1628 RemovedBody848_2227

def RemovedBody848_2229 : StackLang.HolProg 64 :=
.seq RemovedBody848_1573 RemovedBody848_2228

def RemovedBody848_2230 : StackLang.HolProg 64 :=
.seq RemovedBody848_1572 RemovedBody848_2229

def RemovedBody848_2231 : StackLang.HolProg 64 :=
.seq RemovedBody848_1571 RemovedBody848_2230

def RemovedBody848_2232 : StackLang.HolProg 64 :=
.seq RemovedBody848_1570 RemovedBody848_2231

def RemovedBody848_2233 : StackLang.HolProg 64 :=
.seq RemovedBody848_1569 RemovedBody848_2232

def RemovedBody848_2234 : StackLang.HolProg 64 :=
.seq RemovedBody848_1568 RemovedBody848_2233

def RemovedBody848_2235 : StackLang.HolProg 64 :=
.seq RemovedBody848_1559 RemovedBody848_2234

def RemovedBody848_2236 : StackLang.HolProg 64 :=
.seq RemovedBody848_1558 RemovedBody848_2235

def RemovedBody848_2237 : StackLang.HolProg 64 :=
.seq RemovedBody848_1557 RemovedBody848_2236

def RemovedBody848_2238 : StackLang.HolProg 64 :=
.seq RemovedBody848_1556 RemovedBody848_2237

def RemovedBody848_2239 : StackLang.HolProg 64 :=
.seq RemovedBody848_1555 RemovedBody848_2238

def RemovedBody848_2240 : StackLang.HolProg 64 :=
.seq RemovedBody848_1548 RemovedBody848_2239

def RemovedBody848_2241 : StackLang.HolProg 64 :=
.seq RemovedBody848_1547 RemovedBody848_2240

def RemovedBody848_2242 : StackLang.HolProg 64 :=
.seq RemovedBody848_1546 RemovedBody848_2241

def RemovedBody848_2243 : StackLang.HolProg 64 :=
.seq RemovedBody848_1545 RemovedBody848_2242

def RemovedBody848_2244 : StackLang.HolProg 64 :=
.seq RemovedBody848_1538 RemovedBody848_2243

def RemovedBody848_2245 : StackLang.HolProg 64 :=
.seq RemovedBody848_1537 RemovedBody848_2244

def RemovedBody848_2246 : StackLang.HolProg 64 :=
.seq RemovedBody848_1536 RemovedBody848_2245

def RemovedBody848_2247 : StackLang.HolProg 64 :=
.seq RemovedBody848_1535 RemovedBody848_2246

def RemovedBody848_2248 : StackLang.HolProg 64 :=
.seq RemovedBody848_1476 RemovedBody848_2247

def RemovedBody848_2249 : StackLang.HolProg 64 :=
.seq RemovedBody848_1473 RemovedBody848_2248

def RemovedBody848_2250 : StackLang.HolProg 64 :=
.seq RemovedBody848_1472 RemovedBody848_2249

def RemovedBody848_2251 : StackLang.HolProg 64 :=
.seq RemovedBody848_1471 RemovedBody848_2250

def RemovedBody848_2252 : StackLang.HolProg 64 :=
.seq RemovedBody848_1470 RemovedBody848_2251

def RemovedBody848_2253 : StackLang.HolProg 64 :=
.seq RemovedBody848_1415 RemovedBody848_2252

def RemovedBody848_2254 : StackLang.HolProg 64 :=
.seq RemovedBody848_1414 RemovedBody848_2253

def RemovedBody848_2255 : StackLang.HolProg 64 :=
.seq RemovedBody848_1413 RemovedBody848_2254

def RemovedBody848_2256 : StackLang.HolProg 64 :=
.seq RemovedBody848_1412 RemovedBody848_2255

def RemovedBody848_2257 : StackLang.HolProg 64 :=
.seq RemovedBody848_1411 RemovedBody848_2256

def RemovedBody848_2258 : StackLang.HolProg 64 :=
.seq RemovedBody848_1410 RemovedBody848_2257

def RemovedBody848_2259 : StackLang.HolProg 64 :=
.seq RemovedBody848_1401 RemovedBody848_2258

def RemovedBody848_2260 : StackLang.HolProg 64 :=
.seq RemovedBody848_1400 RemovedBody848_2259

def RemovedBody848_2261 : StackLang.HolProg 64 :=
.seq RemovedBody848_1399 RemovedBody848_2260

def RemovedBody848_2262 : StackLang.HolProg 64 :=
.seq RemovedBody848_1398 RemovedBody848_2261

def RemovedBody848_2263 : StackLang.HolProg 64 :=
.seq RemovedBody848_1397 RemovedBody848_2262

def RemovedBody848_2264 : StackLang.HolProg 64 :=
.seq RemovedBody848_1390 RemovedBody848_2263

def RemovedBody848_2265 : StackLang.HolProg 64 :=
.seq RemovedBody848_1389 RemovedBody848_2264

def RemovedBody848_2266 : StackLang.HolProg 64 :=
.seq RemovedBody848_1388 RemovedBody848_2265

def RemovedBody848_2267 : StackLang.HolProg 64 :=
.seq RemovedBody848_1387 RemovedBody848_2266

def RemovedBody848_2268 : StackLang.HolProg 64 :=
.seq RemovedBody848_1380 RemovedBody848_2267

def RemovedBody848_2269 : StackLang.HolProg 64 :=
.seq RemovedBody848_1379 RemovedBody848_2268

def RemovedBody848_2270 : StackLang.HolProg 64 :=
.seq RemovedBody848_1378 RemovedBody848_2269

def RemovedBody848_2271 : StackLang.HolProg 64 :=
.seq RemovedBody848_1377 RemovedBody848_2270

def RemovedBody848_2272 : StackLang.HolProg 64 :=
.seq RemovedBody848_1318 RemovedBody848_2271

def RemovedBody848_2273 : StackLang.HolProg 64 :=
.seq RemovedBody848_1315 RemovedBody848_2272

def RemovedBody848_2274 : StackLang.HolProg 64 :=
.seq RemovedBody848_1314 RemovedBody848_2273

def RemovedBody848_2275 : StackLang.HolProg 64 :=
.seq RemovedBody848_1313 RemovedBody848_2274

def RemovedBody848_2276 : StackLang.HolProg 64 :=
.seq RemovedBody848_1312 RemovedBody848_2275

def RemovedBody848_2277 : StackLang.HolProg 64 :=
.seq RemovedBody848_1257 RemovedBody848_2276

def RemovedBody848_2278 : StackLang.HolProg 64 :=
.seq RemovedBody848_1256 RemovedBody848_2277

def RemovedBody848_2279 : StackLang.HolProg 64 :=
.seq RemovedBody848_1255 RemovedBody848_2278

def RemovedBody848_2280 : StackLang.HolProg 64 :=
.seq RemovedBody848_1254 RemovedBody848_2279

def RemovedBody848_2281 : StackLang.HolProg 64 :=
.seq RemovedBody848_1253 RemovedBody848_2280

def RemovedBody848_2282 : StackLang.HolProg 64 :=
.seq RemovedBody848_1252 RemovedBody848_2281

def RemovedBody848_2283 : StackLang.HolProg 64 :=
.seq RemovedBody848_1243 RemovedBody848_2282

def RemovedBody848_2284 : StackLang.HolProg 64 :=
.seq RemovedBody848_1242 RemovedBody848_2283

def RemovedBody848_2285 : StackLang.HolProg 64 :=
.seq RemovedBody848_1241 RemovedBody848_2284

def RemovedBody848_2286 : StackLang.HolProg 64 :=
.seq RemovedBody848_1240 RemovedBody848_2285

def RemovedBody848_2287 : StackLang.HolProg 64 :=
.seq RemovedBody848_1239 RemovedBody848_2286

def RemovedBody848_2288 : StackLang.HolProg 64 :=
.seq RemovedBody848_1232 RemovedBody848_2287

def RemovedBody848_2289 : StackLang.HolProg 64 :=
.seq RemovedBody848_1231 RemovedBody848_2288

def RemovedBody848_2290 : StackLang.HolProg 64 :=
.seq RemovedBody848_1230 RemovedBody848_2289

def RemovedBody848_2291 : StackLang.HolProg 64 :=
.seq RemovedBody848_1229 RemovedBody848_2290

def RemovedBody848_2292 : StackLang.HolProg 64 :=
.seq RemovedBody848_1222 RemovedBody848_2291

def RemovedBody848_2293 : StackLang.HolProg 64 :=
.seq RemovedBody848_1221 RemovedBody848_2292

def RemovedBody848_2294 : StackLang.HolProg 64 :=
.seq RemovedBody848_1220 RemovedBody848_2293

def RemovedBody848_2295 : StackLang.HolProg 64 :=
.seq RemovedBody848_1219 RemovedBody848_2294

def RemovedBody848_2296 : StackLang.HolProg 64 :=
.seq RemovedBody848_1160 RemovedBody848_2295

def RemovedBody848_2297 : StackLang.HolProg 64 :=
.seq RemovedBody848_1157 RemovedBody848_2296

def RemovedBody848_2298 : StackLang.HolProg 64 :=
.seq RemovedBody848_1156 RemovedBody848_2297

def RemovedBody848_2299 : StackLang.HolProg 64 :=
.seq RemovedBody848_1155 RemovedBody848_2298

def RemovedBody848_2300 : StackLang.HolProg 64 :=
.seq RemovedBody848_1154 RemovedBody848_2299

def RemovedBody848_2301 : StackLang.HolProg 64 :=
.seq RemovedBody848_1099 RemovedBody848_2300

def RemovedBody848_2302 : StackLang.HolProg 64 :=
.seq RemovedBody848_1098 RemovedBody848_2301

def RemovedBody848_2303 : StackLang.HolProg 64 :=
.seq RemovedBody848_1097 RemovedBody848_2302

def RemovedBody848_2304 : StackLang.HolProg 64 :=
.seq RemovedBody848_1096 RemovedBody848_2303

def RemovedBody848_2305 : StackLang.HolProg 64 :=
.seq RemovedBody848_1095 RemovedBody848_2304

def RemovedBody848_2306 : StackLang.HolProg 64 :=
.seq RemovedBody848_1094 RemovedBody848_2305

def RemovedBody848_2307 : StackLang.HolProg 64 :=
.seq RemovedBody848_1085 RemovedBody848_2306

def RemovedBody848_2308 : StackLang.HolProg 64 :=
.seq RemovedBody848_1084 RemovedBody848_2307

def RemovedBody848_2309 : StackLang.HolProg 64 :=
.seq RemovedBody848_1083 RemovedBody848_2308

def RemovedBody848_2310 : StackLang.HolProg 64 :=
.seq RemovedBody848_1082 RemovedBody848_2309

def RemovedBody848_2311 : StackLang.HolProg 64 :=
.seq RemovedBody848_1081 RemovedBody848_2310

def RemovedBody848_2312 : StackLang.HolProg 64 :=
.seq RemovedBody848_1074 RemovedBody848_2311

def RemovedBody848_2313 : StackLang.HolProg 64 :=
.seq RemovedBody848_1073 RemovedBody848_2312

def RemovedBody848_2314 : StackLang.HolProg 64 :=
.seq RemovedBody848_1072 RemovedBody848_2313

def RemovedBody848_2315 : StackLang.HolProg 64 :=
.seq RemovedBody848_1071 RemovedBody848_2314

def RemovedBody848_2316 : StackLang.HolProg 64 :=
.seq RemovedBody848_1064 RemovedBody848_2315

def RemovedBody848_2317 : StackLang.HolProg 64 :=
.seq RemovedBody848_1063 RemovedBody848_2316

def RemovedBody848_2318 : StackLang.HolProg 64 :=
.seq RemovedBody848_1062 RemovedBody848_2317

def RemovedBody848_2319 : StackLang.HolProg 64 :=
.seq RemovedBody848_1061 RemovedBody848_2318

def RemovedBody848_2320 : StackLang.HolProg 64 :=
.seq RemovedBody848_1002 RemovedBody848_2319

def RemovedBody848_2321 : StackLang.HolProg 64 :=
.seq RemovedBody848_999 RemovedBody848_2320

def RemovedBody848_2322 : StackLang.HolProg 64 :=
.seq RemovedBody848_998 RemovedBody848_2321

def RemovedBody848_2323 : StackLang.HolProg 64 :=
.seq RemovedBody848_997 RemovedBody848_2322

def RemovedBody848_2324 : StackLang.HolProg 64 :=
.seq RemovedBody848_996 RemovedBody848_2323

def RemovedBody848_2325 : StackLang.HolProg 64 :=
.seq RemovedBody848_941 RemovedBody848_2324

def RemovedBody848_2326 : StackLang.HolProg 64 :=
.seq RemovedBody848_940 RemovedBody848_2325

def RemovedBody848_2327 : StackLang.HolProg 64 :=
.seq RemovedBody848_939 RemovedBody848_2326

def RemovedBody848_2328 : StackLang.HolProg 64 :=
.seq RemovedBody848_938 RemovedBody848_2327

def RemovedBody848_2329 : StackLang.HolProg 64 :=
.seq RemovedBody848_937 RemovedBody848_2328

def RemovedBody848_2330 : StackLang.HolProg 64 :=
.seq RemovedBody848_936 RemovedBody848_2329

def RemovedBody848_2331 : StackLang.HolProg 64 :=
.seq RemovedBody848_927 RemovedBody848_2330

def RemovedBody848_2332 : StackLang.HolProg 64 :=
.seq RemovedBody848_926 RemovedBody848_2331

def RemovedBody848_2333 : StackLang.HolProg 64 :=
.seq RemovedBody848_925 RemovedBody848_2332

def RemovedBody848_2334 : StackLang.HolProg 64 :=
.seq RemovedBody848_924 RemovedBody848_2333

def RemovedBody848_2335 : StackLang.HolProg 64 :=
.seq RemovedBody848_923 RemovedBody848_2334

def RemovedBody848_2336 : StackLang.HolProg 64 :=
.seq RemovedBody848_916 RemovedBody848_2335

def RemovedBody848_2337 : StackLang.HolProg 64 :=
.seq RemovedBody848_915 RemovedBody848_2336

def RemovedBody848_2338 : StackLang.HolProg 64 :=
.seq RemovedBody848_914 RemovedBody848_2337

def RemovedBody848_2339 : StackLang.HolProg 64 :=
.seq RemovedBody848_913 RemovedBody848_2338

def RemovedBody848_2340 : StackLang.HolProg 64 :=
.seq RemovedBody848_906 RemovedBody848_2339

def RemovedBody848_2341 : StackLang.HolProg 64 :=
.seq RemovedBody848_905 RemovedBody848_2340

def RemovedBody848_2342 : StackLang.HolProg 64 :=
.seq RemovedBody848_904 RemovedBody848_2341

def RemovedBody848_2343 : StackLang.HolProg 64 :=
.seq RemovedBody848_903 RemovedBody848_2342

def RemovedBody848_2344 : StackLang.HolProg 64 :=
.seq RemovedBody848_844 RemovedBody848_2343

def RemovedBody848_2345 : StackLang.HolProg 64 :=
.seq RemovedBody848_841 RemovedBody848_2344

def RemovedBody848_2346 : StackLang.HolProg 64 :=
.seq RemovedBody848_840 RemovedBody848_2345

def RemovedBody848_2347 : StackLang.HolProg 64 :=
.seq RemovedBody848_839 RemovedBody848_2346

def RemovedBody848_2348 : StackLang.HolProg 64 :=
.seq RemovedBody848_838 RemovedBody848_2347

def RemovedBody848_2349 : StackLang.HolProg 64 :=
.seq RemovedBody848_783 RemovedBody848_2348

def RemovedBody848_2350 : StackLang.HolProg 64 :=
.seq RemovedBody848_782 RemovedBody848_2349

def RemovedBody848_2351 : StackLang.HolProg 64 :=
.seq RemovedBody848_781 RemovedBody848_2350

def RemovedBody848_2352 : StackLang.HolProg 64 :=
.seq RemovedBody848_780 RemovedBody848_2351

def RemovedBody848_2353 : StackLang.HolProg 64 :=
.seq RemovedBody848_779 RemovedBody848_2352

def RemovedBody848_2354 : StackLang.HolProg 64 :=
.seq RemovedBody848_778 RemovedBody848_2353

def RemovedBody848_2355 : StackLang.HolProg 64 :=
.seq RemovedBody848_769 RemovedBody848_2354

def RemovedBody848_2356 : StackLang.HolProg 64 :=
.seq RemovedBody848_768 RemovedBody848_2355

def RemovedBody848_2357 : StackLang.HolProg 64 :=
.seq RemovedBody848_767 RemovedBody848_2356

def RemovedBody848_2358 : StackLang.HolProg 64 :=
.seq RemovedBody848_766 RemovedBody848_2357

def RemovedBody848_2359 : StackLang.HolProg 64 :=
.seq RemovedBody848_765 RemovedBody848_2358

def RemovedBody848_2360 : StackLang.HolProg 64 :=
.seq RemovedBody848_758 RemovedBody848_2359

def RemovedBody848_2361 : StackLang.HolProg 64 :=
.seq RemovedBody848_757 RemovedBody848_2360

def RemovedBody848_2362 : StackLang.HolProg 64 :=
.seq RemovedBody848_756 RemovedBody848_2361

def RemovedBody848_2363 : StackLang.HolProg 64 :=
.seq RemovedBody848_755 RemovedBody848_2362

def RemovedBody848_2364 : StackLang.HolProg 64 :=
.seq RemovedBody848_748 RemovedBody848_2363

def RemovedBody848_2365 : StackLang.HolProg 64 :=
.seq RemovedBody848_747 RemovedBody848_2364

def RemovedBody848_2366 : StackLang.HolProg 64 :=
.seq RemovedBody848_746 RemovedBody848_2365

def RemovedBody848_2367 : StackLang.HolProg 64 :=
.seq RemovedBody848_745 RemovedBody848_2366

def RemovedBody848_2368 : StackLang.HolProg 64 :=
.seq RemovedBody848_686 RemovedBody848_2367

def RemovedBody848_2369 : StackLang.HolProg 64 :=
.seq RemovedBody848_683 RemovedBody848_2368

def RemovedBody848_2370 : StackLang.HolProg 64 :=
.seq RemovedBody848_682 RemovedBody848_2369

def RemovedBody848_2371 : StackLang.HolProg 64 :=
.seq RemovedBody848_681 RemovedBody848_2370

def RemovedBody848_2372 : StackLang.HolProg 64 :=
.seq RemovedBody848_680 RemovedBody848_2371

def RemovedBody848_2373 : StackLang.HolProg 64 :=
.seq RemovedBody848_625 RemovedBody848_2372

def RemovedBody848_2374 : StackLang.HolProg 64 :=
.seq RemovedBody848_624 RemovedBody848_2373

def RemovedBody848_2375 : StackLang.HolProg 64 :=
.seq RemovedBody848_623 RemovedBody848_2374

def RemovedBody848_2376 : StackLang.HolProg 64 :=
.seq RemovedBody848_622 RemovedBody848_2375

def RemovedBody848_2377 : StackLang.HolProg 64 :=
.seq RemovedBody848_621 RemovedBody848_2376

def RemovedBody848_2378 : StackLang.HolProg 64 :=
.seq RemovedBody848_620 RemovedBody848_2377

def RemovedBody848_2379 : StackLang.HolProg 64 :=
.seq RemovedBody848_611 RemovedBody848_2378

def RemovedBody848_2380 : StackLang.HolProg 64 :=
.seq RemovedBody848_610 RemovedBody848_2379

def RemovedBody848_2381 : StackLang.HolProg 64 :=
.seq RemovedBody848_609 RemovedBody848_2380

def RemovedBody848_2382 : StackLang.HolProg 64 :=
.seq RemovedBody848_608 RemovedBody848_2381

def RemovedBody848_2383 : StackLang.HolProg 64 :=
.seq RemovedBody848_607 RemovedBody848_2382

def RemovedBody848_2384 : StackLang.HolProg 64 :=
.seq RemovedBody848_600 RemovedBody848_2383

def RemovedBody848_2385 : StackLang.HolProg 64 :=
.seq RemovedBody848_599 RemovedBody848_2384

def RemovedBody848_2386 : StackLang.HolProg 64 :=
.seq RemovedBody848_598 RemovedBody848_2385

def RemovedBody848_2387 : StackLang.HolProg 64 :=
.seq RemovedBody848_597 RemovedBody848_2386

def RemovedBody848_2388 : StackLang.HolProg 64 :=
.seq RemovedBody848_590 RemovedBody848_2387

def RemovedBody848_2389 : StackLang.HolProg 64 :=
.seq RemovedBody848_589 RemovedBody848_2388

def RemovedBody848_2390 : StackLang.HolProg 64 :=
.seq RemovedBody848_588 RemovedBody848_2389

def RemovedBody848_2391 : StackLang.HolProg 64 :=
.seq RemovedBody848_587 RemovedBody848_2390

def RemovedBody848_2392 : StackLang.HolProg 64 :=
.seq RemovedBody848_528 RemovedBody848_2391

def RemovedBody848_2393 : StackLang.HolProg 64 :=
.seq RemovedBody848_525 RemovedBody848_2392

def RemovedBody848_2394 : StackLang.HolProg 64 :=
.seq RemovedBody848_524 RemovedBody848_2393

def RemovedBody848_2395 : StackLang.HolProg 64 :=
.seq RemovedBody848_523 RemovedBody848_2394

def RemovedBody848_2396 : StackLang.HolProg 64 :=
.seq RemovedBody848_522 RemovedBody848_2395

def RemovedBody848_2397 : StackLang.HolProg 64 :=
.seq RemovedBody848_467 RemovedBody848_2396

def RemovedBody848_2398 : StackLang.HolProg 64 :=
.seq RemovedBody848_466 RemovedBody848_2397

def RemovedBody848_2399 : StackLang.HolProg 64 :=
.seq RemovedBody848_465 RemovedBody848_2398

def RemovedBody848_2400 : StackLang.HolProg 64 :=
.seq RemovedBody848_464 RemovedBody848_2399

def RemovedBody848_2401 : StackLang.HolProg 64 :=
.seq RemovedBody848_463 RemovedBody848_2400

def RemovedBody848_2402 : StackLang.HolProg 64 :=
.seq RemovedBody848_462 RemovedBody848_2401

def RemovedBody848_2403 : StackLang.HolProg 64 :=
.seq RemovedBody848_453 RemovedBody848_2402

def RemovedBody848_2404 : StackLang.HolProg 64 :=
.seq RemovedBody848_452 RemovedBody848_2403

def RemovedBody848_2405 : StackLang.HolProg 64 :=
.seq RemovedBody848_451 RemovedBody848_2404

def RemovedBody848_2406 : StackLang.HolProg 64 :=
.seq RemovedBody848_450 RemovedBody848_2405

def RemovedBody848_2407 : StackLang.HolProg 64 :=
.seq RemovedBody848_449 RemovedBody848_2406

def RemovedBody848_2408 : StackLang.HolProg 64 :=
.seq RemovedBody848_442 RemovedBody848_2407

def RemovedBody848_2409 : StackLang.HolProg 64 :=
.seq RemovedBody848_441 RemovedBody848_2408

def RemovedBody848_2410 : StackLang.HolProg 64 :=
.seq RemovedBody848_440 RemovedBody848_2409

def RemovedBody848_2411 : StackLang.HolProg 64 :=
.seq RemovedBody848_439 RemovedBody848_2410

def RemovedBody848_2412 : StackLang.HolProg 64 :=
.seq RemovedBody848_432 RemovedBody848_2411

def RemovedBody848_2413 : StackLang.HolProg 64 :=
.seq RemovedBody848_431 RemovedBody848_2412

def RemovedBody848_2414 : StackLang.HolProg 64 :=
.seq RemovedBody848_430 RemovedBody848_2413

def RemovedBody848_2415 : StackLang.HolProg 64 :=
.seq RemovedBody848_429 RemovedBody848_2414

def RemovedBody848_2416 : StackLang.HolProg 64 :=
.seq RemovedBody848_370 RemovedBody848_2415

def RemovedBody848_2417 : StackLang.HolProg 64 :=
.seq RemovedBody848_367 RemovedBody848_2416

def RemovedBody848_2418 : StackLang.HolProg 64 :=
.seq RemovedBody848_366 RemovedBody848_2417

def RemovedBody848_2419 : StackLang.HolProg 64 :=
.seq RemovedBody848_365 RemovedBody848_2418

def RemovedBody848_2420 : StackLang.HolProg 64 :=
.seq RemovedBody848_364 RemovedBody848_2419

def RemovedBody848_2421 : StackLang.HolProg 64 :=
.seq RemovedBody848_309 RemovedBody848_2420

def RemovedBody848_2422 : StackLang.HolProg 64 :=
.seq RemovedBody848_308 RemovedBody848_2421

def RemovedBody848_2423 : StackLang.HolProg 64 :=
.seq RemovedBody848_307 RemovedBody848_2422

def RemovedBody848_2424 : StackLang.HolProg 64 :=
.seq RemovedBody848_306 RemovedBody848_2423

def RemovedBody848_2425 : StackLang.HolProg 64 :=
.seq RemovedBody848_305 RemovedBody848_2424

def RemovedBody848_2426 : StackLang.HolProg 64 :=
.seq RemovedBody848_304 RemovedBody848_2425

def RemovedBody848_2427 : StackLang.HolProg 64 :=
.seq RemovedBody848_295 RemovedBody848_2426

def RemovedBody848_2428 : StackLang.HolProg 64 :=
.seq RemovedBody848_294 RemovedBody848_2427

def RemovedBody848_2429 : StackLang.HolProg 64 :=
.seq RemovedBody848_293 RemovedBody848_2428

def RemovedBody848_2430 : StackLang.HolProg 64 :=
.seq RemovedBody848_292 RemovedBody848_2429

def RemovedBody848_2431 : StackLang.HolProg 64 :=
.seq RemovedBody848_291 RemovedBody848_2430

def RemovedBody848_2432 : StackLang.HolProg 64 :=
.seq RemovedBody848_284 RemovedBody848_2431

def RemovedBody848_2433 : StackLang.HolProg 64 :=
.seq RemovedBody848_283 RemovedBody848_2432

def RemovedBody848_2434 : StackLang.HolProg 64 :=
.seq RemovedBody848_282 RemovedBody848_2433

def RemovedBody848_2435 : StackLang.HolProg 64 :=
.seq RemovedBody848_281 RemovedBody848_2434

def RemovedBody848_2436 : StackLang.HolProg 64 :=
.seq RemovedBody848_274 RemovedBody848_2435

def RemovedBody848_2437 : StackLang.HolProg 64 :=
.seq RemovedBody848_273 RemovedBody848_2436

def RemovedBody848_2438 : StackLang.HolProg 64 :=
.seq RemovedBody848_272 RemovedBody848_2437

def RemovedBody848_2439 : StackLang.HolProg 64 :=
.seq RemovedBody848_271 RemovedBody848_2438

def RemovedBody848_2440 : StackLang.HolProg 64 :=
.seq RemovedBody848_212 RemovedBody848_2439

def RemovedBody848_2441 : StackLang.HolProg 64 :=
.seq RemovedBody848_209 RemovedBody848_2440

def RemovedBody848_2442 : StackLang.HolProg 64 :=
.seq RemovedBody848_208 RemovedBody848_2441

def RemovedBody848_2443 : StackLang.HolProg 64 :=
.seq RemovedBody848_207 RemovedBody848_2442

def RemovedBody848_2444 : StackLang.HolProg 64 :=
.seq RemovedBody848_206 RemovedBody848_2443

def RemovedBody848_2445 : StackLang.HolProg 64 :=
.seq RemovedBody848_151 RemovedBody848_2444

def RemovedBody848_2446 : StackLang.HolProg 64 :=
.seq RemovedBody848_150 RemovedBody848_2445

def RemovedBody848_2447 : StackLang.HolProg 64 :=
.seq RemovedBody848_149 RemovedBody848_2446

def RemovedBody848_2448 : StackLang.HolProg 64 :=
.seq RemovedBody848_148 RemovedBody848_2447

def RemovedBody848_2449 : StackLang.HolProg 64 :=
.seq RemovedBody848_147 RemovedBody848_2448

def RemovedBody848_2450 : StackLang.HolProg 64 :=
.seq RemovedBody848_94 RemovedBody848_2449

def RemovedBody848_2451 : StackLang.HolProg 64 :=
.seq RemovedBody848_89 RemovedBody848_2450

def RemovedBody848_2452 : StackLang.HolProg 64 :=
.seq RemovedBody848_88 RemovedBody848_2451

def RemovedBody848_2453 : StackLang.HolProg 64 :=
.seq RemovedBody848_87 RemovedBody848_2452

def RemovedBody848_2454 : StackLang.HolProg 64 :=
.seq RemovedBody848_86 RemovedBody848_2453

def RemovedBody848_2455 : StackLang.HolProg 64 :=
.seq RemovedBody848_85 RemovedBody848_2454

def RemovedBody848_2456 : StackLang.HolProg 64 :=
.seq RemovedBody848_30 RemovedBody848_2455

def RemovedBody848_2457 : StackLang.HolProg 64 :=
.seq RemovedBody848_25 RemovedBody848_2456

def RemovedBody848_2458 : StackLang.HolProg 64 :=
.seq RemovedBody848_24 RemovedBody848_2457

def RemovedBody848_2459 : StackLang.HolProg 64 :=
.seq RemovedBody848_23 RemovedBody848_2458

def RemovedBody848_2460 : StackLang.HolProg 64 :=
.seq RemovedBody848_8 RemovedBody848_2459

def RemovedBody848_2461 : StackLang.HolProg 64 :=
.seq RemovedBody848_7 RemovedBody848_2460

def RemovedBody848_2462 : StackLang.HolProg 64 :=
.seq RemovedBody848_6 RemovedBody848_2461

def Removed848 : Nat × StackLang.HolProg 64 := (848, RemovedBody848_2462)
theorem Removed848_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc848 = Removed848 := by
  kernel_rfl
#print axioms Removed848_eq
end InitECandidate.Proofs.BackendStages
