import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc528
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody528_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody528_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody528_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody528_3 : StackLang.HolProg 64 :=
.seq RemovedBody528_1 RemovedBody528_2

def RemovedBody528_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody528_3 RemovedBody528_4

def RemovedBody528_6 : StackLang.HolProg 64 :=
.seq RemovedBody528_0 RemovedBody528_5

def RemovedBody528_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody528_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody528_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1730#64)

def RemovedBody528_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody528_13 : StackLang.HolProg 64 :=
.seq RemovedBody528_11 RemovedBody528_12

def RemovedBody528_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody528_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody528_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody528_17 : StackLang.HolProg 64 :=
.seq RemovedBody528_15 RemovedBody528_16

def RemovedBody528_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody528_17 RemovedBody528_18

def RemovedBody528_20 : StackLang.HolProg 64 :=
.seq RemovedBody528_14 RemovedBody528_19

def RemovedBody528_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody528_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody528_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 3

def RemovedBody528_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody528_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody528_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody528_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody528_30 : StackLang.HolProg 64 :=
.seq RemovedBody528_28 RemovedBody528_29

def RemovedBody528_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody528_32 : StackLang.HolProg 64 :=
.seq RemovedBody528_30 RemovedBody528_31

def RemovedBody528_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_34 : StackLang.HolProg 64 :=
.seq RemovedBody528_32 RemovedBody528_33

def RemovedBody528_35 : StackLang.HolProg 64 :=
.seq RemovedBody528_27 RemovedBody528_34

def RemovedBody528_36 : StackLang.HolProg 64 :=
.seq RemovedBody528_26 RemovedBody528_35

def RemovedBody528_37 : StackLang.HolProg 64 :=
.seq RemovedBody528_25 RemovedBody528_36

def RemovedBody528_38 : StackLang.HolProg 64 :=
.seq RemovedBody528_24 RemovedBody528_37

def RemovedBody528_39 : StackLang.HolProg 64 :=
.seq RemovedBody528_23 RemovedBody528_38

def RemovedBody528_40 : StackLang.HolProg 64 :=
.seq RemovedBody528_22 RemovedBody528_39

def RemovedBody528_41 : StackLang.HolProg 64 :=
.seq RemovedBody528_21 RemovedBody528_40

def RemovedBody528_42 : StackLang.HolProg 64 :=
.seq RemovedBody528_20 RemovedBody528_41

def RemovedBody528_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody528_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody528_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_50 : StackLang.HolProg 64 :=
.seq RemovedBody528_48 RemovedBody528_49

def RemovedBody528_51 : StackLang.HolProg 64 :=
.seq RemovedBody528_47 RemovedBody528_50

def RemovedBody528_52 : StackLang.HolProg 64 :=
.seq RemovedBody528_46 RemovedBody528_51

def RemovedBody528_53 : StackLang.HolProg 64 :=
.seq RemovedBody528_45 RemovedBody528_52

def RemovedBody528_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody528_56 : StackLang.HolProg 64 :=
.seq RemovedBody528_54 RemovedBody528_55

def RemovedBody528_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody528_53, 0, 528, 2)) (Sum.inl 470) (some (RemovedBody528_56, 528, 3))

def RemovedBody528_58 : StackLang.HolProg 64 :=
.seq RemovedBody528_44 RemovedBody528_57

def RemovedBody528_59 : StackLang.HolProg 64 :=
.seq RemovedBody528_43 RemovedBody528_58

def RemovedBody528_60 : StackLang.HolProg 64 :=
.seq RemovedBody528_42 RemovedBody528_59

def RemovedBody528_61 : StackLang.HolProg 64 :=
.seq RemovedBody528_13 RemovedBody528_60

def RemovedBody528_62 : StackLang.HolProg 64 :=
.seq RemovedBody528_10 RemovedBody528_61

def RemovedBody528_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody528_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody528_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody528_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody528_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody528_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def RemovedBody528_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1731#64)

def RemovedBody528_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody528_73 : StackLang.HolProg 64 :=
.seq RemovedBody528_71 RemovedBody528_72

def RemovedBody528_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody528_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody528_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody528_77 : StackLang.HolProg 64 :=
.seq RemovedBody528_75 RemovedBody528_76

def RemovedBody528_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody528_77 RemovedBody528_78

def RemovedBody528_80 : StackLang.HolProg 64 :=
.seq RemovedBody528_74 RemovedBody528_79

def RemovedBody528_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody528_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody528_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 5

def RemovedBody528_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody528_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody528_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody528_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody528_90 : StackLang.HolProg 64 :=
.seq RemovedBody528_88 RemovedBody528_89

def RemovedBody528_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody528_92 : StackLang.HolProg 64 :=
.seq RemovedBody528_90 RemovedBody528_91

def RemovedBody528_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_94 : StackLang.HolProg 64 :=
.seq RemovedBody528_92 RemovedBody528_93

def RemovedBody528_95 : StackLang.HolProg 64 :=
.seq RemovedBody528_87 RemovedBody528_94

def RemovedBody528_96 : StackLang.HolProg 64 :=
.seq RemovedBody528_86 RemovedBody528_95

def RemovedBody528_97 : StackLang.HolProg 64 :=
.seq RemovedBody528_85 RemovedBody528_96

def RemovedBody528_98 : StackLang.HolProg 64 :=
.seq RemovedBody528_84 RemovedBody528_97

def RemovedBody528_99 : StackLang.HolProg 64 :=
.seq RemovedBody528_83 RemovedBody528_98

def RemovedBody528_100 : StackLang.HolProg 64 :=
.seq RemovedBody528_82 RemovedBody528_99

def RemovedBody528_101 : StackLang.HolProg 64 :=
.seq RemovedBody528_81 RemovedBody528_100

def RemovedBody528_102 : StackLang.HolProg 64 :=
.seq RemovedBody528_80 RemovedBody528_101

def RemovedBody528_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody528_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody528_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_110 : StackLang.HolProg 64 :=
.seq RemovedBody528_108 RemovedBody528_109

def RemovedBody528_111 : StackLang.HolProg 64 :=
.seq RemovedBody528_107 RemovedBody528_110

def RemovedBody528_112 : StackLang.HolProg 64 :=
.seq RemovedBody528_106 RemovedBody528_111

def RemovedBody528_113 : StackLang.HolProg 64 :=
.seq RemovedBody528_105 RemovedBody528_112

def RemovedBody528_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody528_116 : StackLang.HolProg 64 :=
.seq RemovedBody528_114 RemovedBody528_115

def RemovedBody528_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody528_113, 0, 528, 4)) (Sum.inl 477) (some (RemovedBody528_116, 528, 5))

def RemovedBody528_118 : StackLang.HolProg 64 :=
.seq RemovedBody528_104 RemovedBody528_117

def RemovedBody528_119 : StackLang.HolProg 64 :=
.seq RemovedBody528_103 RemovedBody528_118

def RemovedBody528_120 : StackLang.HolProg 64 :=
.seq RemovedBody528_102 RemovedBody528_119

def RemovedBody528_121 : StackLang.HolProg 64 :=
.seq RemovedBody528_73 RemovedBody528_120

def RemovedBody528_122 : StackLang.HolProg 64 :=
.seq RemovedBody528_70 RemovedBody528_121

def RemovedBody528_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody528_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody528_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1732#64)

def RemovedBody528_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody528_129 : StackLang.HolProg 64 :=
.seq RemovedBody528_127 RemovedBody528_128

def RemovedBody528_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody528_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody528_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody528_133 : StackLang.HolProg 64 :=
.seq RemovedBody528_131 RemovedBody528_132

def RemovedBody528_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody528_133 RemovedBody528_134

def RemovedBody528_136 : StackLang.HolProg 64 :=
.seq RemovedBody528_130 RemovedBody528_135

def RemovedBody528_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody528_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody528_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 7

def RemovedBody528_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody528_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody528_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody528_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody528_146 : StackLang.HolProg 64 :=
.seq RemovedBody528_144 RemovedBody528_145

def RemovedBody528_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody528_148 : StackLang.HolProg 64 :=
.seq RemovedBody528_146 RemovedBody528_147

def RemovedBody528_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_150 : StackLang.HolProg 64 :=
.seq RemovedBody528_148 RemovedBody528_149

def RemovedBody528_151 : StackLang.HolProg 64 :=
.seq RemovedBody528_143 RemovedBody528_150

def RemovedBody528_152 : StackLang.HolProg 64 :=
.seq RemovedBody528_142 RemovedBody528_151

def RemovedBody528_153 : StackLang.HolProg 64 :=
.seq RemovedBody528_141 RemovedBody528_152

def RemovedBody528_154 : StackLang.HolProg 64 :=
.seq RemovedBody528_140 RemovedBody528_153

def RemovedBody528_155 : StackLang.HolProg 64 :=
.seq RemovedBody528_139 RemovedBody528_154

def RemovedBody528_156 : StackLang.HolProg 64 :=
.seq RemovedBody528_138 RemovedBody528_155

def RemovedBody528_157 : StackLang.HolProg 64 :=
.seq RemovedBody528_137 RemovedBody528_156

def RemovedBody528_158 : StackLang.HolProg 64 :=
.seq RemovedBody528_136 RemovedBody528_157

def RemovedBody528_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody528_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody528_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody528_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody528_166 : StackLang.HolProg 64 :=
.seq RemovedBody528_164 RemovedBody528_165

def RemovedBody528_167 : StackLang.HolProg 64 :=
.seq RemovedBody528_163 RemovedBody528_166

def RemovedBody528_168 : StackLang.HolProg 64 :=
.seq RemovedBody528_162 RemovedBody528_167

def RemovedBody528_169 : StackLang.HolProg 64 :=
.seq RemovedBody528_161 RemovedBody528_168

def RemovedBody528_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody528_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody528_172 : StackLang.HolProg 64 :=
.seq RemovedBody528_170 RemovedBody528_171

def RemovedBody528_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody528_169, 0, 528, 6)) (Sum.inl 490) (some (RemovedBody528_172, 528, 7))

def RemovedBody528_174 : StackLang.HolProg 64 :=
.seq RemovedBody528_160 RemovedBody528_173

def RemovedBody528_175 : StackLang.HolProg 64 :=
.seq RemovedBody528_159 RemovedBody528_174

def RemovedBody528_176 : StackLang.HolProg 64 :=
.seq RemovedBody528_158 RemovedBody528_175

def RemovedBody528_177 : StackLang.HolProg 64 :=
.seq RemovedBody528_129 RemovedBody528_176

def RemovedBody528_178 : StackLang.HolProg 64 :=
.seq RemovedBody528_126 RemovedBody528_177

def RemovedBody528_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody528_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody528_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody528_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody528_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody528_184 : StackLang.HolProg 64 :=
.seq RemovedBody528_182 RemovedBody528_183

def RemovedBody528_185 : StackLang.HolProg 64 :=
.seq RemovedBody528_181 RemovedBody528_184

def RemovedBody528_186 : StackLang.HolProg 64 :=
.seq RemovedBody528_180 RemovedBody528_185

def RemovedBody528_187 : StackLang.HolProg 64 :=
.seq RemovedBody528_179 RemovedBody528_186

def RemovedBody528_188 : StackLang.HolProg 64 :=
.seq RemovedBody528_178 RemovedBody528_187

def RemovedBody528_189 : StackLang.HolProg 64 :=
.seq RemovedBody528_125 RemovedBody528_188

def RemovedBody528_190 : StackLang.HolProg 64 :=
.seq RemovedBody528_124 RemovedBody528_189

def RemovedBody528_191 : StackLang.HolProg 64 :=
.seq RemovedBody528_123 RemovedBody528_190

def RemovedBody528_192 : StackLang.HolProg 64 :=
.seq RemovedBody528_122 RemovedBody528_191

def RemovedBody528_193 : StackLang.HolProg 64 :=
.seq RemovedBody528_69 RemovedBody528_192

def RemovedBody528_194 : StackLang.HolProg 64 :=
.seq RemovedBody528_68 RemovedBody528_193

def RemovedBody528_195 : StackLang.HolProg 64 :=
.seq RemovedBody528_67 RemovedBody528_194

def RemovedBody528_196 : StackLang.HolProg 64 :=
.seq RemovedBody528_66 RemovedBody528_195

def RemovedBody528_197 : StackLang.HolProg 64 :=
.seq RemovedBody528_65 RemovedBody528_196

def RemovedBody528_198 : StackLang.HolProg 64 :=
.seq RemovedBody528_64 RemovedBody528_197

def RemovedBody528_199 : StackLang.HolProg 64 :=
.seq RemovedBody528_63 RemovedBody528_198

def RemovedBody528_200 : StackLang.HolProg 64 :=
.seq RemovedBody528_62 RemovedBody528_199

def RemovedBody528_201 : StackLang.HolProg 64 :=
.seq RemovedBody528_9 RemovedBody528_200

def RemovedBody528_202 : StackLang.HolProg 64 :=
.seq RemovedBody528_8 RemovedBody528_201

def RemovedBody528_203 : StackLang.HolProg 64 :=
.seq RemovedBody528_7 RemovedBody528_202

def RemovedBody528_204 : StackLang.HolProg 64 :=
.seq RemovedBody528_6 RemovedBody528_203

def Removed528 : Nat × StackLang.HolProg 64 := (528, RemovedBody528_204)
theorem Removed528_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc528 = Removed528 := by
  kernel_rfl
#print axioms Removed528_eq
end InitECandidate.Proofs.BackendStages
