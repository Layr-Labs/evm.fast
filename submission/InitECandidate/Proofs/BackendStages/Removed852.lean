import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc852
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody852_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody852_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_3 : StackLang.HolProg 64 :=
.seq RemovedBody852_1 RemovedBody852_2

def RemovedBody852_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_3 RemovedBody852_4

def RemovedBody852_6 : StackLang.HolProg 64 :=
.seq RemovedBody852_0 RemovedBody852_5

def RemovedBody852_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody852_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4310#64)

def RemovedBody852_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_13 : StackLang.HolProg 64 :=
.seq RemovedBody852_11 RemovedBody852_12

def RemovedBody852_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_17 : StackLang.HolProg 64 :=
.seq RemovedBody852_15 RemovedBody852_16

def RemovedBody852_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_17 RemovedBody852_18

def RemovedBody852_20 : StackLang.HolProg 64 :=
.seq RemovedBody852_14 RemovedBody852_19

def RemovedBody852_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 3

def RemovedBody852_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_30 : StackLang.HolProg 64 :=
.seq RemovedBody852_28 RemovedBody852_29

def RemovedBody852_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_32 : StackLang.HolProg 64 :=
.seq RemovedBody852_30 RemovedBody852_31

def RemovedBody852_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_34 : StackLang.HolProg 64 :=
.seq RemovedBody852_32 RemovedBody852_33

def RemovedBody852_35 : StackLang.HolProg 64 :=
.seq RemovedBody852_27 RemovedBody852_34

def RemovedBody852_36 : StackLang.HolProg 64 :=
.seq RemovedBody852_26 RemovedBody852_35

def RemovedBody852_37 : StackLang.HolProg 64 :=
.seq RemovedBody852_25 RemovedBody852_36

def RemovedBody852_38 : StackLang.HolProg 64 :=
.seq RemovedBody852_24 RemovedBody852_37

def RemovedBody852_39 : StackLang.HolProg 64 :=
.seq RemovedBody852_23 RemovedBody852_38

def RemovedBody852_40 : StackLang.HolProg 64 :=
.seq RemovedBody852_22 RemovedBody852_39

def RemovedBody852_41 : StackLang.HolProg 64 :=
.seq RemovedBody852_21 RemovedBody852_40

def RemovedBody852_42 : StackLang.HolProg 64 :=
.seq RemovedBody852_20 RemovedBody852_41

def RemovedBody852_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_50 : StackLang.HolProg 64 :=
.seq RemovedBody852_48 RemovedBody852_49

def RemovedBody852_51 : StackLang.HolProg 64 :=
.seq RemovedBody852_47 RemovedBody852_50

def RemovedBody852_52 : StackLang.HolProg 64 :=
.seq RemovedBody852_46 RemovedBody852_51

def RemovedBody852_53 : StackLang.HolProg 64 :=
.seq RemovedBody852_45 RemovedBody852_52

def RemovedBody852_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_56 : StackLang.HolProg 64 :=
.seq RemovedBody852_54 RemovedBody852_55

def RemovedBody852_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_53, 0, 852, 2)) (Sum.inl 68) (some (RemovedBody852_56, 852, 3))

def RemovedBody852_58 : StackLang.HolProg 64 :=
.seq RemovedBody852_44 RemovedBody852_57

def RemovedBody852_59 : StackLang.HolProg 64 :=
.seq RemovedBody852_43 RemovedBody852_58

def RemovedBody852_60 : StackLang.HolProg 64 :=
.seq RemovedBody852_42 RemovedBody852_59

def RemovedBody852_61 : StackLang.HolProg 64 :=
.seq RemovedBody852_13 RemovedBody852_60

def RemovedBody852_62 : StackLang.HolProg 64 :=
.seq RemovedBody852_10 RemovedBody852_61

def RemovedBody852_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551184#64)))

def RemovedBody852_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551184#64))

def RemovedBody852_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody852_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4311#64)

def RemovedBody852_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_77 : StackLang.HolProg 64 :=
.seq RemovedBody852_75 RemovedBody852_76

def RemovedBody852_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_81 : StackLang.HolProg 64 :=
.seq RemovedBody852_79 RemovedBody852_80

def RemovedBody852_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_81 RemovedBody852_82

def RemovedBody852_84 : StackLang.HolProg 64 :=
.seq RemovedBody852_78 RemovedBody852_83

def RemovedBody852_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 5

def RemovedBody852_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_94 : StackLang.HolProg 64 :=
.seq RemovedBody852_92 RemovedBody852_93

def RemovedBody852_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_96 : StackLang.HolProg 64 :=
.seq RemovedBody852_94 RemovedBody852_95

def RemovedBody852_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_98 : StackLang.HolProg 64 :=
.seq RemovedBody852_96 RemovedBody852_97

def RemovedBody852_99 : StackLang.HolProg 64 :=
.seq RemovedBody852_91 RemovedBody852_98

def RemovedBody852_100 : StackLang.HolProg 64 :=
.seq RemovedBody852_90 RemovedBody852_99

def RemovedBody852_101 : StackLang.HolProg 64 :=
.seq RemovedBody852_89 RemovedBody852_100

def RemovedBody852_102 : StackLang.HolProg 64 :=
.seq RemovedBody852_88 RemovedBody852_101

def RemovedBody852_103 : StackLang.HolProg 64 :=
.seq RemovedBody852_87 RemovedBody852_102

def RemovedBody852_104 : StackLang.HolProg 64 :=
.seq RemovedBody852_86 RemovedBody852_103

def RemovedBody852_105 : StackLang.HolProg 64 :=
.seq RemovedBody852_85 RemovedBody852_104

def RemovedBody852_106 : StackLang.HolProg 64 :=
.seq RemovedBody852_84 RemovedBody852_105

def RemovedBody852_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_114 : StackLang.HolProg 64 :=
.seq RemovedBody852_112 RemovedBody852_113

def RemovedBody852_115 : StackLang.HolProg 64 :=
.seq RemovedBody852_111 RemovedBody852_114

def RemovedBody852_116 : StackLang.HolProg 64 :=
.seq RemovedBody852_110 RemovedBody852_115

def RemovedBody852_117 : StackLang.HolProg 64 :=
.seq RemovedBody852_109 RemovedBody852_116

def RemovedBody852_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_120 : StackLang.HolProg 64 :=
.seq RemovedBody852_118 RemovedBody852_119

def RemovedBody852_121 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_117, 0, 852, 4)) (Sum.inl 78) (some (RemovedBody852_120, 852, 5))

def RemovedBody852_122 : StackLang.HolProg 64 :=
.seq RemovedBody852_108 RemovedBody852_121

def RemovedBody852_123 : StackLang.HolProg 64 :=
.seq RemovedBody852_107 RemovedBody852_122

def RemovedBody852_124 : StackLang.HolProg 64 :=
.seq RemovedBody852_106 RemovedBody852_123

def RemovedBody852_125 : StackLang.HolProg 64 :=
.seq RemovedBody852_77 RemovedBody852_124

def RemovedBody852_126 : StackLang.HolProg 64 :=
.seq RemovedBody852_74 RemovedBody852_125

def RemovedBody852_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 360#64)

def RemovedBody852_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4312#64)

def RemovedBody852_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_133 : StackLang.HolProg 64 :=
.seq RemovedBody852_131 RemovedBody852_132

def RemovedBody852_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_137 : StackLang.HolProg 64 :=
.seq RemovedBody852_135 RemovedBody852_136

def RemovedBody852_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_137 RemovedBody852_138

def RemovedBody852_140 : StackLang.HolProg 64 :=
.seq RemovedBody852_134 RemovedBody852_139

def RemovedBody852_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 7

def RemovedBody852_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_150 : StackLang.HolProg 64 :=
.seq RemovedBody852_148 RemovedBody852_149

def RemovedBody852_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_152 : StackLang.HolProg 64 :=
.seq RemovedBody852_150 RemovedBody852_151

def RemovedBody852_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_154 : StackLang.HolProg 64 :=
.seq RemovedBody852_152 RemovedBody852_153

def RemovedBody852_155 : StackLang.HolProg 64 :=
.seq RemovedBody852_147 RemovedBody852_154

def RemovedBody852_156 : StackLang.HolProg 64 :=
.seq RemovedBody852_146 RemovedBody852_155

def RemovedBody852_157 : StackLang.HolProg 64 :=
.seq RemovedBody852_145 RemovedBody852_156

def RemovedBody852_158 : StackLang.HolProg 64 :=
.seq RemovedBody852_144 RemovedBody852_157

def RemovedBody852_159 : StackLang.HolProg 64 :=
.seq RemovedBody852_143 RemovedBody852_158

def RemovedBody852_160 : StackLang.HolProg 64 :=
.seq RemovedBody852_142 RemovedBody852_159

def RemovedBody852_161 : StackLang.HolProg 64 :=
.seq RemovedBody852_141 RemovedBody852_160

def RemovedBody852_162 : StackLang.HolProg 64 :=
.seq RemovedBody852_140 RemovedBody852_161

def RemovedBody852_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_170 : StackLang.HolProg 64 :=
.seq RemovedBody852_168 RemovedBody852_169

def RemovedBody852_171 : StackLang.HolProg 64 :=
.seq RemovedBody852_167 RemovedBody852_170

def RemovedBody852_172 : StackLang.HolProg 64 :=
.seq RemovedBody852_166 RemovedBody852_171

def RemovedBody852_173 : StackLang.HolProg 64 :=
.seq RemovedBody852_165 RemovedBody852_172

def RemovedBody852_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_176 : StackLang.HolProg 64 :=
.seq RemovedBody852_174 RemovedBody852_175

def RemovedBody852_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_173, 0, 852, 6)) (Sum.inl 68) (some (RemovedBody852_176, 852, 7))

def RemovedBody852_178 : StackLang.HolProg 64 :=
.seq RemovedBody852_164 RemovedBody852_177

def RemovedBody852_179 : StackLang.HolProg 64 :=
.seq RemovedBody852_163 RemovedBody852_178

def RemovedBody852_180 : StackLang.HolProg 64 :=
.seq RemovedBody852_162 RemovedBody852_179

def RemovedBody852_181 : StackLang.HolProg 64 :=
.seq RemovedBody852_133 RemovedBody852_180

def RemovedBody852_182 : StackLang.HolProg 64 :=
.seq RemovedBody852_130 RemovedBody852_181

def RemovedBody852_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551192#64)))

def RemovedBody852_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551192#64))

def RemovedBody852_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 360#64)

def RemovedBody852_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4313#64)

def RemovedBody852_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_197 : StackLang.HolProg 64 :=
.seq RemovedBody852_195 RemovedBody852_196

def RemovedBody852_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_201 : StackLang.HolProg 64 :=
.seq RemovedBody852_199 RemovedBody852_200

def RemovedBody852_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_201 RemovedBody852_202

def RemovedBody852_204 : StackLang.HolProg 64 :=
.seq RemovedBody852_198 RemovedBody852_203

def RemovedBody852_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 9

def RemovedBody852_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_214 : StackLang.HolProg 64 :=
.seq RemovedBody852_212 RemovedBody852_213

def RemovedBody852_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_216 : StackLang.HolProg 64 :=
.seq RemovedBody852_214 RemovedBody852_215

def RemovedBody852_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_218 : StackLang.HolProg 64 :=
.seq RemovedBody852_216 RemovedBody852_217

def RemovedBody852_219 : StackLang.HolProg 64 :=
.seq RemovedBody852_211 RemovedBody852_218

def RemovedBody852_220 : StackLang.HolProg 64 :=
.seq RemovedBody852_210 RemovedBody852_219

def RemovedBody852_221 : StackLang.HolProg 64 :=
.seq RemovedBody852_209 RemovedBody852_220

def RemovedBody852_222 : StackLang.HolProg 64 :=
.seq RemovedBody852_208 RemovedBody852_221

def RemovedBody852_223 : StackLang.HolProg 64 :=
.seq RemovedBody852_207 RemovedBody852_222

def RemovedBody852_224 : StackLang.HolProg 64 :=
.seq RemovedBody852_206 RemovedBody852_223

def RemovedBody852_225 : StackLang.HolProg 64 :=
.seq RemovedBody852_205 RemovedBody852_224

def RemovedBody852_226 : StackLang.HolProg 64 :=
.seq RemovedBody852_204 RemovedBody852_225

def RemovedBody852_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_234 : StackLang.HolProg 64 :=
.seq RemovedBody852_232 RemovedBody852_233

def RemovedBody852_235 : StackLang.HolProg 64 :=
.seq RemovedBody852_231 RemovedBody852_234

def RemovedBody852_236 : StackLang.HolProg 64 :=
.seq RemovedBody852_230 RemovedBody852_235

def RemovedBody852_237 : StackLang.HolProg 64 :=
.seq RemovedBody852_229 RemovedBody852_236

def RemovedBody852_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_240 : StackLang.HolProg 64 :=
.seq RemovedBody852_238 RemovedBody852_239

def RemovedBody852_241 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_237, 0, 852, 8)) (Sum.inl 78) (some (RemovedBody852_240, 852, 9))

def RemovedBody852_242 : StackLang.HolProg 64 :=
.seq RemovedBody852_228 RemovedBody852_241

def RemovedBody852_243 : StackLang.HolProg 64 :=
.seq RemovedBody852_227 RemovedBody852_242

def RemovedBody852_244 : StackLang.HolProg 64 :=
.seq RemovedBody852_226 RemovedBody852_243

def RemovedBody852_245 : StackLang.HolProg 64 :=
.seq RemovedBody852_197 RemovedBody852_244

def RemovedBody852_246 : StackLang.HolProg 64 :=
.seq RemovedBody852_194 RemovedBody852_245

def RemovedBody852_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody852_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def RemovedBody852_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def RemovedBody852_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody852_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551192#64))

def RemovedBody852_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody852_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def RemovedBody852_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody852_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody852_270 : StackLang.HolProg 64 :=
.seq RemovedBody852_268 RemovedBody852_269

def RemovedBody852_271 : StackLang.HolProg 64 :=
.seq RemovedBody852_267 RemovedBody852_270

def RemovedBody852_272 : StackLang.HolProg 64 :=
.seq RemovedBody852_266 RemovedBody852_271

def RemovedBody852_273 : StackLang.HolProg 64 :=
.seq RemovedBody852_265 RemovedBody852_272

def RemovedBody852_274 : StackLang.HolProg 64 :=
.seq RemovedBody852_264 RemovedBody852_273

def RemovedBody852_275 : StackLang.HolProg 64 :=
.seq RemovedBody852_263 RemovedBody852_274

def RemovedBody852_276 : StackLang.HolProg 64 :=
.seq RemovedBody852_262 RemovedBody852_275

def RemovedBody852_277 : StackLang.HolProg 64 :=
.seq RemovedBody852_261 RemovedBody852_276

def RemovedBody852_278 : StackLang.HolProg 64 :=
.seq RemovedBody852_260 RemovedBody852_277

def RemovedBody852_279 : StackLang.HolProg 64 :=
.seq RemovedBody852_259 RemovedBody852_278

def RemovedBody852_280 : StackLang.HolProg 64 :=
.seq RemovedBody852_258 RemovedBody852_279

def RemovedBody852_281 : StackLang.HolProg 64 :=
.seq RemovedBody852_257 RemovedBody852_280

def RemovedBody852_282 : StackLang.HolProg 64 :=
.seq RemovedBody852_256 RemovedBody852_281

def RemovedBody852_283 : StackLang.HolProg 64 :=
.seq RemovedBody852_255 RemovedBody852_282

def RemovedBody852_284 : StackLang.HolProg 64 :=
.seq RemovedBody852_254 RemovedBody852_283

def RemovedBody852_285 : StackLang.HolProg 64 :=
.seq RemovedBody852_253 RemovedBody852_284

def RemovedBody852_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody852_288 : StackLang.HolProg 64 :=
.seq RemovedBody852_286 RemovedBody852_287

def RemovedBody852_289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody852_285 RemovedBody852_288

def RemovedBody852_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_292 : StackLang.HolProg 64 :=
.seq RemovedBody852_290 RemovedBody852_291

def RemovedBody852_293 : StackLang.HolProg 64 :=
.seq RemovedBody852_289 RemovedBody852_292

def RemovedBody852_294 : StackLang.HolProg 64 :=
.seq RemovedBody852_252 RemovedBody852_293

def RemovedBody852_295 : StackLang.HolProg 64 :=
.seq RemovedBody852_251 RemovedBody852_294

def RemovedBody852_296 : StackLang.HolProg 64 :=
.loop RemovedBody852_295

def RemovedBody852_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551192#64))

def RemovedBody852_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 358#64)))

def RemovedBody852_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody852_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody852_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4314#64)

def RemovedBody852_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_310 : StackLang.HolProg 64 :=
.seq RemovedBody852_308 RemovedBody852_309

def RemovedBody852_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_314 : StackLang.HolProg 64 :=
.seq RemovedBody852_312 RemovedBody852_313

def RemovedBody852_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_316 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_314 RemovedBody852_315

def RemovedBody852_317 : StackLang.HolProg 64 :=
.seq RemovedBody852_311 RemovedBody852_316

def RemovedBody852_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 11

def RemovedBody852_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_327 : StackLang.HolProg 64 :=
.seq RemovedBody852_325 RemovedBody852_326

def RemovedBody852_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_329 : StackLang.HolProg 64 :=
.seq RemovedBody852_327 RemovedBody852_328

def RemovedBody852_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_331 : StackLang.HolProg 64 :=
.seq RemovedBody852_329 RemovedBody852_330

def RemovedBody852_332 : StackLang.HolProg 64 :=
.seq RemovedBody852_324 RemovedBody852_331

def RemovedBody852_333 : StackLang.HolProg 64 :=
.seq RemovedBody852_323 RemovedBody852_332

def RemovedBody852_334 : StackLang.HolProg 64 :=
.seq RemovedBody852_322 RemovedBody852_333

def RemovedBody852_335 : StackLang.HolProg 64 :=
.seq RemovedBody852_321 RemovedBody852_334

def RemovedBody852_336 : StackLang.HolProg 64 :=
.seq RemovedBody852_320 RemovedBody852_335

def RemovedBody852_337 : StackLang.HolProg 64 :=
.seq RemovedBody852_319 RemovedBody852_336

def RemovedBody852_338 : StackLang.HolProg 64 :=
.seq RemovedBody852_318 RemovedBody852_337

def RemovedBody852_339 : StackLang.HolProg 64 :=
.seq RemovedBody852_317 RemovedBody852_338

def RemovedBody852_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_347 : StackLang.HolProg 64 :=
.seq RemovedBody852_345 RemovedBody852_346

def RemovedBody852_348 : StackLang.HolProg 64 :=
.seq RemovedBody852_344 RemovedBody852_347

def RemovedBody852_349 : StackLang.HolProg 64 :=
.seq RemovedBody852_343 RemovedBody852_348

def RemovedBody852_350 : StackLang.HolProg 64 :=
.seq RemovedBody852_342 RemovedBody852_349

def RemovedBody852_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_353 : StackLang.HolProg 64 :=
.seq RemovedBody852_351 RemovedBody852_352

def RemovedBody852_354 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_350, 0, 852, 10)) (Sum.inl 68) (some (RemovedBody852_353, 852, 11))

def RemovedBody852_355 : StackLang.HolProg 64 :=
.seq RemovedBody852_341 RemovedBody852_354

def RemovedBody852_356 : StackLang.HolProg 64 :=
.seq RemovedBody852_340 RemovedBody852_355

def RemovedBody852_357 : StackLang.HolProg 64 :=
.seq RemovedBody852_339 RemovedBody852_356

def RemovedBody852_358 : StackLang.HolProg 64 :=
.seq RemovedBody852_310 RemovedBody852_357

def RemovedBody852_359 : StackLang.HolProg 64 :=
.seq RemovedBody852_307 RemovedBody852_358

def RemovedBody852_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551152#64)))

def RemovedBody852_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551152#64))

def RemovedBody852_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 13311379508201171970#64)

def RemovedBody852_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 15506597749690834871#64)

def RemovedBody852_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 998902#64)

def RemovedBody852_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4315#64)

def RemovedBody852_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_376 : StackLang.HolProg 64 :=
.seq RemovedBody852_374 RemovedBody852_375

def RemovedBody852_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_380 : StackLang.HolProg 64 :=
.seq RemovedBody852_378 RemovedBody852_379

def RemovedBody852_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_382 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_380 RemovedBody852_381

def RemovedBody852_383 : StackLang.HolProg 64 :=
.seq RemovedBody852_377 RemovedBody852_382

def RemovedBody852_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 13

def RemovedBody852_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_393 : StackLang.HolProg 64 :=
.seq RemovedBody852_391 RemovedBody852_392

def RemovedBody852_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_395 : StackLang.HolProg 64 :=
.seq RemovedBody852_393 RemovedBody852_394

def RemovedBody852_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_397 : StackLang.HolProg 64 :=
.seq RemovedBody852_395 RemovedBody852_396

def RemovedBody852_398 : StackLang.HolProg 64 :=
.seq RemovedBody852_390 RemovedBody852_397

def RemovedBody852_399 : StackLang.HolProg 64 :=
.seq RemovedBody852_389 RemovedBody852_398

def RemovedBody852_400 : StackLang.HolProg 64 :=
.seq RemovedBody852_388 RemovedBody852_399

def RemovedBody852_401 : StackLang.HolProg 64 :=
.seq RemovedBody852_387 RemovedBody852_400

def RemovedBody852_402 : StackLang.HolProg 64 :=
.seq RemovedBody852_386 RemovedBody852_401

def RemovedBody852_403 : StackLang.HolProg 64 :=
.seq RemovedBody852_385 RemovedBody852_402

def RemovedBody852_404 : StackLang.HolProg 64 :=
.seq RemovedBody852_384 RemovedBody852_403

def RemovedBody852_405 : StackLang.HolProg 64 :=
.seq RemovedBody852_383 RemovedBody852_404

def RemovedBody852_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_413 : StackLang.HolProg 64 :=
.seq RemovedBody852_411 RemovedBody852_412

def RemovedBody852_414 : StackLang.HolProg 64 :=
.seq RemovedBody852_410 RemovedBody852_413

def RemovedBody852_415 : StackLang.HolProg 64 :=
.seq RemovedBody852_409 RemovedBody852_414

def RemovedBody852_416 : StackLang.HolProg 64 :=
.seq RemovedBody852_408 RemovedBody852_415

def RemovedBody852_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_418 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_419 : StackLang.HolProg 64 :=
.seq RemovedBody852_417 RemovedBody852_418

def RemovedBody852_420 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_416, 0, 852, 12)) (Sum.inl 851) (some (RemovedBody852_419, 852, 13))

def RemovedBody852_421 : StackLang.HolProg 64 :=
.seq RemovedBody852_407 RemovedBody852_420

def RemovedBody852_422 : StackLang.HolProg 64 :=
.seq RemovedBody852_406 RemovedBody852_421

def RemovedBody852_423 : StackLang.HolProg 64 :=
.seq RemovedBody852_405 RemovedBody852_422

def RemovedBody852_424 : StackLang.HolProg 64 :=
.seq RemovedBody852_376 RemovedBody852_423

def RemovedBody852_425 : StackLang.HolProg 64 :=
.seq RemovedBody852_373 RemovedBody852_424

def RemovedBody852_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody852_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4316#64)

def RemovedBody852_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_432 : StackLang.HolProg 64 :=
.seq RemovedBody852_430 RemovedBody852_431

def RemovedBody852_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_436 : StackLang.HolProg 64 :=
.seq RemovedBody852_434 RemovedBody852_435

def RemovedBody852_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_438 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_436 RemovedBody852_437

def RemovedBody852_439 : StackLang.HolProg 64 :=
.seq RemovedBody852_433 RemovedBody852_438

def RemovedBody852_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 15

def RemovedBody852_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_449 : StackLang.HolProg 64 :=
.seq RemovedBody852_447 RemovedBody852_448

def RemovedBody852_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_451 : StackLang.HolProg 64 :=
.seq RemovedBody852_449 RemovedBody852_450

def RemovedBody852_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_453 : StackLang.HolProg 64 :=
.seq RemovedBody852_451 RemovedBody852_452

def RemovedBody852_454 : StackLang.HolProg 64 :=
.seq RemovedBody852_446 RemovedBody852_453

def RemovedBody852_455 : StackLang.HolProg 64 :=
.seq RemovedBody852_445 RemovedBody852_454

def RemovedBody852_456 : StackLang.HolProg 64 :=
.seq RemovedBody852_444 RemovedBody852_455

def RemovedBody852_457 : StackLang.HolProg 64 :=
.seq RemovedBody852_443 RemovedBody852_456

def RemovedBody852_458 : StackLang.HolProg 64 :=
.seq RemovedBody852_442 RemovedBody852_457

def RemovedBody852_459 : StackLang.HolProg 64 :=
.seq RemovedBody852_441 RemovedBody852_458

def RemovedBody852_460 : StackLang.HolProg 64 :=
.seq RemovedBody852_440 RemovedBody852_459

def RemovedBody852_461 : StackLang.HolProg 64 :=
.seq RemovedBody852_439 RemovedBody852_460

def RemovedBody852_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_469 : StackLang.HolProg 64 :=
.seq RemovedBody852_467 RemovedBody852_468

def RemovedBody852_470 : StackLang.HolProg 64 :=
.seq RemovedBody852_466 RemovedBody852_469

def RemovedBody852_471 : StackLang.HolProg 64 :=
.seq RemovedBody852_465 RemovedBody852_470

def RemovedBody852_472 : StackLang.HolProg 64 :=
.seq RemovedBody852_464 RemovedBody852_471

def RemovedBody852_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_474 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_475 : StackLang.HolProg 64 :=
.seq RemovedBody852_473 RemovedBody852_474

def RemovedBody852_476 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_472, 0, 852, 14)) (Sum.inl 68) (some (RemovedBody852_475, 852, 15))

def RemovedBody852_477 : StackLang.HolProg 64 :=
.seq RemovedBody852_463 RemovedBody852_476

def RemovedBody852_478 : StackLang.HolProg 64 :=
.seq RemovedBody852_462 RemovedBody852_477

def RemovedBody852_479 : StackLang.HolProg 64 :=
.seq RemovedBody852_461 RemovedBody852_478

def RemovedBody852_480 : StackLang.HolProg 64 :=
.seq RemovedBody852_432 RemovedBody852_479

def RemovedBody852_481 : StackLang.HolProg 64 :=
.seq RemovedBody852_429 RemovedBody852_480

def RemovedBody852_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551144#64)))

def RemovedBody852_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551144#64))

def RemovedBody852_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 3700577164601600309#64)

def RemovedBody852_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2878298490047003138#64)

def RemovedBody852_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 63752#64)

def RemovedBody852_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4317#64)

def RemovedBody852_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_498 : StackLang.HolProg 64 :=
.seq RemovedBody852_496 RemovedBody852_497

def RemovedBody852_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_502 : StackLang.HolProg 64 :=
.seq RemovedBody852_500 RemovedBody852_501

def RemovedBody852_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_504 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_502 RemovedBody852_503

def RemovedBody852_505 : StackLang.HolProg 64 :=
.seq RemovedBody852_499 RemovedBody852_504

def RemovedBody852_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 17

def RemovedBody852_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_515 : StackLang.HolProg 64 :=
.seq RemovedBody852_513 RemovedBody852_514

def RemovedBody852_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_517 : StackLang.HolProg 64 :=
.seq RemovedBody852_515 RemovedBody852_516

def RemovedBody852_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_519 : StackLang.HolProg 64 :=
.seq RemovedBody852_517 RemovedBody852_518

def RemovedBody852_520 : StackLang.HolProg 64 :=
.seq RemovedBody852_512 RemovedBody852_519

def RemovedBody852_521 : StackLang.HolProg 64 :=
.seq RemovedBody852_511 RemovedBody852_520

def RemovedBody852_522 : StackLang.HolProg 64 :=
.seq RemovedBody852_510 RemovedBody852_521

def RemovedBody852_523 : StackLang.HolProg 64 :=
.seq RemovedBody852_509 RemovedBody852_522

def RemovedBody852_524 : StackLang.HolProg 64 :=
.seq RemovedBody852_508 RemovedBody852_523

def RemovedBody852_525 : StackLang.HolProg 64 :=
.seq RemovedBody852_507 RemovedBody852_524

def RemovedBody852_526 : StackLang.HolProg 64 :=
.seq RemovedBody852_506 RemovedBody852_525

def RemovedBody852_527 : StackLang.HolProg 64 :=
.seq RemovedBody852_505 RemovedBody852_526

def RemovedBody852_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_535 : StackLang.HolProg 64 :=
.seq RemovedBody852_533 RemovedBody852_534

def RemovedBody852_536 : StackLang.HolProg 64 :=
.seq RemovedBody852_532 RemovedBody852_535

def RemovedBody852_537 : StackLang.HolProg 64 :=
.seq RemovedBody852_531 RemovedBody852_536

def RemovedBody852_538 : StackLang.HolProg 64 :=
.seq RemovedBody852_530 RemovedBody852_537

def RemovedBody852_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_540 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_541 : StackLang.HolProg 64 :=
.seq RemovedBody852_539 RemovedBody852_540

def RemovedBody852_542 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_538, 0, 852, 16)) (Sum.inl 851) (some (RemovedBody852_541, 852, 17))

def RemovedBody852_543 : StackLang.HolProg 64 :=
.seq RemovedBody852_529 RemovedBody852_542

def RemovedBody852_544 : StackLang.HolProg 64 :=
.seq RemovedBody852_528 RemovedBody852_543

def RemovedBody852_545 : StackLang.HolProg 64 :=
.seq RemovedBody852_527 RemovedBody852_544

def RemovedBody852_546 : StackLang.HolProg 64 :=
.seq RemovedBody852_498 RemovedBody852_545

def RemovedBody852_547 : StackLang.HolProg 64 :=
.seq RemovedBody852_495 RemovedBody852_546

def RemovedBody852_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody852_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4318#64)

def RemovedBody852_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_554 : StackLang.HolProg 64 :=
.seq RemovedBody852_552 RemovedBody852_553

def RemovedBody852_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_558 : StackLang.HolProg 64 :=
.seq RemovedBody852_556 RemovedBody852_557

def RemovedBody852_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_560 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_558 RemovedBody852_559

def RemovedBody852_561 : StackLang.HolProg 64 :=
.seq RemovedBody852_555 RemovedBody852_560

def RemovedBody852_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 19

def RemovedBody852_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_571 : StackLang.HolProg 64 :=
.seq RemovedBody852_569 RemovedBody852_570

def RemovedBody852_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_573 : StackLang.HolProg 64 :=
.seq RemovedBody852_571 RemovedBody852_572

def RemovedBody852_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_575 : StackLang.HolProg 64 :=
.seq RemovedBody852_573 RemovedBody852_574

def RemovedBody852_576 : StackLang.HolProg 64 :=
.seq RemovedBody852_568 RemovedBody852_575

def RemovedBody852_577 : StackLang.HolProg 64 :=
.seq RemovedBody852_567 RemovedBody852_576

def RemovedBody852_578 : StackLang.HolProg 64 :=
.seq RemovedBody852_566 RemovedBody852_577

def RemovedBody852_579 : StackLang.HolProg 64 :=
.seq RemovedBody852_565 RemovedBody852_578

def RemovedBody852_580 : StackLang.HolProg 64 :=
.seq RemovedBody852_564 RemovedBody852_579

def RemovedBody852_581 : StackLang.HolProg 64 :=
.seq RemovedBody852_563 RemovedBody852_580

def RemovedBody852_582 : StackLang.HolProg 64 :=
.seq RemovedBody852_562 RemovedBody852_581

def RemovedBody852_583 : StackLang.HolProg 64 :=
.seq RemovedBody852_561 RemovedBody852_582

def RemovedBody852_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_591 : StackLang.HolProg 64 :=
.seq RemovedBody852_589 RemovedBody852_590

def RemovedBody852_592 : StackLang.HolProg 64 :=
.seq RemovedBody852_588 RemovedBody852_591

def RemovedBody852_593 : StackLang.HolProg 64 :=
.seq RemovedBody852_587 RemovedBody852_592

def RemovedBody852_594 : StackLang.HolProg 64 :=
.seq RemovedBody852_586 RemovedBody852_593

def RemovedBody852_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_596 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_597 : StackLang.HolProg 64 :=
.seq RemovedBody852_595 RemovedBody852_596

def RemovedBody852_598 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_594, 0, 852, 18)) (Sum.inl 68) (some (RemovedBody852_597, 852, 19))

def RemovedBody852_599 : StackLang.HolProg 64 :=
.seq RemovedBody852_585 RemovedBody852_598

def RemovedBody852_600 : StackLang.HolProg 64 :=
.seq RemovedBody852_584 RemovedBody852_599

def RemovedBody852_601 : StackLang.HolProg 64 :=
.seq RemovedBody852_583 RemovedBody852_600

def RemovedBody852_602 : StackLang.HolProg 64 :=
.seq RemovedBody852_554 RemovedBody852_601

def RemovedBody852_603 : StackLang.HolProg 64 :=
.seq RemovedBody852_551 RemovedBody852_602

def RemovedBody852_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551136#64)))

def RemovedBody852_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551136#64))

def RemovedBody852_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 15579492241104728066#64)

def RemovedBody852_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 17242047345525313946#64)

def RemovedBody852_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2401#64)

def RemovedBody852_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4319#64)

def RemovedBody852_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_620 : StackLang.HolProg 64 :=
.seq RemovedBody852_618 RemovedBody852_619

def RemovedBody852_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_624 : StackLang.HolProg 64 :=
.seq RemovedBody852_622 RemovedBody852_623

def RemovedBody852_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_626 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_624 RemovedBody852_625

def RemovedBody852_627 : StackLang.HolProg 64 :=
.seq RemovedBody852_621 RemovedBody852_626

def RemovedBody852_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 21

def RemovedBody852_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_637 : StackLang.HolProg 64 :=
.seq RemovedBody852_635 RemovedBody852_636

def RemovedBody852_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_639 : StackLang.HolProg 64 :=
.seq RemovedBody852_637 RemovedBody852_638

def RemovedBody852_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_641 : StackLang.HolProg 64 :=
.seq RemovedBody852_639 RemovedBody852_640

def RemovedBody852_642 : StackLang.HolProg 64 :=
.seq RemovedBody852_634 RemovedBody852_641

def RemovedBody852_643 : StackLang.HolProg 64 :=
.seq RemovedBody852_633 RemovedBody852_642

def RemovedBody852_644 : StackLang.HolProg 64 :=
.seq RemovedBody852_632 RemovedBody852_643

def RemovedBody852_645 : StackLang.HolProg 64 :=
.seq RemovedBody852_631 RemovedBody852_644

def RemovedBody852_646 : StackLang.HolProg 64 :=
.seq RemovedBody852_630 RemovedBody852_645

def RemovedBody852_647 : StackLang.HolProg 64 :=
.seq RemovedBody852_629 RemovedBody852_646

def RemovedBody852_648 : StackLang.HolProg 64 :=
.seq RemovedBody852_628 RemovedBody852_647

def RemovedBody852_649 : StackLang.HolProg 64 :=
.seq RemovedBody852_627 RemovedBody852_648

def RemovedBody852_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_657 : StackLang.HolProg 64 :=
.seq RemovedBody852_655 RemovedBody852_656

def RemovedBody852_658 : StackLang.HolProg 64 :=
.seq RemovedBody852_654 RemovedBody852_657

def RemovedBody852_659 : StackLang.HolProg 64 :=
.seq RemovedBody852_653 RemovedBody852_658

def RemovedBody852_660 : StackLang.HolProg 64 :=
.seq RemovedBody852_652 RemovedBody852_659

def RemovedBody852_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_662 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_663 : StackLang.HolProg 64 :=
.seq RemovedBody852_661 RemovedBody852_662

def RemovedBody852_664 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_660, 0, 852, 20)) (Sum.inl 851) (some (RemovedBody852_663, 852, 21))

def RemovedBody852_665 : StackLang.HolProg 64 :=
.seq RemovedBody852_651 RemovedBody852_664

def RemovedBody852_666 : StackLang.HolProg 64 :=
.seq RemovedBody852_650 RemovedBody852_665

def RemovedBody852_667 : StackLang.HolProg 64 :=
.seq RemovedBody852_649 RemovedBody852_666

def RemovedBody852_668 : StackLang.HolProg 64 :=
.seq RemovedBody852_620 RemovedBody852_667

def RemovedBody852_669 : StackLang.HolProg 64 :=
.seq RemovedBody852_617 RemovedBody852_668

def RemovedBody852_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody852_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4320#64)

def RemovedBody852_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_676 : StackLang.HolProg 64 :=
.seq RemovedBody852_674 RemovedBody852_675

def RemovedBody852_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_680 : StackLang.HolProg 64 :=
.seq RemovedBody852_678 RemovedBody852_679

def RemovedBody852_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_682 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_680 RemovedBody852_681

def RemovedBody852_683 : StackLang.HolProg 64 :=
.seq RemovedBody852_677 RemovedBody852_682

def RemovedBody852_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 23

def RemovedBody852_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_693 : StackLang.HolProg 64 :=
.seq RemovedBody852_691 RemovedBody852_692

def RemovedBody852_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_695 : StackLang.HolProg 64 :=
.seq RemovedBody852_693 RemovedBody852_694

def RemovedBody852_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_697 : StackLang.HolProg 64 :=
.seq RemovedBody852_695 RemovedBody852_696

def RemovedBody852_698 : StackLang.HolProg 64 :=
.seq RemovedBody852_690 RemovedBody852_697

def RemovedBody852_699 : StackLang.HolProg 64 :=
.seq RemovedBody852_689 RemovedBody852_698

def RemovedBody852_700 : StackLang.HolProg 64 :=
.seq RemovedBody852_688 RemovedBody852_699

def RemovedBody852_701 : StackLang.HolProg 64 :=
.seq RemovedBody852_687 RemovedBody852_700

def RemovedBody852_702 : StackLang.HolProg 64 :=
.seq RemovedBody852_686 RemovedBody852_701

def RemovedBody852_703 : StackLang.HolProg 64 :=
.seq RemovedBody852_685 RemovedBody852_702

def RemovedBody852_704 : StackLang.HolProg 64 :=
.seq RemovedBody852_684 RemovedBody852_703

def RemovedBody852_705 : StackLang.HolProg 64 :=
.seq RemovedBody852_683 RemovedBody852_704

def RemovedBody852_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_713 : StackLang.HolProg 64 :=
.seq RemovedBody852_711 RemovedBody852_712

def RemovedBody852_714 : StackLang.HolProg 64 :=
.seq RemovedBody852_710 RemovedBody852_713

def RemovedBody852_715 : StackLang.HolProg 64 :=
.seq RemovedBody852_709 RemovedBody852_714

def RemovedBody852_716 : StackLang.HolProg 64 :=
.seq RemovedBody852_708 RemovedBody852_715

def RemovedBody852_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_718 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_719 : StackLang.HolProg 64 :=
.seq RemovedBody852_717 RemovedBody852_718

def RemovedBody852_720 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_716, 0, 852, 22)) (Sum.inl 68) (some (RemovedBody852_719, 852, 23))

def RemovedBody852_721 : StackLang.HolProg 64 :=
.seq RemovedBody852_707 RemovedBody852_720

def RemovedBody852_722 : StackLang.HolProg 64 :=
.seq RemovedBody852_706 RemovedBody852_721

def RemovedBody852_723 : StackLang.HolProg 64 :=
.seq RemovedBody852_705 RemovedBody852_722

def RemovedBody852_724 : StackLang.HolProg 64 :=
.seq RemovedBody852_676 RemovedBody852_723

def RemovedBody852_725 : StackLang.HolProg 64 :=
.seq RemovedBody852_673 RemovedBody852_724

def RemovedBody852_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551128#64)))

def RemovedBody852_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551128#64))

def RemovedBody852_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 10016273463683084881#64)

def RemovedBody852_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 14397524800236640159#64)

def RemovedBody852_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 48093#64)

def RemovedBody852_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4321#64)

def RemovedBody852_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_742 : StackLang.HolProg 64 :=
.seq RemovedBody852_740 RemovedBody852_741

def RemovedBody852_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_746 : StackLang.HolProg 64 :=
.seq RemovedBody852_744 RemovedBody852_745

def RemovedBody852_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_748 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_746 RemovedBody852_747

def RemovedBody852_749 : StackLang.HolProg 64 :=
.seq RemovedBody852_743 RemovedBody852_748

def RemovedBody852_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 25

def RemovedBody852_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_759 : StackLang.HolProg 64 :=
.seq RemovedBody852_757 RemovedBody852_758

def RemovedBody852_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_761 : StackLang.HolProg 64 :=
.seq RemovedBody852_759 RemovedBody852_760

def RemovedBody852_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_763 : StackLang.HolProg 64 :=
.seq RemovedBody852_761 RemovedBody852_762

def RemovedBody852_764 : StackLang.HolProg 64 :=
.seq RemovedBody852_756 RemovedBody852_763

def RemovedBody852_765 : StackLang.HolProg 64 :=
.seq RemovedBody852_755 RemovedBody852_764

def RemovedBody852_766 : StackLang.HolProg 64 :=
.seq RemovedBody852_754 RemovedBody852_765

def RemovedBody852_767 : StackLang.HolProg 64 :=
.seq RemovedBody852_753 RemovedBody852_766

def RemovedBody852_768 : StackLang.HolProg 64 :=
.seq RemovedBody852_752 RemovedBody852_767

def RemovedBody852_769 : StackLang.HolProg 64 :=
.seq RemovedBody852_751 RemovedBody852_768

def RemovedBody852_770 : StackLang.HolProg 64 :=
.seq RemovedBody852_750 RemovedBody852_769

def RemovedBody852_771 : StackLang.HolProg 64 :=
.seq RemovedBody852_749 RemovedBody852_770

def RemovedBody852_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_779 : StackLang.HolProg 64 :=
.seq RemovedBody852_777 RemovedBody852_778

def RemovedBody852_780 : StackLang.HolProg 64 :=
.seq RemovedBody852_776 RemovedBody852_779

def RemovedBody852_781 : StackLang.HolProg 64 :=
.seq RemovedBody852_775 RemovedBody852_780

def RemovedBody852_782 : StackLang.HolProg 64 :=
.seq RemovedBody852_774 RemovedBody852_781

def RemovedBody852_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_784 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_785 : StackLang.HolProg 64 :=
.seq RemovedBody852_783 RemovedBody852_784

def RemovedBody852_786 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_782, 0, 852, 24)) (Sum.inl 851) (some (RemovedBody852_785, 852, 25))

def RemovedBody852_787 : StackLang.HolProg 64 :=
.seq RemovedBody852_773 RemovedBody852_786

def RemovedBody852_788 : StackLang.HolProg 64 :=
.seq RemovedBody852_772 RemovedBody852_787

def RemovedBody852_789 : StackLang.HolProg 64 :=
.seq RemovedBody852_771 RemovedBody852_788

def RemovedBody852_790 : StackLang.HolProg 64 :=
.seq RemovedBody852_742 RemovedBody852_789

def RemovedBody852_791 : StackLang.HolProg 64 :=
.seq RemovedBody852_739 RemovedBody852_790

def RemovedBody852_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody852_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4322#64)

def RemovedBody852_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_798 : StackLang.HolProg 64 :=
.seq RemovedBody852_796 RemovedBody852_797

def RemovedBody852_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_802 : StackLang.HolProg 64 :=
.seq RemovedBody852_800 RemovedBody852_801

def RemovedBody852_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_804 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_802 RemovedBody852_803

def RemovedBody852_805 : StackLang.HolProg 64 :=
.seq RemovedBody852_799 RemovedBody852_804

def RemovedBody852_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 27

def RemovedBody852_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_815 : StackLang.HolProg 64 :=
.seq RemovedBody852_813 RemovedBody852_814

def RemovedBody852_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_817 : StackLang.HolProg 64 :=
.seq RemovedBody852_815 RemovedBody852_816

def RemovedBody852_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_819 : StackLang.HolProg 64 :=
.seq RemovedBody852_817 RemovedBody852_818

def RemovedBody852_820 : StackLang.HolProg 64 :=
.seq RemovedBody852_812 RemovedBody852_819

def RemovedBody852_821 : StackLang.HolProg 64 :=
.seq RemovedBody852_811 RemovedBody852_820

def RemovedBody852_822 : StackLang.HolProg 64 :=
.seq RemovedBody852_810 RemovedBody852_821

def RemovedBody852_823 : StackLang.HolProg 64 :=
.seq RemovedBody852_809 RemovedBody852_822

def RemovedBody852_824 : StackLang.HolProg 64 :=
.seq RemovedBody852_808 RemovedBody852_823

def RemovedBody852_825 : StackLang.HolProg 64 :=
.seq RemovedBody852_807 RemovedBody852_824

def RemovedBody852_826 : StackLang.HolProg 64 :=
.seq RemovedBody852_806 RemovedBody852_825

def RemovedBody852_827 : StackLang.HolProg 64 :=
.seq RemovedBody852_805 RemovedBody852_826

def RemovedBody852_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_835 : StackLang.HolProg 64 :=
.seq RemovedBody852_833 RemovedBody852_834

def RemovedBody852_836 : StackLang.HolProg 64 :=
.seq RemovedBody852_832 RemovedBody852_835

def RemovedBody852_837 : StackLang.HolProg 64 :=
.seq RemovedBody852_831 RemovedBody852_836

def RemovedBody852_838 : StackLang.HolProg 64 :=
.seq RemovedBody852_830 RemovedBody852_837

def RemovedBody852_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_840 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_841 : StackLang.HolProg 64 :=
.seq RemovedBody852_839 RemovedBody852_840

def RemovedBody852_842 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_838, 0, 852, 26)) (Sum.inl 68) (some (RemovedBody852_841, 852, 27))

def RemovedBody852_843 : StackLang.HolProg 64 :=
.seq RemovedBody852_829 RemovedBody852_842

def RemovedBody852_844 : StackLang.HolProg 64 :=
.seq RemovedBody852_828 RemovedBody852_843

def RemovedBody852_845 : StackLang.HolProg 64 :=
.seq RemovedBody852_827 RemovedBody852_844

def RemovedBody852_846 : StackLang.HolProg 64 :=
.seq RemovedBody852_798 RemovedBody852_845

def RemovedBody852_847 : StackLang.HolProg 64 :=
.seq RemovedBody852_795 RemovedBody852_846

def RemovedBody852_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551120#64)))

def RemovedBody852_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551120#64))

def RemovedBody852_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 760111669195932290#64)

def RemovedBody852_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 7603452151126424148#64)

def RemovedBody852_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 49140#64)

def RemovedBody852_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4323#64)

def RemovedBody852_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_864 : StackLang.HolProg 64 :=
.seq RemovedBody852_862 RemovedBody852_863

def RemovedBody852_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_868 : StackLang.HolProg 64 :=
.seq RemovedBody852_866 RemovedBody852_867

def RemovedBody852_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_870 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_868 RemovedBody852_869

def RemovedBody852_871 : StackLang.HolProg 64 :=
.seq RemovedBody852_865 RemovedBody852_870

def RemovedBody852_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 29

def RemovedBody852_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_881 : StackLang.HolProg 64 :=
.seq RemovedBody852_879 RemovedBody852_880

def RemovedBody852_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_883 : StackLang.HolProg 64 :=
.seq RemovedBody852_881 RemovedBody852_882

def RemovedBody852_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_885 : StackLang.HolProg 64 :=
.seq RemovedBody852_883 RemovedBody852_884

def RemovedBody852_886 : StackLang.HolProg 64 :=
.seq RemovedBody852_878 RemovedBody852_885

def RemovedBody852_887 : StackLang.HolProg 64 :=
.seq RemovedBody852_877 RemovedBody852_886

def RemovedBody852_888 : StackLang.HolProg 64 :=
.seq RemovedBody852_876 RemovedBody852_887

def RemovedBody852_889 : StackLang.HolProg 64 :=
.seq RemovedBody852_875 RemovedBody852_888

def RemovedBody852_890 : StackLang.HolProg 64 :=
.seq RemovedBody852_874 RemovedBody852_889

def RemovedBody852_891 : StackLang.HolProg 64 :=
.seq RemovedBody852_873 RemovedBody852_890

def RemovedBody852_892 : StackLang.HolProg 64 :=
.seq RemovedBody852_872 RemovedBody852_891

def RemovedBody852_893 : StackLang.HolProg 64 :=
.seq RemovedBody852_871 RemovedBody852_892

def RemovedBody852_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_901 : StackLang.HolProg 64 :=
.seq RemovedBody852_899 RemovedBody852_900

def RemovedBody852_902 : StackLang.HolProg 64 :=
.seq RemovedBody852_898 RemovedBody852_901

def RemovedBody852_903 : StackLang.HolProg 64 :=
.seq RemovedBody852_897 RemovedBody852_902

def RemovedBody852_904 : StackLang.HolProg 64 :=
.seq RemovedBody852_896 RemovedBody852_903

def RemovedBody852_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_906 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_907 : StackLang.HolProg 64 :=
.seq RemovedBody852_905 RemovedBody852_906

def RemovedBody852_908 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_904, 0, 852, 28)) (Sum.inl 851) (some (RemovedBody852_907, 852, 29))

def RemovedBody852_909 : StackLang.HolProg 64 :=
.seq RemovedBody852_895 RemovedBody852_908

def RemovedBody852_910 : StackLang.HolProg 64 :=
.seq RemovedBody852_894 RemovedBody852_909

def RemovedBody852_911 : StackLang.HolProg 64 :=
.seq RemovedBody852_893 RemovedBody852_910

def RemovedBody852_912 : StackLang.HolProg 64 :=
.seq RemovedBody852_864 RemovedBody852_911

def RemovedBody852_913 : StackLang.HolProg 64 :=
.seq RemovedBody852_861 RemovedBody852_912

def RemovedBody852_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody852_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4324#64)

def RemovedBody852_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_920 : StackLang.HolProg 64 :=
.seq RemovedBody852_918 RemovedBody852_919

def RemovedBody852_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_924 : StackLang.HolProg 64 :=
.seq RemovedBody852_922 RemovedBody852_923

def RemovedBody852_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_926 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_924 RemovedBody852_925

def RemovedBody852_927 : StackLang.HolProg 64 :=
.seq RemovedBody852_921 RemovedBody852_926

def RemovedBody852_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 31

def RemovedBody852_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_937 : StackLang.HolProg 64 :=
.seq RemovedBody852_935 RemovedBody852_936

def RemovedBody852_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_939 : StackLang.HolProg 64 :=
.seq RemovedBody852_937 RemovedBody852_938

def RemovedBody852_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_941 : StackLang.HolProg 64 :=
.seq RemovedBody852_939 RemovedBody852_940

def RemovedBody852_942 : StackLang.HolProg 64 :=
.seq RemovedBody852_934 RemovedBody852_941

def RemovedBody852_943 : StackLang.HolProg 64 :=
.seq RemovedBody852_933 RemovedBody852_942

def RemovedBody852_944 : StackLang.HolProg 64 :=
.seq RemovedBody852_932 RemovedBody852_943

def RemovedBody852_945 : StackLang.HolProg 64 :=
.seq RemovedBody852_931 RemovedBody852_944

def RemovedBody852_946 : StackLang.HolProg 64 :=
.seq RemovedBody852_930 RemovedBody852_945

def RemovedBody852_947 : StackLang.HolProg 64 :=
.seq RemovedBody852_929 RemovedBody852_946

def RemovedBody852_948 : StackLang.HolProg 64 :=
.seq RemovedBody852_928 RemovedBody852_947

def RemovedBody852_949 : StackLang.HolProg 64 :=
.seq RemovedBody852_927 RemovedBody852_948

def RemovedBody852_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_957 : StackLang.HolProg 64 :=
.seq RemovedBody852_955 RemovedBody852_956

def RemovedBody852_958 : StackLang.HolProg 64 :=
.seq RemovedBody852_954 RemovedBody852_957

def RemovedBody852_959 : StackLang.HolProg 64 :=
.seq RemovedBody852_953 RemovedBody852_958

def RemovedBody852_960 : StackLang.HolProg 64 :=
.seq RemovedBody852_952 RemovedBody852_959

def RemovedBody852_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_962 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_963 : StackLang.HolProg 64 :=
.seq RemovedBody852_961 RemovedBody852_962

def RemovedBody852_964 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_960, 0, 852, 30)) (Sum.inl 68) (some (RemovedBody852_963, 852, 31))

def RemovedBody852_965 : StackLang.HolProg 64 :=
.seq RemovedBody852_951 RemovedBody852_964

def RemovedBody852_966 : StackLang.HolProg 64 :=
.seq RemovedBody852_950 RemovedBody852_965

def RemovedBody852_967 : StackLang.HolProg 64 :=
.seq RemovedBody852_949 RemovedBody852_966

def RemovedBody852_968 : StackLang.HolProg 64 :=
.seq RemovedBody852_920 RemovedBody852_967

def RemovedBody852_969 : StackLang.HolProg 64 :=
.seq RemovedBody852_917 RemovedBody852_968

def RemovedBody852_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551112#64)))

def RemovedBody852_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551112#64))

def RemovedBody852_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4307224735379260034#64)

def RemovedBody852_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8669529151676140297#64)

def RemovedBody852_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 25814#64)

def RemovedBody852_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4325#64)

def RemovedBody852_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_986 : StackLang.HolProg 64 :=
.seq RemovedBody852_984 RemovedBody852_985

def RemovedBody852_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_990 : StackLang.HolProg 64 :=
.seq RemovedBody852_988 RemovedBody852_989

def RemovedBody852_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_992 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_990 RemovedBody852_991

def RemovedBody852_993 : StackLang.HolProg 64 :=
.seq RemovedBody852_987 RemovedBody852_992

def RemovedBody852_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 33

def RemovedBody852_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1003 : StackLang.HolProg 64 :=
.seq RemovedBody852_1001 RemovedBody852_1002

def RemovedBody852_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1005 : StackLang.HolProg 64 :=
.seq RemovedBody852_1003 RemovedBody852_1004

def RemovedBody852_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1007 : StackLang.HolProg 64 :=
.seq RemovedBody852_1005 RemovedBody852_1006

def RemovedBody852_1008 : StackLang.HolProg 64 :=
.seq RemovedBody852_1000 RemovedBody852_1007

def RemovedBody852_1009 : StackLang.HolProg 64 :=
.seq RemovedBody852_999 RemovedBody852_1008

def RemovedBody852_1010 : StackLang.HolProg 64 :=
.seq RemovedBody852_998 RemovedBody852_1009

def RemovedBody852_1011 : StackLang.HolProg 64 :=
.seq RemovedBody852_997 RemovedBody852_1010

def RemovedBody852_1012 : StackLang.HolProg 64 :=
.seq RemovedBody852_996 RemovedBody852_1011

def RemovedBody852_1013 : StackLang.HolProg 64 :=
.seq RemovedBody852_995 RemovedBody852_1012

def RemovedBody852_1014 : StackLang.HolProg 64 :=
.seq RemovedBody852_994 RemovedBody852_1013

def RemovedBody852_1015 : StackLang.HolProg 64 :=
.seq RemovedBody852_993 RemovedBody852_1014

def RemovedBody852_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1023 : StackLang.HolProg 64 :=
.seq RemovedBody852_1021 RemovedBody852_1022

def RemovedBody852_1024 : StackLang.HolProg 64 :=
.seq RemovedBody852_1020 RemovedBody852_1023

def RemovedBody852_1025 : StackLang.HolProg 64 :=
.seq RemovedBody852_1019 RemovedBody852_1024

def RemovedBody852_1026 : StackLang.HolProg 64 :=
.seq RemovedBody852_1018 RemovedBody852_1025

def RemovedBody852_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1028 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1029 : StackLang.HolProg 64 :=
.seq RemovedBody852_1027 RemovedBody852_1028

def RemovedBody852_1030 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1026, 0, 852, 32)) (Sum.inl 851) (some (RemovedBody852_1029, 852, 33))

def RemovedBody852_1031 : StackLang.HolProg 64 :=
.seq RemovedBody852_1017 RemovedBody852_1030

def RemovedBody852_1032 : StackLang.HolProg 64 :=
.seq RemovedBody852_1016 RemovedBody852_1031

def RemovedBody852_1033 : StackLang.HolProg 64 :=
.seq RemovedBody852_1015 RemovedBody852_1032

def RemovedBody852_1034 : StackLang.HolProg 64 :=
.seq RemovedBody852_986 RemovedBody852_1033

def RemovedBody852_1035 : StackLang.HolProg 64 :=
.seq RemovedBody852_983 RemovedBody852_1034

def RemovedBody852_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody852_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4326#64)

def RemovedBody852_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1042 : StackLang.HolProg 64 :=
.seq RemovedBody852_1040 RemovedBody852_1041

def RemovedBody852_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_1046 : StackLang.HolProg 64 :=
.seq RemovedBody852_1044 RemovedBody852_1045

def RemovedBody852_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1048 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_1046 RemovedBody852_1047

def RemovedBody852_1049 : StackLang.HolProg 64 :=
.seq RemovedBody852_1043 RemovedBody852_1048

def RemovedBody852_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 35

def RemovedBody852_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1059 : StackLang.HolProg 64 :=
.seq RemovedBody852_1057 RemovedBody852_1058

def RemovedBody852_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1061 : StackLang.HolProg 64 :=
.seq RemovedBody852_1059 RemovedBody852_1060

def RemovedBody852_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1063 : StackLang.HolProg 64 :=
.seq RemovedBody852_1061 RemovedBody852_1062

def RemovedBody852_1064 : StackLang.HolProg 64 :=
.seq RemovedBody852_1056 RemovedBody852_1063

def RemovedBody852_1065 : StackLang.HolProg 64 :=
.seq RemovedBody852_1055 RemovedBody852_1064

def RemovedBody852_1066 : StackLang.HolProg 64 :=
.seq RemovedBody852_1054 RemovedBody852_1065

def RemovedBody852_1067 : StackLang.HolProg 64 :=
.seq RemovedBody852_1053 RemovedBody852_1066

def RemovedBody852_1068 : StackLang.HolProg 64 :=
.seq RemovedBody852_1052 RemovedBody852_1067

def RemovedBody852_1069 : StackLang.HolProg 64 :=
.seq RemovedBody852_1051 RemovedBody852_1068

def RemovedBody852_1070 : StackLang.HolProg 64 :=
.seq RemovedBody852_1050 RemovedBody852_1069

def RemovedBody852_1071 : StackLang.HolProg 64 :=
.seq RemovedBody852_1049 RemovedBody852_1070

def RemovedBody852_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_1079 : StackLang.HolProg 64 :=
.seq RemovedBody852_1077 RemovedBody852_1078

def RemovedBody852_1080 : StackLang.HolProg 64 :=
.seq RemovedBody852_1076 RemovedBody852_1079

def RemovedBody852_1081 : StackLang.HolProg 64 :=
.seq RemovedBody852_1075 RemovedBody852_1080

def RemovedBody852_1082 : StackLang.HolProg 64 :=
.seq RemovedBody852_1074 RemovedBody852_1081

def RemovedBody852_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1084 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1085 : StackLang.HolProg 64 :=
.seq RemovedBody852_1083 RemovedBody852_1084

def RemovedBody852_1086 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1082, 0, 852, 34)) (Sum.inl 68) (some (RemovedBody852_1085, 852, 35))

def RemovedBody852_1087 : StackLang.HolProg 64 :=
.seq RemovedBody852_1073 RemovedBody852_1086

def RemovedBody852_1088 : StackLang.HolProg 64 :=
.seq RemovedBody852_1072 RemovedBody852_1087

def RemovedBody852_1089 : StackLang.HolProg 64 :=
.seq RemovedBody852_1071 RemovedBody852_1088

def RemovedBody852_1090 : StackLang.HolProg 64 :=
.seq RemovedBody852_1042 RemovedBody852_1089

def RemovedBody852_1091 : StackLang.HolProg 64 :=
.seq RemovedBody852_1039 RemovedBody852_1090

def RemovedBody852_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551104#64)))

def RemovedBody852_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551104#64))

def RemovedBody852_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 11294470620239562234#64)

def RemovedBody852_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2421447037043915651#64)

def RemovedBody852_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody852_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4327#64)

def RemovedBody852_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1108 : StackLang.HolProg 64 :=
.seq RemovedBody852_1106 RemovedBody852_1107

def RemovedBody852_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_1112 : StackLang.HolProg 64 :=
.seq RemovedBody852_1110 RemovedBody852_1111

def RemovedBody852_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_1112 RemovedBody852_1113

def RemovedBody852_1115 : StackLang.HolProg 64 :=
.seq RemovedBody852_1109 RemovedBody852_1114

def RemovedBody852_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 37

def RemovedBody852_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1125 : StackLang.HolProg 64 :=
.seq RemovedBody852_1123 RemovedBody852_1124

def RemovedBody852_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1127 : StackLang.HolProg 64 :=
.seq RemovedBody852_1125 RemovedBody852_1126

def RemovedBody852_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1129 : StackLang.HolProg 64 :=
.seq RemovedBody852_1127 RemovedBody852_1128

def RemovedBody852_1130 : StackLang.HolProg 64 :=
.seq RemovedBody852_1122 RemovedBody852_1129

def RemovedBody852_1131 : StackLang.HolProg 64 :=
.seq RemovedBody852_1121 RemovedBody852_1130

def RemovedBody852_1132 : StackLang.HolProg 64 :=
.seq RemovedBody852_1120 RemovedBody852_1131

def RemovedBody852_1133 : StackLang.HolProg 64 :=
.seq RemovedBody852_1119 RemovedBody852_1132

def RemovedBody852_1134 : StackLang.HolProg 64 :=
.seq RemovedBody852_1118 RemovedBody852_1133

def RemovedBody852_1135 : StackLang.HolProg 64 :=
.seq RemovedBody852_1117 RemovedBody852_1134

def RemovedBody852_1136 : StackLang.HolProg 64 :=
.seq RemovedBody852_1116 RemovedBody852_1135

def RemovedBody852_1137 : StackLang.HolProg 64 :=
.seq RemovedBody852_1115 RemovedBody852_1136

def RemovedBody852_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1145 : StackLang.HolProg 64 :=
.seq RemovedBody852_1143 RemovedBody852_1144

def RemovedBody852_1146 : StackLang.HolProg 64 :=
.seq RemovedBody852_1142 RemovedBody852_1145

def RemovedBody852_1147 : StackLang.HolProg 64 :=
.seq RemovedBody852_1141 RemovedBody852_1146

def RemovedBody852_1148 : StackLang.HolProg 64 :=
.seq RemovedBody852_1140 RemovedBody852_1147

def RemovedBody852_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1151 : StackLang.HolProg 64 :=
.seq RemovedBody852_1149 RemovedBody852_1150

def RemovedBody852_1152 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1148, 0, 852, 36)) (Sum.inl 851) (some (RemovedBody852_1151, 852, 37))

def RemovedBody852_1153 : StackLang.HolProg 64 :=
.seq RemovedBody852_1139 RemovedBody852_1152

def RemovedBody852_1154 : StackLang.HolProg 64 :=
.seq RemovedBody852_1138 RemovedBody852_1153

def RemovedBody852_1155 : StackLang.HolProg 64 :=
.seq RemovedBody852_1137 RemovedBody852_1154

def RemovedBody852_1156 : StackLang.HolProg 64 :=
.seq RemovedBody852_1108 RemovedBody852_1155

def RemovedBody852_1157 : StackLang.HolProg 64 :=
.seq RemovedBody852_1105 RemovedBody852_1156

def RemovedBody852_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody852_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4328#64)

def RemovedBody852_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1164 : StackLang.HolProg 64 :=
.seq RemovedBody852_1162 RemovedBody852_1163

def RemovedBody852_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_1168 : StackLang.HolProg 64 :=
.seq RemovedBody852_1166 RemovedBody852_1167

def RemovedBody852_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_1168 RemovedBody852_1169

def RemovedBody852_1171 : StackLang.HolProg 64 :=
.seq RemovedBody852_1165 RemovedBody852_1170

def RemovedBody852_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 39

def RemovedBody852_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1181 : StackLang.HolProg 64 :=
.seq RemovedBody852_1179 RemovedBody852_1180

def RemovedBody852_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1183 : StackLang.HolProg 64 :=
.seq RemovedBody852_1181 RemovedBody852_1182

def RemovedBody852_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1185 : StackLang.HolProg 64 :=
.seq RemovedBody852_1183 RemovedBody852_1184

def RemovedBody852_1186 : StackLang.HolProg 64 :=
.seq RemovedBody852_1178 RemovedBody852_1185

def RemovedBody852_1187 : StackLang.HolProg 64 :=
.seq RemovedBody852_1177 RemovedBody852_1186

def RemovedBody852_1188 : StackLang.HolProg 64 :=
.seq RemovedBody852_1176 RemovedBody852_1187

def RemovedBody852_1189 : StackLang.HolProg 64 :=
.seq RemovedBody852_1175 RemovedBody852_1188

def RemovedBody852_1190 : StackLang.HolProg 64 :=
.seq RemovedBody852_1174 RemovedBody852_1189

def RemovedBody852_1191 : StackLang.HolProg 64 :=
.seq RemovedBody852_1173 RemovedBody852_1190

def RemovedBody852_1192 : StackLang.HolProg 64 :=
.seq RemovedBody852_1172 RemovedBody852_1191

def RemovedBody852_1193 : StackLang.HolProg 64 :=
.seq RemovedBody852_1171 RemovedBody852_1192

def RemovedBody852_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody852_1201 : StackLang.HolProg 64 :=
.seq RemovedBody852_1199 RemovedBody852_1200

def RemovedBody852_1202 : StackLang.HolProg 64 :=
.seq RemovedBody852_1198 RemovedBody852_1201

def RemovedBody852_1203 : StackLang.HolProg 64 :=
.seq RemovedBody852_1197 RemovedBody852_1202

def RemovedBody852_1204 : StackLang.HolProg 64 :=
.seq RemovedBody852_1196 RemovedBody852_1203

def RemovedBody852_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1207 : StackLang.HolProg 64 :=
.seq RemovedBody852_1205 RemovedBody852_1206

def RemovedBody852_1208 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1204, 0, 852, 38)) (Sum.inl 68) (some (RemovedBody852_1207, 852, 39))

def RemovedBody852_1209 : StackLang.HolProg 64 :=
.seq RemovedBody852_1195 RemovedBody852_1208

def RemovedBody852_1210 : StackLang.HolProg 64 :=
.seq RemovedBody852_1194 RemovedBody852_1209

def RemovedBody852_1211 : StackLang.HolProg 64 :=
.seq RemovedBody852_1193 RemovedBody852_1210

def RemovedBody852_1212 : StackLang.HolProg 64 :=
.seq RemovedBody852_1164 RemovedBody852_1211

def RemovedBody852_1213 : StackLang.HolProg 64 :=
.seq RemovedBody852_1161 RemovedBody852_1212

def RemovedBody852_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551096#64)))

def RemovedBody852_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody852_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def RemovedBody852_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 7249595157780304706#64)

def RemovedBody852_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4329#64)

def RemovedBody852_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1228 : StackLang.HolProg 64 :=
.seq RemovedBody852_1226 RemovedBody852_1227

def RemovedBody852_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_1232 : StackLang.HolProg 64 :=
.seq RemovedBody852_1230 RemovedBody852_1231

def RemovedBody852_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1234 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_1232 RemovedBody852_1233

def RemovedBody852_1235 : StackLang.HolProg 64 :=
.seq RemovedBody852_1229 RemovedBody852_1234

def RemovedBody852_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 41

def RemovedBody852_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1245 : StackLang.HolProg 64 :=
.seq RemovedBody852_1243 RemovedBody852_1244

def RemovedBody852_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1247 : StackLang.HolProg 64 :=
.seq RemovedBody852_1245 RemovedBody852_1246

def RemovedBody852_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1249 : StackLang.HolProg 64 :=
.seq RemovedBody852_1247 RemovedBody852_1248

def RemovedBody852_1250 : StackLang.HolProg 64 :=
.seq RemovedBody852_1242 RemovedBody852_1249

def RemovedBody852_1251 : StackLang.HolProg 64 :=
.seq RemovedBody852_1241 RemovedBody852_1250

def RemovedBody852_1252 : StackLang.HolProg 64 :=
.seq RemovedBody852_1240 RemovedBody852_1251

def RemovedBody852_1253 : StackLang.HolProg 64 :=
.seq RemovedBody852_1239 RemovedBody852_1252

def RemovedBody852_1254 : StackLang.HolProg 64 :=
.seq RemovedBody852_1238 RemovedBody852_1253

def RemovedBody852_1255 : StackLang.HolProg 64 :=
.seq RemovedBody852_1237 RemovedBody852_1254

def RemovedBody852_1256 : StackLang.HolProg 64 :=
.seq RemovedBody852_1236 RemovedBody852_1255

def RemovedBody852_1257 : StackLang.HolProg 64 :=
.seq RemovedBody852_1235 RemovedBody852_1256

def RemovedBody852_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1265 : StackLang.HolProg 64 :=
.seq RemovedBody852_1263 RemovedBody852_1264

def RemovedBody852_1266 : StackLang.HolProg 64 :=
.seq RemovedBody852_1262 RemovedBody852_1265

def RemovedBody852_1267 : StackLang.HolProg 64 :=
.seq RemovedBody852_1261 RemovedBody852_1266

def RemovedBody852_1268 : StackLang.HolProg 64 :=
.seq RemovedBody852_1260 RemovedBody852_1267

def RemovedBody852_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1270 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1271 : StackLang.HolProg 64 :=
.seq RemovedBody852_1269 RemovedBody852_1270

def RemovedBody852_1272 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1268, 0, 852, 40)) (Sum.inl 89) (some (RemovedBody852_1271, 852, 41))

def RemovedBody852_1273 : StackLang.HolProg 64 :=
.seq RemovedBody852_1259 RemovedBody852_1272

def RemovedBody852_1274 : StackLang.HolProg 64 :=
.seq RemovedBody852_1258 RemovedBody852_1273

def RemovedBody852_1275 : StackLang.HolProg 64 :=
.seq RemovedBody852_1257 RemovedBody852_1274

def RemovedBody852_1276 : StackLang.HolProg 64 :=
.seq RemovedBody852_1228 RemovedBody852_1275

def RemovedBody852_1277 : StackLang.HolProg 64 :=
.seq RemovedBody852_1225 RemovedBody852_1276

def RemovedBody852_1278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def RemovedBody852_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody852_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12676030261858484297#64)

def RemovedBody852_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4330#64)

def RemovedBody852_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1289 : StackLang.HolProg 64 :=
.seq RemovedBody852_1287 RemovedBody852_1288

def RemovedBody852_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_1293 : StackLang.HolProg 64 :=
.seq RemovedBody852_1291 RemovedBody852_1292

def RemovedBody852_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1295 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_1293 RemovedBody852_1294

def RemovedBody852_1296 : StackLang.HolProg 64 :=
.seq RemovedBody852_1290 RemovedBody852_1295

def RemovedBody852_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 43

def RemovedBody852_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1306 : StackLang.HolProg 64 :=
.seq RemovedBody852_1304 RemovedBody852_1305

def RemovedBody852_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1308 : StackLang.HolProg 64 :=
.seq RemovedBody852_1306 RemovedBody852_1307

def RemovedBody852_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1310 : StackLang.HolProg 64 :=
.seq RemovedBody852_1308 RemovedBody852_1309

def RemovedBody852_1311 : StackLang.HolProg 64 :=
.seq RemovedBody852_1303 RemovedBody852_1310

def RemovedBody852_1312 : StackLang.HolProg 64 :=
.seq RemovedBody852_1302 RemovedBody852_1311

def RemovedBody852_1313 : StackLang.HolProg 64 :=
.seq RemovedBody852_1301 RemovedBody852_1312

def RemovedBody852_1314 : StackLang.HolProg 64 :=
.seq RemovedBody852_1300 RemovedBody852_1313

def RemovedBody852_1315 : StackLang.HolProg 64 :=
.seq RemovedBody852_1299 RemovedBody852_1314

def RemovedBody852_1316 : StackLang.HolProg 64 :=
.seq RemovedBody852_1298 RemovedBody852_1315

def RemovedBody852_1317 : StackLang.HolProg 64 :=
.seq RemovedBody852_1297 RemovedBody852_1316

def RemovedBody852_1318 : StackLang.HolProg 64 :=
.seq RemovedBody852_1296 RemovedBody852_1317

def RemovedBody852_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1326 : StackLang.HolProg 64 :=
.seq RemovedBody852_1324 RemovedBody852_1325

def RemovedBody852_1327 : StackLang.HolProg 64 :=
.seq RemovedBody852_1323 RemovedBody852_1326

def RemovedBody852_1328 : StackLang.HolProg 64 :=
.seq RemovedBody852_1322 RemovedBody852_1327

def RemovedBody852_1329 : StackLang.HolProg 64 :=
.seq RemovedBody852_1321 RemovedBody852_1328

def RemovedBody852_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1331 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1332 : StackLang.HolProg 64 :=
.seq RemovedBody852_1330 RemovedBody852_1331

def RemovedBody852_1333 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1329, 0, 852, 42)) (Sum.inl 89) (some (RemovedBody852_1332, 852, 43))

def RemovedBody852_1334 : StackLang.HolProg 64 :=
.seq RemovedBody852_1320 RemovedBody852_1333

def RemovedBody852_1335 : StackLang.HolProg 64 :=
.seq RemovedBody852_1319 RemovedBody852_1334

def RemovedBody852_1336 : StackLang.HolProg 64 :=
.seq RemovedBody852_1318 RemovedBody852_1335

def RemovedBody852_1337 : StackLang.HolProg 64 :=
.seq RemovedBody852_1289 RemovedBody852_1336

def RemovedBody852_1338 : StackLang.HolProg 64 :=
.seq RemovedBody852_1286 RemovedBody852_1337

def RemovedBody852_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_1342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def RemovedBody852_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody852_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16708898399860066458#64)

def RemovedBody852_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4331#64)

def RemovedBody852_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1350 : StackLang.HolProg 64 :=
.seq RemovedBody852_1348 RemovedBody852_1349

def RemovedBody852_1351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_1354 : StackLang.HolProg 64 :=
.seq RemovedBody852_1352 RemovedBody852_1353

def RemovedBody852_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1356 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_1354 RemovedBody852_1355

def RemovedBody852_1357 : StackLang.HolProg 64 :=
.seq RemovedBody852_1351 RemovedBody852_1356

def RemovedBody852_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 45

def RemovedBody852_1361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1367 : StackLang.HolProg 64 :=
.seq RemovedBody852_1365 RemovedBody852_1366

def RemovedBody852_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1369 : StackLang.HolProg 64 :=
.seq RemovedBody852_1367 RemovedBody852_1368

def RemovedBody852_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1371 : StackLang.HolProg 64 :=
.seq RemovedBody852_1369 RemovedBody852_1370

def RemovedBody852_1372 : StackLang.HolProg 64 :=
.seq RemovedBody852_1364 RemovedBody852_1371

def RemovedBody852_1373 : StackLang.HolProg 64 :=
.seq RemovedBody852_1363 RemovedBody852_1372

def RemovedBody852_1374 : StackLang.HolProg 64 :=
.seq RemovedBody852_1362 RemovedBody852_1373

def RemovedBody852_1375 : StackLang.HolProg 64 :=
.seq RemovedBody852_1361 RemovedBody852_1374

def RemovedBody852_1376 : StackLang.HolProg 64 :=
.seq RemovedBody852_1360 RemovedBody852_1375

def RemovedBody852_1377 : StackLang.HolProg 64 :=
.seq RemovedBody852_1359 RemovedBody852_1376

def RemovedBody852_1378 : StackLang.HolProg 64 :=
.seq RemovedBody852_1358 RemovedBody852_1377

def RemovedBody852_1379 : StackLang.HolProg 64 :=
.seq RemovedBody852_1357 RemovedBody852_1378

def RemovedBody852_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1387 : StackLang.HolProg 64 :=
.seq RemovedBody852_1385 RemovedBody852_1386

def RemovedBody852_1388 : StackLang.HolProg 64 :=
.seq RemovedBody852_1384 RemovedBody852_1387

def RemovedBody852_1389 : StackLang.HolProg 64 :=
.seq RemovedBody852_1383 RemovedBody852_1388

def RemovedBody852_1390 : StackLang.HolProg 64 :=
.seq RemovedBody852_1382 RemovedBody852_1389

def RemovedBody852_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1392 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1393 : StackLang.HolProg 64 :=
.seq RemovedBody852_1391 RemovedBody852_1392

def RemovedBody852_1394 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1390, 0, 852, 44)) (Sum.inl 89) (some (RemovedBody852_1393, 852, 45))

def RemovedBody852_1395 : StackLang.HolProg 64 :=
.seq RemovedBody852_1381 RemovedBody852_1394

def RemovedBody852_1396 : StackLang.HolProg 64 :=
.seq RemovedBody852_1380 RemovedBody852_1395

def RemovedBody852_1397 : StackLang.HolProg 64 :=
.seq RemovedBody852_1379 RemovedBody852_1396

def RemovedBody852_1398 : StackLang.HolProg 64 :=
.seq RemovedBody852_1350 RemovedBody852_1397

def RemovedBody852_1399 : StackLang.HolProg 64 :=
.seq RemovedBody852_1347 RemovedBody852_1398

def RemovedBody852_1400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody852_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody852_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody852_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def RemovedBody852_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12074291595689605317#64)

def RemovedBody852_1407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4332#64)

def RemovedBody852_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1411 : StackLang.HolProg 64 :=
.seq RemovedBody852_1409 RemovedBody852_1410

def RemovedBody852_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody852_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody852_1415 : StackLang.HolProg 64 :=
.seq RemovedBody852_1413 RemovedBody852_1414

def RemovedBody852_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1417 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody852_1415 RemovedBody852_1416

def RemovedBody852_1418 : StackLang.HolProg 64 :=
.seq RemovedBody852_1412 RemovedBody852_1417

def RemovedBody852_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody852_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody852_1421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 47

def RemovedBody852_1422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody852_1427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody852_1428 : StackLang.HolProg 64 :=
.seq RemovedBody852_1426 RemovedBody852_1427

def RemovedBody852_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody852_1430 : StackLang.HolProg 64 :=
.seq RemovedBody852_1428 RemovedBody852_1429

def RemovedBody852_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1432 : StackLang.HolProg 64 :=
.seq RemovedBody852_1430 RemovedBody852_1431

def RemovedBody852_1433 : StackLang.HolProg 64 :=
.seq RemovedBody852_1425 RemovedBody852_1432

def RemovedBody852_1434 : StackLang.HolProg 64 :=
.seq RemovedBody852_1424 RemovedBody852_1433

def RemovedBody852_1435 : StackLang.HolProg 64 :=
.seq RemovedBody852_1423 RemovedBody852_1434

def RemovedBody852_1436 : StackLang.HolProg 64 :=
.seq RemovedBody852_1422 RemovedBody852_1435

def RemovedBody852_1437 : StackLang.HolProg 64 :=
.seq RemovedBody852_1421 RemovedBody852_1436

def RemovedBody852_1438 : StackLang.HolProg 64 :=
.seq RemovedBody852_1420 RemovedBody852_1437

def RemovedBody852_1439 : StackLang.HolProg 64 :=
.seq RemovedBody852_1419 RemovedBody852_1438

def RemovedBody852_1440 : StackLang.HolProg 64 :=
.seq RemovedBody852_1418 RemovedBody852_1439

def RemovedBody852_1441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody852_1445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody852_1446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody852_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1448 : StackLang.HolProg 64 :=
.seq RemovedBody852_1446 RemovedBody852_1447

def RemovedBody852_1449 : StackLang.HolProg 64 :=
.seq RemovedBody852_1445 RemovedBody852_1448

def RemovedBody852_1450 : StackLang.HolProg 64 :=
.seq RemovedBody852_1444 RemovedBody852_1449

def RemovedBody852_1451 : StackLang.HolProg 64 :=
.seq RemovedBody852_1443 RemovedBody852_1450

def RemovedBody852_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody852_1453 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody852_1454 : StackLang.HolProg 64 :=
.seq RemovedBody852_1452 RemovedBody852_1453

def RemovedBody852_1455 : StackLang.HolProg 64 :=
.call (some (RemovedBody852_1451, 0, 852, 46)) (Sum.inl 89) (some (RemovedBody852_1454, 852, 47))

def RemovedBody852_1456 : StackLang.HolProg 64 :=
.seq RemovedBody852_1442 RemovedBody852_1455

def RemovedBody852_1457 : StackLang.HolProg 64 :=
.seq RemovedBody852_1441 RemovedBody852_1456

def RemovedBody852_1458 : StackLang.HolProg 64 :=
.seq RemovedBody852_1440 RemovedBody852_1457

def RemovedBody852_1459 : StackLang.HolProg 64 :=
.seq RemovedBody852_1411 RemovedBody852_1458

def RemovedBody852_1460 : StackLang.HolProg 64 :=
.seq RemovedBody852_1408 RemovedBody852_1459

def RemovedBody852_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody852_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody852_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody852_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody852_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody852_1466 : StackLang.HolProg 64 :=
.seq RemovedBody852_1464 RemovedBody852_1465

def RemovedBody852_1467 : StackLang.HolProg 64 :=
.seq RemovedBody852_1463 RemovedBody852_1466

def RemovedBody852_1468 : StackLang.HolProg 64 :=
.seq RemovedBody852_1462 RemovedBody852_1467

def RemovedBody852_1469 : StackLang.HolProg 64 :=
.seq RemovedBody852_1461 RemovedBody852_1468

def RemovedBody852_1470 : StackLang.HolProg 64 :=
.seq RemovedBody852_1460 RemovedBody852_1469

def RemovedBody852_1471 : StackLang.HolProg 64 :=
.seq RemovedBody852_1407 RemovedBody852_1470

def RemovedBody852_1472 : StackLang.HolProg 64 :=
.seq RemovedBody852_1406 RemovedBody852_1471

def RemovedBody852_1473 : StackLang.HolProg 64 :=
.seq RemovedBody852_1405 RemovedBody852_1472

def RemovedBody852_1474 : StackLang.HolProg 64 :=
.seq RemovedBody852_1404 RemovedBody852_1473

def RemovedBody852_1475 : StackLang.HolProg 64 :=
.seq RemovedBody852_1403 RemovedBody852_1474

def RemovedBody852_1476 : StackLang.HolProg 64 :=
.seq RemovedBody852_1402 RemovedBody852_1475

def RemovedBody852_1477 : StackLang.HolProg 64 :=
.seq RemovedBody852_1401 RemovedBody852_1476

def RemovedBody852_1478 : StackLang.HolProg 64 :=
.seq RemovedBody852_1400 RemovedBody852_1477

def RemovedBody852_1479 : StackLang.HolProg 64 :=
.seq RemovedBody852_1399 RemovedBody852_1478

def RemovedBody852_1480 : StackLang.HolProg 64 :=
.seq RemovedBody852_1346 RemovedBody852_1479

def RemovedBody852_1481 : StackLang.HolProg 64 :=
.seq RemovedBody852_1345 RemovedBody852_1480

def RemovedBody852_1482 : StackLang.HolProg 64 :=
.seq RemovedBody852_1344 RemovedBody852_1481

def RemovedBody852_1483 : StackLang.HolProg 64 :=
.seq RemovedBody852_1343 RemovedBody852_1482

def RemovedBody852_1484 : StackLang.HolProg 64 :=
.seq RemovedBody852_1342 RemovedBody852_1483

def RemovedBody852_1485 : StackLang.HolProg 64 :=
.seq RemovedBody852_1341 RemovedBody852_1484

def RemovedBody852_1486 : StackLang.HolProg 64 :=
.seq RemovedBody852_1340 RemovedBody852_1485

def RemovedBody852_1487 : StackLang.HolProg 64 :=
.seq RemovedBody852_1339 RemovedBody852_1486

def RemovedBody852_1488 : StackLang.HolProg 64 :=
.seq RemovedBody852_1338 RemovedBody852_1487

def RemovedBody852_1489 : StackLang.HolProg 64 :=
.seq RemovedBody852_1285 RemovedBody852_1488

def RemovedBody852_1490 : StackLang.HolProg 64 :=
.seq RemovedBody852_1284 RemovedBody852_1489

def RemovedBody852_1491 : StackLang.HolProg 64 :=
.seq RemovedBody852_1283 RemovedBody852_1490

def RemovedBody852_1492 : StackLang.HolProg 64 :=
.seq RemovedBody852_1282 RemovedBody852_1491

def RemovedBody852_1493 : StackLang.HolProg 64 :=
.seq RemovedBody852_1281 RemovedBody852_1492

def RemovedBody852_1494 : StackLang.HolProg 64 :=
.seq RemovedBody852_1280 RemovedBody852_1493

def RemovedBody852_1495 : StackLang.HolProg 64 :=
.seq RemovedBody852_1279 RemovedBody852_1494

def RemovedBody852_1496 : StackLang.HolProg 64 :=
.seq RemovedBody852_1278 RemovedBody852_1495

def RemovedBody852_1497 : StackLang.HolProg 64 :=
.seq RemovedBody852_1277 RemovedBody852_1496

def RemovedBody852_1498 : StackLang.HolProg 64 :=
.seq RemovedBody852_1224 RemovedBody852_1497

def RemovedBody852_1499 : StackLang.HolProg 64 :=
.seq RemovedBody852_1223 RemovedBody852_1498

def RemovedBody852_1500 : StackLang.HolProg 64 :=
.seq RemovedBody852_1222 RemovedBody852_1499

def RemovedBody852_1501 : StackLang.HolProg 64 :=
.seq RemovedBody852_1221 RemovedBody852_1500

def RemovedBody852_1502 : StackLang.HolProg 64 :=
.seq RemovedBody852_1220 RemovedBody852_1501

def RemovedBody852_1503 : StackLang.HolProg 64 :=
.seq RemovedBody852_1219 RemovedBody852_1502

def RemovedBody852_1504 : StackLang.HolProg 64 :=
.seq RemovedBody852_1218 RemovedBody852_1503

def RemovedBody852_1505 : StackLang.HolProg 64 :=
.seq RemovedBody852_1217 RemovedBody852_1504

def RemovedBody852_1506 : StackLang.HolProg 64 :=
.seq RemovedBody852_1216 RemovedBody852_1505

def RemovedBody852_1507 : StackLang.HolProg 64 :=
.seq RemovedBody852_1215 RemovedBody852_1506

def RemovedBody852_1508 : StackLang.HolProg 64 :=
.seq RemovedBody852_1214 RemovedBody852_1507

def RemovedBody852_1509 : StackLang.HolProg 64 :=
.seq RemovedBody852_1213 RemovedBody852_1508

def RemovedBody852_1510 : StackLang.HolProg 64 :=
.seq RemovedBody852_1160 RemovedBody852_1509

def RemovedBody852_1511 : StackLang.HolProg 64 :=
.seq RemovedBody852_1159 RemovedBody852_1510

def RemovedBody852_1512 : StackLang.HolProg 64 :=
.seq RemovedBody852_1158 RemovedBody852_1511

def RemovedBody852_1513 : StackLang.HolProg 64 :=
.seq RemovedBody852_1157 RemovedBody852_1512

def RemovedBody852_1514 : StackLang.HolProg 64 :=
.seq RemovedBody852_1104 RemovedBody852_1513

def RemovedBody852_1515 : StackLang.HolProg 64 :=
.seq RemovedBody852_1103 RemovedBody852_1514

def RemovedBody852_1516 : StackLang.HolProg 64 :=
.seq RemovedBody852_1102 RemovedBody852_1515

def RemovedBody852_1517 : StackLang.HolProg 64 :=
.seq RemovedBody852_1101 RemovedBody852_1516

def RemovedBody852_1518 : StackLang.HolProg 64 :=
.seq RemovedBody852_1100 RemovedBody852_1517

def RemovedBody852_1519 : StackLang.HolProg 64 :=
.seq RemovedBody852_1099 RemovedBody852_1518

def RemovedBody852_1520 : StackLang.HolProg 64 :=
.seq RemovedBody852_1098 RemovedBody852_1519

def RemovedBody852_1521 : StackLang.HolProg 64 :=
.seq RemovedBody852_1097 RemovedBody852_1520

def RemovedBody852_1522 : StackLang.HolProg 64 :=
.seq RemovedBody852_1096 RemovedBody852_1521

def RemovedBody852_1523 : StackLang.HolProg 64 :=
.seq RemovedBody852_1095 RemovedBody852_1522

def RemovedBody852_1524 : StackLang.HolProg 64 :=
.seq RemovedBody852_1094 RemovedBody852_1523

def RemovedBody852_1525 : StackLang.HolProg 64 :=
.seq RemovedBody852_1093 RemovedBody852_1524

def RemovedBody852_1526 : StackLang.HolProg 64 :=
.seq RemovedBody852_1092 RemovedBody852_1525

def RemovedBody852_1527 : StackLang.HolProg 64 :=
.seq RemovedBody852_1091 RemovedBody852_1526

def RemovedBody852_1528 : StackLang.HolProg 64 :=
.seq RemovedBody852_1038 RemovedBody852_1527

def RemovedBody852_1529 : StackLang.HolProg 64 :=
.seq RemovedBody852_1037 RemovedBody852_1528

def RemovedBody852_1530 : StackLang.HolProg 64 :=
.seq RemovedBody852_1036 RemovedBody852_1529

def RemovedBody852_1531 : StackLang.HolProg 64 :=
.seq RemovedBody852_1035 RemovedBody852_1530

def RemovedBody852_1532 : StackLang.HolProg 64 :=
.seq RemovedBody852_982 RemovedBody852_1531

def RemovedBody852_1533 : StackLang.HolProg 64 :=
.seq RemovedBody852_981 RemovedBody852_1532

def RemovedBody852_1534 : StackLang.HolProg 64 :=
.seq RemovedBody852_980 RemovedBody852_1533

def RemovedBody852_1535 : StackLang.HolProg 64 :=
.seq RemovedBody852_979 RemovedBody852_1534

def RemovedBody852_1536 : StackLang.HolProg 64 :=
.seq RemovedBody852_978 RemovedBody852_1535

def RemovedBody852_1537 : StackLang.HolProg 64 :=
.seq RemovedBody852_977 RemovedBody852_1536

def RemovedBody852_1538 : StackLang.HolProg 64 :=
.seq RemovedBody852_976 RemovedBody852_1537

def RemovedBody852_1539 : StackLang.HolProg 64 :=
.seq RemovedBody852_975 RemovedBody852_1538

def RemovedBody852_1540 : StackLang.HolProg 64 :=
.seq RemovedBody852_974 RemovedBody852_1539

def RemovedBody852_1541 : StackLang.HolProg 64 :=
.seq RemovedBody852_973 RemovedBody852_1540

def RemovedBody852_1542 : StackLang.HolProg 64 :=
.seq RemovedBody852_972 RemovedBody852_1541

def RemovedBody852_1543 : StackLang.HolProg 64 :=
.seq RemovedBody852_971 RemovedBody852_1542

def RemovedBody852_1544 : StackLang.HolProg 64 :=
.seq RemovedBody852_970 RemovedBody852_1543

def RemovedBody852_1545 : StackLang.HolProg 64 :=
.seq RemovedBody852_969 RemovedBody852_1544

def RemovedBody852_1546 : StackLang.HolProg 64 :=
.seq RemovedBody852_916 RemovedBody852_1545

def RemovedBody852_1547 : StackLang.HolProg 64 :=
.seq RemovedBody852_915 RemovedBody852_1546

def RemovedBody852_1548 : StackLang.HolProg 64 :=
.seq RemovedBody852_914 RemovedBody852_1547

def RemovedBody852_1549 : StackLang.HolProg 64 :=
.seq RemovedBody852_913 RemovedBody852_1548

def RemovedBody852_1550 : StackLang.HolProg 64 :=
.seq RemovedBody852_860 RemovedBody852_1549

def RemovedBody852_1551 : StackLang.HolProg 64 :=
.seq RemovedBody852_859 RemovedBody852_1550

def RemovedBody852_1552 : StackLang.HolProg 64 :=
.seq RemovedBody852_858 RemovedBody852_1551

def RemovedBody852_1553 : StackLang.HolProg 64 :=
.seq RemovedBody852_857 RemovedBody852_1552

def RemovedBody852_1554 : StackLang.HolProg 64 :=
.seq RemovedBody852_856 RemovedBody852_1553

def RemovedBody852_1555 : StackLang.HolProg 64 :=
.seq RemovedBody852_855 RemovedBody852_1554

def RemovedBody852_1556 : StackLang.HolProg 64 :=
.seq RemovedBody852_854 RemovedBody852_1555

def RemovedBody852_1557 : StackLang.HolProg 64 :=
.seq RemovedBody852_853 RemovedBody852_1556

def RemovedBody852_1558 : StackLang.HolProg 64 :=
.seq RemovedBody852_852 RemovedBody852_1557

def RemovedBody852_1559 : StackLang.HolProg 64 :=
.seq RemovedBody852_851 RemovedBody852_1558

def RemovedBody852_1560 : StackLang.HolProg 64 :=
.seq RemovedBody852_850 RemovedBody852_1559

def RemovedBody852_1561 : StackLang.HolProg 64 :=
.seq RemovedBody852_849 RemovedBody852_1560

def RemovedBody852_1562 : StackLang.HolProg 64 :=
.seq RemovedBody852_848 RemovedBody852_1561

def RemovedBody852_1563 : StackLang.HolProg 64 :=
.seq RemovedBody852_847 RemovedBody852_1562

def RemovedBody852_1564 : StackLang.HolProg 64 :=
.seq RemovedBody852_794 RemovedBody852_1563

def RemovedBody852_1565 : StackLang.HolProg 64 :=
.seq RemovedBody852_793 RemovedBody852_1564

def RemovedBody852_1566 : StackLang.HolProg 64 :=
.seq RemovedBody852_792 RemovedBody852_1565

def RemovedBody852_1567 : StackLang.HolProg 64 :=
.seq RemovedBody852_791 RemovedBody852_1566

def RemovedBody852_1568 : StackLang.HolProg 64 :=
.seq RemovedBody852_738 RemovedBody852_1567

def RemovedBody852_1569 : StackLang.HolProg 64 :=
.seq RemovedBody852_737 RemovedBody852_1568

def RemovedBody852_1570 : StackLang.HolProg 64 :=
.seq RemovedBody852_736 RemovedBody852_1569

def RemovedBody852_1571 : StackLang.HolProg 64 :=
.seq RemovedBody852_735 RemovedBody852_1570

def RemovedBody852_1572 : StackLang.HolProg 64 :=
.seq RemovedBody852_734 RemovedBody852_1571

def RemovedBody852_1573 : StackLang.HolProg 64 :=
.seq RemovedBody852_733 RemovedBody852_1572

def RemovedBody852_1574 : StackLang.HolProg 64 :=
.seq RemovedBody852_732 RemovedBody852_1573

def RemovedBody852_1575 : StackLang.HolProg 64 :=
.seq RemovedBody852_731 RemovedBody852_1574

def RemovedBody852_1576 : StackLang.HolProg 64 :=
.seq RemovedBody852_730 RemovedBody852_1575

def RemovedBody852_1577 : StackLang.HolProg 64 :=
.seq RemovedBody852_729 RemovedBody852_1576

def RemovedBody852_1578 : StackLang.HolProg 64 :=
.seq RemovedBody852_728 RemovedBody852_1577

def RemovedBody852_1579 : StackLang.HolProg 64 :=
.seq RemovedBody852_727 RemovedBody852_1578

def RemovedBody852_1580 : StackLang.HolProg 64 :=
.seq RemovedBody852_726 RemovedBody852_1579

def RemovedBody852_1581 : StackLang.HolProg 64 :=
.seq RemovedBody852_725 RemovedBody852_1580

def RemovedBody852_1582 : StackLang.HolProg 64 :=
.seq RemovedBody852_672 RemovedBody852_1581

def RemovedBody852_1583 : StackLang.HolProg 64 :=
.seq RemovedBody852_671 RemovedBody852_1582

def RemovedBody852_1584 : StackLang.HolProg 64 :=
.seq RemovedBody852_670 RemovedBody852_1583

def RemovedBody852_1585 : StackLang.HolProg 64 :=
.seq RemovedBody852_669 RemovedBody852_1584

def RemovedBody852_1586 : StackLang.HolProg 64 :=
.seq RemovedBody852_616 RemovedBody852_1585

def RemovedBody852_1587 : StackLang.HolProg 64 :=
.seq RemovedBody852_615 RemovedBody852_1586

def RemovedBody852_1588 : StackLang.HolProg 64 :=
.seq RemovedBody852_614 RemovedBody852_1587

def RemovedBody852_1589 : StackLang.HolProg 64 :=
.seq RemovedBody852_613 RemovedBody852_1588

def RemovedBody852_1590 : StackLang.HolProg 64 :=
.seq RemovedBody852_612 RemovedBody852_1589

def RemovedBody852_1591 : StackLang.HolProg 64 :=
.seq RemovedBody852_611 RemovedBody852_1590

def RemovedBody852_1592 : StackLang.HolProg 64 :=
.seq RemovedBody852_610 RemovedBody852_1591

def RemovedBody852_1593 : StackLang.HolProg 64 :=
.seq RemovedBody852_609 RemovedBody852_1592

def RemovedBody852_1594 : StackLang.HolProg 64 :=
.seq RemovedBody852_608 RemovedBody852_1593

def RemovedBody852_1595 : StackLang.HolProg 64 :=
.seq RemovedBody852_607 RemovedBody852_1594

def RemovedBody852_1596 : StackLang.HolProg 64 :=
.seq RemovedBody852_606 RemovedBody852_1595

def RemovedBody852_1597 : StackLang.HolProg 64 :=
.seq RemovedBody852_605 RemovedBody852_1596

def RemovedBody852_1598 : StackLang.HolProg 64 :=
.seq RemovedBody852_604 RemovedBody852_1597

def RemovedBody852_1599 : StackLang.HolProg 64 :=
.seq RemovedBody852_603 RemovedBody852_1598

def RemovedBody852_1600 : StackLang.HolProg 64 :=
.seq RemovedBody852_550 RemovedBody852_1599

def RemovedBody852_1601 : StackLang.HolProg 64 :=
.seq RemovedBody852_549 RemovedBody852_1600

def RemovedBody852_1602 : StackLang.HolProg 64 :=
.seq RemovedBody852_548 RemovedBody852_1601

def RemovedBody852_1603 : StackLang.HolProg 64 :=
.seq RemovedBody852_547 RemovedBody852_1602

def RemovedBody852_1604 : StackLang.HolProg 64 :=
.seq RemovedBody852_494 RemovedBody852_1603

def RemovedBody852_1605 : StackLang.HolProg 64 :=
.seq RemovedBody852_493 RemovedBody852_1604

def RemovedBody852_1606 : StackLang.HolProg 64 :=
.seq RemovedBody852_492 RemovedBody852_1605

def RemovedBody852_1607 : StackLang.HolProg 64 :=
.seq RemovedBody852_491 RemovedBody852_1606

def RemovedBody852_1608 : StackLang.HolProg 64 :=
.seq RemovedBody852_490 RemovedBody852_1607

def RemovedBody852_1609 : StackLang.HolProg 64 :=
.seq RemovedBody852_489 RemovedBody852_1608

def RemovedBody852_1610 : StackLang.HolProg 64 :=
.seq RemovedBody852_488 RemovedBody852_1609

def RemovedBody852_1611 : StackLang.HolProg 64 :=
.seq RemovedBody852_487 RemovedBody852_1610

def RemovedBody852_1612 : StackLang.HolProg 64 :=
.seq RemovedBody852_486 RemovedBody852_1611

def RemovedBody852_1613 : StackLang.HolProg 64 :=
.seq RemovedBody852_485 RemovedBody852_1612

def RemovedBody852_1614 : StackLang.HolProg 64 :=
.seq RemovedBody852_484 RemovedBody852_1613

def RemovedBody852_1615 : StackLang.HolProg 64 :=
.seq RemovedBody852_483 RemovedBody852_1614

def RemovedBody852_1616 : StackLang.HolProg 64 :=
.seq RemovedBody852_482 RemovedBody852_1615

def RemovedBody852_1617 : StackLang.HolProg 64 :=
.seq RemovedBody852_481 RemovedBody852_1616

def RemovedBody852_1618 : StackLang.HolProg 64 :=
.seq RemovedBody852_428 RemovedBody852_1617

def RemovedBody852_1619 : StackLang.HolProg 64 :=
.seq RemovedBody852_427 RemovedBody852_1618

def RemovedBody852_1620 : StackLang.HolProg 64 :=
.seq RemovedBody852_426 RemovedBody852_1619

def RemovedBody852_1621 : StackLang.HolProg 64 :=
.seq RemovedBody852_425 RemovedBody852_1620

def RemovedBody852_1622 : StackLang.HolProg 64 :=
.seq RemovedBody852_372 RemovedBody852_1621

def RemovedBody852_1623 : StackLang.HolProg 64 :=
.seq RemovedBody852_371 RemovedBody852_1622

def RemovedBody852_1624 : StackLang.HolProg 64 :=
.seq RemovedBody852_370 RemovedBody852_1623

def RemovedBody852_1625 : StackLang.HolProg 64 :=
.seq RemovedBody852_369 RemovedBody852_1624

def RemovedBody852_1626 : StackLang.HolProg 64 :=
.seq RemovedBody852_368 RemovedBody852_1625

def RemovedBody852_1627 : StackLang.HolProg 64 :=
.seq RemovedBody852_367 RemovedBody852_1626

def RemovedBody852_1628 : StackLang.HolProg 64 :=
.seq RemovedBody852_366 RemovedBody852_1627

def RemovedBody852_1629 : StackLang.HolProg 64 :=
.seq RemovedBody852_365 RemovedBody852_1628

def RemovedBody852_1630 : StackLang.HolProg 64 :=
.seq RemovedBody852_364 RemovedBody852_1629

def RemovedBody852_1631 : StackLang.HolProg 64 :=
.seq RemovedBody852_363 RemovedBody852_1630

def RemovedBody852_1632 : StackLang.HolProg 64 :=
.seq RemovedBody852_362 RemovedBody852_1631

def RemovedBody852_1633 : StackLang.HolProg 64 :=
.seq RemovedBody852_361 RemovedBody852_1632

def RemovedBody852_1634 : StackLang.HolProg 64 :=
.seq RemovedBody852_360 RemovedBody852_1633

def RemovedBody852_1635 : StackLang.HolProg 64 :=
.seq RemovedBody852_359 RemovedBody852_1634

def RemovedBody852_1636 : StackLang.HolProg 64 :=
.seq RemovedBody852_306 RemovedBody852_1635

def RemovedBody852_1637 : StackLang.HolProg 64 :=
.seq RemovedBody852_305 RemovedBody852_1636

def RemovedBody852_1638 : StackLang.HolProg 64 :=
.seq RemovedBody852_304 RemovedBody852_1637

def RemovedBody852_1639 : StackLang.HolProg 64 :=
.seq RemovedBody852_303 RemovedBody852_1638

def RemovedBody852_1640 : StackLang.HolProg 64 :=
.seq RemovedBody852_302 RemovedBody852_1639

def RemovedBody852_1641 : StackLang.HolProg 64 :=
.seq RemovedBody852_301 RemovedBody852_1640

def RemovedBody852_1642 : StackLang.HolProg 64 :=
.seq RemovedBody852_300 RemovedBody852_1641

def RemovedBody852_1643 : StackLang.HolProg 64 :=
.seq RemovedBody852_299 RemovedBody852_1642

def RemovedBody852_1644 : StackLang.HolProg 64 :=
.seq RemovedBody852_298 RemovedBody852_1643

def RemovedBody852_1645 : StackLang.HolProg 64 :=
.seq RemovedBody852_297 RemovedBody852_1644

def RemovedBody852_1646 : StackLang.HolProg 64 :=
.seq RemovedBody852_296 RemovedBody852_1645

def RemovedBody852_1647 : StackLang.HolProg 64 :=
.seq RemovedBody852_250 RemovedBody852_1646

def RemovedBody852_1648 : StackLang.HolProg 64 :=
.seq RemovedBody852_249 RemovedBody852_1647

def RemovedBody852_1649 : StackLang.HolProg 64 :=
.seq RemovedBody852_248 RemovedBody852_1648

def RemovedBody852_1650 : StackLang.HolProg 64 :=
.seq RemovedBody852_247 RemovedBody852_1649

def RemovedBody852_1651 : StackLang.HolProg 64 :=
.seq RemovedBody852_246 RemovedBody852_1650

def RemovedBody852_1652 : StackLang.HolProg 64 :=
.seq RemovedBody852_193 RemovedBody852_1651

def RemovedBody852_1653 : StackLang.HolProg 64 :=
.seq RemovedBody852_192 RemovedBody852_1652

def RemovedBody852_1654 : StackLang.HolProg 64 :=
.seq RemovedBody852_191 RemovedBody852_1653

def RemovedBody852_1655 : StackLang.HolProg 64 :=
.seq RemovedBody852_190 RemovedBody852_1654

def RemovedBody852_1656 : StackLang.HolProg 64 :=
.seq RemovedBody852_189 RemovedBody852_1655

def RemovedBody852_1657 : StackLang.HolProg 64 :=
.seq RemovedBody852_188 RemovedBody852_1656

def RemovedBody852_1658 : StackLang.HolProg 64 :=
.seq RemovedBody852_187 RemovedBody852_1657

def RemovedBody852_1659 : StackLang.HolProg 64 :=
.seq RemovedBody852_186 RemovedBody852_1658

def RemovedBody852_1660 : StackLang.HolProg 64 :=
.seq RemovedBody852_185 RemovedBody852_1659

def RemovedBody852_1661 : StackLang.HolProg 64 :=
.seq RemovedBody852_184 RemovedBody852_1660

def RemovedBody852_1662 : StackLang.HolProg 64 :=
.seq RemovedBody852_183 RemovedBody852_1661

def RemovedBody852_1663 : StackLang.HolProg 64 :=
.seq RemovedBody852_182 RemovedBody852_1662

def RemovedBody852_1664 : StackLang.HolProg 64 :=
.seq RemovedBody852_129 RemovedBody852_1663

def RemovedBody852_1665 : StackLang.HolProg 64 :=
.seq RemovedBody852_128 RemovedBody852_1664

def RemovedBody852_1666 : StackLang.HolProg 64 :=
.seq RemovedBody852_127 RemovedBody852_1665

def RemovedBody852_1667 : StackLang.HolProg 64 :=
.seq RemovedBody852_126 RemovedBody852_1666

def RemovedBody852_1668 : StackLang.HolProg 64 :=
.seq RemovedBody852_73 RemovedBody852_1667

def RemovedBody852_1669 : StackLang.HolProg 64 :=
.seq RemovedBody852_72 RemovedBody852_1668

def RemovedBody852_1670 : StackLang.HolProg 64 :=
.seq RemovedBody852_71 RemovedBody852_1669

def RemovedBody852_1671 : StackLang.HolProg 64 :=
.seq RemovedBody852_70 RemovedBody852_1670

def RemovedBody852_1672 : StackLang.HolProg 64 :=
.seq RemovedBody852_69 RemovedBody852_1671

def RemovedBody852_1673 : StackLang.HolProg 64 :=
.seq RemovedBody852_68 RemovedBody852_1672

def RemovedBody852_1674 : StackLang.HolProg 64 :=
.seq RemovedBody852_67 RemovedBody852_1673

def RemovedBody852_1675 : StackLang.HolProg 64 :=
.seq RemovedBody852_66 RemovedBody852_1674

def RemovedBody852_1676 : StackLang.HolProg 64 :=
.seq RemovedBody852_65 RemovedBody852_1675

def RemovedBody852_1677 : StackLang.HolProg 64 :=
.seq RemovedBody852_64 RemovedBody852_1676

def RemovedBody852_1678 : StackLang.HolProg 64 :=
.seq RemovedBody852_63 RemovedBody852_1677

def RemovedBody852_1679 : StackLang.HolProg 64 :=
.seq RemovedBody852_62 RemovedBody852_1678

def RemovedBody852_1680 : StackLang.HolProg 64 :=
.seq RemovedBody852_9 RemovedBody852_1679

def RemovedBody852_1681 : StackLang.HolProg 64 :=
.seq RemovedBody852_8 RemovedBody852_1680

def RemovedBody852_1682 : StackLang.HolProg 64 :=
.seq RemovedBody852_7 RemovedBody852_1681

def RemovedBody852_1683 : StackLang.HolProg 64 :=
.seq RemovedBody852_6 RemovedBody852_1682

def Removed852 : Nat × StackLang.HolProg 64 := (852, RemovedBody852_1683)
theorem Removed852_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc852 = Removed852 := by
  kernel_rfl
#print axioms Removed852_eq
end InitECandidate.Proofs.BackendStages
