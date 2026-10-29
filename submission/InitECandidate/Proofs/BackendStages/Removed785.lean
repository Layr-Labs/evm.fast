import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc785
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody785_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody785_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_3 : StackLang.HolProg 64 :=
.seq RemovedBody785_1 RemovedBody785_2

def RemovedBody785_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_3 RemovedBody785_4

def RemovedBody785_6 : StackLang.HolProg 64 :=
.seq RemovedBody785_0 RemovedBody785_5

def RemovedBody785_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody785_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_10 : StackLang.HolProg 64 :=
.seq RemovedBody785_8 RemovedBody785_9

def RemovedBody785_11 : StackLang.HolProg 64 :=
.seq RemovedBody785_7 RemovedBody785_10

def RemovedBody785_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3625#64)

def RemovedBody785_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_15 : StackLang.HolProg 64 :=
.seq RemovedBody785_13 RemovedBody785_14

def RemovedBody785_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_19 : StackLang.HolProg 64 :=
.seq RemovedBody785_17 RemovedBody785_18

def RemovedBody785_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_19 RemovedBody785_20

def RemovedBody785_22 : StackLang.HolProg 64 :=
.seq RemovedBody785_16 RemovedBody785_21

def RemovedBody785_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 3

def RemovedBody785_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_32 : StackLang.HolProg 64 :=
.seq RemovedBody785_30 RemovedBody785_31

def RemovedBody785_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_34 : StackLang.HolProg 64 :=
.seq RemovedBody785_32 RemovedBody785_33

def RemovedBody785_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_36 : StackLang.HolProg 64 :=
.seq RemovedBody785_34 RemovedBody785_35

def RemovedBody785_37 : StackLang.HolProg 64 :=
.seq RemovedBody785_29 RemovedBody785_36

def RemovedBody785_38 : StackLang.HolProg 64 :=
.seq RemovedBody785_28 RemovedBody785_37

def RemovedBody785_39 : StackLang.HolProg 64 :=
.seq RemovedBody785_27 RemovedBody785_38

def RemovedBody785_40 : StackLang.HolProg 64 :=
.seq RemovedBody785_26 RemovedBody785_39

def RemovedBody785_41 : StackLang.HolProg 64 :=
.seq RemovedBody785_25 RemovedBody785_40

def RemovedBody785_42 : StackLang.HolProg 64 :=
.seq RemovedBody785_24 RemovedBody785_41

def RemovedBody785_43 : StackLang.HolProg 64 :=
.seq RemovedBody785_23 RemovedBody785_42

def RemovedBody785_44 : StackLang.HolProg 64 :=
.seq RemovedBody785_22 RemovedBody785_43

def RemovedBody785_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody785_52 : StackLang.HolProg 64 :=
.seq RemovedBody785_50 RemovedBody785_51

def RemovedBody785_53 : StackLang.HolProg 64 :=
.seq RemovedBody785_49 RemovedBody785_52

def RemovedBody785_54 : StackLang.HolProg 64 :=
.seq RemovedBody785_48 RemovedBody785_53

def RemovedBody785_55 : StackLang.HolProg 64 :=
.seq RemovedBody785_47 RemovedBody785_54

def RemovedBody785_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_58 : StackLang.HolProg 64 :=
.seq RemovedBody785_56 RemovedBody785_57

def RemovedBody785_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_55, 0, 785, 2)) (Sum.inl 69) (some (RemovedBody785_58, 785, 3))

def RemovedBody785_60 : StackLang.HolProg 64 :=
.seq RemovedBody785_46 RemovedBody785_59

def RemovedBody785_61 : StackLang.HolProg 64 :=
.seq RemovedBody785_45 RemovedBody785_60

def RemovedBody785_62 : StackLang.HolProg 64 :=
.seq RemovedBody785_44 RemovedBody785_61

def RemovedBody785_63 : StackLang.HolProg 64 :=
.seq RemovedBody785_15 RemovedBody785_62

def RemovedBody785_64 : StackLang.HolProg 64 :=
.seq RemovedBody785_12 RemovedBody785_63

def RemovedBody785_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody785_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody785_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3626#64)

def RemovedBody785_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_71 : StackLang.HolProg 64 :=
.seq RemovedBody785_69 RemovedBody785_70

def RemovedBody785_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_75 : StackLang.HolProg 64 :=
.seq RemovedBody785_73 RemovedBody785_74

def RemovedBody785_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_75 RemovedBody785_76

def RemovedBody785_78 : StackLang.HolProg 64 :=
.seq RemovedBody785_72 RemovedBody785_77

def RemovedBody785_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 5

def RemovedBody785_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_88 : StackLang.HolProg 64 :=
.seq RemovedBody785_86 RemovedBody785_87

def RemovedBody785_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_90 : StackLang.HolProg 64 :=
.seq RemovedBody785_88 RemovedBody785_89

def RemovedBody785_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_92 : StackLang.HolProg 64 :=
.seq RemovedBody785_90 RemovedBody785_91

def RemovedBody785_93 : StackLang.HolProg 64 :=
.seq RemovedBody785_85 RemovedBody785_92

def RemovedBody785_94 : StackLang.HolProg 64 :=
.seq RemovedBody785_84 RemovedBody785_93

def RemovedBody785_95 : StackLang.HolProg 64 :=
.seq RemovedBody785_83 RemovedBody785_94

def RemovedBody785_96 : StackLang.HolProg 64 :=
.seq RemovedBody785_82 RemovedBody785_95

def RemovedBody785_97 : StackLang.HolProg 64 :=
.seq RemovedBody785_81 RemovedBody785_96

def RemovedBody785_98 : StackLang.HolProg 64 :=
.seq RemovedBody785_80 RemovedBody785_97

def RemovedBody785_99 : StackLang.HolProg 64 :=
.seq RemovedBody785_79 RemovedBody785_98

def RemovedBody785_100 : StackLang.HolProg 64 :=
.seq RemovedBody785_78 RemovedBody785_99

def RemovedBody785_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody785_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_109 : StackLang.HolProg 64 :=
.seq RemovedBody785_107 RemovedBody785_108

def RemovedBody785_110 : StackLang.HolProg 64 :=
.seq RemovedBody785_106 RemovedBody785_109

def RemovedBody785_111 : StackLang.HolProg 64 :=
.seq RemovedBody785_105 RemovedBody785_110

def RemovedBody785_112 : StackLang.HolProg 64 :=
.seq RemovedBody785_104 RemovedBody785_111

def RemovedBody785_113 : StackLang.HolProg 64 :=
.seq RemovedBody785_103 RemovedBody785_112

def RemovedBody785_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_116 : StackLang.HolProg 64 :=
.seq RemovedBody785_114 RemovedBody785_115

def RemovedBody785_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_113, 0, 785, 4)) (Sum.inl 68) (some (RemovedBody785_116, 785, 5))

def RemovedBody785_118 : StackLang.HolProg 64 :=
.seq RemovedBody785_102 RemovedBody785_117

def RemovedBody785_119 : StackLang.HolProg 64 :=
.seq RemovedBody785_101 RemovedBody785_118

def RemovedBody785_120 : StackLang.HolProg 64 :=
.seq RemovedBody785_100 RemovedBody785_119

def RemovedBody785_121 : StackLang.HolProg 64 :=
.seq RemovedBody785_71 RemovedBody785_120

def RemovedBody785_122 : StackLang.HolProg 64 :=
.seq RemovedBody785_68 RemovedBody785_121

def RemovedBody785_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody785_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_127 : StackLang.HolProg 64 :=
.seq RemovedBody785_125 RemovedBody785_126

def RemovedBody785_128 : StackLang.HolProg 64 :=
.seq RemovedBody785_124 RemovedBody785_127

def RemovedBody785_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3627#64)

def RemovedBody785_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_132 : StackLang.HolProg 64 :=
.seq RemovedBody785_130 RemovedBody785_131

def RemovedBody785_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_136 : StackLang.HolProg 64 :=
.seq RemovedBody785_134 RemovedBody785_135

def RemovedBody785_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_136 RemovedBody785_137

def RemovedBody785_139 : StackLang.HolProg 64 :=
.seq RemovedBody785_133 RemovedBody785_138

def RemovedBody785_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 7

def RemovedBody785_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_149 : StackLang.HolProg 64 :=
.seq RemovedBody785_147 RemovedBody785_148

def RemovedBody785_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_151 : StackLang.HolProg 64 :=
.seq RemovedBody785_149 RemovedBody785_150

def RemovedBody785_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_153 : StackLang.HolProg 64 :=
.seq RemovedBody785_151 RemovedBody785_152

def RemovedBody785_154 : StackLang.HolProg 64 :=
.seq RemovedBody785_146 RemovedBody785_153

def RemovedBody785_155 : StackLang.HolProg 64 :=
.seq RemovedBody785_145 RemovedBody785_154

def RemovedBody785_156 : StackLang.HolProg 64 :=
.seq RemovedBody785_144 RemovedBody785_155

def RemovedBody785_157 : StackLang.HolProg 64 :=
.seq RemovedBody785_143 RemovedBody785_156

def RemovedBody785_158 : StackLang.HolProg 64 :=
.seq RemovedBody785_142 RemovedBody785_157

def RemovedBody785_159 : StackLang.HolProg 64 :=
.seq RemovedBody785_141 RemovedBody785_158

def RemovedBody785_160 : StackLang.HolProg 64 :=
.seq RemovedBody785_140 RemovedBody785_159

def RemovedBody785_161 : StackLang.HolProg 64 :=
.seq RemovedBody785_139 RemovedBody785_160

def RemovedBody785_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody785_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_171 : StackLang.HolProg 64 :=
.seq RemovedBody785_169 RemovedBody785_170

def RemovedBody785_172 : StackLang.HolProg 64 :=
.seq RemovedBody785_168 RemovedBody785_171

def RemovedBody785_173 : StackLang.HolProg 64 :=
.seq RemovedBody785_167 RemovedBody785_172

def RemovedBody785_174 : StackLang.HolProg 64 :=
.seq RemovedBody785_166 RemovedBody785_173

def RemovedBody785_175 : StackLang.HolProg 64 :=
.seq RemovedBody785_165 RemovedBody785_174

def RemovedBody785_176 : StackLang.HolProg 64 :=
.seq RemovedBody785_164 RemovedBody785_175

def RemovedBody785_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_179 : StackLang.HolProg 64 :=
.seq RemovedBody785_177 RemovedBody785_178

def RemovedBody785_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_181 : StackLang.HolProg 64 :=
.seq RemovedBody785_179 RemovedBody785_180

def RemovedBody785_182 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_176, 0, 785, 6)) (Sum.inl 779) (some (RemovedBody785_181, 785, 7))

def RemovedBody785_183 : StackLang.HolProg 64 :=
.seq RemovedBody785_163 RemovedBody785_182

def RemovedBody785_184 : StackLang.HolProg 64 :=
.seq RemovedBody785_162 RemovedBody785_183

def RemovedBody785_185 : StackLang.HolProg 64 :=
.seq RemovedBody785_161 RemovedBody785_184

def RemovedBody785_186 : StackLang.HolProg 64 :=
.seq RemovedBody785_132 RemovedBody785_185

def RemovedBody785_187 : StackLang.HolProg 64 :=
.seq RemovedBody785_129 RemovedBody785_186

def RemovedBody785_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody785_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def RemovedBody785_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody785_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_196 : StackLang.HolProg 64 :=
.seq RemovedBody785_194 RemovedBody785_195

def RemovedBody785_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody785_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody785_199 : StackLang.HolProg 64 :=
.seq RemovedBody785_197 RemovedBody785_198

def RemovedBody785_200 : StackLang.HolProg 64 :=
.seq RemovedBody785_196 RemovedBody785_199

def RemovedBody785_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3628#64)

def RemovedBody785_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_204 : StackLang.HolProg 64 :=
.seq RemovedBody785_202 RemovedBody785_203

def RemovedBody785_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_208 : StackLang.HolProg 64 :=
.seq RemovedBody785_206 RemovedBody785_207

def RemovedBody785_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_208 RemovedBody785_209

def RemovedBody785_211 : StackLang.HolProg 64 :=
.seq RemovedBody785_205 RemovedBody785_210

def RemovedBody785_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 9

def RemovedBody785_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_221 : StackLang.HolProg 64 :=
.seq RemovedBody785_219 RemovedBody785_220

def RemovedBody785_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_223 : StackLang.HolProg 64 :=
.seq RemovedBody785_221 RemovedBody785_222

def RemovedBody785_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_225 : StackLang.HolProg 64 :=
.seq RemovedBody785_223 RemovedBody785_224

def RemovedBody785_226 : StackLang.HolProg 64 :=
.seq RemovedBody785_218 RemovedBody785_225

def RemovedBody785_227 : StackLang.HolProg 64 :=
.seq RemovedBody785_217 RemovedBody785_226

def RemovedBody785_228 : StackLang.HolProg 64 :=
.seq RemovedBody785_216 RemovedBody785_227

def RemovedBody785_229 : StackLang.HolProg 64 :=
.seq RemovedBody785_215 RemovedBody785_228

def RemovedBody785_230 : StackLang.HolProg 64 :=
.seq RemovedBody785_214 RemovedBody785_229

def RemovedBody785_231 : StackLang.HolProg 64 :=
.seq RemovedBody785_213 RemovedBody785_230

def RemovedBody785_232 : StackLang.HolProg 64 :=
.seq RemovedBody785_212 RemovedBody785_231

def RemovedBody785_233 : StackLang.HolProg 64 :=
.seq RemovedBody785_211 RemovedBody785_232

def RemovedBody785_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody785_241 : StackLang.HolProg 64 :=
.seq RemovedBody785_239 RemovedBody785_240

def RemovedBody785_242 : StackLang.HolProg 64 :=
.seq RemovedBody785_238 RemovedBody785_241

def RemovedBody785_243 : StackLang.HolProg 64 :=
.seq RemovedBody785_237 RemovedBody785_242

def RemovedBody785_244 : StackLang.HolProg 64 :=
.seq RemovedBody785_236 RemovedBody785_243

def RemovedBody785_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody785_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_247 : StackLang.HolProg 64 :=
.seq RemovedBody785_245 RemovedBody785_246

def RemovedBody785_248 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_244, 0, 785, 8)) (Sum.inl 78) (some (RemovedBody785_247, 785, 9))

def RemovedBody785_249 : StackLang.HolProg 64 :=
.seq RemovedBody785_235 RemovedBody785_248

def RemovedBody785_250 : StackLang.HolProg 64 :=
.seq RemovedBody785_234 RemovedBody785_249

def RemovedBody785_251 : StackLang.HolProg 64 :=
.seq RemovedBody785_233 RemovedBody785_250

def RemovedBody785_252 : StackLang.HolProg 64 :=
.seq RemovedBody785_204 RemovedBody785_251

def RemovedBody785_253 : StackLang.HolProg 64 :=
.seq RemovedBody785_201 RemovedBody785_252

def RemovedBody785_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody785_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3629#64)

def RemovedBody785_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_259 : StackLang.HolProg 64 :=
.seq RemovedBody785_257 RemovedBody785_258

def RemovedBody785_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_263 : StackLang.HolProg 64 :=
.seq RemovedBody785_261 RemovedBody785_262

def RemovedBody785_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_263 RemovedBody785_264

def RemovedBody785_266 : StackLang.HolProg 64 :=
.seq RemovedBody785_260 RemovedBody785_265

def RemovedBody785_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 11

def RemovedBody785_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_276 : StackLang.HolProg 64 :=
.seq RemovedBody785_274 RemovedBody785_275

def RemovedBody785_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_278 : StackLang.HolProg 64 :=
.seq RemovedBody785_276 RemovedBody785_277

def RemovedBody785_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_280 : StackLang.HolProg 64 :=
.seq RemovedBody785_278 RemovedBody785_279

def RemovedBody785_281 : StackLang.HolProg 64 :=
.seq RemovedBody785_273 RemovedBody785_280

def RemovedBody785_282 : StackLang.HolProg 64 :=
.seq RemovedBody785_272 RemovedBody785_281

def RemovedBody785_283 : StackLang.HolProg 64 :=
.seq RemovedBody785_271 RemovedBody785_282

def RemovedBody785_284 : StackLang.HolProg 64 :=
.seq RemovedBody785_270 RemovedBody785_283

def RemovedBody785_285 : StackLang.HolProg 64 :=
.seq RemovedBody785_269 RemovedBody785_284

def RemovedBody785_286 : StackLang.HolProg 64 :=
.seq RemovedBody785_268 RemovedBody785_285

def RemovedBody785_287 : StackLang.HolProg 64 :=
.seq RemovedBody785_267 RemovedBody785_286

def RemovedBody785_288 : StackLang.HolProg 64 :=
.seq RemovedBody785_266 RemovedBody785_287

def RemovedBody785_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_296 : StackLang.HolProg 64 :=
.seq RemovedBody785_294 RemovedBody785_295

def RemovedBody785_297 : StackLang.HolProg 64 :=
.seq RemovedBody785_293 RemovedBody785_296

def RemovedBody785_298 : StackLang.HolProg 64 :=
.seq RemovedBody785_292 RemovedBody785_297

def RemovedBody785_299 : StackLang.HolProg 64 :=
.seq RemovedBody785_291 RemovedBody785_298

def RemovedBody785_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_301 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_302 : StackLang.HolProg 64 :=
.seq RemovedBody785_300 RemovedBody785_301

def RemovedBody785_303 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_299, 0, 785, 10)) (Sum.inl 70) (some (RemovedBody785_302, 785, 11))

def RemovedBody785_304 : StackLang.HolProg 64 :=
.seq RemovedBody785_290 RemovedBody785_303

def RemovedBody785_305 : StackLang.HolProg 64 :=
.seq RemovedBody785_289 RemovedBody785_304

def RemovedBody785_306 : StackLang.HolProg 64 :=
.seq RemovedBody785_288 RemovedBody785_305

def RemovedBody785_307 : StackLang.HolProg 64 :=
.seq RemovedBody785_259 RemovedBody785_306

def RemovedBody785_308 : StackLang.HolProg 64 :=
.seq RemovedBody785_256 RemovedBody785_307

def RemovedBody785_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody785_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody785_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody785_314 : StackLang.HolProg 64 :=
.seq RemovedBody785_312 RemovedBody785_313

def RemovedBody785_315 : StackLang.HolProg 64 :=
.seq RemovedBody785_311 RemovedBody785_314

def RemovedBody785_316 : StackLang.HolProg 64 :=
.seq RemovedBody785_310 RemovedBody785_315

def RemovedBody785_317 : StackLang.HolProg 64 :=
.seq RemovedBody785_309 RemovedBody785_316

def RemovedBody785_318 : StackLang.HolProg 64 :=
.seq RemovedBody785_308 RemovedBody785_317

def RemovedBody785_319 : StackLang.HolProg 64 :=
.seq RemovedBody785_255 RemovedBody785_318

def RemovedBody785_320 : StackLang.HolProg 64 :=
.seq RemovedBody785_254 RemovedBody785_319

def RemovedBody785_321 : StackLang.HolProg 64 :=
.seq RemovedBody785_253 RemovedBody785_320

def RemovedBody785_322 : StackLang.HolProg 64 :=
.seq RemovedBody785_200 RemovedBody785_321

def RemovedBody785_323 : StackLang.HolProg 64 :=
.seq RemovedBody785_193 RemovedBody785_322

def RemovedBody785_324 : StackLang.HolProg 64 :=
.seq RemovedBody785_192 RemovedBody785_323

def RemovedBody785_325 : StackLang.HolProg 64 :=
.seq RemovedBody785_191 RemovedBody785_324

def RemovedBody785_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_327 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody785_325 RemovedBody785_326

def RemovedBody785_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody785_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody785_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_334 : StackLang.HolProg 64 :=
.seq RemovedBody785_332 RemovedBody785_333

def RemovedBody785_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3630#64)

def RemovedBody785_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_338 : StackLang.HolProg 64 :=
.seq RemovedBody785_336 RemovedBody785_337

def RemovedBody785_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_342 : StackLang.HolProg 64 :=
.seq RemovedBody785_340 RemovedBody785_341

def RemovedBody785_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_344 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_342 RemovedBody785_343

def RemovedBody785_345 : StackLang.HolProg 64 :=
.seq RemovedBody785_339 RemovedBody785_344

def RemovedBody785_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 13

def RemovedBody785_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_355 : StackLang.HolProg 64 :=
.seq RemovedBody785_353 RemovedBody785_354

def RemovedBody785_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_357 : StackLang.HolProg 64 :=
.seq RemovedBody785_355 RemovedBody785_356

def RemovedBody785_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_359 : StackLang.HolProg 64 :=
.seq RemovedBody785_357 RemovedBody785_358

def RemovedBody785_360 : StackLang.HolProg 64 :=
.seq RemovedBody785_352 RemovedBody785_359

def RemovedBody785_361 : StackLang.HolProg 64 :=
.seq RemovedBody785_351 RemovedBody785_360

def RemovedBody785_362 : StackLang.HolProg 64 :=
.seq RemovedBody785_350 RemovedBody785_361

def RemovedBody785_363 : StackLang.HolProg 64 :=
.seq RemovedBody785_349 RemovedBody785_362

def RemovedBody785_364 : StackLang.HolProg 64 :=
.seq RemovedBody785_348 RemovedBody785_363

def RemovedBody785_365 : StackLang.HolProg 64 :=
.seq RemovedBody785_347 RemovedBody785_364

def RemovedBody785_366 : StackLang.HolProg 64 :=
.seq RemovedBody785_346 RemovedBody785_365

def RemovedBody785_367 : StackLang.HolProg 64 :=
.seq RemovedBody785_345 RemovedBody785_366

def RemovedBody785_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_377 : StackLang.HolProg 64 :=
.seq RemovedBody785_375 RemovedBody785_376

def RemovedBody785_378 : StackLang.HolProg 64 :=
.seq RemovedBody785_374 RemovedBody785_377

def RemovedBody785_379 : StackLang.HolProg 64 :=
.seq RemovedBody785_373 RemovedBody785_378

def RemovedBody785_380 : StackLang.HolProg 64 :=
.seq RemovedBody785_372 RemovedBody785_379

def RemovedBody785_381 : StackLang.HolProg 64 :=
.seq RemovedBody785_371 RemovedBody785_380

def RemovedBody785_382 : StackLang.HolProg 64 :=
.seq RemovedBody785_370 RemovedBody785_381

def RemovedBody785_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_386 : StackLang.HolProg 64 :=
.seq RemovedBody785_384 RemovedBody785_385

def RemovedBody785_387 : StackLang.HolProg 64 :=
.seq RemovedBody785_383 RemovedBody785_386

def RemovedBody785_388 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_389 : StackLang.HolProg 64 :=
.seq RemovedBody785_387 RemovedBody785_388

def RemovedBody785_390 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_382, 0, 785, 12)) (Sum.inl 743) (some (RemovedBody785_389, 785, 13))

def RemovedBody785_391 : StackLang.HolProg 64 :=
.seq RemovedBody785_369 RemovedBody785_390

def RemovedBody785_392 : StackLang.HolProg 64 :=
.seq RemovedBody785_368 RemovedBody785_391

def RemovedBody785_393 : StackLang.HolProg 64 :=
.seq RemovedBody785_367 RemovedBody785_392

def RemovedBody785_394 : StackLang.HolProg 64 :=
.seq RemovedBody785_338 RemovedBody785_393

def RemovedBody785_395 : StackLang.HolProg 64 :=
.seq RemovedBody785_335 RemovedBody785_394

def RemovedBody785_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody785_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_401 : StackLang.HolProg 64 :=
.seq RemovedBody785_399 RemovedBody785_400

def RemovedBody785_402 : StackLang.HolProg 64 :=
.seq RemovedBody785_398 RemovedBody785_401

def RemovedBody785_403 : StackLang.HolProg 64 :=
.seq RemovedBody785_397 RemovedBody785_402

def RemovedBody785_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3631#64)

def RemovedBody785_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_407 : StackLang.HolProg 64 :=
.seq RemovedBody785_405 RemovedBody785_406

def RemovedBody785_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_411 : StackLang.HolProg 64 :=
.seq RemovedBody785_409 RemovedBody785_410

def RemovedBody785_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_413 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_411 RemovedBody785_412

def RemovedBody785_414 : StackLang.HolProg 64 :=
.seq RemovedBody785_408 RemovedBody785_413

def RemovedBody785_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 15

def RemovedBody785_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_424 : StackLang.HolProg 64 :=
.seq RemovedBody785_422 RemovedBody785_423

def RemovedBody785_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_426 : StackLang.HolProg 64 :=
.seq RemovedBody785_424 RemovedBody785_425

def RemovedBody785_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_428 : StackLang.HolProg 64 :=
.seq RemovedBody785_426 RemovedBody785_427

def RemovedBody785_429 : StackLang.HolProg 64 :=
.seq RemovedBody785_421 RemovedBody785_428

def RemovedBody785_430 : StackLang.HolProg 64 :=
.seq RemovedBody785_420 RemovedBody785_429

def RemovedBody785_431 : StackLang.HolProg 64 :=
.seq RemovedBody785_419 RemovedBody785_430

def RemovedBody785_432 : StackLang.HolProg 64 :=
.seq RemovedBody785_418 RemovedBody785_431

def RemovedBody785_433 : StackLang.HolProg 64 :=
.seq RemovedBody785_417 RemovedBody785_432

def RemovedBody785_434 : StackLang.HolProg 64 :=
.seq RemovedBody785_416 RemovedBody785_433

def RemovedBody785_435 : StackLang.HolProg 64 :=
.seq RemovedBody785_415 RemovedBody785_434

def RemovedBody785_436 : StackLang.HolProg 64 :=
.seq RemovedBody785_414 RemovedBody785_435

def RemovedBody785_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_446 : StackLang.HolProg 64 :=
.seq RemovedBody785_444 RemovedBody785_445

def RemovedBody785_447 : StackLang.HolProg 64 :=
.seq RemovedBody785_443 RemovedBody785_446

def RemovedBody785_448 : StackLang.HolProg 64 :=
.seq RemovedBody785_442 RemovedBody785_447

def RemovedBody785_449 : StackLang.HolProg 64 :=
.seq RemovedBody785_441 RemovedBody785_448

def RemovedBody785_450 : StackLang.HolProg 64 :=
.seq RemovedBody785_440 RemovedBody785_449

def RemovedBody785_451 : StackLang.HolProg 64 :=
.seq RemovedBody785_439 RemovedBody785_450

def RemovedBody785_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody785_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_455 : StackLang.HolProg 64 :=
.seq RemovedBody785_453 RemovedBody785_454

def RemovedBody785_456 : StackLang.HolProg 64 :=
.seq RemovedBody785_452 RemovedBody785_455

def RemovedBody785_457 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_458 : StackLang.HolProg 64 :=
.seq RemovedBody785_456 RemovedBody785_457

def RemovedBody785_459 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_451, 0, 785, 14)) (Sum.inl 739) (some (RemovedBody785_458, 785, 15))

def RemovedBody785_460 : StackLang.HolProg 64 :=
.seq RemovedBody785_438 RemovedBody785_459

def RemovedBody785_461 : StackLang.HolProg 64 :=
.seq RemovedBody785_437 RemovedBody785_460

def RemovedBody785_462 : StackLang.HolProg 64 :=
.seq RemovedBody785_436 RemovedBody785_461

def RemovedBody785_463 : StackLang.HolProg 64 :=
.seq RemovedBody785_407 RemovedBody785_462

def RemovedBody785_464 : StackLang.HolProg 64 :=
.seq RemovedBody785_404 RemovedBody785_463

def RemovedBody785_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody785_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody785_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3632#64)

def RemovedBody785_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_474 : StackLang.HolProg 64 :=
.seq RemovedBody785_472 RemovedBody785_473

def RemovedBody785_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_478 : StackLang.HolProg 64 :=
.seq RemovedBody785_476 RemovedBody785_477

def RemovedBody785_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_480 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_478 RemovedBody785_479

def RemovedBody785_481 : StackLang.HolProg 64 :=
.seq RemovedBody785_475 RemovedBody785_480

def RemovedBody785_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 17

def RemovedBody785_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_491 : StackLang.HolProg 64 :=
.seq RemovedBody785_489 RemovedBody785_490

def RemovedBody785_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_493 : StackLang.HolProg 64 :=
.seq RemovedBody785_491 RemovedBody785_492

def RemovedBody785_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_495 : StackLang.HolProg 64 :=
.seq RemovedBody785_493 RemovedBody785_494

def RemovedBody785_496 : StackLang.HolProg 64 :=
.seq RemovedBody785_488 RemovedBody785_495

def RemovedBody785_497 : StackLang.HolProg 64 :=
.seq RemovedBody785_487 RemovedBody785_496

def RemovedBody785_498 : StackLang.HolProg 64 :=
.seq RemovedBody785_486 RemovedBody785_497

def RemovedBody785_499 : StackLang.HolProg 64 :=
.seq RemovedBody785_485 RemovedBody785_498

def RemovedBody785_500 : StackLang.HolProg 64 :=
.seq RemovedBody785_484 RemovedBody785_499

def RemovedBody785_501 : StackLang.HolProg 64 :=
.seq RemovedBody785_483 RemovedBody785_500

def RemovedBody785_502 : StackLang.HolProg 64 :=
.seq RemovedBody785_482 RemovedBody785_501

def RemovedBody785_503 : StackLang.HolProg 64 :=
.seq RemovedBody785_481 RemovedBody785_502

def RemovedBody785_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody785_511 : StackLang.HolProg 64 :=
.seq RemovedBody785_509 RemovedBody785_510

def RemovedBody785_512 : StackLang.HolProg 64 :=
.seq RemovedBody785_508 RemovedBody785_511

def RemovedBody785_513 : StackLang.HolProg 64 :=
.seq RemovedBody785_507 RemovedBody785_512

def RemovedBody785_514 : StackLang.HolProg 64 :=
.seq RemovedBody785_506 RemovedBody785_513

def RemovedBody785_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody785_516 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_517 : StackLang.HolProg 64 :=
.seq RemovedBody785_515 RemovedBody785_516

def RemovedBody785_518 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_514, 0, 785, 16)) (Sum.inl 739) (some (RemovedBody785_517, 785, 17))

def RemovedBody785_519 : StackLang.HolProg 64 :=
.seq RemovedBody785_505 RemovedBody785_518

def RemovedBody785_520 : StackLang.HolProg 64 :=
.seq RemovedBody785_504 RemovedBody785_519

def RemovedBody785_521 : StackLang.HolProg 64 :=
.seq RemovedBody785_503 RemovedBody785_520

def RemovedBody785_522 : StackLang.HolProg 64 :=
.seq RemovedBody785_474 RemovedBody785_521

def RemovedBody785_523 : StackLang.HolProg 64 :=
.seq RemovedBody785_471 RemovedBody785_522

def RemovedBody785_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody785_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3633#64)

def RemovedBody785_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_529 : StackLang.HolProg 64 :=
.seq RemovedBody785_527 RemovedBody785_528

def RemovedBody785_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody785_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody785_533 : StackLang.HolProg 64 :=
.seq RemovedBody785_531 RemovedBody785_532

def RemovedBody785_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_535 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody785_533 RemovedBody785_534

def RemovedBody785_536 : StackLang.HolProg 64 :=
.seq RemovedBody785_530 RemovedBody785_535

def RemovedBody785_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody785_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody785_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 19

def RemovedBody785_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody785_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody785_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody785_546 : StackLang.HolProg 64 :=
.seq RemovedBody785_544 RemovedBody785_545

def RemovedBody785_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody785_548 : StackLang.HolProg 64 :=
.seq RemovedBody785_546 RemovedBody785_547

def RemovedBody785_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_550 : StackLang.HolProg 64 :=
.seq RemovedBody785_548 RemovedBody785_549

def RemovedBody785_551 : StackLang.HolProg 64 :=
.seq RemovedBody785_543 RemovedBody785_550

def RemovedBody785_552 : StackLang.HolProg 64 :=
.seq RemovedBody785_542 RemovedBody785_551

def RemovedBody785_553 : StackLang.HolProg 64 :=
.seq RemovedBody785_541 RemovedBody785_552

def RemovedBody785_554 : StackLang.HolProg 64 :=
.seq RemovedBody785_540 RemovedBody785_553

def RemovedBody785_555 : StackLang.HolProg 64 :=
.seq RemovedBody785_539 RemovedBody785_554

def RemovedBody785_556 : StackLang.HolProg 64 :=
.seq RemovedBody785_538 RemovedBody785_555

def RemovedBody785_557 : StackLang.HolProg 64 :=
.seq RemovedBody785_537 RemovedBody785_556

def RemovedBody785_558 : StackLang.HolProg 64 :=
.seq RemovedBody785_536 RemovedBody785_557

def RemovedBody785_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody785_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody785_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody785_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody785_566 : StackLang.HolProg 64 :=
.seq RemovedBody785_564 RemovedBody785_565

def RemovedBody785_567 : StackLang.HolProg 64 :=
.seq RemovedBody785_563 RemovedBody785_566

def RemovedBody785_568 : StackLang.HolProg 64 :=
.seq RemovedBody785_562 RemovedBody785_567

def RemovedBody785_569 : StackLang.HolProg 64 :=
.seq RemovedBody785_561 RemovedBody785_568

def RemovedBody785_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody785_571 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody785_572 : StackLang.HolProg 64 :=
.seq RemovedBody785_570 RemovedBody785_571

def RemovedBody785_573 : StackLang.HolProg 64 :=
.call (some (RemovedBody785_569, 0, 785, 18)) (Sum.inl 70) (some (RemovedBody785_572, 785, 19))

def RemovedBody785_574 : StackLang.HolProg 64 :=
.seq RemovedBody785_560 RemovedBody785_573

def RemovedBody785_575 : StackLang.HolProg 64 :=
.seq RemovedBody785_559 RemovedBody785_574

def RemovedBody785_576 : StackLang.HolProg 64 :=
.seq RemovedBody785_558 RemovedBody785_575

def RemovedBody785_577 : StackLang.HolProg 64 :=
.seq RemovedBody785_529 RemovedBody785_576

def RemovedBody785_578 : StackLang.HolProg 64 :=
.seq RemovedBody785_526 RemovedBody785_577

def RemovedBody785_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody785_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody785_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody785_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody785_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody785_584 : StackLang.HolProg 64 :=
.seq RemovedBody785_582 RemovedBody785_583

def RemovedBody785_585 : StackLang.HolProg 64 :=
.seq RemovedBody785_581 RemovedBody785_584

def RemovedBody785_586 : StackLang.HolProg 64 :=
.seq RemovedBody785_580 RemovedBody785_585

def RemovedBody785_587 : StackLang.HolProg 64 :=
.seq RemovedBody785_579 RemovedBody785_586

def RemovedBody785_588 : StackLang.HolProg 64 :=
.seq RemovedBody785_578 RemovedBody785_587

def RemovedBody785_589 : StackLang.HolProg 64 :=
.seq RemovedBody785_525 RemovedBody785_588

def RemovedBody785_590 : StackLang.HolProg 64 :=
.seq RemovedBody785_524 RemovedBody785_589

def RemovedBody785_591 : StackLang.HolProg 64 :=
.seq RemovedBody785_523 RemovedBody785_590

def RemovedBody785_592 : StackLang.HolProg 64 :=
.seq RemovedBody785_470 RemovedBody785_591

def RemovedBody785_593 : StackLang.HolProg 64 :=
.seq RemovedBody785_469 RemovedBody785_592

def RemovedBody785_594 : StackLang.HolProg 64 :=
.seq RemovedBody785_468 RemovedBody785_593

def RemovedBody785_595 : StackLang.HolProg 64 :=
.seq RemovedBody785_467 RemovedBody785_594

def RemovedBody785_596 : StackLang.HolProg 64 :=
.seq RemovedBody785_466 RemovedBody785_595

def RemovedBody785_597 : StackLang.HolProg 64 :=
.seq RemovedBody785_465 RemovedBody785_596

def RemovedBody785_598 : StackLang.HolProg 64 :=
.seq RemovedBody785_464 RemovedBody785_597

def RemovedBody785_599 : StackLang.HolProg 64 :=
.seq RemovedBody785_403 RemovedBody785_598

def RemovedBody785_600 : StackLang.HolProg 64 :=
.seq RemovedBody785_396 RemovedBody785_599

def RemovedBody785_601 : StackLang.HolProg 64 :=
.seq RemovedBody785_395 RemovedBody785_600

def RemovedBody785_602 : StackLang.HolProg 64 :=
.seq RemovedBody785_334 RemovedBody785_601

def RemovedBody785_603 : StackLang.HolProg 64 :=
.seq RemovedBody785_331 RemovedBody785_602

def RemovedBody785_604 : StackLang.HolProg 64 :=
.seq RemovedBody785_330 RemovedBody785_603

def RemovedBody785_605 : StackLang.HolProg 64 :=
.seq RemovedBody785_329 RemovedBody785_604

def RemovedBody785_606 : StackLang.HolProg 64 :=
.seq RemovedBody785_328 RemovedBody785_605

def RemovedBody785_607 : StackLang.HolProg 64 :=
.seq RemovedBody785_327 RemovedBody785_606

def RemovedBody785_608 : StackLang.HolProg 64 :=
.seq RemovedBody785_190 RemovedBody785_607

def RemovedBody785_609 : StackLang.HolProg 64 :=
.seq RemovedBody785_189 RemovedBody785_608

def RemovedBody785_610 : StackLang.HolProg 64 :=
.seq RemovedBody785_188 RemovedBody785_609

def RemovedBody785_611 : StackLang.HolProg 64 :=
.seq RemovedBody785_187 RemovedBody785_610

def RemovedBody785_612 : StackLang.HolProg 64 :=
.seq RemovedBody785_128 RemovedBody785_611

def RemovedBody785_613 : StackLang.HolProg 64 :=
.seq RemovedBody785_123 RemovedBody785_612

def RemovedBody785_614 : StackLang.HolProg 64 :=
.seq RemovedBody785_122 RemovedBody785_613

def RemovedBody785_615 : StackLang.HolProg 64 :=
.seq RemovedBody785_67 RemovedBody785_614

def RemovedBody785_616 : StackLang.HolProg 64 :=
.seq RemovedBody785_66 RemovedBody785_615

def RemovedBody785_617 : StackLang.HolProg 64 :=
.seq RemovedBody785_65 RemovedBody785_616

def RemovedBody785_618 : StackLang.HolProg 64 :=
.seq RemovedBody785_64 RemovedBody785_617

def RemovedBody785_619 : StackLang.HolProg 64 :=
.seq RemovedBody785_11 RemovedBody785_618

def RemovedBody785_620 : StackLang.HolProg 64 :=
.seq RemovedBody785_6 RemovedBody785_619

def Removed785 : Nat × StackLang.HolProg 64 := (785, RemovedBody785_620)
theorem Removed785_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc785 = Removed785 := by
  kernel_rfl
#print axioms Removed785_eq
end InitECandidate.Proofs.BackendStages
