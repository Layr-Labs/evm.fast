import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc816
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody816_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody816_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_3 : StackLang.HolProg 64 :=
.seq RemovedBody816_1 RemovedBody816_2

def RemovedBody816_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_3 RemovedBody816_4

def RemovedBody816_6 : StackLang.HolProg 64 :=
.seq RemovedBody816_0 RemovedBody816_5

def RemovedBody816_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody816_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_10 : StackLang.HolProg 64 :=
.seq RemovedBody816_8 RemovedBody816_9

def RemovedBody816_11 : StackLang.HolProg 64 :=
.seq RemovedBody816_7 RemovedBody816_10

def RemovedBody816_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4059#64)

def RemovedBody816_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_15 : StackLang.HolProg 64 :=
.seq RemovedBody816_13 RemovedBody816_14

def RemovedBody816_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_19 : StackLang.HolProg 64 :=
.seq RemovedBody816_17 RemovedBody816_18

def RemovedBody816_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_19 RemovedBody816_20

def RemovedBody816_22 : StackLang.HolProg 64 :=
.seq RemovedBody816_16 RemovedBody816_21

def RemovedBody816_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 3

def RemovedBody816_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_32 : StackLang.HolProg 64 :=
.seq RemovedBody816_30 RemovedBody816_31

def RemovedBody816_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_34 : StackLang.HolProg 64 :=
.seq RemovedBody816_32 RemovedBody816_33

def RemovedBody816_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_36 : StackLang.HolProg 64 :=
.seq RemovedBody816_34 RemovedBody816_35

def RemovedBody816_37 : StackLang.HolProg 64 :=
.seq RemovedBody816_29 RemovedBody816_36

def RemovedBody816_38 : StackLang.HolProg 64 :=
.seq RemovedBody816_28 RemovedBody816_37

def RemovedBody816_39 : StackLang.HolProg 64 :=
.seq RemovedBody816_27 RemovedBody816_38

def RemovedBody816_40 : StackLang.HolProg 64 :=
.seq RemovedBody816_26 RemovedBody816_39

def RemovedBody816_41 : StackLang.HolProg 64 :=
.seq RemovedBody816_25 RemovedBody816_40

def RemovedBody816_42 : StackLang.HolProg 64 :=
.seq RemovedBody816_24 RemovedBody816_41

def RemovedBody816_43 : StackLang.HolProg 64 :=
.seq RemovedBody816_23 RemovedBody816_42

def RemovedBody816_44 : StackLang.HolProg 64 :=
.seq RemovedBody816_22 RemovedBody816_43

def RemovedBody816_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody816_52 : StackLang.HolProg 64 :=
.seq RemovedBody816_50 RemovedBody816_51

def RemovedBody816_53 : StackLang.HolProg 64 :=
.seq RemovedBody816_49 RemovedBody816_52

def RemovedBody816_54 : StackLang.HolProg 64 :=
.seq RemovedBody816_48 RemovedBody816_53

def RemovedBody816_55 : StackLang.HolProg 64 :=
.seq RemovedBody816_47 RemovedBody816_54

def RemovedBody816_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_58 : StackLang.HolProg 64 :=
.seq RemovedBody816_56 RemovedBody816_57

def RemovedBody816_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_55, 0, 816, 2)) (Sum.inl 69) (some (RemovedBody816_58, 816, 3))

def RemovedBody816_60 : StackLang.HolProg 64 :=
.seq RemovedBody816_46 RemovedBody816_59

def RemovedBody816_61 : StackLang.HolProg 64 :=
.seq RemovedBody816_45 RemovedBody816_60

def RemovedBody816_62 : StackLang.HolProg 64 :=
.seq RemovedBody816_44 RemovedBody816_61

def RemovedBody816_63 : StackLang.HolProg 64 :=
.seq RemovedBody816_15 RemovedBody816_62

def RemovedBody816_64 : StackLang.HolProg 64 :=
.seq RemovedBody816_12 RemovedBody816_63

def RemovedBody816_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody816_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4060#64)

def RemovedBody816_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_71 : StackLang.HolProg 64 :=
.seq RemovedBody816_69 RemovedBody816_70

def RemovedBody816_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_75 : StackLang.HolProg 64 :=
.seq RemovedBody816_73 RemovedBody816_74

def RemovedBody816_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_75 RemovedBody816_76

def RemovedBody816_78 : StackLang.HolProg 64 :=
.seq RemovedBody816_72 RemovedBody816_77

def RemovedBody816_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 5

def RemovedBody816_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_88 : StackLang.HolProg 64 :=
.seq RemovedBody816_86 RemovedBody816_87

def RemovedBody816_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_90 : StackLang.HolProg 64 :=
.seq RemovedBody816_88 RemovedBody816_89

def RemovedBody816_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_92 : StackLang.HolProg 64 :=
.seq RemovedBody816_90 RemovedBody816_91

def RemovedBody816_93 : StackLang.HolProg 64 :=
.seq RemovedBody816_85 RemovedBody816_92

def RemovedBody816_94 : StackLang.HolProg 64 :=
.seq RemovedBody816_84 RemovedBody816_93

def RemovedBody816_95 : StackLang.HolProg 64 :=
.seq RemovedBody816_83 RemovedBody816_94

def RemovedBody816_96 : StackLang.HolProg 64 :=
.seq RemovedBody816_82 RemovedBody816_95

def RemovedBody816_97 : StackLang.HolProg 64 :=
.seq RemovedBody816_81 RemovedBody816_96

def RemovedBody816_98 : StackLang.HolProg 64 :=
.seq RemovedBody816_80 RemovedBody816_97

def RemovedBody816_99 : StackLang.HolProg 64 :=
.seq RemovedBody816_79 RemovedBody816_98

def RemovedBody816_100 : StackLang.HolProg 64 :=
.seq RemovedBody816_78 RemovedBody816_99

def RemovedBody816_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody816_108 : StackLang.HolProg 64 :=
.seq RemovedBody816_106 RemovedBody816_107

def RemovedBody816_109 : StackLang.HolProg 64 :=
.seq RemovedBody816_105 RemovedBody816_108

def RemovedBody816_110 : StackLang.HolProg 64 :=
.seq RemovedBody816_104 RemovedBody816_109

def RemovedBody816_111 : StackLang.HolProg 64 :=
.seq RemovedBody816_103 RemovedBody816_110

def RemovedBody816_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_114 : StackLang.HolProg 64 :=
.seq RemovedBody816_112 RemovedBody816_113

def RemovedBody816_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_111, 0, 816, 4)) (Sum.inl 68) (some (RemovedBody816_114, 816, 5))

def RemovedBody816_116 : StackLang.HolProg 64 :=
.seq RemovedBody816_102 RemovedBody816_115

def RemovedBody816_117 : StackLang.HolProg 64 :=
.seq RemovedBody816_101 RemovedBody816_116

def RemovedBody816_118 : StackLang.HolProg 64 :=
.seq RemovedBody816_100 RemovedBody816_117

def RemovedBody816_119 : StackLang.HolProg 64 :=
.seq RemovedBody816_71 RemovedBody816_118

def RemovedBody816_120 : StackLang.HolProg 64 :=
.seq RemovedBody816_68 RemovedBody816_119

def RemovedBody816_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def RemovedBody816_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4061#64)

def RemovedBody816_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_127 : StackLang.HolProg 64 :=
.seq RemovedBody816_125 RemovedBody816_126

def RemovedBody816_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_131 : StackLang.HolProg 64 :=
.seq RemovedBody816_129 RemovedBody816_130

def RemovedBody816_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_131 RemovedBody816_132

def RemovedBody816_134 : StackLang.HolProg 64 :=
.seq RemovedBody816_128 RemovedBody816_133

def RemovedBody816_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 7

def RemovedBody816_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_144 : StackLang.HolProg 64 :=
.seq RemovedBody816_142 RemovedBody816_143

def RemovedBody816_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_146 : StackLang.HolProg 64 :=
.seq RemovedBody816_144 RemovedBody816_145

def RemovedBody816_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_148 : StackLang.HolProg 64 :=
.seq RemovedBody816_146 RemovedBody816_147

def RemovedBody816_149 : StackLang.HolProg 64 :=
.seq RemovedBody816_141 RemovedBody816_148

def RemovedBody816_150 : StackLang.HolProg 64 :=
.seq RemovedBody816_140 RemovedBody816_149

def RemovedBody816_151 : StackLang.HolProg 64 :=
.seq RemovedBody816_139 RemovedBody816_150

def RemovedBody816_152 : StackLang.HolProg 64 :=
.seq RemovedBody816_138 RemovedBody816_151

def RemovedBody816_153 : StackLang.HolProg 64 :=
.seq RemovedBody816_137 RemovedBody816_152

def RemovedBody816_154 : StackLang.HolProg 64 :=
.seq RemovedBody816_136 RemovedBody816_153

def RemovedBody816_155 : StackLang.HolProg 64 :=
.seq RemovedBody816_135 RemovedBody816_154

def RemovedBody816_156 : StackLang.HolProg 64 :=
.seq RemovedBody816_134 RemovedBody816_155

def RemovedBody816_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody816_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_166 : StackLang.HolProg 64 :=
.seq RemovedBody816_164 RemovedBody816_165

def RemovedBody816_167 : StackLang.HolProg 64 :=
.seq RemovedBody816_163 RemovedBody816_166

def RemovedBody816_168 : StackLang.HolProg 64 :=
.seq RemovedBody816_162 RemovedBody816_167

def RemovedBody816_169 : StackLang.HolProg 64 :=
.seq RemovedBody816_161 RemovedBody816_168

def RemovedBody816_170 : StackLang.HolProg 64 :=
.seq RemovedBody816_160 RemovedBody816_169

def RemovedBody816_171 : StackLang.HolProg 64 :=
.seq RemovedBody816_159 RemovedBody816_170

def RemovedBody816_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_174 : StackLang.HolProg 64 :=
.seq RemovedBody816_172 RemovedBody816_173

def RemovedBody816_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_176 : StackLang.HolProg 64 :=
.seq RemovedBody816_174 RemovedBody816_175

def RemovedBody816_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_171, 0, 816, 6)) (Sum.inl 68) (some (RemovedBody816_176, 816, 7))

def RemovedBody816_178 : StackLang.HolProg 64 :=
.seq RemovedBody816_158 RemovedBody816_177

def RemovedBody816_179 : StackLang.HolProg 64 :=
.seq RemovedBody816_157 RemovedBody816_178

def RemovedBody816_180 : StackLang.HolProg 64 :=
.seq RemovedBody816_156 RemovedBody816_179

def RemovedBody816_181 : StackLang.HolProg 64 :=
.seq RemovedBody816_127 RemovedBody816_180

def RemovedBody816_182 : StackLang.HolProg 64 :=
.seq RemovedBody816_124 RemovedBody816_181

def RemovedBody816_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody816_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_188 : StackLang.HolProg 64 :=
.seq RemovedBody816_186 RemovedBody816_187

def RemovedBody816_189 : StackLang.HolProg 64 :=
.seq RemovedBody816_185 RemovedBody816_188

def RemovedBody816_190 : StackLang.HolProg 64 :=
.seq RemovedBody816_184 RemovedBody816_189

def RemovedBody816_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4062#64)

def RemovedBody816_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_194 : StackLang.HolProg 64 :=
.seq RemovedBody816_192 RemovedBody816_193

def RemovedBody816_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_198 : StackLang.HolProg 64 :=
.seq RemovedBody816_196 RemovedBody816_197

def RemovedBody816_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_198 RemovedBody816_199

def RemovedBody816_201 : StackLang.HolProg 64 :=
.seq RemovedBody816_195 RemovedBody816_200

def RemovedBody816_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 9

def RemovedBody816_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_211 : StackLang.HolProg 64 :=
.seq RemovedBody816_209 RemovedBody816_210

def RemovedBody816_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_213 : StackLang.HolProg 64 :=
.seq RemovedBody816_211 RemovedBody816_212

def RemovedBody816_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_215 : StackLang.HolProg 64 :=
.seq RemovedBody816_213 RemovedBody816_214

def RemovedBody816_216 : StackLang.HolProg 64 :=
.seq RemovedBody816_208 RemovedBody816_215

def RemovedBody816_217 : StackLang.HolProg 64 :=
.seq RemovedBody816_207 RemovedBody816_216

def RemovedBody816_218 : StackLang.HolProg 64 :=
.seq RemovedBody816_206 RemovedBody816_217

def RemovedBody816_219 : StackLang.HolProg 64 :=
.seq RemovedBody816_205 RemovedBody816_218

def RemovedBody816_220 : StackLang.HolProg 64 :=
.seq RemovedBody816_204 RemovedBody816_219

def RemovedBody816_221 : StackLang.HolProg 64 :=
.seq RemovedBody816_203 RemovedBody816_220

def RemovedBody816_222 : StackLang.HolProg 64 :=
.seq RemovedBody816_202 RemovedBody816_221

def RemovedBody816_223 : StackLang.HolProg 64 :=
.seq RemovedBody816_201 RemovedBody816_222

def RemovedBody816_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody816_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_234 : StackLang.HolProg 64 :=
.seq RemovedBody816_232 RemovedBody816_233

def RemovedBody816_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_238 : StackLang.HolProg 64 :=
.seq RemovedBody816_236 RemovedBody816_237

def RemovedBody816_239 : StackLang.HolProg 64 :=
.seq RemovedBody816_235 RemovedBody816_238

def RemovedBody816_240 : StackLang.HolProg 64 :=
.seq RemovedBody816_234 RemovedBody816_239

def RemovedBody816_241 : StackLang.HolProg 64 :=
.seq RemovedBody816_231 RemovedBody816_240

def RemovedBody816_242 : StackLang.HolProg 64 :=
.seq RemovedBody816_230 RemovedBody816_241

def RemovedBody816_243 : StackLang.HolProg 64 :=
.seq RemovedBody816_229 RemovedBody816_242

def RemovedBody816_244 : StackLang.HolProg 64 :=
.seq RemovedBody816_228 RemovedBody816_243

def RemovedBody816_245 : StackLang.HolProg 64 :=
.seq RemovedBody816_227 RemovedBody816_244

def RemovedBody816_246 : StackLang.HolProg 64 :=
.seq RemovedBody816_226 RemovedBody816_245

def RemovedBody816_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_250 : StackLang.HolProg 64 :=
.seq RemovedBody816_248 RemovedBody816_249

def RemovedBody816_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_254 : StackLang.HolProg 64 :=
.seq RemovedBody816_252 RemovedBody816_253

def RemovedBody816_255 : StackLang.HolProg 64 :=
.seq RemovedBody816_251 RemovedBody816_254

def RemovedBody816_256 : StackLang.HolProg 64 :=
.seq RemovedBody816_250 RemovedBody816_255

def RemovedBody816_257 : StackLang.HolProg 64 :=
.seq RemovedBody816_247 RemovedBody816_256

def RemovedBody816_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_259 : StackLang.HolProg 64 :=
.seq RemovedBody816_257 RemovedBody816_258

def RemovedBody816_260 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_246, 0, 816, 8)) (Sum.inl 727) (some (RemovedBody816_259, 816, 9))

def RemovedBody816_261 : StackLang.HolProg 64 :=
.seq RemovedBody816_225 RemovedBody816_260

def RemovedBody816_262 : StackLang.HolProg 64 :=
.seq RemovedBody816_224 RemovedBody816_261

def RemovedBody816_263 : StackLang.HolProg 64 :=
.seq RemovedBody816_223 RemovedBody816_262

def RemovedBody816_264 : StackLang.HolProg 64 :=
.seq RemovedBody816_194 RemovedBody816_263

def RemovedBody816_265 : StackLang.HolProg 64 :=
.seq RemovedBody816_191 RemovedBody816_264

def RemovedBody816_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody816_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody816_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody816_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody816_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_276 : StackLang.HolProg 64 :=
.seq RemovedBody816_274 RemovedBody816_275

def RemovedBody816_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_279 : StackLang.HolProg 64 :=
.seq RemovedBody816_277 RemovedBody816_278

def RemovedBody816_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_281 : StackLang.HolProg 64 :=
.seq RemovedBody816_279 RemovedBody816_280

def RemovedBody816_282 : StackLang.HolProg 64 :=
.seq RemovedBody816_276 RemovedBody816_281

def RemovedBody816_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4063#64)

def RemovedBody816_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_286 : StackLang.HolProg 64 :=
.seq RemovedBody816_284 RemovedBody816_285

def RemovedBody816_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_290 : StackLang.HolProg 64 :=
.seq RemovedBody816_288 RemovedBody816_289

def RemovedBody816_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_292 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_290 RemovedBody816_291

def RemovedBody816_293 : StackLang.HolProg 64 :=
.seq RemovedBody816_287 RemovedBody816_292

def RemovedBody816_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 11

def RemovedBody816_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_303 : StackLang.HolProg 64 :=
.seq RemovedBody816_301 RemovedBody816_302

def RemovedBody816_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_305 : StackLang.HolProg 64 :=
.seq RemovedBody816_303 RemovedBody816_304

def RemovedBody816_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_307 : StackLang.HolProg 64 :=
.seq RemovedBody816_305 RemovedBody816_306

def RemovedBody816_308 : StackLang.HolProg 64 :=
.seq RemovedBody816_300 RemovedBody816_307

def RemovedBody816_309 : StackLang.HolProg 64 :=
.seq RemovedBody816_299 RemovedBody816_308

def RemovedBody816_310 : StackLang.HolProg 64 :=
.seq RemovedBody816_298 RemovedBody816_309

def RemovedBody816_311 : StackLang.HolProg 64 :=
.seq RemovedBody816_297 RemovedBody816_310

def RemovedBody816_312 : StackLang.HolProg 64 :=
.seq RemovedBody816_296 RemovedBody816_311

def RemovedBody816_313 : StackLang.HolProg 64 :=
.seq RemovedBody816_295 RemovedBody816_312

def RemovedBody816_314 : StackLang.HolProg 64 :=
.seq RemovedBody816_294 RemovedBody816_313

def RemovedBody816_315 : StackLang.HolProg 64 :=
.seq RemovedBody816_293 RemovedBody816_314

def RemovedBody816_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody816_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_327 : StackLang.HolProg 64 :=
.seq RemovedBody816_325 RemovedBody816_326

def RemovedBody816_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_330 : StackLang.HolProg 64 :=
.seq RemovedBody816_328 RemovedBody816_329

def RemovedBody816_331 : StackLang.HolProg 64 :=
.seq RemovedBody816_327 RemovedBody816_330

def RemovedBody816_332 : StackLang.HolProg 64 :=
.seq RemovedBody816_324 RemovedBody816_331

def RemovedBody816_333 : StackLang.HolProg 64 :=
.seq RemovedBody816_323 RemovedBody816_332

def RemovedBody816_334 : StackLang.HolProg 64 :=
.seq RemovedBody816_322 RemovedBody816_333

def RemovedBody816_335 : StackLang.HolProg 64 :=
.seq RemovedBody816_321 RemovedBody816_334

def RemovedBody816_336 : StackLang.HolProg 64 :=
.seq RemovedBody816_320 RemovedBody816_335

def RemovedBody816_337 : StackLang.HolProg 64 :=
.seq RemovedBody816_319 RemovedBody816_336

def RemovedBody816_338 : StackLang.HolProg 64 :=
.seq RemovedBody816_318 RemovedBody816_337

def RemovedBody816_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_343 : StackLang.HolProg 64 :=
.seq RemovedBody816_341 RemovedBody816_342

def RemovedBody816_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_346 : StackLang.HolProg 64 :=
.seq RemovedBody816_344 RemovedBody816_345

def RemovedBody816_347 : StackLang.HolProg 64 :=
.seq RemovedBody816_343 RemovedBody816_346

def RemovedBody816_348 : StackLang.HolProg 64 :=
.seq RemovedBody816_340 RemovedBody816_347

def RemovedBody816_349 : StackLang.HolProg 64 :=
.seq RemovedBody816_339 RemovedBody816_348

def RemovedBody816_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_351 : StackLang.HolProg 64 :=
.seq RemovedBody816_349 RemovedBody816_350

def RemovedBody816_352 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_338, 0, 816, 10)) (Sum.inl 727) (some (RemovedBody816_351, 816, 11))

def RemovedBody816_353 : StackLang.HolProg 64 :=
.seq RemovedBody816_317 RemovedBody816_352

def RemovedBody816_354 : StackLang.HolProg 64 :=
.seq RemovedBody816_316 RemovedBody816_353

def RemovedBody816_355 : StackLang.HolProg 64 :=
.seq RemovedBody816_315 RemovedBody816_354

def RemovedBody816_356 : StackLang.HolProg 64 :=
.seq RemovedBody816_286 RemovedBody816_355

def RemovedBody816_357 : StackLang.HolProg 64 :=
.seq RemovedBody816_283 RemovedBody816_356

def RemovedBody816_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_360 : StackLang.HolProg 64 :=
.seq RemovedBody816_358 RemovedBody816_359

def RemovedBody816_361 : StackLang.HolProg 64 :=
.seq RemovedBody816_357 RemovedBody816_360

def RemovedBody816_362 : StackLang.HolProg 64 :=
.seq RemovedBody816_282 RemovedBody816_361

def RemovedBody816_363 : StackLang.HolProg 64 :=
.seq RemovedBody816_273 RemovedBody816_362

def RemovedBody816_364 : StackLang.HolProg 64 :=
.seq RemovedBody816_272 RemovedBody816_363

def RemovedBody816_365 : StackLang.HolProg 64 :=
.seq RemovedBody816_271 RemovedBody816_364

def RemovedBody816_366 : StackLang.HolProg 64 :=
.seq RemovedBody816_270 RemovedBody816_365

def RemovedBody816_367 : StackLang.HolProg 64 :=
.seq RemovedBody816_269 RemovedBody816_366

def RemovedBody816_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_370 : StackLang.HolProg 64 :=
.seq RemovedBody816_368 RemovedBody816_369

def RemovedBody816_371 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody816_367 RemovedBody816_370

def RemovedBody816_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody816_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody816_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_379 : StackLang.HolProg 64 :=
.seq RemovedBody816_377 RemovedBody816_378

def RemovedBody816_380 : StackLang.HolProg 64 :=
.seq RemovedBody816_376 RemovedBody816_379

def RemovedBody816_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4064#64)

def RemovedBody816_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_384 : StackLang.HolProg 64 :=
.seq RemovedBody816_382 RemovedBody816_383

def RemovedBody816_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_388 : StackLang.HolProg 64 :=
.seq RemovedBody816_386 RemovedBody816_387

def RemovedBody816_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_390 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_388 RemovedBody816_389

def RemovedBody816_391 : StackLang.HolProg 64 :=
.seq RemovedBody816_385 RemovedBody816_390

def RemovedBody816_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 13

def RemovedBody816_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_401 : StackLang.HolProg 64 :=
.seq RemovedBody816_399 RemovedBody816_400

def RemovedBody816_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_403 : StackLang.HolProg 64 :=
.seq RemovedBody816_401 RemovedBody816_402

def RemovedBody816_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_405 : StackLang.HolProg 64 :=
.seq RemovedBody816_403 RemovedBody816_404

def RemovedBody816_406 : StackLang.HolProg 64 :=
.seq RemovedBody816_398 RemovedBody816_405

def RemovedBody816_407 : StackLang.HolProg 64 :=
.seq RemovedBody816_397 RemovedBody816_406

def RemovedBody816_408 : StackLang.HolProg 64 :=
.seq RemovedBody816_396 RemovedBody816_407

def RemovedBody816_409 : StackLang.HolProg 64 :=
.seq RemovedBody816_395 RemovedBody816_408

def RemovedBody816_410 : StackLang.HolProg 64 :=
.seq RemovedBody816_394 RemovedBody816_409

def RemovedBody816_411 : StackLang.HolProg 64 :=
.seq RemovedBody816_393 RemovedBody816_410

def RemovedBody816_412 : StackLang.HolProg 64 :=
.seq RemovedBody816_392 RemovedBody816_411

def RemovedBody816_413 : StackLang.HolProg 64 :=
.seq RemovedBody816_391 RemovedBody816_412

def RemovedBody816_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_421 : StackLang.HolProg 64 :=
.seq RemovedBody816_419 RemovedBody816_420

def RemovedBody816_422 : StackLang.HolProg 64 :=
.seq RemovedBody816_418 RemovedBody816_421

def RemovedBody816_423 : StackLang.HolProg 64 :=
.seq RemovedBody816_417 RemovedBody816_422

def RemovedBody816_424 : StackLang.HolProg 64 :=
.seq RemovedBody816_416 RemovedBody816_423

def RemovedBody816_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_426 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_427 : StackLang.HolProg 64 :=
.seq RemovedBody816_425 RemovedBody816_426

def RemovedBody816_428 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_424, 0, 816, 12)) (Sum.inl 70) (some (RemovedBody816_427, 816, 13))

def RemovedBody816_429 : StackLang.HolProg 64 :=
.seq RemovedBody816_415 RemovedBody816_428

def RemovedBody816_430 : StackLang.HolProg 64 :=
.seq RemovedBody816_414 RemovedBody816_429

def RemovedBody816_431 : StackLang.HolProg 64 :=
.seq RemovedBody816_413 RemovedBody816_430

def RemovedBody816_432 : StackLang.HolProg 64 :=
.seq RemovedBody816_384 RemovedBody816_431

def RemovedBody816_433 : StackLang.HolProg 64 :=
.seq RemovedBody816_381 RemovedBody816_432

def RemovedBody816_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody816_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody816_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody816_439 : StackLang.HolProg 64 :=
.seq RemovedBody816_437 RemovedBody816_438

def RemovedBody816_440 : StackLang.HolProg 64 :=
.seq RemovedBody816_436 RemovedBody816_439

def RemovedBody816_441 : StackLang.HolProg 64 :=
.seq RemovedBody816_435 RemovedBody816_440

def RemovedBody816_442 : StackLang.HolProg 64 :=
.seq RemovedBody816_434 RemovedBody816_441

def RemovedBody816_443 : StackLang.HolProg 64 :=
.seq RemovedBody816_433 RemovedBody816_442

def RemovedBody816_444 : StackLang.HolProg 64 :=
.seq RemovedBody816_380 RemovedBody816_443

def RemovedBody816_445 : StackLang.HolProg 64 :=
.seq RemovedBody816_375 RemovedBody816_444

def RemovedBody816_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody816_445 RemovedBody816_446

def RemovedBody816_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody816_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_452 : StackLang.HolProg 64 :=
.seq RemovedBody816_450 RemovedBody816_451

def RemovedBody816_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4065#64)

def RemovedBody816_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_456 : StackLang.HolProg 64 :=
.seq RemovedBody816_454 RemovedBody816_455

def RemovedBody816_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_460 : StackLang.HolProg 64 :=
.seq RemovedBody816_458 RemovedBody816_459

def RemovedBody816_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_462 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_460 RemovedBody816_461

def RemovedBody816_463 : StackLang.HolProg 64 :=
.seq RemovedBody816_457 RemovedBody816_462

def RemovedBody816_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 15

def RemovedBody816_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_473 : StackLang.HolProg 64 :=
.seq RemovedBody816_471 RemovedBody816_472

def RemovedBody816_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_475 : StackLang.HolProg 64 :=
.seq RemovedBody816_473 RemovedBody816_474

def RemovedBody816_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_477 : StackLang.HolProg 64 :=
.seq RemovedBody816_475 RemovedBody816_476

def RemovedBody816_478 : StackLang.HolProg 64 :=
.seq RemovedBody816_470 RemovedBody816_477

def RemovedBody816_479 : StackLang.HolProg 64 :=
.seq RemovedBody816_469 RemovedBody816_478

def RemovedBody816_480 : StackLang.HolProg 64 :=
.seq RemovedBody816_468 RemovedBody816_479

def RemovedBody816_481 : StackLang.HolProg 64 :=
.seq RemovedBody816_467 RemovedBody816_480

def RemovedBody816_482 : StackLang.HolProg 64 :=
.seq RemovedBody816_466 RemovedBody816_481

def RemovedBody816_483 : StackLang.HolProg 64 :=
.seq RemovedBody816_465 RemovedBody816_482

def RemovedBody816_484 : StackLang.HolProg 64 :=
.seq RemovedBody816_464 RemovedBody816_483

def RemovedBody816_485 : StackLang.HolProg 64 :=
.seq RemovedBody816_463 RemovedBody816_484

def RemovedBody816_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_496 : StackLang.HolProg 64 :=
.seq RemovedBody816_494 RemovedBody816_495

def RemovedBody816_497 : StackLang.HolProg 64 :=
.seq RemovedBody816_493 RemovedBody816_496

def RemovedBody816_498 : StackLang.HolProg 64 :=
.seq RemovedBody816_492 RemovedBody816_497

def RemovedBody816_499 : StackLang.HolProg 64 :=
.seq RemovedBody816_491 RemovedBody816_498

def RemovedBody816_500 : StackLang.HolProg 64 :=
.seq RemovedBody816_490 RemovedBody816_499

def RemovedBody816_501 : StackLang.HolProg 64 :=
.seq RemovedBody816_489 RemovedBody816_500

def RemovedBody816_502 : StackLang.HolProg 64 :=
.seq RemovedBody816_488 RemovedBody816_501

def RemovedBody816_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody816_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody816_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_507 : StackLang.HolProg 64 :=
.seq RemovedBody816_505 RemovedBody816_506

def RemovedBody816_508 : StackLang.HolProg 64 :=
.seq RemovedBody816_504 RemovedBody816_507

def RemovedBody816_509 : StackLang.HolProg 64 :=
.seq RemovedBody816_503 RemovedBody816_508

def RemovedBody816_510 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_511 : StackLang.HolProg 64 :=
.seq RemovedBody816_509 RemovedBody816_510

def RemovedBody816_512 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_502, 0, 816, 14)) (Sum.inl 804) (some (RemovedBody816_511, 816, 15))

def RemovedBody816_513 : StackLang.HolProg 64 :=
.seq RemovedBody816_487 RemovedBody816_512

def RemovedBody816_514 : StackLang.HolProg 64 :=
.seq RemovedBody816_486 RemovedBody816_513

def RemovedBody816_515 : StackLang.HolProg 64 :=
.seq RemovedBody816_485 RemovedBody816_514

def RemovedBody816_516 : StackLang.HolProg 64 :=
.seq RemovedBody816_456 RemovedBody816_515

def RemovedBody816_517 : StackLang.HolProg 64 :=
.seq RemovedBody816_453 RemovedBody816_516

def RemovedBody816_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody816_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4066#64)

def RemovedBody816_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_523 : StackLang.HolProg 64 :=
.seq RemovedBody816_521 RemovedBody816_522

def RemovedBody816_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_527 : StackLang.HolProg 64 :=
.seq RemovedBody816_525 RemovedBody816_526

def RemovedBody816_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_529 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_527 RemovedBody816_528

def RemovedBody816_530 : StackLang.HolProg 64 :=
.seq RemovedBody816_524 RemovedBody816_529

def RemovedBody816_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 17

def RemovedBody816_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_540 : StackLang.HolProg 64 :=
.seq RemovedBody816_538 RemovedBody816_539

def RemovedBody816_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_542 : StackLang.HolProg 64 :=
.seq RemovedBody816_540 RemovedBody816_541

def RemovedBody816_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_544 : StackLang.HolProg 64 :=
.seq RemovedBody816_542 RemovedBody816_543

def RemovedBody816_545 : StackLang.HolProg 64 :=
.seq RemovedBody816_537 RemovedBody816_544

def RemovedBody816_546 : StackLang.HolProg 64 :=
.seq RemovedBody816_536 RemovedBody816_545

def RemovedBody816_547 : StackLang.HolProg 64 :=
.seq RemovedBody816_535 RemovedBody816_546

def RemovedBody816_548 : StackLang.HolProg 64 :=
.seq RemovedBody816_534 RemovedBody816_547

def RemovedBody816_549 : StackLang.HolProg 64 :=
.seq RemovedBody816_533 RemovedBody816_548

def RemovedBody816_550 : StackLang.HolProg 64 :=
.seq RemovedBody816_532 RemovedBody816_549

def RemovedBody816_551 : StackLang.HolProg 64 :=
.seq RemovedBody816_531 RemovedBody816_550

def RemovedBody816_552 : StackLang.HolProg 64 :=
.seq RemovedBody816_530 RemovedBody816_551

def RemovedBody816_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_560 : StackLang.HolProg 64 :=
.seq RemovedBody816_558 RemovedBody816_559

def RemovedBody816_561 : StackLang.HolProg 64 :=
.seq RemovedBody816_557 RemovedBody816_560

def RemovedBody816_562 : StackLang.HolProg 64 :=
.seq RemovedBody816_556 RemovedBody816_561

def RemovedBody816_563 : StackLang.HolProg 64 :=
.seq RemovedBody816_555 RemovedBody816_562

def RemovedBody816_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody816_565 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_566 : StackLang.HolProg 64 :=
.seq RemovedBody816_564 RemovedBody816_565

def RemovedBody816_567 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_563, 0, 816, 16)) (Sum.inl 788) (some (RemovedBody816_566, 816, 17))

def RemovedBody816_568 : StackLang.HolProg 64 :=
.seq RemovedBody816_554 RemovedBody816_567

def RemovedBody816_569 : StackLang.HolProg 64 :=
.seq RemovedBody816_553 RemovedBody816_568

def RemovedBody816_570 : StackLang.HolProg 64 :=
.seq RemovedBody816_552 RemovedBody816_569

def RemovedBody816_571 : StackLang.HolProg 64 :=
.seq RemovedBody816_523 RemovedBody816_570

def RemovedBody816_572 : StackLang.HolProg 64 :=
.seq RemovedBody816_520 RemovedBody816_571

def RemovedBody816_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody816_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4067#64)

def RemovedBody816_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_578 : StackLang.HolProg 64 :=
.seq RemovedBody816_576 RemovedBody816_577

def RemovedBody816_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody816_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody816_582 : StackLang.HolProg 64 :=
.seq RemovedBody816_580 RemovedBody816_581

def RemovedBody816_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_584 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody816_582 RemovedBody816_583

def RemovedBody816_585 : StackLang.HolProg 64 :=
.seq RemovedBody816_579 RemovedBody816_584

def RemovedBody816_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody816_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody816_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 816 19

def RemovedBody816_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody816_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody816_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody816_595 : StackLang.HolProg 64 :=
.seq RemovedBody816_593 RemovedBody816_594

def RemovedBody816_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody816_597 : StackLang.HolProg 64 :=
.seq RemovedBody816_595 RemovedBody816_596

def RemovedBody816_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_599 : StackLang.HolProg 64 :=
.seq RemovedBody816_597 RemovedBody816_598

def RemovedBody816_600 : StackLang.HolProg 64 :=
.seq RemovedBody816_592 RemovedBody816_599

def RemovedBody816_601 : StackLang.HolProg 64 :=
.seq RemovedBody816_591 RemovedBody816_600

def RemovedBody816_602 : StackLang.HolProg 64 :=
.seq RemovedBody816_590 RemovedBody816_601

def RemovedBody816_603 : StackLang.HolProg 64 :=
.seq RemovedBody816_589 RemovedBody816_602

def RemovedBody816_604 : StackLang.HolProg 64 :=
.seq RemovedBody816_588 RemovedBody816_603

def RemovedBody816_605 : StackLang.HolProg 64 :=
.seq RemovedBody816_587 RemovedBody816_604

def RemovedBody816_606 : StackLang.HolProg 64 :=
.seq RemovedBody816_586 RemovedBody816_605

def RemovedBody816_607 : StackLang.HolProg 64 :=
.seq RemovedBody816_585 RemovedBody816_606

def RemovedBody816_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody816_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody816_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody816_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody816_615 : StackLang.HolProg 64 :=
.seq RemovedBody816_613 RemovedBody816_614

def RemovedBody816_616 : StackLang.HolProg 64 :=
.seq RemovedBody816_612 RemovedBody816_615

def RemovedBody816_617 : StackLang.HolProg 64 :=
.seq RemovedBody816_611 RemovedBody816_616

def RemovedBody816_618 : StackLang.HolProg 64 :=
.seq RemovedBody816_610 RemovedBody816_617

def RemovedBody816_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody816_620 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody816_621 : StackLang.HolProg 64 :=
.seq RemovedBody816_619 RemovedBody816_620

def RemovedBody816_622 : StackLang.HolProg 64 :=
.call (some (RemovedBody816_618, 0, 816, 18)) (Sum.inl 70) (some (RemovedBody816_621, 816, 19))

def RemovedBody816_623 : StackLang.HolProg 64 :=
.seq RemovedBody816_609 RemovedBody816_622

def RemovedBody816_624 : StackLang.HolProg 64 :=
.seq RemovedBody816_608 RemovedBody816_623

def RemovedBody816_625 : StackLang.HolProg 64 :=
.seq RemovedBody816_607 RemovedBody816_624

def RemovedBody816_626 : StackLang.HolProg 64 :=
.seq RemovedBody816_578 RemovedBody816_625

def RemovedBody816_627 : StackLang.HolProg 64 :=
.seq RemovedBody816_575 RemovedBody816_626

def RemovedBody816_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody816_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody816_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody816_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody816_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody816_633 : StackLang.HolProg 64 :=
.seq RemovedBody816_631 RemovedBody816_632

def RemovedBody816_634 : StackLang.HolProg 64 :=
.seq RemovedBody816_630 RemovedBody816_633

def RemovedBody816_635 : StackLang.HolProg 64 :=
.seq RemovedBody816_629 RemovedBody816_634

def RemovedBody816_636 : StackLang.HolProg 64 :=
.seq RemovedBody816_628 RemovedBody816_635

def RemovedBody816_637 : StackLang.HolProg 64 :=
.seq RemovedBody816_627 RemovedBody816_636

def RemovedBody816_638 : StackLang.HolProg 64 :=
.seq RemovedBody816_574 RemovedBody816_637

def RemovedBody816_639 : StackLang.HolProg 64 :=
.seq RemovedBody816_573 RemovedBody816_638

def RemovedBody816_640 : StackLang.HolProg 64 :=
.seq RemovedBody816_572 RemovedBody816_639

def RemovedBody816_641 : StackLang.HolProg 64 :=
.seq RemovedBody816_519 RemovedBody816_640

def RemovedBody816_642 : StackLang.HolProg 64 :=
.seq RemovedBody816_518 RemovedBody816_641

def RemovedBody816_643 : StackLang.HolProg 64 :=
.seq RemovedBody816_517 RemovedBody816_642

def RemovedBody816_644 : StackLang.HolProg 64 :=
.seq RemovedBody816_452 RemovedBody816_643

def RemovedBody816_645 : StackLang.HolProg 64 :=
.seq RemovedBody816_449 RemovedBody816_644

def RemovedBody816_646 : StackLang.HolProg 64 :=
.seq RemovedBody816_448 RemovedBody816_645

def RemovedBody816_647 : StackLang.HolProg 64 :=
.seq RemovedBody816_447 RemovedBody816_646

def RemovedBody816_648 : StackLang.HolProg 64 :=
.seq RemovedBody816_374 RemovedBody816_647

def RemovedBody816_649 : StackLang.HolProg 64 :=
.seq RemovedBody816_373 RemovedBody816_648

def RemovedBody816_650 : StackLang.HolProg 64 :=
.seq RemovedBody816_372 RemovedBody816_649

def RemovedBody816_651 : StackLang.HolProg 64 :=
.seq RemovedBody816_371 RemovedBody816_650

def RemovedBody816_652 : StackLang.HolProg 64 :=
.seq RemovedBody816_268 RemovedBody816_651

def RemovedBody816_653 : StackLang.HolProg 64 :=
.seq RemovedBody816_267 RemovedBody816_652

def RemovedBody816_654 : StackLang.HolProg 64 :=
.seq RemovedBody816_266 RemovedBody816_653

def RemovedBody816_655 : StackLang.HolProg 64 :=
.seq RemovedBody816_265 RemovedBody816_654

def RemovedBody816_656 : StackLang.HolProg 64 :=
.seq RemovedBody816_190 RemovedBody816_655

def RemovedBody816_657 : StackLang.HolProg 64 :=
.seq RemovedBody816_183 RemovedBody816_656

def RemovedBody816_658 : StackLang.HolProg 64 :=
.seq RemovedBody816_182 RemovedBody816_657

def RemovedBody816_659 : StackLang.HolProg 64 :=
.seq RemovedBody816_123 RemovedBody816_658

def RemovedBody816_660 : StackLang.HolProg 64 :=
.seq RemovedBody816_122 RemovedBody816_659

def RemovedBody816_661 : StackLang.HolProg 64 :=
.seq RemovedBody816_121 RemovedBody816_660

def RemovedBody816_662 : StackLang.HolProg 64 :=
.seq RemovedBody816_120 RemovedBody816_661

def RemovedBody816_663 : StackLang.HolProg 64 :=
.seq RemovedBody816_67 RemovedBody816_662

def RemovedBody816_664 : StackLang.HolProg 64 :=
.seq RemovedBody816_66 RemovedBody816_663

def RemovedBody816_665 : StackLang.HolProg 64 :=
.seq RemovedBody816_65 RemovedBody816_664

def RemovedBody816_666 : StackLang.HolProg 64 :=
.seq RemovedBody816_64 RemovedBody816_665

def RemovedBody816_667 : StackLang.HolProg 64 :=
.seq RemovedBody816_11 RemovedBody816_666

def RemovedBody816_668 : StackLang.HolProg 64 :=
.seq RemovedBody816_6 RemovedBody816_667

def Removed816 : Nat × StackLang.HolProg 64 := (816, RemovedBody816_668)
theorem Removed816_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc816 = Removed816 := by
  kernel_rfl
#print axioms Removed816_eq
end InitECandidate.Proofs.BackendStages
