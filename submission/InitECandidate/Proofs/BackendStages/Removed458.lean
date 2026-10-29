import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc458
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody458_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody458_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody458_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody458_3 : StackLang.HolProg 64 :=
.seq RemovedBody458_1 RemovedBody458_2

def RemovedBody458_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody458_3 RemovedBody458_4

def RemovedBody458_6 : StackLang.HolProg 64 :=
.seq RemovedBody458_0 RemovedBody458_5

def RemovedBody458_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody458_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_9 : StackLang.HolProg 64 :=
.seq RemovedBody458_7 RemovedBody458_8

def RemovedBody458_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1408#64)

def RemovedBody458_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody458_13 : StackLang.HolProg 64 :=
.seq RemovedBody458_11 RemovedBody458_12

def RemovedBody458_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody458_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody458_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody458_17 : StackLang.HolProg 64 :=
.seq RemovedBody458_15 RemovedBody458_16

def RemovedBody458_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody458_17 RemovedBody458_18

def RemovedBody458_20 : StackLang.HolProg 64 :=
.seq RemovedBody458_14 RemovedBody458_19

def RemovedBody458_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody458_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody458_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 458 3

def RemovedBody458_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody458_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody458_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody458_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody458_30 : StackLang.HolProg 64 :=
.seq RemovedBody458_28 RemovedBody458_29

def RemovedBody458_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody458_32 : StackLang.HolProg 64 :=
.seq RemovedBody458_30 RemovedBody458_31

def RemovedBody458_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody458_34 : StackLang.HolProg 64 :=
.seq RemovedBody458_32 RemovedBody458_33

def RemovedBody458_35 : StackLang.HolProg 64 :=
.seq RemovedBody458_27 RemovedBody458_34

def RemovedBody458_36 : StackLang.HolProg 64 :=
.seq RemovedBody458_26 RemovedBody458_35

def RemovedBody458_37 : StackLang.HolProg 64 :=
.seq RemovedBody458_25 RemovedBody458_36

def RemovedBody458_38 : StackLang.HolProg 64 :=
.seq RemovedBody458_24 RemovedBody458_37

def RemovedBody458_39 : StackLang.HolProg 64 :=
.seq RemovedBody458_23 RemovedBody458_38

def RemovedBody458_40 : StackLang.HolProg 64 :=
.seq RemovedBody458_22 RemovedBody458_39

def RemovedBody458_41 : StackLang.HolProg 64 :=
.seq RemovedBody458_21 RemovedBody458_40

def RemovedBody458_42 : StackLang.HolProg 64 :=
.seq RemovedBody458_20 RemovedBody458_41

def RemovedBody458_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody458_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody458_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody458_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_51 : StackLang.HolProg 64 :=
.seq RemovedBody458_49 RemovedBody458_50

def RemovedBody458_52 : StackLang.HolProg 64 :=
.seq RemovedBody458_48 RemovedBody458_51

def RemovedBody458_53 : StackLang.HolProg 64 :=
.seq RemovedBody458_47 RemovedBody458_52

def RemovedBody458_54 : StackLang.HolProg 64 :=
.seq RemovedBody458_46 RemovedBody458_53

def RemovedBody458_55 : StackLang.HolProg 64 :=
.seq RemovedBody458_45 RemovedBody458_54

def RemovedBody458_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody458_58 : StackLang.HolProg 64 :=
.seq RemovedBody458_56 RemovedBody458_57

def RemovedBody458_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody458_55, 0, 458, 2)) (Sum.inl 198) (some (RemovedBody458_58, 458, 3))

def RemovedBody458_60 : StackLang.HolProg 64 :=
.seq RemovedBody458_44 RemovedBody458_59

def RemovedBody458_61 : StackLang.HolProg 64 :=
.seq RemovedBody458_43 RemovedBody458_60

def RemovedBody458_62 : StackLang.HolProg 64 :=
.seq RemovedBody458_42 RemovedBody458_61

def RemovedBody458_63 : StackLang.HolProg 64 :=
.seq RemovedBody458_13 RemovedBody458_62

def RemovedBody458_64 : StackLang.HolProg 64 :=
.seq RemovedBody458_10 RemovedBody458_63

def RemovedBody458_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody458_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody458_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 2#64)

def RemovedBody458_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody458_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody458_71 : StackLang.HolProg 64 :=
.seq RemovedBody458_69 RemovedBody458_70

def RemovedBody458_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1409#64)

def RemovedBody458_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody458_75 : StackLang.HolProg 64 :=
.seq RemovedBody458_73 RemovedBody458_74

def RemovedBody458_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody458_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody458_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody458_79 : StackLang.HolProg 64 :=
.seq RemovedBody458_77 RemovedBody458_78

def RemovedBody458_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody458_79 RemovedBody458_80

def RemovedBody458_82 : StackLang.HolProg 64 :=
.seq RemovedBody458_76 RemovedBody458_81

def RemovedBody458_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody458_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody458_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 458 5

def RemovedBody458_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody458_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody458_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody458_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody458_92 : StackLang.HolProg 64 :=
.seq RemovedBody458_90 RemovedBody458_91

def RemovedBody458_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody458_94 : StackLang.HolProg 64 :=
.seq RemovedBody458_92 RemovedBody458_93

def RemovedBody458_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody458_96 : StackLang.HolProg 64 :=
.seq RemovedBody458_94 RemovedBody458_95

def RemovedBody458_97 : StackLang.HolProg 64 :=
.seq RemovedBody458_89 RemovedBody458_96

def RemovedBody458_98 : StackLang.HolProg 64 :=
.seq RemovedBody458_88 RemovedBody458_97

def RemovedBody458_99 : StackLang.HolProg 64 :=
.seq RemovedBody458_87 RemovedBody458_98

def RemovedBody458_100 : StackLang.HolProg 64 :=
.seq RemovedBody458_86 RemovedBody458_99

def RemovedBody458_101 : StackLang.HolProg 64 :=
.seq RemovedBody458_85 RemovedBody458_100

def RemovedBody458_102 : StackLang.HolProg 64 :=
.seq RemovedBody458_84 RemovedBody458_101

def RemovedBody458_103 : StackLang.HolProg 64 :=
.seq RemovedBody458_83 RemovedBody458_102

def RemovedBody458_104 : StackLang.HolProg 64 :=
.seq RemovedBody458_82 RemovedBody458_103

def RemovedBody458_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody458_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody458_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody458_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody458_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody458_114 : StackLang.HolProg 64 :=
.seq RemovedBody458_112 RemovedBody458_113

def RemovedBody458_115 : StackLang.HolProg 64 :=
.seq RemovedBody458_111 RemovedBody458_114

def RemovedBody458_116 : StackLang.HolProg 64 :=
.seq RemovedBody458_110 RemovedBody458_115

def RemovedBody458_117 : StackLang.HolProg 64 :=
.seq RemovedBody458_109 RemovedBody458_116

def RemovedBody458_118 : StackLang.HolProg 64 :=
.seq RemovedBody458_108 RemovedBody458_117

def RemovedBody458_119 : StackLang.HolProg 64 :=
.seq RemovedBody458_107 RemovedBody458_118

def RemovedBody458_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody458_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody458_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody458_123 : StackLang.HolProg 64 :=
.seq RemovedBody458_121 RemovedBody458_122

def RemovedBody458_124 : StackLang.HolProg 64 :=
.seq RemovedBody458_120 RemovedBody458_123

def RemovedBody458_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody458_126 : StackLang.HolProg 64 :=
.seq RemovedBody458_124 RemovedBody458_125

def RemovedBody458_127 : StackLang.HolProg 64 :=
.call (some (RemovedBody458_119, 0, 458, 4)) (Sum.inl 457) (some (RemovedBody458_126, 458, 5))

def RemovedBody458_128 : StackLang.HolProg 64 :=
.seq RemovedBody458_106 RemovedBody458_127

def RemovedBody458_129 : StackLang.HolProg 64 :=
.seq RemovedBody458_105 RemovedBody458_128

def RemovedBody458_130 : StackLang.HolProg 64 :=
.seq RemovedBody458_104 RemovedBody458_129

def RemovedBody458_131 : StackLang.HolProg 64 :=
.seq RemovedBody458_75 RemovedBody458_130

def RemovedBody458_132 : StackLang.HolProg 64 :=
.seq RemovedBody458_72 RemovedBody458_131

def RemovedBody458_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody458_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody458_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody458_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody458_137 : StackLang.HolProg 64 :=
.seq RemovedBody458_135 RemovedBody458_136

def RemovedBody458_138 : StackLang.HolProg 64 :=
.seq RemovedBody458_134 RemovedBody458_137

def RemovedBody458_139 : StackLang.HolProg 64 :=
.seq RemovedBody458_133 RemovedBody458_138

def RemovedBody458_140 : StackLang.HolProg 64 :=
.seq RemovedBody458_132 RemovedBody458_139

def RemovedBody458_141 : StackLang.HolProg 64 :=
.seq RemovedBody458_71 RemovedBody458_140

def RemovedBody458_142 : StackLang.HolProg 64 :=
.seq RemovedBody458_68 RemovedBody458_141

def RemovedBody458_143 : StackLang.HolProg 64 :=
.seq RemovedBody458_67 RemovedBody458_142

def RemovedBody458_144 : StackLang.HolProg 64 :=
.seq RemovedBody458_66 RemovedBody458_143

def RemovedBody458_145 : StackLang.HolProg 64 :=
.seq RemovedBody458_65 RemovedBody458_144

def RemovedBody458_146 : StackLang.HolProg 64 :=
.seq RemovedBody458_64 RemovedBody458_145

def RemovedBody458_147 : StackLang.HolProg 64 :=
.seq RemovedBody458_9 RemovedBody458_146

def RemovedBody458_148 : StackLang.HolProg 64 :=
.seq RemovedBody458_6 RemovedBody458_147

def Removed458 : Nat × StackLang.HolProg 64 := (458, RemovedBody458_148)
theorem Removed458_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc458 = Removed458 := by
  kernel_rfl
#print axioms Removed458_eq
end InitECandidate.Proofs.BackendStages
