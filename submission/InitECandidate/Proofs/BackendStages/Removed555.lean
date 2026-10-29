import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc555
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody555_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody555_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody555_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody555_3 : StackLang.HolProg 64 :=
.seq RemovedBody555_1 RemovedBody555_2

def RemovedBody555_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody555_3 RemovedBody555_4

def RemovedBody555_6 : StackLang.HolProg 64 :=
.seq RemovedBody555_0 RemovedBody555_5

def RemovedBody555_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody555_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody555_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1887#64)

def RemovedBody555_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_13 : StackLang.HolProg 64 :=
.seq RemovedBody555_11 RemovedBody555_12

def RemovedBody555_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody555_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody555_17 : StackLang.HolProg 64 :=
.seq RemovedBody555_15 RemovedBody555_16

def RemovedBody555_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody555_17 RemovedBody555_18

def RemovedBody555_20 : StackLang.HolProg 64 :=
.seq RemovedBody555_14 RemovedBody555_19

def RemovedBody555_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody555_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 3

def RemovedBody555_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody555_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody555_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody555_30 : StackLang.HolProg 64 :=
.seq RemovedBody555_28 RemovedBody555_29

def RemovedBody555_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody555_32 : StackLang.HolProg 64 :=
.seq RemovedBody555_30 RemovedBody555_31

def RemovedBody555_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_34 : StackLang.HolProg 64 :=
.seq RemovedBody555_32 RemovedBody555_33

def RemovedBody555_35 : StackLang.HolProg 64 :=
.seq RemovedBody555_27 RemovedBody555_34

def RemovedBody555_36 : StackLang.HolProg 64 :=
.seq RemovedBody555_26 RemovedBody555_35

def RemovedBody555_37 : StackLang.HolProg 64 :=
.seq RemovedBody555_25 RemovedBody555_36

def RemovedBody555_38 : StackLang.HolProg 64 :=
.seq RemovedBody555_24 RemovedBody555_37

def RemovedBody555_39 : StackLang.HolProg 64 :=
.seq RemovedBody555_23 RemovedBody555_38

def RemovedBody555_40 : StackLang.HolProg 64 :=
.seq RemovedBody555_22 RemovedBody555_39

def RemovedBody555_41 : StackLang.HolProg 64 :=
.seq RemovedBody555_21 RemovedBody555_40

def RemovedBody555_42 : StackLang.HolProg 64 :=
.seq RemovedBody555_20 RemovedBody555_41

def RemovedBody555_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_50 : StackLang.HolProg 64 :=
.seq RemovedBody555_48 RemovedBody555_49

def RemovedBody555_51 : StackLang.HolProg 64 :=
.seq RemovedBody555_47 RemovedBody555_50

def RemovedBody555_52 : StackLang.HolProg 64 :=
.seq RemovedBody555_46 RemovedBody555_51

def RemovedBody555_53 : StackLang.HolProg 64 :=
.seq RemovedBody555_45 RemovedBody555_52

def RemovedBody555_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody555_56 : StackLang.HolProg 64 :=
.seq RemovedBody555_54 RemovedBody555_55

def RemovedBody555_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody555_53, 0, 555, 2)) (Sum.inl 470) (some (RemovedBody555_56, 555, 3))

def RemovedBody555_58 : StackLang.HolProg 64 :=
.seq RemovedBody555_44 RemovedBody555_57

def RemovedBody555_59 : StackLang.HolProg 64 :=
.seq RemovedBody555_43 RemovedBody555_58

def RemovedBody555_60 : StackLang.HolProg 64 :=
.seq RemovedBody555_42 RemovedBody555_59

def RemovedBody555_61 : StackLang.HolProg 64 :=
.seq RemovedBody555_13 RemovedBody555_60

def RemovedBody555_62 : StackLang.HolProg 64 :=
.seq RemovedBody555_10 RemovedBody555_61

def RemovedBody555_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody555_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody555_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody555_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody555_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody555_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody555_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody555_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody555_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1888#64)

def RemovedBody555_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_76 : StackLang.HolProg 64 :=
.seq RemovedBody555_74 RemovedBody555_75

def RemovedBody555_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody555_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody555_80 : StackLang.HolProg 64 :=
.seq RemovedBody555_78 RemovedBody555_79

def RemovedBody555_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody555_80 RemovedBody555_81

def RemovedBody555_83 : StackLang.HolProg 64 :=
.seq RemovedBody555_77 RemovedBody555_82

def RemovedBody555_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody555_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 5

def RemovedBody555_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody555_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody555_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody555_93 : StackLang.HolProg 64 :=
.seq RemovedBody555_91 RemovedBody555_92

def RemovedBody555_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody555_95 : StackLang.HolProg 64 :=
.seq RemovedBody555_93 RemovedBody555_94

def RemovedBody555_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_97 : StackLang.HolProg 64 :=
.seq RemovedBody555_95 RemovedBody555_96

def RemovedBody555_98 : StackLang.HolProg 64 :=
.seq RemovedBody555_90 RemovedBody555_97

def RemovedBody555_99 : StackLang.HolProg 64 :=
.seq RemovedBody555_89 RemovedBody555_98

def RemovedBody555_100 : StackLang.HolProg 64 :=
.seq RemovedBody555_88 RemovedBody555_99

def RemovedBody555_101 : StackLang.HolProg 64 :=
.seq RemovedBody555_87 RemovedBody555_100

def RemovedBody555_102 : StackLang.HolProg 64 :=
.seq RemovedBody555_86 RemovedBody555_101

def RemovedBody555_103 : StackLang.HolProg 64 :=
.seq RemovedBody555_85 RemovedBody555_102

def RemovedBody555_104 : StackLang.HolProg 64 :=
.seq RemovedBody555_84 RemovedBody555_103

def RemovedBody555_105 : StackLang.HolProg 64 :=
.seq RemovedBody555_83 RemovedBody555_104

def RemovedBody555_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody555_113 : StackLang.HolProg 64 :=
.seq RemovedBody555_111 RemovedBody555_112

def RemovedBody555_114 : StackLang.HolProg 64 :=
.seq RemovedBody555_110 RemovedBody555_113

def RemovedBody555_115 : StackLang.HolProg 64 :=
.seq RemovedBody555_109 RemovedBody555_114

def RemovedBody555_116 : StackLang.HolProg 64 :=
.seq RemovedBody555_108 RemovedBody555_115

def RemovedBody555_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody555_119 : StackLang.HolProg 64 :=
.seq RemovedBody555_117 RemovedBody555_118

def RemovedBody555_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody555_116, 0, 555, 4)) (Sum.inl 467) (some (RemovedBody555_119, 555, 5))

def RemovedBody555_121 : StackLang.HolProg 64 :=
.seq RemovedBody555_107 RemovedBody555_120

def RemovedBody555_122 : StackLang.HolProg 64 :=
.seq RemovedBody555_106 RemovedBody555_121

def RemovedBody555_123 : StackLang.HolProg 64 :=
.seq RemovedBody555_105 RemovedBody555_122

def RemovedBody555_124 : StackLang.HolProg 64 :=
.seq RemovedBody555_76 RemovedBody555_123

def RemovedBody555_125 : StackLang.HolProg 64 :=
.seq RemovedBody555_73 RemovedBody555_124

def RemovedBody555_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody555_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody555_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1889#64)

def RemovedBody555_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_131 : StackLang.HolProg 64 :=
.seq RemovedBody555_129 RemovedBody555_130

def RemovedBody555_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody555_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody555_135 : StackLang.HolProg 64 :=
.seq RemovedBody555_133 RemovedBody555_134

def RemovedBody555_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody555_135 RemovedBody555_136

def RemovedBody555_138 : StackLang.HolProg 64 :=
.seq RemovedBody555_132 RemovedBody555_137

def RemovedBody555_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody555_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 7

def RemovedBody555_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody555_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody555_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody555_148 : StackLang.HolProg 64 :=
.seq RemovedBody555_146 RemovedBody555_147

def RemovedBody555_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody555_150 : StackLang.HolProg 64 :=
.seq RemovedBody555_148 RemovedBody555_149

def RemovedBody555_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_152 : StackLang.HolProg 64 :=
.seq RemovedBody555_150 RemovedBody555_151

def RemovedBody555_153 : StackLang.HolProg 64 :=
.seq RemovedBody555_145 RemovedBody555_152

def RemovedBody555_154 : StackLang.HolProg 64 :=
.seq RemovedBody555_144 RemovedBody555_153

def RemovedBody555_155 : StackLang.HolProg 64 :=
.seq RemovedBody555_143 RemovedBody555_154

def RemovedBody555_156 : StackLang.HolProg 64 :=
.seq RemovedBody555_142 RemovedBody555_155

def RemovedBody555_157 : StackLang.HolProg 64 :=
.seq RemovedBody555_141 RemovedBody555_156

def RemovedBody555_158 : StackLang.HolProg 64 :=
.seq RemovedBody555_140 RemovedBody555_157

def RemovedBody555_159 : StackLang.HolProg 64 :=
.seq RemovedBody555_139 RemovedBody555_158

def RemovedBody555_160 : StackLang.HolProg 64 :=
.seq RemovedBody555_138 RemovedBody555_159

def RemovedBody555_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_168 : StackLang.HolProg 64 :=
.seq RemovedBody555_166 RemovedBody555_167

def RemovedBody555_169 : StackLang.HolProg 64 :=
.seq RemovedBody555_165 RemovedBody555_168

def RemovedBody555_170 : StackLang.HolProg 64 :=
.seq RemovedBody555_164 RemovedBody555_169

def RemovedBody555_171 : StackLang.HolProg 64 :=
.seq RemovedBody555_163 RemovedBody555_170

def RemovedBody555_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody555_174 : StackLang.HolProg 64 :=
.seq RemovedBody555_172 RemovedBody555_173

def RemovedBody555_175 : StackLang.HolProg 64 :=
.call (some (RemovedBody555_171, 0, 555, 6)) (Sum.inl 476) (some (RemovedBody555_174, 555, 7))

def RemovedBody555_176 : StackLang.HolProg 64 :=
.seq RemovedBody555_162 RemovedBody555_175

def RemovedBody555_177 : StackLang.HolProg 64 :=
.seq RemovedBody555_161 RemovedBody555_176

def RemovedBody555_178 : StackLang.HolProg 64 :=
.seq RemovedBody555_160 RemovedBody555_177

def RemovedBody555_179 : StackLang.HolProg 64 :=
.seq RemovedBody555_131 RemovedBody555_178

def RemovedBody555_180 : StackLang.HolProg 64 :=
.seq RemovedBody555_128 RemovedBody555_179

def RemovedBody555_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody555_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody555_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1890#64)

def RemovedBody555_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_187 : StackLang.HolProg 64 :=
.seq RemovedBody555_185 RemovedBody555_186

def RemovedBody555_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody555_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody555_191 : StackLang.HolProg 64 :=
.seq RemovedBody555_189 RemovedBody555_190

def RemovedBody555_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody555_191 RemovedBody555_192

def RemovedBody555_194 : StackLang.HolProg 64 :=
.seq RemovedBody555_188 RemovedBody555_193

def RemovedBody555_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody555_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody555_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 9

def RemovedBody555_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody555_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody555_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody555_204 : StackLang.HolProg 64 :=
.seq RemovedBody555_202 RemovedBody555_203

def RemovedBody555_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody555_206 : StackLang.HolProg 64 :=
.seq RemovedBody555_204 RemovedBody555_205

def RemovedBody555_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_208 : StackLang.HolProg 64 :=
.seq RemovedBody555_206 RemovedBody555_207

def RemovedBody555_209 : StackLang.HolProg 64 :=
.seq RemovedBody555_201 RemovedBody555_208

def RemovedBody555_210 : StackLang.HolProg 64 :=
.seq RemovedBody555_200 RemovedBody555_209

def RemovedBody555_211 : StackLang.HolProg 64 :=
.seq RemovedBody555_199 RemovedBody555_210

def RemovedBody555_212 : StackLang.HolProg 64 :=
.seq RemovedBody555_198 RemovedBody555_211

def RemovedBody555_213 : StackLang.HolProg 64 :=
.seq RemovedBody555_197 RemovedBody555_212

def RemovedBody555_214 : StackLang.HolProg 64 :=
.seq RemovedBody555_196 RemovedBody555_213

def RemovedBody555_215 : StackLang.HolProg 64 :=
.seq RemovedBody555_195 RemovedBody555_214

def RemovedBody555_216 : StackLang.HolProg 64 :=
.seq RemovedBody555_194 RemovedBody555_215

def RemovedBody555_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody555_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody555_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody555_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody555_224 : StackLang.HolProg 64 :=
.seq RemovedBody555_222 RemovedBody555_223

def RemovedBody555_225 : StackLang.HolProg 64 :=
.seq RemovedBody555_221 RemovedBody555_224

def RemovedBody555_226 : StackLang.HolProg 64 :=
.seq RemovedBody555_220 RemovedBody555_225

def RemovedBody555_227 : StackLang.HolProg 64 :=
.seq RemovedBody555_219 RemovedBody555_226

def RemovedBody555_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody555_229 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody555_230 : StackLang.HolProg 64 :=
.seq RemovedBody555_228 RemovedBody555_229

def RemovedBody555_231 : StackLang.HolProg 64 :=
.call (some (RemovedBody555_227, 0, 555, 8)) (Sum.inl 490) (some (RemovedBody555_230, 555, 9))

def RemovedBody555_232 : StackLang.HolProg 64 :=
.seq RemovedBody555_218 RemovedBody555_231

def RemovedBody555_233 : StackLang.HolProg 64 :=
.seq RemovedBody555_217 RemovedBody555_232

def RemovedBody555_234 : StackLang.HolProg 64 :=
.seq RemovedBody555_216 RemovedBody555_233

def RemovedBody555_235 : StackLang.HolProg 64 :=
.seq RemovedBody555_187 RemovedBody555_234

def RemovedBody555_236 : StackLang.HolProg 64 :=
.seq RemovedBody555_184 RemovedBody555_235

def RemovedBody555_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody555_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody555_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody555_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody555_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody555_242 : StackLang.HolProg 64 :=
.seq RemovedBody555_240 RemovedBody555_241

def RemovedBody555_243 : StackLang.HolProg 64 :=
.seq RemovedBody555_239 RemovedBody555_242

def RemovedBody555_244 : StackLang.HolProg 64 :=
.seq RemovedBody555_238 RemovedBody555_243

def RemovedBody555_245 : StackLang.HolProg 64 :=
.seq RemovedBody555_237 RemovedBody555_244

def RemovedBody555_246 : StackLang.HolProg 64 :=
.seq RemovedBody555_236 RemovedBody555_245

def RemovedBody555_247 : StackLang.HolProg 64 :=
.seq RemovedBody555_183 RemovedBody555_246

def RemovedBody555_248 : StackLang.HolProg 64 :=
.seq RemovedBody555_182 RemovedBody555_247

def RemovedBody555_249 : StackLang.HolProg 64 :=
.seq RemovedBody555_181 RemovedBody555_248

def RemovedBody555_250 : StackLang.HolProg 64 :=
.seq RemovedBody555_180 RemovedBody555_249

def RemovedBody555_251 : StackLang.HolProg 64 :=
.seq RemovedBody555_127 RemovedBody555_250

def RemovedBody555_252 : StackLang.HolProg 64 :=
.seq RemovedBody555_126 RemovedBody555_251

def RemovedBody555_253 : StackLang.HolProg 64 :=
.seq RemovedBody555_125 RemovedBody555_252

def RemovedBody555_254 : StackLang.HolProg 64 :=
.seq RemovedBody555_72 RemovedBody555_253

def RemovedBody555_255 : StackLang.HolProg 64 :=
.seq RemovedBody555_71 RemovedBody555_254

def RemovedBody555_256 : StackLang.HolProg 64 :=
.seq RemovedBody555_70 RemovedBody555_255

def RemovedBody555_257 : StackLang.HolProg 64 :=
.seq RemovedBody555_69 RemovedBody555_256

def RemovedBody555_258 : StackLang.HolProg 64 :=
.seq RemovedBody555_68 RemovedBody555_257

def RemovedBody555_259 : StackLang.HolProg 64 :=
.seq RemovedBody555_67 RemovedBody555_258

def RemovedBody555_260 : StackLang.HolProg 64 :=
.seq RemovedBody555_66 RemovedBody555_259

def RemovedBody555_261 : StackLang.HolProg 64 :=
.seq RemovedBody555_65 RemovedBody555_260

def RemovedBody555_262 : StackLang.HolProg 64 :=
.seq RemovedBody555_64 RemovedBody555_261

def RemovedBody555_263 : StackLang.HolProg 64 :=
.seq RemovedBody555_63 RemovedBody555_262

def RemovedBody555_264 : StackLang.HolProg 64 :=
.seq RemovedBody555_62 RemovedBody555_263

def RemovedBody555_265 : StackLang.HolProg 64 :=
.seq RemovedBody555_9 RemovedBody555_264

def RemovedBody555_266 : StackLang.HolProg 64 :=
.seq RemovedBody555_8 RemovedBody555_265

def RemovedBody555_267 : StackLang.HolProg 64 :=
.seq RemovedBody555_7 RemovedBody555_266

def RemovedBody555_268 : StackLang.HolProg 64 :=
.seq RemovedBody555_6 RemovedBody555_267

def Removed555 : Nat × StackLang.HolProg 64 := (555, RemovedBody555_268)
theorem Removed555_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc555 = Removed555 := by
  kernel_rfl
#print axioms Removed555_eq
end InitECandidate.Proofs.BackendStages
