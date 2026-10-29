import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc565
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody565_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody565_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody565_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody565_3 : StackLang.HolProg 64 :=
.seq RemovedBody565_1 RemovedBody565_2

def RemovedBody565_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody565_3 RemovedBody565_4

def RemovedBody565_6 : StackLang.HolProg 64 :=
.seq RemovedBody565_0 RemovedBody565_5

def RemovedBody565_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody565_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody565_9 : StackLang.HolProg 64 :=
.seq RemovedBody565_7 RemovedBody565_8

def RemovedBody565_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1932#64)

def RemovedBody565_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody565_13 : StackLang.HolProg 64 :=
.seq RemovedBody565_11 RemovedBody565_12

def RemovedBody565_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody565_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody565_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody565_17 : StackLang.HolProg 64 :=
.seq RemovedBody565_15 RemovedBody565_16

def RemovedBody565_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody565_17 RemovedBody565_18

def RemovedBody565_20 : StackLang.HolProg 64 :=
.seq RemovedBody565_14 RemovedBody565_19

def RemovedBody565_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody565_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody565_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 3

def RemovedBody565_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody565_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody565_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody565_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody565_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody565_30 : StackLang.HolProg 64 :=
.seq RemovedBody565_28 RemovedBody565_29

def RemovedBody565_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody565_32 : StackLang.HolProg 64 :=
.seq RemovedBody565_30 RemovedBody565_31

def RemovedBody565_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody565_34 : StackLang.HolProg 64 :=
.seq RemovedBody565_32 RemovedBody565_33

def RemovedBody565_35 : StackLang.HolProg 64 :=
.seq RemovedBody565_27 RemovedBody565_34

def RemovedBody565_36 : StackLang.HolProg 64 :=
.seq RemovedBody565_26 RemovedBody565_35

def RemovedBody565_37 : StackLang.HolProg 64 :=
.seq RemovedBody565_25 RemovedBody565_36

def RemovedBody565_38 : StackLang.HolProg 64 :=
.seq RemovedBody565_24 RemovedBody565_37

def RemovedBody565_39 : StackLang.HolProg 64 :=
.seq RemovedBody565_23 RemovedBody565_38

def RemovedBody565_40 : StackLang.HolProg 64 :=
.seq RemovedBody565_22 RemovedBody565_39

def RemovedBody565_41 : StackLang.HolProg 64 :=
.seq RemovedBody565_21 RemovedBody565_40

def RemovedBody565_42 : StackLang.HolProg 64 :=
.seq RemovedBody565_20 RemovedBody565_41

def RemovedBody565_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody565_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody565_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody565_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody565_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody565_51 : StackLang.HolProg 64 :=
.seq RemovedBody565_49 RemovedBody565_50

def RemovedBody565_52 : StackLang.HolProg 64 :=
.seq RemovedBody565_48 RemovedBody565_51

def RemovedBody565_53 : StackLang.HolProg 64 :=
.seq RemovedBody565_47 RemovedBody565_52

def RemovedBody565_54 : StackLang.HolProg 64 :=
.seq RemovedBody565_46 RemovedBody565_53

def RemovedBody565_55 : StackLang.HolProg 64 :=
.seq RemovedBody565_45 RemovedBody565_54

def RemovedBody565_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody565_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody565_58 : StackLang.HolProg 64 :=
.seq RemovedBody565_56 RemovedBody565_57

def RemovedBody565_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody565_55, 0, 565, 2)) (Sum.inl 407) (some (RemovedBody565_58, 565, 3))

def RemovedBody565_60 : StackLang.HolProg 64 :=
.seq RemovedBody565_44 RemovedBody565_59

def RemovedBody565_61 : StackLang.HolProg 64 :=
.seq RemovedBody565_43 RemovedBody565_60

def RemovedBody565_62 : StackLang.HolProg 64 :=
.seq RemovedBody565_42 RemovedBody565_61

def RemovedBody565_63 : StackLang.HolProg 64 :=
.seq RemovedBody565_13 RemovedBody565_62

def RemovedBody565_64 : StackLang.HolProg 64 :=
.seq RemovedBody565_10 RemovedBody565_63

def RemovedBody565_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody565_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody565_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1933#64)

def RemovedBody565_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody565_72 : StackLang.HolProg 64 :=
.seq RemovedBody565_70 RemovedBody565_71

def RemovedBody565_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody565_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody565_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody565_76 : StackLang.HolProg 64 :=
.seq RemovedBody565_74 RemovedBody565_75

def RemovedBody565_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody565_76 RemovedBody565_77

def RemovedBody565_79 : StackLang.HolProg 64 :=
.seq RemovedBody565_73 RemovedBody565_78

def RemovedBody565_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody565_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody565_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 5

def RemovedBody565_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody565_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody565_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody565_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody565_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody565_89 : StackLang.HolProg 64 :=
.seq RemovedBody565_87 RemovedBody565_88

def RemovedBody565_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody565_91 : StackLang.HolProg 64 :=
.seq RemovedBody565_89 RemovedBody565_90

def RemovedBody565_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody565_93 : StackLang.HolProg 64 :=
.seq RemovedBody565_91 RemovedBody565_92

def RemovedBody565_94 : StackLang.HolProg 64 :=
.seq RemovedBody565_86 RemovedBody565_93

def RemovedBody565_95 : StackLang.HolProg 64 :=
.seq RemovedBody565_85 RemovedBody565_94

def RemovedBody565_96 : StackLang.HolProg 64 :=
.seq RemovedBody565_84 RemovedBody565_95

def RemovedBody565_97 : StackLang.HolProg 64 :=
.seq RemovedBody565_83 RemovedBody565_96

def RemovedBody565_98 : StackLang.HolProg 64 :=
.seq RemovedBody565_82 RemovedBody565_97

def RemovedBody565_99 : StackLang.HolProg 64 :=
.seq RemovedBody565_81 RemovedBody565_98

def RemovedBody565_100 : StackLang.HolProg 64 :=
.seq RemovedBody565_80 RemovedBody565_99

def RemovedBody565_101 : StackLang.HolProg 64 :=
.seq RemovedBody565_79 RemovedBody565_100

def RemovedBody565_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody565_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody565_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody565_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody565_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody565_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody565_110 : StackLang.HolProg 64 :=
.seq RemovedBody565_108 RemovedBody565_109

def RemovedBody565_111 : StackLang.HolProg 64 :=
.seq RemovedBody565_107 RemovedBody565_110

def RemovedBody565_112 : StackLang.HolProg 64 :=
.seq RemovedBody565_106 RemovedBody565_111

def RemovedBody565_113 : StackLang.HolProg 64 :=
.seq RemovedBody565_105 RemovedBody565_112

def RemovedBody565_114 : StackLang.HolProg 64 :=
.seq RemovedBody565_104 RemovedBody565_113

def RemovedBody565_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody565_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody565_117 : StackLang.HolProg 64 :=
.seq RemovedBody565_115 RemovedBody565_116

def RemovedBody565_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody565_114, 0, 565, 4)) (Sum.inl 408) (some (RemovedBody565_117, 565, 5))

def RemovedBody565_119 : StackLang.HolProg 64 :=
.seq RemovedBody565_103 RemovedBody565_118

def RemovedBody565_120 : StackLang.HolProg 64 :=
.seq RemovedBody565_102 RemovedBody565_119

def RemovedBody565_121 : StackLang.HolProg 64 :=
.seq RemovedBody565_101 RemovedBody565_120

def RemovedBody565_122 : StackLang.HolProg 64 :=
.seq RemovedBody565_72 RemovedBody565_121

def RemovedBody565_123 : StackLang.HolProg 64 :=
.seq RemovedBody565_69 RemovedBody565_122

def RemovedBody565_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody565_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody565_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody565_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody565_128 : StackLang.HolProg 64 :=
.seq RemovedBody565_126 RemovedBody565_127

def RemovedBody565_129 : StackLang.HolProg 64 :=
.seq RemovedBody565_125 RemovedBody565_128

def RemovedBody565_130 : StackLang.HolProg 64 :=
.seq RemovedBody565_124 RemovedBody565_129

def RemovedBody565_131 : StackLang.HolProg 64 :=
.seq RemovedBody565_123 RemovedBody565_130

def RemovedBody565_132 : StackLang.HolProg 64 :=
.seq RemovedBody565_68 RemovedBody565_131

def RemovedBody565_133 : StackLang.HolProg 64 :=
.seq RemovedBody565_67 RemovedBody565_132

def RemovedBody565_134 : StackLang.HolProg 64 :=
.seq RemovedBody565_66 RemovedBody565_133

def RemovedBody565_135 : StackLang.HolProg 64 :=
.seq RemovedBody565_65 RemovedBody565_134

def RemovedBody565_136 : StackLang.HolProg 64 :=
.seq RemovedBody565_64 RemovedBody565_135

def RemovedBody565_137 : StackLang.HolProg 64 :=
.seq RemovedBody565_9 RemovedBody565_136

def RemovedBody565_138 : StackLang.HolProg 64 :=
.seq RemovedBody565_6 RemovedBody565_137

def Removed565 : Nat × StackLang.HolProg 64 := (565, RemovedBody565_138)
theorem Removed565_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc565 = Removed565 := by
  kernel_rfl
#print axioms Removed565_eq
end InitECandidate.Proofs.BackendStages
