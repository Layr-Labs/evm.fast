import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc298
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody298_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody298_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody298_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody298_3 : StackLang.HolProg 64 :=
.seq RemovedBody298_1 RemovedBody298_2

def RemovedBody298_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody298_3 RemovedBody298_4

def RemovedBody298_6 : StackLang.HolProg 64 :=
.seq RemovedBody298_0 RemovedBody298_5

def RemovedBody298_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def RemovedBody298_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody298_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 804#64)

def RemovedBody298_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody298_13 : StackLang.HolProg 64 :=
.seq RemovedBody298_11 RemovedBody298_12

def RemovedBody298_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody298_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody298_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody298_17 : StackLang.HolProg 64 :=
.seq RemovedBody298_15 RemovedBody298_16

def RemovedBody298_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody298_17 RemovedBody298_18

def RemovedBody298_20 : StackLang.HolProg 64 :=
.seq RemovedBody298_14 RemovedBody298_19

def RemovedBody298_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody298_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody298_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 3

def RemovedBody298_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody298_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody298_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody298_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody298_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody298_30 : StackLang.HolProg 64 :=
.seq RemovedBody298_28 RemovedBody298_29

def RemovedBody298_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody298_32 : StackLang.HolProg 64 :=
.seq RemovedBody298_30 RemovedBody298_31

def RemovedBody298_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody298_34 : StackLang.HolProg 64 :=
.seq RemovedBody298_32 RemovedBody298_33

def RemovedBody298_35 : StackLang.HolProg 64 :=
.seq RemovedBody298_27 RemovedBody298_34

def RemovedBody298_36 : StackLang.HolProg 64 :=
.seq RemovedBody298_26 RemovedBody298_35

def RemovedBody298_37 : StackLang.HolProg 64 :=
.seq RemovedBody298_25 RemovedBody298_36

def RemovedBody298_38 : StackLang.HolProg 64 :=
.seq RemovedBody298_24 RemovedBody298_37

def RemovedBody298_39 : StackLang.HolProg 64 :=
.seq RemovedBody298_23 RemovedBody298_38

def RemovedBody298_40 : StackLang.HolProg 64 :=
.seq RemovedBody298_22 RemovedBody298_39

def RemovedBody298_41 : StackLang.HolProg 64 :=
.seq RemovedBody298_21 RemovedBody298_40

def RemovedBody298_42 : StackLang.HolProg 64 :=
.seq RemovedBody298_20 RemovedBody298_41

def RemovedBody298_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody298_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody298_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody298_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody298_50 : StackLang.HolProg 64 :=
.seq RemovedBody298_48 RemovedBody298_49

def RemovedBody298_51 : StackLang.HolProg 64 :=
.seq RemovedBody298_47 RemovedBody298_50

def RemovedBody298_52 : StackLang.HolProg 64 :=
.seq RemovedBody298_46 RemovedBody298_51

def RemovedBody298_53 : StackLang.HolProg 64 :=
.seq RemovedBody298_45 RemovedBody298_52

def RemovedBody298_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody298_56 : StackLang.HolProg 64 :=
.seq RemovedBody298_54 RemovedBody298_55

def RemovedBody298_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody298_53, 0, 298, 2)) (Sum.inl 68) (some (RemovedBody298_56, 298, 3))

def RemovedBody298_58 : StackLang.HolProg 64 :=
.seq RemovedBody298_44 RemovedBody298_57

def RemovedBody298_59 : StackLang.HolProg 64 :=
.seq RemovedBody298_43 RemovedBody298_58

def RemovedBody298_60 : StackLang.HolProg 64 :=
.seq RemovedBody298_42 RemovedBody298_59

def RemovedBody298_61 : StackLang.HolProg 64 :=
.seq RemovedBody298_13 RemovedBody298_60

def RemovedBody298_62 : StackLang.HolProg 64 :=
.seq RemovedBody298_10 RemovedBody298_61

def RemovedBody298_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody298_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody298_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def RemovedBody298_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody298_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 805#64)

def RemovedBody298_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody298_70 : StackLang.HolProg 64 :=
.seq RemovedBody298_68 RemovedBody298_69

def RemovedBody298_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody298_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody298_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody298_74 : StackLang.HolProg 64 :=
.seq RemovedBody298_72 RemovedBody298_73

def RemovedBody298_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody298_74 RemovedBody298_75

def RemovedBody298_77 : StackLang.HolProg 64 :=
.seq RemovedBody298_71 RemovedBody298_76

def RemovedBody298_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody298_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody298_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 5

def RemovedBody298_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody298_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody298_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody298_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody298_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody298_87 : StackLang.HolProg 64 :=
.seq RemovedBody298_85 RemovedBody298_86

def RemovedBody298_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody298_89 : StackLang.HolProg 64 :=
.seq RemovedBody298_87 RemovedBody298_88

def RemovedBody298_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody298_91 : StackLang.HolProg 64 :=
.seq RemovedBody298_89 RemovedBody298_90

def RemovedBody298_92 : StackLang.HolProg 64 :=
.seq RemovedBody298_84 RemovedBody298_91

def RemovedBody298_93 : StackLang.HolProg 64 :=
.seq RemovedBody298_83 RemovedBody298_92

def RemovedBody298_94 : StackLang.HolProg 64 :=
.seq RemovedBody298_82 RemovedBody298_93

def RemovedBody298_95 : StackLang.HolProg 64 :=
.seq RemovedBody298_81 RemovedBody298_94

def RemovedBody298_96 : StackLang.HolProg 64 :=
.seq RemovedBody298_80 RemovedBody298_95

def RemovedBody298_97 : StackLang.HolProg 64 :=
.seq RemovedBody298_79 RemovedBody298_96

def RemovedBody298_98 : StackLang.HolProg 64 :=
.seq RemovedBody298_78 RemovedBody298_97

def RemovedBody298_99 : StackLang.HolProg 64 :=
.seq RemovedBody298_77 RemovedBody298_98

def RemovedBody298_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody298_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody298_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody298_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody298_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody298_108 : StackLang.HolProg 64 :=
.seq RemovedBody298_106 RemovedBody298_107

def RemovedBody298_109 : StackLang.HolProg 64 :=
.seq RemovedBody298_105 RemovedBody298_108

def RemovedBody298_110 : StackLang.HolProg 64 :=
.seq RemovedBody298_104 RemovedBody298_109

def RemovedBody298_111 : StackLang.HolProg 64 :=
.seq RemovedBody298_103 RemovedBody298_110

def RemovedBody298_112 : StackLang.HolProg 64 :=
.seq RemovedBody298_102 RemovedBody298_111

def RemovedBody298_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody298_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody298_115 : StackLang.HolProg 64 :=
.seq RemovedBody298_113 RemovedBody298_114

def RemovedBody298_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody298_117 : StackLang.HolProg 64 :=
.seq RemovedBody298_115 RemovedBody298_116

def RemovedBody298_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody298_112, 0, 298, 4)) (Sum.inl 78) (some (RemovedBody298_117, 298, 5))

def RemovedBody298_119 : StackLang.HolProg 64 :=
.seq RemovedBody298_101 RemovedBody298_118

def RemovedBody298_120 : StackLang.HolProg 64 :=
.seq RemovedBody298_100 RemovedBody298_119

def RemovedBody298_121 : StackLang.HolProg 64 :=
.seq RemovedBody298_99 RemovedBody298_120

def RemovedBody298_122 : StackLang.HolProg 64 :=
.seq RemovedBody298_70 RemovedBody298_121

def RemovedBody298_123 : StackLang.HolProg 64 :=
.seq RemovedBody298_67 RemovedBody298_122

def RemovedBody298_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody298_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody298_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody298_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody298_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody298_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody298_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody298_132 : StackLang.HolProg 64 :=
.seq RemovedBody298_130 RemovedBody298_131

def RemovedBody298_133 : StackLang.HolProg 64 :=
.seq RemovedBody298_129 RemovedBody298_132

def RemovedBody298_134 : StackLang.HolProg 64 :=
.seq RemovedBody298_128 RemovedBody298_133

def RemovedBody298_135 : StackLang.HolProg 64 :=
.seq RemovedBody298_127 RemovedBody298_134

def RemovedBody298_136 : StackLang.HolProg 64 :=
.seq RemovedBody298_126 RemovedBody298_135

def RemovedBody298_137 : StackLang.HolProg 64 :=
.seq RemovedBody298_125 RemovedBody298_136

def RemovedBody298_138 : StackLang.HolProg 64 :=
.seq RemovedBody298_124 RemovedBody298_137

def RemovedBody298_139 : StackLang.HolProg 64 :=
.seq RemovedBody298_123 RemovedBody298_138

def RemovedBody298_140 : StackLang.HolProg 64 :=
.seq RemovedBody298_66 RemovedBody298_139

def RemovedBody298_141 : StackLang.HolProg 64 :=
.seq RemovedBody298_65 RemovedBody298_140

def RemovedBody298_142 : StackLang.HolProg 64 :=
.seq RemovedBody298_64 RemovedBody298_141

def RemovedBody298_143 : StackLang.HolProg 64 :=
.seq RemovedBody298_63 RemovedBody298_142

def RemovedBody298_144 : StackLang.HolProg 64 :=
.seq RemovedBody298_62 RemovedBody298_143

def RemovedBody298_145 : StackLang.HolProg 64 :=
.seq RemovedBody298_9 RemovedBody298_144

def RemovedBody298_146 : StackLang.HolProg 64 :=
.seq RemovedBody298_8 RemovedBody298_145

def RemovedBody298_147 : StackLang.HolProg 64 :=
.seq RemovedBody298_7 RemovedBody298_146

def RemovedBody298_148 : StackLang.HolProg 64 :=
.seq RemovedBody298_6 RemovedBody298_147

def Removed298 : Nat × StackLang.HolProg 64 := (298, RemovedBody298_148)
theorem Removed298_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc298 = Removed298 := by
  kernel_rfl
#print axioms Removed298_eq
end InitECandidate.Proofs.BackendStages
