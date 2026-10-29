import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc149
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody149_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody149_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody149_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody149_3 : StackLang.HolProg 64 :=
.seq RemovedBody149_1 RemovedBody149_2

def RemovedBody149_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody149_3 RemovedBody149_4

def RemovedBody149_6 : StackLang.HolProg 64 :=
.seq RemovedBody149_0 RemovedBody149_5

def RemovedBody149_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody149_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody149_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 126#64)

def RemovedBody149_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody149_13 : StackLang.HolProg 64 :=
.seq RemovedBody149_11 RemovedBody149_12

def RemovedBody149_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody149_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody149_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody149_17 : StackLang.HolProg 64 :=
.seq RemovedBody149_15 RemovedBody149_16

def RemovedBody149_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody149_17 RemovedBody149_18

def RemovedBody149_20 : StackLang.HolProg 64 :=
.seq RemovedBody149_14 RemovedBody149_19

def RemovedBody149_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody149_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody149_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 3

def RemovedBody149_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody149_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody149_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody149_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody149_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody149_30 : StackLang.HolProg 64 :=
.seq RemovedBody149_28 RemovedBody149_29

def RemovedBody149_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody149_32 : StackLang.HolProg 64 :=
.seq RemovedBody149_30 RemovedBody149_31

def RemovedBody149_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody149_34 : StackLang.HolProg 64 :=
.seq RemovedBody149_32 RemovedBody149_33

def RemovedBody149_35 : StackLang.HolProg 64 :=
.seq RemovedBody149_27 RemovedBody149_34

def RemovedBody149_36 : StackLang.HolProg 64 :=
.seq RemovedBody149_26 RemovedBody149_35

def RemovedBody149_37 : StackLang.HolProg 64 :=
.seq RemovedBody149_25 RemovedBody149_36

def RemovedBody149_38 : StackLang.HolProg 64 :=
.seq RemovedBody149_24 RemovedBody149_37

def RemovedBody149_39 : StackLang.HolProg 64 :=
.seq RemovedBody149_23 RemovedBody149_38

def RemovedBody149_40 : StackLang.HolProg 64 :=
.seq RemovedBody149_22 RemovedBody149_39

def RemovedBody149_41 : StackLang.HolProg 64 :=
.seq RemovedBody149_21 RemovedBody149_40

def RemovedBody149_42 : StackLang.HolProg 64 :=
.seq RemovedBody149_20 RemovedBody149_41

def RemovedBody149_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody149_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody149_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody149_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody149_50 : StackLang.HolProg 64 :=
.seq RemovedBody149_48 RemovedBody149_49

def RemovedBody149_51 : StackLang.HolProg 64 :=
.seq RemovedBody149_47 RemovedBody149_50

def RemovedBody149_52 : StackLang.HolProg 64 :=
.seq RemovedBody149_46 RemovedBody149_51

def RemovedBody149_53 : StackLang.HolProg 64 :=
.seq RemovedBody149_45 RemovedBody149_52

def RemovedBody149_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody149_56 : StackLang.HolProg 64 :=
.seq RemovedBody149_54 RemovedBody149_55

def RemovedBody149_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody149_53, 0, 149, 2)) (Sum.inl 68) (some (RemovedBody149_56, 149, 3))

def RemovedBody149_58 : StackLang.HolProg 64 :=
.seq RemovedBody149_44 RemovedBody149_57

def RemovedBody149_59 : StackLang.HolProg 64 :=
.seq RemovedBody149_43 RemovedBody149_58

def RemovedBody149_60 : StackLang.HolProg 64 :=
.seq RemovedBody149_42 RemovedBody149_59

def RemovedBody149_61 : StackLang.HolProg 64 :=
.seq RemovedBody149_13 RemovedBody149_60

def RemovedBody149_62 : StackLang.HolProg 64 :=
.seq RemovedBody149_10 RemovedBody149_61

def RemovedBody149_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody149_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody149_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody149_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody149_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551568#64)))

def RemovedBody149_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody149_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody149_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 127#64)

def RemovedBody149_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody149_75 : StackLang.HolProg 64 :=
.seq RemovedBody149_73 RemovedBody149_74

def RemovedBody149_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody149_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody149_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody149_79 : StackLang.HolProg 64 :=
.seq RemovedBody149_77 RemovedBody149_78

def RemovedBody149_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody149_79 RemovedBody149_80

def RemovedBody149_82 : StackLang.HolProg 64 :=
.seq RemovedBody149_76 RemovedBody149_81

def RemovedBody149_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody149_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody149_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 5

def RemovedBody149_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody149_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody149_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody149_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody149_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody149_92 : StackLang.HolProg 64 :=
.seq RemovedBody149_90 RemovedBody149_91

def RemovedBody149_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody149_94 : StackLang.HolProg 64 :=
.seq RemovedBody149_92 RemovedBody149_93

def RemovedBody149_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody149_96 : StackLang.HolProg 64 :=
.seq RemovedBody149_94 RemovedBody149_95

def RemovedBody149_97 : StackLang.HolProg 64 :=
.seq RemovedBody149_89 RemovedBody149_96

def RemovedBody149_98 : StackLang.HolProg 64 :=
.seq RemovedBody149_88 RemovedBody149_97

def RemovedBody149_99 : StackLang.HolProg 64 :=
.seq RemovedBody149_87 RemovedBody149_98

def RemovedBody149_100 : StackLang.HolProg 64 :=
.seq RemovedBody149_86 RemovedBody149_99

def RemovedBody149_101 : StackLang.HolProg 64 :=
.seq RemovedBody149_85 RemovedBody149_100

def RemovedBody149_102 : StackLang.HolProg 64 :=
.seq RemovedBody149_84 RemovedBody149_101

def RemovedBody149_103 : StackLang.HolProg 64 :=
.seq RemovedBody149_83 RemovedBody149_102

def RemovedBody149_104 : StackLang.HolProg 64 :=
.seq RemovedBody149_82 RemovedBody149_103

def RemovedBody149_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody149_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody149_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody149_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody149_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody149_113 : StackLang.HolProg 64 :=
.seq RemovedBody149_111 RemovedBody149_112

def RemovedBody149_114 : StackLang.HolProg 64 :=
.seq RemovedBody149_110 RemovedBody149_113

def RemovedBody149_115 : StackLang.HolProg 64 :=
.seq RemovedBody149_109 RemovedBody149_114

def RemovedBody149_116 : StackLang.HolProg 64 :=
.seq RemovedBody149_108 RemovedBody149_115

def RemovedBody149_117 : StackLang.HolProg 64 :=
.seq RemovedBody149_107 RemovedBody149_116

def RemovedBody149_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody149_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody149_120 : StackLang.HolProg 64 :=
.seq RemovedBody149_118 RemovedBody149_119

def RemovedBody149_121 : StackLang.HolProg 64 :=
.call (some (RemovedBody149_117, 0, 149, 4)) (Sum.inl 68) (some (RemovedBody149_120, 149, 5))

def RemovedBody149_122 : StackLang.HolProg 64 :=
.seq RemovedBody149_106 RemovedBody149_121

def RemovedBody149_123 : StackLang.HolProg 64 :=
.seq RemovedBody149_105 RemovedBody149_122

def RemovedBody149_124 : StackLang.HolProg 64 :=
.seq RemovedBody149_104 RemovedBody149_123

def RemovedBody149_125 : StackLang.HolProg 64 :=
.seq RemovedBody149_75 RemovedBody149_124

def RemovedBody149_126 : StackLang.HolProg 64 :=
.seq RemovedBody149_72 RemovedBody149_125

def RemovedBody149_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody149_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody149_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody149_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody149_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551560#64)))

def RemovedBody149_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody149_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody149_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody149_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody149_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody149_138 : StackLang.HolProg 64 :=
.seq RemovedBody149_136 RemovedBody149_137

def RemovedBody149_139 : StackLang.HolProg 64 :=
.seq RemovedBody149_135 RemovedBody149_138

def RemovedBody149_140 : StackLang.HolProg 64 :=
.seq RemovedBody149_134 RemovedBody149_139

def RemovedBody149_141 : StackLang.HolProg 64 :=
.seq RemovedBody149_133 RemovedBody149_140

def RemovedBody149_142 : StackLang.HolProg 64 :=
.seq RemovedBody149_132 RemovedBody149_141

def RemovedBody149_143 : StackLang.HolProg 64 :=
.seq RemovedBody149_131 RemovedBody149_142

def RemovedBody149_144 : StackLang.HolProg 64 :=
.seq RemovedBody149_130 RemovedBody149_143

def RemovedBody149_145 : StackLang.HolProg 64 :=
.seq RemovedBody149_129 RemovedBody149_144

def RemovedBody149_146 : StackLang.HolProg 64 :=
.seq RemovedBody149_128 RemovedBody149_145

def RemovedBody149_147 : StackLang.HolProg 64 :=
.seq RemovedBody149_127 RemovedBody149_146

def RemovedBody149_148 : StackLang.HolProg 64 :=
.seq RemovedBody149_126 RemovedBody149_147

def RemovedBody149_149 : StackLang.HolProg 64 :=
.seq RemovedBody149_71 RemovedBody149_148

def RemovedBody149_150 : StackLang.HolProg 64 :=
.seq RemovedBody149_70 RemovedBody149_149

def RemovedBody149_151 : StackLang.HolProg 64 :=
.seq RemovedBody149_69 RemovedBody149_150

def RemovedBody149_152 : StackLang.HolProg 64 :=
.seq RemovedBody149_68 RemovedBody149_151

def RemovedBody149_153 : StackLang.HolProg 64 :=
.seq RemovedBody149_67 RemovedBody149_152

def RemovedBody149_154 : StackLang.HolProg 64 :=
.seq RemovedBody149_66 RemovedBody149_153

def RemovedBody149_155 : StackLang.HolProg 64 :=
.seq RemovedBody149_65 RemovedBody149_154

def RemovedBody149_156 : StackLang.HolProg 64 :=
.seq RemovedBody149_64 RemovedBody149_155

def RemovedBody149_157 : StackLang.HolProg 64 :=
.seq RemovedBody149_63 RemovedBody149_156

def RemovedBody149_158 : StackLang.HolProg 64 :=
.seq RemovedBody149_62 RemovedBody149_157

def RemovedBody149_159 : StackLang.HolProg 64 :=
.seq RemovedBody149_9 RemovedBody149_158

def RemovedBody149_160 : StackLang.HolProg 64 :=
.seq RemovedBody149_8 RemovedBody149_159

def RemovedBody149_161 : StackLang.HolProg 64 :=
.seq RemovedBody149_7 RemovedBody149_160

def RemovedBody149_162 : StackLang.HolProg 64 :=
.seq RemovedBody149_6 RemovedBody149_161

def Removed149 : Nat × StackLang.HolProg 64 := (149, RemovedBody149_162)
theorem Removed149_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc149 = Removed149 := by
  kernel_rfl
#print axioms Removed149_eq
end InitECandidate.Proofs.BackendStages
