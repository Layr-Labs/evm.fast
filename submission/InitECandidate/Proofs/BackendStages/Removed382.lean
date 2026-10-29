import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc382
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody382_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody382_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody382_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody382_3 : StackLang.HolProg 64 :=
.seq RemovedBody382_1 RemovedBody382_2

def RemovedBody382_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody382_3 RemovedBody382_4

def RemovedBody382_6 : StackLang.HolProg 64 :=
.seq RemovedBody382_0 RemovedBody382_5

def RemovedBody382_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody382_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody382_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_11 : StackLang.HolProg 64 :=
.seq RemovedBody382_9 RemovedBody382_10

def RemovedBody382_12 : StackLang.HolProg 64 :=
.seq RemovedBody382_8 RemovedBody382_11

def RemovedBody382_13 : StackLang.HolProg 64 :=
.seq RemovedBody382_7 RemovedBody382_12

def RemovedBody382_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1125#64)

def RemovedBody382_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_17 : StackLang.HolProg 64 :=
.seq RemovedBody382_15 RemovedBody382_16

def RemovedBody382_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody382_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody382_21 : StackLang.HolProg 64 :=
.seq RemovedBody382_19 RemovedBody382_20

def RemovedBody382_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody382_21 RemovedBody382_22

def RemovedBody382_24 : StackLang.HolProg 64 :=
.seq RemovedBody382_18 RemovedBody382_23

def RemovedBody382_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody382_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 3

def RemovedBody382_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody382_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody382_34 : StackLang.HolProg 64 :=
.seq RemovedBody382_32 RemovedBody382_33

def RemovedBody382_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody382_36 : StackLang.HolProg 64 :=
.seq RemovedBody382_34 RemovedBody382_35

def RemovedBody382_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_38 : StackLang.HolProg 64 :=
.seq RemovedBody382_36 RemovedBody382_37

def RemovedBody382_39 : StackLang.HolProg 64 :=
.seq RemovedBody382_31 RemovedBody382_38

def RemovedBody382_40 : StackLang.HolProg 64 :=
.seq RemovedBody382_30 RemovedBody382_39

def RemovedBody382_41 : StackLang.HolProg 64 :=
.seq RemovedBody382_29 RemovedBody382_40

def RemovedBody382_42 : StackLang.HolProg 64 :=
.seq RemovedBody382_28 RemovedBody382_41

def RemovedBody382_43 : StackLang.HolProg 64 :=
.seq RemovedBody382_27 RemovedBody382_42

def RemovedBody382_44 : StackLang.HolProg 64 :=
.seq RemovedBody382_26 RemovedBody382_43

def RemovedBody382_45 : StackLang.HolProg 64 :=
.seq RemovedBody382_25 RemovedBody382_44

def RemovedBody382_46 : StackLang.HolProg 64 :=
.seq RemovedBody382_24 RemovedBody382_45

def RemovedBody382_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody382_54 : StackLang.HolProg 64 :=
.seq RemovedBody382_52 RemovedBody382_53

def RemovedBody382_55 : StackLang.HolProg 64 :=
.seq RemovedBody382_51 RemovedBody382_54

def RemovedBody382_56 : StackLang.HolProg 64 :=
.seq RemovedBody382_50 RemovedBody382_55

def RemovedBody382_57 : StackLang.HolProg 64 :=
.seq RemovedBody382_49 RemovedBody382_56

def RemovedBody382_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody382_60 : StackLang.HolProg 64 :=
.seq RemovedBody382_58 RemovedBody382_59

def RemovedBody382_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody382_57, 0, 382, 2)) (Sum.inl 69) (some (RemovedBody382_60, 382, 3))

def RemovedBody382_62 : StackLang.HolProg 64 :=
.seq RemovedBody382_48 RemovedBody382_61

def RemovedBody382_63 : StackLang.HolProg 64 :=
.seq RemovedBody382_47 RemovedBody382_62

def RemovedBody382_64 : StackLang.HolProg 64 :=
.seq RemovedBody382_46 RemovedBody382_63

def RemovedBody382_65 : StackLang.HolProg 64 :=
.seq RemovedBody382_17 RemovedBody382_64

def RemovedBody382_66 : StackLang.HolProg 64 :=
.seq RemovedBody382_14 RemovedBody382_65

def RemovedBody382_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody382_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 72#64)

def RemovedBody382_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1126#64)

def RemovedBody382_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_73 : StackLang.HolProg 64 :=
.seq RemovedBody382_71 RemovedBody382_72

def RemovedBody382_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody382_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody382_77 : StackLang.HolProg 64 :=
.seq RemovedBody382_75 RemovedBody382_76

def RemovedBody382_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody382_77 RemovedBody382_78

def RemovedBody382_80 : StackLang.HolProg 64 :=
.seq RemovedBody382_74 RemovedBody382_79

def RemovedBody382_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody382_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 5

def RemovedBody382_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody382_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody382_90 : StackLang.HolProg 64 :=
.seq RemovedBody382_88 RemovedBody382_89

def RemovedBody382_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody382_92 : StackLang.HolProg 64 :=
.seq RemovedBody382_90 RemovedBody382_91

def RemovedBody382_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_94 : StackLang.HolProg 64 :=
.seq RemovedBody382_92 RemovedBody382_93

def RemovedBody382_95 : StackLang.HolProg 64 :=
.seq RemovedBody382_87 RemovedBody382_94

def RemovedBody382_96 : StackLang.HolProg 64 :=
.seq RemovedBody382_86 RemovedBody382_95

def RemovedBody382_97 : StackLang.HolProg 64 :=
.seq RemovedBody382_85 RemovedBody382_96

def RemovedBody382_98 : StackLang.HolProg 64 :=
.seq RemovedBody382_84 RemovedBody382_97

def RemovedBody382_99 : StackLang.HolProg 64 :=
.seq RemovedBody382_83 RemovedBody382_98

def RemovedBody382_100 : StackLang.HolProg 64 :=
.seq RemovedBody382_82 RemovedBody382_99

def RemovedBody382_101 : StackLang.HolProg 64 :=
.seq RemovedBody382_81 RemovedBody382_100

def RemovedBody382_102 : StackLang.HolProg 64 :=
.seq RemovedBody382_80 RemovedBody382_101

def RemovedBody382_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody382_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody382_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody382_114 : StackLang.HolProg 64 :=
.seq RemovedBody382_112 RemovedBody382_113

def RemovedBody382_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_117 : StackLang.HolProg 64 :=
.seq RemovedBody382_115 RemovedBody382_116

def RemovedBody382_118 : StackLang.HolProg 64 :=
.seq RemovedBody382_114 RemovedBody382_117

def RemovedBody382_119 : StackLang.HolProg 64 :=
.seq RemovedBody382_111 RemovedBody382_118

def RemovedBody382_120 : StackLang.HolProg 64 :=
.seq RemovedBody382_110 RemovedBody382_119

def RemovedBody382_121 : StackLang.HolProg 64 :=
.seq RemovedBody382_109 RemovedBody382_120

def RemovedBody382_122 : StackLang.HolProg 64 :=
.seq RemovedBody382_108 RemovedBody382_121

def RemovedBody382_123 : StackLang.HolProg 64 :=
.seq RemovedBody382_107 RemovedBody382_122

def RemovedBody382_124 : StackLang.HolProg 64 :=
.seq RemovedBody382_106 RemovedBody382_123

def RemovedBody382_125 : StackLang.HolProg 64 :=
.seq RemovedBody382_105 RemovedBody382_124

def RemovedBody382_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody382_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody382_130 : StackLang.HolProg 64 :=
.seq RemovedBody382_128 RemovedBody382_129

def RemovedBody382_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_133 : StackLang.HolProg 64 :=
.seq RemovedBody382_131 RemovedBody382_132

def RemovedBody382_134 : StackLang.HolProg 64 :=
.seq RemovedBody382_130 RemovedBody382_133

def RemovedBody382_135 : StackLang.HolProg 64 :=
.seq RemovedBody382_127 RemovedBody382_134

def RemovedBody382_136 : StackLang.HolProg 64 :=
.seq RemovedBody382_126 RemovedBody382_135

def RemovedBody382_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody382_138 : StackLang.HolProg 64 :=
.seq RemovedBody382_136 RemovedBody382_137

def RemovedBody382_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody382_125, 0, 382, 4)) (Sum.inl 68) (some (RemovedBody382_138, 382, 5))

def RemovedBody382_140 : StackLang.HolProg 64 :=
.seq RemovedBody382_104 RemovedBody382_139

def RemovedBody382_141 : StackLang.HolProg 64 :=
.seq RemovedBody382_103 RemovedBody382_140

def RemovedBody382_142 : StackLang.HolProg 64 :=
.seq RemovedBody382_102 RemovedBody382_141

def RemovedBody382_143 : StackLang.HolProg 64 :=
.seq RemovedBody382_73 RemovedBody382_142

def RemovedBody382_144 : StackLang.HolProg 64 :=
.seq RemovedBody382_70 RemovedBody382_143

def RemovedBody382_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody382_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody382_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody382_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody382_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody382_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1127#64)

def RemovedBody382_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_155 : StackLang.HolProg 64 :=
.seq RemovedBody382_153 RemovedBody382_154

def RemovedBody382_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody382_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody382_159 : StackLang.HolProg 64 :=
.seq RemovedBody382_157 RemovedBody382_158

def RemovedBody382_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody382_159 RemovedBody382_160

def RemovedBody382_162 : StackLang.HolProg 64 :=
.seq RemovedBody382_156 RemovedBody382_161

def RemovedBody382_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody382_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 7

def RemovedBody382_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody382_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody382_172 : StackLang.HolProg 64 :=
.seq RemovedBody382_170 RemovedBody382_171

def RemovedBody382_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody382_174 : StackLang.HolProg 64 :=
.seq RemovedBody382_172 RemovedBody382_173

def RemovedBody382_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_176 : StackLang.HolProg 64 :=
.seq RemovedBody382_174 RemovedBody382_175

def RemovedBody382_177 : StackLang.HolProg 64 :=
.seq RemovedBody382_169 RemovedBody382_176

def RemovedBody382_178 : StackLang.HolProg 64 :=
.seq RemovedBody382_168 RemovedBody382_177

def RemovedBody382_179 : StackLang.HolProg 64 :=
.seq RemovedBody382_167 RemovedBody382_178

def RemovedBody382_180 : StackLang.HolProg 64 :=
.seq RemovedBody382_166 RemovedBody382_179

def RemovedBody382_181 : StackLang.HolProg 64 :=
.seq RemovedBody382_165 RemovedBody382_180

def RemovedBody382_182 : StackLang.HolProg 64 :=
.seq RemovedBody382_164 RemovedBody382_181

def RemovedBody382_183 : StackLang.HolProg 64 :=
.seq RemovedBody382_163 RemovedBody382_182

def RemovedBody382_184 : StackLang.HolProg 64 :=
.seq RemovedBody382_162 RemovedBody382_183

def RemovedBody382_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody382_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_194 : StackLang.HolProg 64 :=
.seq RemovedBody382_192 RemovedBody382_193

def RemovedBody382_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_196 : StackLang.HolProg 64 :=
.seq RemovedBody382_194 RemovedBody382_195

def RemovedBody382_197 : StackLang.HolProg 64 :=
.seq RemovedBody382_191 RemovedBody382_196

def RemovedBody382_198 : StackLang.HolProg 64 :=
.seq RemovedBody382_190 RemovedBody382_197

def RemovedBody382_199 : StackLang.HolProg 64 :=
.seq RemovedBody382_189 RemovedBody382_198

def RemovedBody382_200 : StackLang.HolProg 64 :=
.seq RemovedBody382_188 RemovedBody382_199

def RemovedBody382_201 : StackLang.HolProg 64 :=
.seq RemovedBody382_187 RemovedBody382_200

def RemovedBody382_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody382_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_205 : StackLang.HolProg 64 :=
.seq RemovedBody382_203 RemovedBody382_204

def RemovedBody382_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_207 : StackLang.HolProg 64 :=
.seq RemovedBody382_205 RemovedBody382_206

def RemovedBody382_208 : StackLang.HolProg 64 :=
.seq RemovedBody382_202 RemovedBody382_207

def RemovedBody382_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody382_210 : StackLang.HolProg 64 :=
.seq RemovedBody382_208 RemovedBody382_209

def RemovedBody382_211 : StackLang.HolProg 64 :=
.call (some (RemovedBody382_201, 0, 382, 6)) (Sum.inl 379) (some (RemovedBody382_210, 382, 7))

def RemovedBody382_212 : StackLang.HolProg 64 :=
.seq RemovedBody382_186 RemovedBody382_211

def RemovedBody382_213 : StackLang.HolProg 64 :=
.seq RemovedBody382_185 RemovedBody382_212

def RemovedBody382_214 : StackLang.HolProg 64 :=
.seq RemovedBody382_184 RemovedBody382_213

def RemovedBody382_215 : StackLang.HolProg 64 :=
.seq RemovedBody382_155 RemovedBody382_214

def RemovedBody382_216 : StackLang.HolProg 64 :=
.seq RemovedBody382_152 RemovedBody382_215

def RemovedBody382_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody382_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody382_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1128#64)

def RemovedBody382_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_222 : StackLang.HolProg 64 :=
.seq RemovedBody382_220 RemovedBody382_221

def RemovedBody382_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody382_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody382_226 : StackLang.HolProg 64 :=
.seq RemovedBody382_224 RemovedBody382_225

def RemovedBody382_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody382_226 RemovedBody382_227

def RemovedBody382_229 : StackLang.HolProg 64 :=
.seq RemovedBody382_223 RemovedBody382_228

def RemovedBody382_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody382_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 9

def RemovedBody382_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody382_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody382_239 : StackLang.HolProg 64 :=
.seq RemovedBody382_237 RemovedBody382_238

def RemovedBody382_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody382_241 : StackLang.HolProg 64 :=
.seq RemovedBody382_239 RemovedBody382_240

def RemovedBody382_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_243 : StackLang.HolProg 64 :=
.seq RemovedBody382_241 RemovedBody382_242

def RemovedBody382_244 : StackLang.HolProg 64 :=
.seq RemovedBody382_236 RemovedBody382_243

def RemovedBody382_245 : StackLang.HolProg 64 :=
.seq RemovedBody382_235 RemovedBody382_244

def RemovedBody382_246 : StackLang.HolProg 64 :=
.seq RemovedBody382_234 RemovedBody382_245

def RemovedBody382_247 : StackLang.HolProg 64 :=
.seq RemovedBody382_233 RemovedBody382_246

def RemovedBody382_248 : StackLang.HolProg 64 :=
.seq RemovedBody382_232 RemovedBody382_247

def RemovedBody382_249 : StackLang.HolProg 64 :=
.seq RemovedBody382_231 RemovedBody382_248

def RemovedBody382_250 : StackLang.HolProg 64 :=
.seq RemovedBody382_230 RemovedBody382_249

def RemovedBody382_251 : StackLang.HolProg 64 :=
.seq RemovedBody382_229 RemovedBody382_250

def RemovedBody382_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_259 : StackLang.HolProg 64 :=
.seq RemovedBody382_257 RemovedBody382_258

def RemovedBody382_260 : StackLang.HolProg 64 :=
.seq RemovedBody382_256 RemovedBody382_259

def RemovedBody382_261 : StackLang.HolProg 64 :=
.seq RemovedBody382_255 RemovedBody382_260

def RemovedBody382_262 : StackLang.HolProg 64 :=
.seq RemovedBody382_254 RemovedBody382_261

def RemovedBody382_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody382_264 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody382_265 : StackLang.HolProg 64 :=
.seq RemovedBody382_263 RemovedBody382_264

def RemovedBody382_266 : StackLang.HolProg 64 :=
.call (some (RemovedBody382_262, 0, 382, 8)) (Sum.inl 380) (some (RemovedBody382_265, 382, 9))

def RemovedBody382_267 : StackLang.HolProg 64 :=
.seq RemovedBody382_253 RemovedBody382_266

def RemovedBody382_268 : StackLang.HolProg 64 :=
.seq RemovedBody382_252 RemovedBody382_267

def RemovedBody382_269 : StackLang.HolProg 64 :=
.seq RemovedBody382_251 RemovedBody382_268

def RemovedBody382_270 : StackLang.HolProg 64 :=
.seq RemovedBody382_222 RemovedBody382_269

def RemovedBody382_271 : StackLang.HolProg 64 :=
.seq RemovedBody382_219 RemovedBody382_270

def RemovedBody382_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody382_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody382_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1129#64)

def RemovedBody382_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_277 : StackLang.HolProg 64 :=
.seq RemovedBody382_275 RemovedBody382_276

def RemovedBody382_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody382_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody382_281 : StackLang.HolProg 64 :=
.seq RemovedBody382_279 RemovedBody382_280

def RemovedBody382_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody382_281 RemovedBody382_282

def RemovedBody382_284 : StackLang.HolProg 64 :=
.seq RemovedBody382_278 RemovedBody382_283

def RemovedBody382_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody382_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody382_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 11

def RemovedBody382_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody382_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody382_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody382_294 : StackLang.HolProg 64 :=
.seq RemovedBody382_292 RemovedBody382_293

def RemovedBody382_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody382_296 : StackLang.HolProg 64 :=
.seq RemovedBody382_294 RemovedBody382_295

def RemovedBody382_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_298 : StackLang.HolProg 64 :=
.seq RemovedBody382_296 RemovedBody382_297

def RemovedBody382_299 : StackLang.HolProg 64 :=
.seq RemovedBody382_291 RemovedBody382_298

def RemovedBody382_300 : StackLang.HolProg 64 :=
.seq RemovedBody382_290 RemovedBody382_299

def RemovedBody382_301 : StackLang.HolProg 64 :=
.seq RemovedBody382_289 RemovedBody382_300

def RemovedBody382_302 : StackLang.HolProg 64 :=
.seq RemovedBody382_288 RemovedBody382_301

def RemovedBody382_303 : StackLang.HolProg 64 :=
.seq RemovedBody382_287 RemovedBody382_302

def RemovedBody382_304 : StackLang.HolProg 64 :=
.seq RemovedBody382_286 RemovedBody382_303

def RemovedBody382_305 : StackLang.HolProg 64 :=
.seq RemovedBody382_285 RemovedBody382_304

def RemovedBody382_306 : StackLang.HolProg 64 :=
.seq RemovedBody382_284 RemovedBody382_305

def RemovedBody382_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody382_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody382_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody382_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody382_314 : StackLang.HolProg 64 :=
.seq RemovedBody382_312 RemovedBody382_313

def RemovedBody382_315 : StackLang.HolProg 64 :=
.seq RemovedBody382_311 RemovedBody382_314

def RemovedBody382_316 : StackLang.HolProg 64 :=
.seq RemovedBody382_310 RemovedBody382_315

def RemovedBody382_317 : StackLang.HolProg 64 :=
.seq RemovedBody382_309 RemovedBody382_316

def RemovedBody382_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody382_319 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody382_320 : StackLang.HolProg 64 :=
.seq RemovedBody382_318 RemovedBody382_319

def RemovedBody382_321 : StackLang.HolProg 64 :=
.call (some (RemovedBody382_317, 0, 382, 10)) (Sum.inl 70) (some (RemovedBody382_320, 382, 11))

def RemovedBody382_322 : StackLang.HolProg 64 :=
.seq RemovedBody382_308 RemovedBody382_321

def RemovedBody382_323 : StackLang.HolProg 64 :=
.seq RemovedBody382_307 RemovedBody382_322

def RemovedBody382_324 : StackLang.HolProg 64 :=
.seq RemovedBody382_306 RemovedBody382_323

def RemovedBody382_325 : StackLang.HolProg 64 :=
.seq RemovedBody382_277 RemovedBody382_324

def RemovedBody382_326 : StackLang.HolProg 64 :=
.seq RemovedBody382_274 RemovedBody382_325

def RemovedBody382_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody382_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody382_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody382_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody382_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody382_332 : StackLang.HolProg 64 :=
.seq RemovedBody382_330 RemovedBody382_331

def RemovedBody382_333 : StackLang.HolProg 64 :=
.seq RemovedBody382_329 RemovedBody382_332

def RemovedBody382_334 : StackLang.HolProg 64 :=
.seq RemovedBody382_328 RemovedBody382_333

def RemovedBody382_335 : StackLang.HolProg 64 :=
.seq RemovedBody382_327 RemovedBody382_334

def RemovedBody382_336 : StackLang.HolProg 64 :=
.seq RemovedBody382_326 RemovedBody382_335

def RemovedBody382_337 : StackLang.HolProg 64 :=
.seq RemovedBody382_273 RemovedBody382_336

def RemovedBody382_338 : StackLang.HolProg 64 :=
.seq RemovedBody382_272 RemovedBody382_337

def RemovedBody382_339 : StackLang.HolProg 64 :=
.seq RemovedBody382_271 RemovedBody382_338

def RemovedBody382_340 : StackLang.HolProg 64 :=
.seq RemovedBody382_218 RemovedBody382_339

def RemovedBody382_341 : StackLang.HolProg 64 :=
.seq RemovedBody382_217 RemovedBody382_340

def RemovedBody382_342 : StackLang.HolProg 64 :=
.seq RemovedBody382_216 RemovedBody382_341

def RemovedBody382_343 : StackLang.HolProg 64 :=
.seq RemovedBody382_151 RemovedBody382_342

def RemovedBody382_344 : StackLang.HolProg 64 :=
.seq RemovedBody382_150 RemovedBody382_343

def RemovedBody382_345 : StackLang.HolProg 64 :=
.seq RemovedBody382_149 RemovedBody382_344

def RemovedBody382_346 : StackLang.HolProg 64 :=
.seq RemovedBody382_148 RemovedBody382_345

def RemovedBody382_347 : StackLang.HolProg 64 :=
.seq RemovedBody382_147 RemovedBody382_346

def RemovedBody382_348 : StackLang.HolProg 64 :=
.seq RemovedBody382_146 RemovedBody382_347

def RemovedBody382_349 : StackLang.HolProg 64 :=
.seq RemovedBody382_145 RemovedBody382_348

def RemovedBody382_350 : StackLang.HolProg 64 :=
.seq RemovedBody382_144 RemovedBody382_349

def RemovedBody382_351 : StackLang.HolProg 64 :=
.seq RemovedBody382_69 RemovedBody382_350

def RemovedBody382_352 : StackLang.HolProg 64 :=
.seq RemovedBody382_68 RemovedBody382_351

def RemovedBody382_353 : StackLang.HolProg 64 :=
.seq RemovedBody382_67 RemovedBody382_352

def RemovedBody382_354 : StackLang.HolProg 64 :=
.seq RemovedBody382_66 RemovedBody382_353

def RemovedBody382_355 : StackLang.HolProg 64 :=
.seq RemovedBody382_13 RemovedBody382_354

def RemovedBody382_356 : StackLang.HolProg 64 :=
.seq RemovedBody382_6 RemovedBody382_355

def Removed382 : Nat × StackLang.HolProg 64 := (382, RemovedBody382_356)
theorem Removed382_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc382 = Removed382 := by
  kernel_rfl
#print axioms Removed382_eq
end InitECandidate.Proofs.BackendStages
