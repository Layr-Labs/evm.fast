import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc611
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody611_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody611_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody611_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody611_3 : StackLang.HolProg 64 :=
.seq RemovedBody611_1 RemovedBody611_2

def RemovedBody611_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody611_3 RemovedBody611_4

def RemovedBody611_6 : StackLang.HolProg 64 :=
.seq RemovedBody611_0 RemovedBody611_5

def RemovedBody611_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody611_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 168#64))

def RemovedBody611_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 264#64))

def RemovedBody611_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody611_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody611_13 : StackLang.HolProg 64 :=
.seq RemovedBody611_11 RemovedBody611_12

def RemovedBody611_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2348#64)

def RemovedBody611_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody611_17 : StackLang.HolProg 64 :=
.seq RemovedBody611_15 RemovedBody611_16

def RemovedBody611_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody611_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody611_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody611_21 : StackLang.HolProg 64 :=
.seq RemovedBody611_19 RemovedBody611_20

def RemovedBody611_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody611_21 RemovedBody611_22

def RemovedBody611_24 : StackLang.HolProg 64 :=
.seq RemovedBody611_18 RemovedBody611_23

def RemovedBody611_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody611_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody611_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 3

def RemovedBody611_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody611_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody611_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody611_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody611_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody611_34 : StackLang.HolProg 64 :=
.seq RemovedBody611_32 RemovedBody611_33

def RemovedBody611_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody611_36 : StackLang.HolProg 64 :=
.seq RemovedBody611_34 RemovedBody611_35

def RemovedBody611_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody611_38 : StackLang.HolProg 64 :=
.seq RemovedBody611_36 RemovedBody611_37

def RemovedBody611_39 : StackLang.HolProg 64 :=
.seq RemovedBody611_31 RemovedBody611_38

def RemovedBody611_40 : StackLang.HolProg 64 :=
.seq RemovedBody611_30 RemovedBody611_39

def RemovedBody611_41 : StackLang.HolProg 64 :=
.seq RemovedBody611_29 RemovedBody611_40

def RemovedBody611_42 : StackLang.HolProg 64 :=
.seq RemovedBody611_28 RemovedBody611_41

def RemovedBody611_43 : StackLang.HolProg 64 :=
.seq RemovedBody611_27 RemovedBody611_42

def RemovedBody611_44 : StackLang.HolProg 64 :=
.seq RemovedBody611_26 RemovedBody611_43

def RemovedBody611_45 : StackLang.HolProg 64 :=
.seq RemovedBody611_25 RemovedBody611_44

def RemovedBody611_46 : StackLang.HolProg 64 :=
.seq RemovedBody611_24 RemovedBody611_45

def RemovedBody611_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody611_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody611_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody611_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody611_54 : StackLang.HolProg 64 :=
.seq RemovedBody611_52 RemovedBody611_53

def RemovedBody611_55 : StackLang.HolProg 64 :=
.seq RemovedBody611_51 RemovedBody611_54

def RemovedBody611_56 : StackLang.HolProg 64 :=
.seq RemovedBody611_50 RemovedBody611_55

def RemovedBody611_57 : StackLang.HolProg 64 :=
.seq RemovedBody611_49 RemovedBody611_56

def RemovedBody611_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody611_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody611_60 : StackLang.HolProg 64 :=
.seq RemovedBody611_58 RemovedBody611_59

def RemovedBody611_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody611_57, 0, 611, 2)) (Sum.inl 194) (some (RemovedBody611_60, 611, 3))

def RemovedBody611_62 : StackLang.HolProg 64 :=
.seq RemovedBody611_48 RemovedBody611_61

def RemovedBody611_63 : StackLang.HolProg 64 :=
.seq RemovedBody611_47 RemovedBody611_62

def RemovedBody611_64 : StackLang.HolProg 64 :=
.seq RemovedBody611_46 RemovedBody611_63

def RemovedBody611_65 : StackLang.HolProg 64 :=
.seq RemovedBody611_17 RemovedBody611_64

def RemovedBody611_66 : StackLang.HolProg 64 :=
.seq RemovedBody611_14 RemovedBody611_65

def RemovedBody611_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody611_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def RemovedBody611_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 272#64))

def RemovedBody611_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2349#64)

def RemovedBody611_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody611_76 : StackLang.HolProg 64 :=
.seq RemovedBody611_74 RemovedBody611_75

def RemovedBody611_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody611_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody611_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody611_80 : StackLang.HolProg 64 :=
.seq RemovedBody611_78 RemovedBody611_79

def RemovedBody611_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody611_80 RemovedBody611_81

def RemovedBody611_83 : StackLang.HolProg 64 :=
.seq RemovedBody611_77 RemovedBody611_82

def RemovedBody611_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody611_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody611_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 5

def RemovedBody611_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody611_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody611_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody611_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody611_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody611_93 : StackLang.HolProg 64 :=
.seq RemovedBody611_91 RemovedBody611_92

def RemovedBody611_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody611_95 : StackLang.HolProg 64 :=
.seq RemovedBody611_93 RemovedBody611_94

def RemovedBody611_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody611_97 : StackLang.HolProg 64 :=
.seq RemovedBody611_95 RemovedBody611_96

def RemovedBody611_98 : StackLang.HolProg 64 :=
.seq RemovedBody611_90 RemovedBody611_97

def RemovedBody611_99 : StackLang.HolProg 64 :=
.seq RemovedBody611_89 RemovedBody611_98

def RemovedBody611_100 : StackLang.HolProg 64 :=
.seq RemovedBody611_88 RemovedBody611_99

def RemovedBody611_101 : StackLang.HolProg 64 :=
.seq RemovedBody611_87 RemovedBody611_100

def RemovedBody611_102 : StackLang.HolProg 64 :=
.seq RemovedBody611_86 RemovedBody611_101

def RemovedBody611_103 : StackLang.HolProg 64 :=
.seq RemovedBody611_85 RemovedBody611_102

def RemovedBody611_104 : StackLang.HolProg 64 :=
.seq RemovedBody611_84 RemovedBody611_103

def RemovedBody611_105 : StackLang.HolProg 64 :=
.seq RemovedBody611_83 RemovedBody611_104

def RemovedBody611_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody611_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody611_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody611_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody611_113 : StackLang.HolProg 64 :=
.seq RemovedBody611_111 RemovedBody611_112

def RemovedBody611_114 : StackLang.HolProg 64 :=
.seq RemovedBody611_110 RemovedBody611_113

def RemovedBody611_115 : StackLang.HolProg 64 :=
.seq RemovedBody611_109 RemovedBody611_114

def RemovedBody611_116 : StackLang.HolProg 64 :=
.seq RemovedBody611_108 RemovedBody611_115

def RemovedBody611_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody611_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody611_119 : StackLang.HolProg 64 :=
.seq RemovedBody611_117 RemovedBody611_118

def RemovedBody611_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody611_116, 0, 611, 4)) (Sum.inl 194) (some (RemovedBody611_119, 611, 5))

def RemovedBody611_121 : StackLang.HolProg 64 :=
.seq RemovedBody611_107 RemovedBody611_120

def RemovedBody611_122 : StackLang.HolProg 64 :=
.seq RemovedBody611_106 RemovedBody611_121

def RemovedBody611_123 : StackLang.HolProg 64 :=
.seq RemovedBody611_105 RemovedBody611_122

def RemovedBody611_124 : StackLang.HolProg 64 :=
.seq RemovedBody611_76 RemovedBody611_123

def RemovedBody611_125 : StackLang.HolProg 64 :=
.seq RemovedBody611_73 RemovedBody611_124

def RemovedBody611_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody611_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody611_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody611_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody611_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody611_131 : StackLang.HolProg 64 :=
.seq RemovedBody611_129 RemovedBody611_130

def RemovedBody611_132 : StackLang.HolProg 64 :=
.seq RemovedBody611_128 RemovedBody611_131

def RemovedBody611_133 : StackLang.HolProg 64 :=
.seq RemovedBody611_127 RemovedBody611_132

def RemovedBody611_134 : StackLang.HolProg 64 :=
.seq RemovedBody611_126 RemovedBody611_133

def RemovedBody611_135 : StackLang.HolProg 64 :=
.seq RemovedBody611_125 RemovedBody611_134

def RemovedBody611_136 : StackLang.HolProg 64 :=
.seq RemovedBody611_72 RemovedBody611_135

def RemovedBody611_137 : StackLang.HolProg 64 :=
.seq RemovedBody611_71 RemovedBody611_136

def RemovedBody611_138 : StackLang.HolProg 64 :=
.seq RemovedBody611_70 RemovedBody611_137

def RemovedBody611_139 : StackLang.HolProg 64 :=
.seq RemovedBody611_69 RemovedBody611_138

def RemovedBody611_140 : StackLang.HolProg 64 :=
.seq RemovedBody611_68 RemovedBody611_139

def RemovedBody611_141 : StackLang.HolProg 64 :=
.seq RemovedBody611_67 RemovedBody611_140

def RemovedBody611_142 : StackLang.HolProg 64 :=
.seq RemovedBody611_66 RemovedBody611_141

def RemovedBody611_143 : StackLang.HolProg 64 :=
.seq RemovedBody611_13 RemovedBody611_142

def RemovedBody611_144 : StackLang.HolProg 64 :=
.seq RemovedBody611_10 RemovedBody611_143

def RemovedBody611_145 : StackLang.HolProg 64 :=
.seq RemovedBody611_9 RemovedBody611_144

def RemovedBody611_146 : StackLang.HolProg 64 :=
.seq RemovedBody611_8 RemovedBody611_145

def RemovedBody611_147 : StackLang.HolProg 64 :=
.seq RemovedBody611_7 RemovedBody611_146

def RemovedBody611_148 : StackLang.HolProg 64 :=
.seq RemovedBody611_6 RemovedBody611_147

def Removed611 : Nat × StackLang.HolProg 64 := (611, RemovedBody611_148)
theorem Removed611_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc611 = Removed611 := by
  kernel_rfl
#print axioms Removed611_eq
end InitECandidate.Proofs.BackendStages
