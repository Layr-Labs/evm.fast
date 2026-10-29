import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc699
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody699_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody699_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_3 : StackLang.HolProg 64 :=
.seq RemovedBody699_1 RemovedBody699_2

def RemovedBody699_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_3 RemovedBody699_4

def RemovedBody699_6 : StackLang.HolProg 64 :=
.seq RemovedBody699_0 RemovedBody699_5

def RemovedBody699_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody699_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody699_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_10 : StackLang.HolProg 64 :=
.seq RemovedBody699_8 RemovedBody699_9

def RemovedBody699_11 : StackLang.HolProg 64 :=
.seq RemovedBody699_7 RemovedBody699_10

def RemovedBody699_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3086#64)

def RemovedBody699_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_15 : StackLang.HolProg 64 :=
.seq RemovedBody699_13 RemovedBody699_14

def RemovedBody699_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_19 : StackLang.HolProg 64 :=
.seq RemovedBody699_17 RemovedBody699_18

def RemovedBody699_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_19 RemovedBody699_20

def RemovedBody699_22 : StackLang.HolProg 64 :=
.seq RemovedBody699_16 RemovedBody699_21

def RemovedBody699_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 3

def RemovedBody699_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_32 : StackLang.HolProg 64 :=
.seq RemovedBody699_30 RemovedBody699_31

def RemovedBody699_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_34 : StackLang.HolProg 64 :=
.seq RemovedBody699_32 RemovedBody699_33

def RemovedBody699_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_36 : StackLang.HolProg 64 :=
.seq RemovedBody699_34 RemovedBody699_35

def RemovedBody699_37 : StackLang.HolProg 64 :=
.seq RemovedBody699_29 RemovedBody699_36

def RemovedBody699_38 : StackLang.HolProg 64 :=
.seq RemovedBody699_28 RemovedBody699_37

def RemovedBody699_39 : StackLang.HolProg 64 :=
.seq RemovedBody699_27 RemovedBody699_38

def RemovedBody699_40 : StackLang.HolProg 64 :=
.seq RemovedBody699_26 RemovedBody699_39

def RemovedBody699_41 : StackLang.HolProg 64 :=
.seq RemovedBody699_25 RemovedBody699_40

def RemovedBody699_42 : StackLang.HolProg 64 :=
.seq RemovedBody699_24 RemovedBody699_41

def RemovedBody699_43 : StackLang.HolProg 64 :=
.seq RemovedBody699_23 RemovedBody699_42

def RemovedBody699_44 : StackLang.HolProg 64 :=
.seq RemovedBody699_22 RemovedBody699_43

def RemovedBody699_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody699_52 : StackLang.HolProg 64 :=
.seq RemovedBody699_50 RemovedBody699_51

def RemovedBody699_53 : StackLang.HolProg 64 :=
.seq RemovedBody699_49 RemovedBody699_52

def RemovedBody699_54 : StackLang.HolProg 64 :=
.seq RemovedBody699_48 RemovedBody699_53

def RemovedBody699_55 : StackLang.HolProg 64 :=
.seq RemovedBody699_47 RemovedBody699_54

def RemovedBody699_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_58 : StackLang.HolProg 64 :=
.seq RemovedBody699_56 RemovedBody699_57

def RemovedBody699_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_55, 0, 699, 2)) (Sum.inl 69) (some (RemovedBody699_58, 699, 3))

def RemovedBody699_60 : StackLang.HolProg 64 :=
.seq RemovedBody699_46 RemovedBody699_59

def RemovedBody699_61 : StackLang.HolProg 64 :=
.seq RemovedBody699_45 RemovedBody699_60

def RemovedBody699_62 : StackLang.HolProg 64 :=
.seq RemovedBody699_44 RemovedBody699_61

def RemovedBody699_63 : StackLang.HolProg 64 :=
.seq RemovedBody699_15 RemovedBody699_62

def RemovedBody699_64 : StackLang.HolProg 64 :=
.seq RemovedBody699_12 RemovedBody699_63

def RemovedBody699_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody699_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody699_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3087#64)

def RemovedBody699_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_71 : StackLang.HolProg 64 :=
.seq RemovedBody699_69 RemovedBody699_70

def RemovedBody699_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_75 : StackLang.HolProg 64 :=
.seq RemovedBody699_73 RemovedBody699_74

def RemovedBody699_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_75 RemovedBody699_76

def RemovedBody699_78 : StackLang.HolProg 64 :=
.seq RemovedBody699_72 RemovedBody699_77

def RemovedBody699_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 5

def RemovedBody699_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_88 : StackLang.HolProg 64 :=
.seq RemovedBody699_86 RemovedBody699_87

def RemovedBody699_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_90 : StackLang.HolProg 64 :=
.seq RemovedBody699_88 RemovedBody699_89

def RemovedBody699_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_92 : StackLang.HolProg 64 :=
.seq RemovedBody699_90 RemovedBody699_91

def RemovedBody699_93 : StackLang.HolProg 64 :=
.seq RemovedBody699_85 RemovedBody699_92

def RemovedBody699_94 : StackLang.HolProg 64 :=
.seq RemovedBody699_84 RemovedBody699_93

def RemovedBody699_95 : StackLang.HolProg 64 :=
.seq RemovedBody699_83 RemovedBody699_94

def RemovedBody699_96 : StackLang.HolProg 64 :=
.seq RemovedBody699_82 RemovedBody699_95

def RemovedBody699_97 : StackLang.HolProg 64 :=
.seq RemovedBody699_81 RemovedBody699_96

def RemovedBody699_98 : StackLang.HolProg 64 :=
.seq RemovedBody699_80 RemovedBody699_97

def RemovedBody699_99 : StackLang.HolProg 64 :=
.seq RemovedBody699_79 RemovedBody699_98

def RemovedBody699_100 : StackLang.HolProg 64 :=
.seq RemovedBody699_78 RemovedBody699_99

def RemovedBody699_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody699_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_109 : StackLang.HolProg 64 :=
.seq RemovedBody699_107 RemovedBody699_108

def RemovedBody699_110 : StackLang.HolProg 64 :=
.seq RemovedBody699_106 RemovedBody699_109

def RemovedBody699_111 : StackLang.HolProg 64 :=
.seq RemovedBody699_105 RemovedBody699_110

def RemovedBody699_112 : StackLang.HolProg 64 :=
.seq RemovedBody699_104 RemovedBody699_111

def RemovedBody699_113 : StackLang.HolProg 64 :=
.seq RemovedBody699_103 RemovedBody699_112

def RemovedBody699_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_116 : StackLang.HolProg 64 :=
.seq RemovedBody699_114 RemovedBody699_115

def RemovedBody699_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_113, 0, 699, 4)) (Sum.inl 68) (some (RemovedBody699_116, 699, 5))

def RemovedBody699_118 : StackLang.HolProg 64 :=
.seq RemovedBody699_102 RemovedBody699_117

def RemovedBody699_119 : StackLang.HolProg 64 :=
.seq RemovedBody699_101 RemovedBody699_118

def RemovedBody699_120 : StackLang.HolProg 64 :=
.seq RemovedBody699_100 RemovedBody699_119

def RemovedBody699_121 : StackLang.HolProg 64 :=
.seq RemovedBody699_71 RemovedBody699_120

def RemovedBody699_122 : StackLang.HolProg 64 :=
.seq RemovedBody699_68 RemovedBody699_121

def RemovedBody699_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody699_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_127 : StackLang.HolProg 64 :=
.seq RemovedBody699_125 RemovedBody699_126

def RemovedBody699_128 : StackLang.HolProg 64 :=
.seq RemovedBody699_124 RemovedBody699_127

def RemovedBody699_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3088#64)

def RemovedBody699_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_132 : StackLang.HolProg 64 :=
.seq RemovedBody699_130 RemovedBody699_131

def RemovedBody699_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_136 : StackLang.HolProg 64 :=
.seq RemovedBody699_134 RemovedBody699_135

def RemovedBody699_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_136 RemovedBody699_137

def RemovedBody699_139 : StackLang.HolProg 64 :=
.seq RemovedBody699_133 RemovedBody699_138

def RemovedBody699_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 7

def RemovedBody699_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_149 : StackLang.HolProg 64 :=
.seq RemovedBody699_147 RemovedBody699_148

def RemovedBody699_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_151 : StackLang.HolProg 64 :=
.seq RemovedBody699_149 RemovedBody699_150

def RemovedBody699_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_153 : StackLang.HolProg 64 :=
.seq RemovedBody699_151 RemovedBody699_152

def RemovedBody699_154 : StackLang.HolProg 64 :=
.seq RemovedBody699_146 RemovedBody699_153

def RemovedBody699_155 : StackLang.HolProg 64 :=
.seq RemovedBody699_145 RemovedBody699_154

def RemovedBody699_156 : StackLang.HolProg 64 :=
.seq RemovedBody699_144 RemovedBody699_155

def RemovedBody699_157 : StackLang.HolProg 64 :=
.seq RemovedBody699_143 RemovedBody699_156

def RemovedBody699_158 : StackLang.HolProg 64 :=
.seq RemovedBody699_142 RemovedBody699_157

def RemovedBody699_159 : StackLang.HolProg 64 :=
.seq RemovedBody699_141 RemovedBody699_158

def RemovedBody699_160 : StackLang.HolProg 64 :=
.seq RemovedBody699_140 RemovedBody699_159

def RemovedBody699_161 : StackLang.HolProg 64 :=
.seq RemovedBody699_139 RemovedBody699_160

def RemovedBody699_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody699_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_172 : StackLang.HolProg 64 :=
.seq RemovedBody699_170 RemovedBody699_171

def RemovedBody699_173 : StackLang.HolProg 64 :=
.seq RemovedBody699_169 RemovedBody699_172

def RemovedBody699_174 : StackLang.HolProg 64 :=
.seq RemovedBody699_168 RemovedBody699_173

def RemovedBody699_175 : StackLang.HolProg 64 :=
.seq RemovedBody699_167 RemovedBody699_174

def RemovedBody699_176 : StackLang.HolProg 64 :=
.seq RemovedBody699_166 RemovedBody699_175

def RemovedBody699_177 : StackLang.HolProg 64 :=
.seq RemovedBody699_165 RemovedBody699_176

def RemovedBody699_178 : StackLang.HolProg 64 :=
.seq RemovedBody699_164 RemovedBody699_177

def RemovedBody699_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_182 : StackLang.HolProg 64 :=
.seq RemovedBody699_180 RemovedBody699_181

def RemovedBody699_183 : StackLang.HolProg 64 :=
.seq RemovedBody699_179 RemovedBody699_182

def RemovedBody699_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_185 : StackLang.HolProg 64 :=
.seq RemovedBody699_183 RemovedBody699_184

def RemovedBody699_186 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_178, 0, 699, 6)) (Sum.inl 695) (some (RemovedBody699_185, 699, 7))

def RemovedBody699_187 : StackLang.HolProg 64 :=
.seq RemovedBody699_163 RemovedBody699_186

def RemovedBody699_188 : StackLang.HolProg 64 :=
.seq RemovedBody699_162 RemovedBody699_187

def RemovedBody699_189 : StackLang.HolProg 64 :=
.seq RemovedBody699_161 RemovedBody699_188

def RemovedBody699_190 : StackLang.HolProg 64 :=
.seq RemovedBody699_132 RemovedBody699_189

def RemovedBody699_191 : StackLang.HolProg 64 :=
.seq RemovedBody699_129 RemovedBody699_190

def RemovedBody699_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody699_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody699_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody699_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_199 : StackLang.HolProg 64 :=
.seq RemovedBody699_197 RemovedBody699_198

def RemovedBody699_200 : StackLang.HolProg 64 :=
.seq RemovedBody699_196 RemovedBody699_199

def RemovedBody699_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3089#64)

def RemovedBody699_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_204 : StackLang.HolProg 64 :=
.seq RemovedBody699_202 RemovedBody699_203

def RemovedBody699_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_208 : StackLang.HolProg 64 :=
.seq RemovedBody699_206 RemovedBody699_207

def RemovedBody699_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_208 RemovedBody699_209

def RemovedBody699_211 : StackLang.HolProg 64 :=
.seq RemovedBody699_205 RemovedBody699_210

def RemovedBody699_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 9

def RemovedBody699_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_221 : StackLang.HolProg 64 :=
.seq RemovedBody699_219 RemovedBody699_220

def RemovedBody699_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_223 : StackLang.HolProg 64 :=
.seq RemovedBody699_221 RemovedBody699_222

def RemovedBody699_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_225 : StackLang.HolProg 64 :=
.seq RemovedBody699_223 RemovedBody699_224

def RemovedBody699_226 : StackLang.HolProg 64 :=
.seq RemovedBody699_218 RemovedBody699_225

def RemovedBody699_227 : StackLang.HolProg 64 :=
.seq RemovedBody699_217 RemovedBody699_226

def RemovedBody699_228 : StackLang.HolProg 64 :=
.seq RemovedBody699_216 RemovedBody699_227

def RemovedBody699_229 : StackLang.HolProg 64 :=
.seq RemovedBody699_215 RemovedBody699_228

def RemovedBody699_230 : StackLang.HolProg 64 :=
.seq RemovedBody699_214 RemovedBody699_229

def RemovedBody699_231 : StackLang.HolProg 64 :=
.seq RemovedBody699_213 RemovedBody699_230

def RemovedBody699_232 : StackLang.HolProg 64 :=
.seq RemovedBody699_212 RemovedBody699_231

def RemovedBody699_233 : StackLang.HolProg 64 :=
.seq RemovedBody699_211 RemovedBody699_232

def RemovedBody699_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_241 : StackLang.HolProg 64 :=
.seq RemovedBody699_239 RemovedBody699_240

def RemovedBody699_242 : StackLang.HolProg 64 :=
.seq RemovedBody699_238 RemovedBody699_241

def RemovedBody699_243 : StackLang.HolProg 64 :=
.seq RemovedBody699_237 RemovedBody699_242

def RemovedBody699_244 : StackLang.HolProg 64 :=
.seq RemovedBody699_236 RemovedBody699_243

def RemovedBody699_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_247 : StackLang.HolProg 64 :=
.seq RemovedBody699_245 RemovedBody699_246

def RemovedBody699_248 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_244, 0, 699, 8)) (Sum.inl 70) (some (RemovedBody699_247, 699, 9))

def RemovedBody699_249 : StackLang.HolProg 64 :=
.seq RemovedBody699_235 RemovedBody699_248

def RemovedBody699_250 : StackLang.HolProg 64 :=
.seq RemovedBody699_234 RemovedBody699_249

def RemovedBody699_251 : StackLang.HolProg 64 :=
.seq RemovedBody699_233 RemovedBody699_250

def RemovedBody699_252 : StackLang.HolProg 64 :=
.seq RemovedBody699_204 RemovedBody699_251

def RemovedBody699_253 : StackLang.HolProg 64 :=
.seq RemovedBody699_201 RemovedBody699_252

def RemovedBody699_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody699_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody699_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody699_259 : StackLang.HolProg 64 :=
.seq RemovedBody699_257 RemovedBody699_258

def RemovedBody699_260 : StackLang.HolProg 64 :=
.seq RemovedBody699_256 RemovedBody699_259

def RemovedBody699_261 : StackLang.HolProg 64 :=
.seq RemovedBody699_255 RemovedBody699_260

def RemovedBody699_262 : StackLang.HolProg 64 :=
.seq RemovedBody699_254 RemovedBody699_261

def RemovedBody699_263 : StackLang.HolProg 64 :=
.seq RemovedBody699_253 RemovedBody699_262

def RemovedBody699_264 : StackLang.HolProg 64 :=
.seq RemovedBody699_200 RemovedBody699_263

def RemovedBody699_265 : StackLang.HolProg 64 :=
.seq RemovedBody699_195 RemovedBody699_264

def RemovedBody699_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody699_265 RemovedBody699_266

def RemovedBody699_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody699_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody699_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3090#64)

def RemovedBody699_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_277 : StackLang.HolProg 64 :=
.seq RemovedBody699_275 RemovedBody699_276

def RemovedBody699_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_281 : StackLang.HolProg 64 :=
.seq RemovedBody699_279 RemovedBody699_280

def RemovedBody699_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_281 RemovedBody699_282

def RemovedBody699_284 : StackLang.HolProg 64 :=
.seq RemovedBody699_278 RemovedBody699_283

def RemovedBody699_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 11

def RemovedBody699_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_294 : StackLang.HolProg 64 :=
.seq RemovedBody699_292 RemovedBody699_293

def RemovedBody699_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_296 : StackLang.HolProg 64 :=
.seq RemovedBody699_294 RemovedBody699_295

def RemovedBody699_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_298 : StackLang.HolProg 64 :=
.seq RemovedBody699_296 RemovedBody699_297

def RemovedBody699_299 : StackLang.HolProg 64 :=
.seq RemovedBody699_291 RemovedBody699_298

def RemovedBody699_300 : StackLang.HolProg 64 :=
.seq RemovedBody699_290 RemovedBody699_299

def RemovedBody699_301 : StackLang.HolProg 64 :=
.seq RemovedBody699_289 RemovedBody699_300

def RemovedBody699_302 : StackLang.HolProg 64 :=
.seq RemovedBody699_288 RemovedBody699_301

def RemovedBody699_303 : StackLang.HolProg 64 :=
.seq RemovedBody699_287 RemovedBody699_302

def RemovedBody699_304 : StackLang.HolProg 64 :=
.seq RemovedBody699_286 RemovedBody699_303

def RemovedBody699_305 : StackLang.HolProg 64 :=
.seq RemovedBody699_285 RemovedBody699_304

def RemovedBody699_306 : StackLang.HolProg 64 :=
.seq RemovedBody699_284 RemovedBody699_305

def RemovedBody699_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody699_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_315 : StackLang.HolProg 64 :=
.seq RemovedBody699_313 RemovedBody699_314

def RemovedBody699_316 : StackLang.HolProg 64 :=
.seq RemovedBody699_312 RemovedBody699_315

def RemovedBody699_317 : StackLang.HolProg 64 :=
.seq RemovedBody699_311 RemovedBody699_316

def RemovedBody699_318 : StackLang.HolProg 64 :=
.seq RemovedBody699_310 RemovedBody699_317

def RemovedBody699_319 : StackLang.HolProg 64 :=
.seq RemovedBody699_309 RemovedBody699_318

def RemovedBody699_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_321 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_322 : StackLang.HolProg 64 :=
.seq RemovedBody699_320 RemovedBody699_321

def RemovedBody699_323 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_319, 0, 699, 10)) (Sum.inl 146) (some (RemovedBody699_322, 699, 11))

def RemovedBody699_324 : StackLang.HolProg 64 :=
.seq RemovedBody699_308 RemovedBody699_323

def RemovedBody699_325 : StackLang.HolProg 64 :=
.seq RemovedBody699_307 RemovedBody699_324

def RemovedBody699_326 : StackLang.HolProg 64 :=
.seq RemovedBody699_306 RemovedBody699_325

def RemovedBody699_327 : StackLang.HolProg 64 :=
.seq RemovedBody699_277 RemovedBody699_326

def RemovedBody699_328 : StackLang.HolProg 64 :=
.seq RemovedBody699_274 RemovedBody699_327

def RemovedBody699_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody699_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody699_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody699_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody699_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody699_335 : StackLang.HolProg 64 :=
.seq RemovedBody699_333 RemovedBody699_334

def RemovedBody699_336 : StackLang.HolProg 64 :=
.seq RemovedBody699_332 RemovedBody699_335

def RemovedBody699_337 : StackLang.HolProg 64 :=
.seq RemovedBody699_331 RemovedBody699_336

def RemovedBody699_338 : StackLang.HolProg 64 :=
.seq RemovedBody699_330 RemovedBody699_337

def RemovedBody699_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody699_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody699_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_342 : StackLang.HolProg 64 :=
.seq RemovedBody699_340 RemovedBody699_341

def RemovedBody699_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3091#64)

def RemovedBody699_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_346 : StackLang.HolProg 64 :=
.seq RemovedBody699_344 RemovedBody699_345

def RemovedBody699_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_350 : StackLang.HolProg 64 :=
.seq RemovedBody699_348 RemovedBody699_349

def RemovedBody699_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_352 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_350 RemovedBody699_351

def RemovedBody699_353 : StackLang.HolProg 64 :=
.seq RemovedBody699_347 RemovedBody699_352

def RemovedBody699_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 13

def RemovedBody699_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_363 : StackLang.HolProg 64 :=
.seq RemovedBody699_361 RemovedBody699_362

def RemovedBody699_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_365 : StackLang.HolProg 64 :=
.seq RemovedBody699_363 RemovedBody699_364

def RemovedBody699_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_367 : StackLang.HolProg 64 :=
.seq RemovedBody699_365 RemovedBody699_366

def RemovedBody699_368 : StackLang.HolProg 64 :=
.seq RemovedBody699_360 RemovedBody699_367

def RemovedBody699_369 : StackLang.HolProg 64 :=
.seq RemovedBody699_359 RemovedBody699_368

def RemovedBody699_370 : StackLang.HolProg 64 :=
.seq RemovedBody699_358 RemovedBody699_369

def RemovedBody699_371 : StackLang.HolProg 64 :=
.seq RemovedBody699_357 RemovedBody699_370

def RemovedBody699_372 : StackLang.HolProg 64 :=
.seq RemovedBody699_356 RemovedBody699_371

def RemovedBody699_373 : StackLang.HolProg 64 :=
.seq RemovedBody699_355 RemovedBody699_372

def RemovedBody699_374 : StackLang.HolProg 64 :=
.seq RemovedBody699_354 RemovedBody699_373

def RemovedBody699_375 : StackLang.HolProg 64 :=
.seq RemovedBody699_353 RemovedBody699_374

def RemovedBody699_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody699_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody699_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody699_385 : StackLang.HolProg 64 :=
.seq RemovedBody699_383 RemovedBody699_384

def RemovedBody699_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_387 : StackLang.HolProg 64 :=
.seq RemovedBody699_385 RemovedBody699_386

def RemovedBody699_388 : StackLang.HolProg 64 :=
.seq RemovedBody699_382 RemovedBody699_387

def RemovedBody699_389 : StackLang.HolProg 64 :=
.seq RemovedBody699_381 RemovedBody699_388

def RemovedBody699_390 : StackLang.HolProg 64 :=
.seq RemovedBody699_380 RemovedBody699_389

def RemovedBody699_391 : StackLang.HolProg 64 :=
.seq RemovedBody699_379 RemovedBody699_390

def RemovedBody699_392 : StackLang.HolProg 64 :=
.seq RemovedBody699_378 RemovedBody699_391

def RemovedBody699_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody699_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody699_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody699_396 : StackLang.HolProg 64 :=
.seq RemovedBody699_394 RemovedBody699_395

def RemovedBody699_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_398 : StackLang.HolProg 64 :=
.seq RemovedBody699_396 RemovedBody699_397

def RemovedBody699_399 : StackLang.HolProg 64 :=
.seq RemovedBody699_393 RemovedBody699_398

def RemovedBody699_400 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_401 : StackLang.HolProg 64 :=
.seq RemovedBody699_399 RemovedBody699_400

def RemovedBody699_402 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_392, 0, 699, 12)) (Sum.inl 684) (some (RemovedBody699_401, 699, 13))

def RemovedBody699_403 : StackLang.HolProg 64 :=
.seq RemovedBody699_377 RemovedBody699_402

def RemovedBody699_404 : StackLang.HolProg 64 :=
.seq RemovedBody699_376 RemovedBody699_403

def RemovedBody699_405 : StackLang.HolProg 64 :=
.seq RemovedBody699_375 RemovedBody699_404

def RemovedBody699_406 : StackLang.HolProg 64 :=
.seq RemovedBody699_346 RemovedBody699_405

def RemovedBody699_407 : StackLang.HolProg 64 :=
.seq RemovedBody699_343 RemovedBody699_406

def RemovedBody699_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody699_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3092#64)

def RemovedBody699_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_413 : StackLang.HolProg 64 :=
.seq RemovedBody699_411 RemovedBody699_412

def RemovedBody699_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_417 : StackLang.HolProg 64 :=
.seq RemovedBody699_415 RemovedBody699_416

def RemovedBody699_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_419 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_417 RemovedBody699_418

def RemovedBody699_420 : StackLang.HolProg 64 :=
.seq RemovedBody699_414 RemovedBody699_419

def RemovedBody699_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 15

def RemovedBody699_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_430 : StackLang.HolProg 64 :=
.seq RemovedBody699_428 RemovedBody699_429

def RemovedBody699_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_432 : StackLang.HolProg 64 :=
.seq RemovedBody699_430 RemovedBody699_431

def RemovedBody699_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_434 : StackLang.HolProg 64 :=
.seq RemovedBody699_432 RemovedBody699_433

def RemovedBody699_435 : StackLang.HolProg 64 :=
.seq RemovedBody699_427 RemovedBody699_434

def RemovedBody699_436 : StackLang.HolProg 64 :=
.seq RemovedBody699_426 RemovedBody699_435

def RemovedBody699_437 : StackLang.HolProg 64 :=
.seq RemovedBody699_425 RemovedBody699_436

def RemovedBody699_438 : StackLang.HolProg 64 :=
.seq RemovedBody699_424 RemovedBody699_437

def RemovedBody699_439 : StackLang.HolProg 64 :=
.seq RemovedBody699_423 RemovedBody699_438

def RemovedBody699_440 : StackLang.HolProg 64 :=
.seq RemovedBody699_422 RemovedBody699_439

def RemovedBody699_441 : StackLang.HolProg 64 :=
.seq RemovedBody699_421 RemovedBody699_440

def RemovedBody699_442 : StackLang.HolProg 64 :=
.seq RemovedBody699_420 RemovedBody699_441

def RemovedBody699_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody699_450 : StackLang.HolProg 64 :=
.seq RemovedBody699_448 RemovedBody699_449

def RemovedBody699_451 : StackLang.HolProg 64 :=
.seq RemovedBody699_447 RemovedBody699_450

def RemovedBody699_452 : StackLang.HolProg 64 :=
.seq RemovedBody699_446 RemovedBody699_451

def RemovedBody699_453 : StackLang.HolProg 64 :=
.seq RemovedBody699_445 RemovedBody699_452

def RemovedBody699_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody699_455 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_456 : StackLang.HolProg 64 :=
.seq RemovedBody699_454 RemovedBody699_455

def RemovedBody699_457 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_453, 0, 699, 14)) (Sum.inl 697) (some (RemovedBody699_456, 699, 15))

def RemovedBody699_458 : StackLang.HolProg 64 :=
.seq RemovedBody699_444 RemovedBody699_457

def RemovedBody699_459 : StackLang.HolProg 64 :=
.seq RemovedBody699_443 RemovedBody699_458

def RemovedBody699_460 : StackLang.HolProg 64 :=
.seq RemovedBody699_442 RemovedBody699_459

def RemovedBody699_461 : StackLang.HolProg 64 :=
.seq RemovedBody699_413 RemovedBody699_460

def RemovedBody699_462 : StackLang.HolProg 64 :=
.seq RemovedBody699_410 RemovedBody699_461

def RemovedBody699_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody699_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3093#64)

def RemovedBody699_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_468 : StackLang.HolProg 64 :=
.seq RemovedBody699_466 RemovedBody699_467

def RemovedBody699_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody699_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody699_472 : StackLang.HolProg 64 :=
.seq RemovedBody699_470 RemovedBody699_471

def RemovedBody699_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_474 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody699_472 RemovedBody699_473

def RemovedBody699_475 : StackLang.HolProg 64 :=
.seq RemovedBody699_469 RemovedBody699_474

def RemovedBody699_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody699_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody699_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 17

def RemovedBody699_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody699_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody699_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody699_485 : StackLang.HolProg 64 :=
.seq RemovedBody699_483 RemovedBody699_484

def RemovedBody699_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody699_487 : StackLang.HolProg 64 :=
.seq RemovedBody699_485 RemovedBody699_486

def RemovedBody699_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_489 : StackLang.HolProg 64 :=
.seq RemovedBody699_487 RemovedBody699_488

def RemovedBody699_490 : StackLang.HolProg 64 :=
.seq RemovedBody699_482 RemovedBody699_489

def RemovedBody699_491 : StackLang.HolProg 64 :=
.seq RemovedBody699_481 RemovedBody699_490

def RemovedBody699_492 : StackLang.HolProg 64 :=
.seq RemovedBody699_480 RemovedBody699_491

def RemovedBody699_493 : StackLang.HolProg 64 :=
.seq RemovedBody699_479 RemovedBody699_492

def RemovedBody699_494 : StackLang.HolProg 64 :=
.seq RemovedBody699_478 RemovedBody699_493

def RemovedBody699_495 : StackLang.HolProg 64 :=
.seq RemovedBody699_477 RemovedBody699_494

def RemovedBody699_496 : StackLang.HolProg 64 :=
.seq RemovedBody699_476 RemovedBody699_495

def RemovedBody699_497 : StackLang.HolProg 64 :=
.seq RemovedBody699_475 RemovedBody699_496

def RemovedBody699_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody699_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody699_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody699_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody699_505 : StackLang.HolProg 64 :=
.seq RemovedBody699_503 RemovedBody699_504

def RemovedBody699_506 : StackLang.HolProg 64 :=
.seq RemovedBody699_502 RemovedBody699_505

def RemovedBody699_507 : StackLang.HolProg 64 :=
.seq RemovedBody699_501 RemovedBody699_506

def RemovedBody699_508 : StackLang.HolProg 64 :=
.seq RemovedBody699_500 RemovedBody699_507

def RemovedBody699_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody699_510 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody699_511 : StackLang.HolProg 64 :=
.seq RemovedBody699_509 RemovedBody699_510

def RemovedBody699_512 : StackLang.HolProg 64 :=
.call (some (RemovedBody699_508, 0, 699, 16)) (Sum.inl 70) (some (RemovedBody699_511, 699, 17))

def RemovedBody699_513 : StackLang.HolProg 64 :=
.seq RemovedBody699_499 RemovedBody699_512

def RemovedBody699_514 : StackLang.HolProg 64 :=
.seq RemovedBody699_498 RemovedBody699_513

def RemovedBody699_515 : StackLang.HolProg 64 :=
.seq RemovedBody699_497 RemovedBody699_514

def RemovedBody699_516 : StackLang.HolProg 64 :=
.seq RemovedBody699_468 RemovedBody699_515

def RemovedBody699_517 : StackLang.HolProg 64 :=
.seq RemovedBody699_465 RemovedBody699_516

def RemovedBody699_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody699_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody699_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody699_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody699_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody699_523 : StackLang.HolProg 64 :=
.seq RemovedBody699_521 RemovedBody699_522

def RemovedBody699_524 : StackLang.HolProg 64 :=
.seq RemovedBody699_520 RemovedBody699_523

def RemovedBody699_525 : StackLang.HolProg 64 :=
.seq RemovedBody699_519 RemovedBody699_524

def RemovedBody699_526 : StackLang.HolProg 64 :=
.seq RemovedBody699_518 RemovedBody699_525

def RemovedBody699_527 : StackLang.HolProg 64 :=
.seq RemovedBody699_517 RemovedBody699_526

def RemovedBody699_528 : StackLang.HolProg 64 :=
.seq RemovedBody699_464 RemovedBody699_527

def RemovedBody699_529 : StackLang.HolProg 64 :=
.seq RemovedBody699_463 RemovedBody699_528

def RemovedBody699_530 : StackLang.HolProg 64 :=
.seq RemovedBody699_462 RemovedBody699_529

def RemovedBody699_531 : StackLang.HolProg 64 :=
.seq RemovedBody699_409 RemovedBody699_530

def RemovedBody699_532 : StackLang.HolProg 64 :=
.seq RemovedBody699_408 RemovedBody699_531

def RemovedBody699_533 : StackLang.HolProg 64 :=
.seq RemovedBody699_407 RemovedBody699_532

def RemovedBody699_534 : StackLang.HolProg 64 :=
.seq RemovedBody699_342 RemovedBody699_533

def RemovedBody699_535 : StackLang.HolProg 64 :=
.seq RemovedBody699_339 RemovedBody699_534

def RemovedBody699_536 : StackLang.HolProg 64 :=
.seq RemovedBody699_338 RemovedBody699_535

def RemovedBody699_537 : StackLang.HolProg 64 :=
.seq RemovedBody699_329 RemovedBody699_536

def RemovedBody699_538 : StackLang.HolProg 64 :=
.seq RemovedBody699_328 RemovedBody699_537

def RemovedBody699_539 : StackLang.HolProg 64 :=
.seq RemovedBody699_273 RemovedBody699_538

def RemovedBody699_540 : StackLang.HolProg 64 :=
.seq RemovedBody699_272 RemovedBody699_539

def RemovedBody699_541 : StackLang.HolProg 64 :=
.seq RemovedBody699_271 RemovedBody699_540

def RemovedBody699_542 : StackLang.HolProg 64 :=
.seq RemovedBody699_270 RemovedBody699_541

def RemovedBody699_543 : StackLang.HolProg 64 :=
.seq RemovedBody699_269 RemovedBody699_542

def RemovedBody699_544 : StackLang.HolProg 64 :=
.seq RemovedBody699_268 RemovedBody699_543

def RemovedBody699_545 : StackLang.HolProg 64 :=
.seq RemovedBody699_267 RemovedBody699_544

def RemovedBody699_546 : StackLang.HolProg 64 :=
.seq RemovedBody699_194 RemovedBody699_545

def RemovedBody699_547 : StackLang.HolProg 64 :=
.seq RemovedBody699_193 RemovedBody699_546

def RemovedBody699_548 : StackLang.HolProg 64 :=
.seq RemovedBody699_192 RemovedBody699_547

def RemovedBody699_549 : StackLang.HolProg 64 :=
.seq RemovedBody699_191 RemovedBody699_548

def RemovedBody699_550 : StackLang.HolProg 64 :=
.seq RemovedBody699_128 RemovedBody699_549

def RemovedBody699_551 : StackLang.HolProg 64 :=
.seq RemovedBody699_123 RemovedBody699_550

def RemovedBody699_552 : StackLang.HolProg 64 :=
.seq RemovedBody699_122 RemovedBody699_551

def RemovedBody699_553 : StackLang.HolProg 64 :=
.seq RemovedBody699_67 RemovedBody699_552

def RemovedBody699_554 : StackLang.HolProg 64 :=
.seq RemovedBody699_66 RemovedBody699_553

def RemovedBody699_555 : StackLang.HolProg 64 :=
.seq RemovedBody699_65 RemovedBody699_554

def RemovedBody699_556 : StackLang.HolProg 64 :=
.seq RemovedBody699_64 RemovedBody699_555

def RemovedBody699_557 : StackLang.HolProg 64 :=
.seq RemovedBody699_11 RemovedBody699_556

def RemovedBody699_558 : StackLang.HolProg 64 :=
.seq RemovedBody699_6 RemovedBody699_557

def Removed699 : Nat × StackLang.HolProg 64 := (699, RemovedBody699_558)
theorem Removed699_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc699 = Removed699 := by
  kernel_rfl
#print axioms Removed699_eq
end InitECandidate.Proofs.BackendStages
