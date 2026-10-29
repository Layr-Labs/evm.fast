import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc761
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody761_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody761_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_3 : StackLang.HolProg 64 :=
.seq RemovedBody761_1 RemovedBody761_2

def RemovedBody761_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_3 RemovedBody761_4

def RemovedBody761_6 : StackLang.HolProg 64 :=
.seq RemovedBody761_0 RemovedBody761_5

def RemovedBody761_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody761_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_10 : StackLang.HolProg 64 :=
.seq RemovedBody761_8 RemovedBody761_9

def RemovedBody761_11 : StackLang.HolProg 64 :=
.seq RemovedBody761_7 RemovedBody761_10

def RemovedBody761_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3393#64)

def RemovedBody761_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_15 : StackLang.HolProg 64 :=
.seq RemovedBody761_13 RemovedBody761_14

def RemovedBody761_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_19 : StackLang.HolProg 64 :=
.seq RemovedBody761_17 RemovedBody761_18

def RemovedBody761_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_19 RemovedBody761_20

def RemovedBody761_22 : StackLang.HolProg 64 :=
.seq RemovedBody761_16 RemovedBody761_21

def RemovedBody761_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 3

def RemovedBody761_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_32 : StackLang.HolProg 64 :=
.seq RemovedBody761_30 RemovedBody761_31

def RemovedBody761_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_34 : StackLang.HolProg 64 :=
.seq RemovedBody761_32 RemovedBody761_33

def RemovedBody761_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_36 : StackLang.HolProg 64 :=
.seq RemovedBody761_34 RemovedBody761_35

def RemovedBody761_37 : StackLang.HolProg 64 :=
.seq RemovedBody761_29 RemovedBody761_36

def RemovedBody761_38 : StackLang.HolProg 64 :=
.seq RemovedBody761_28 RemovedBody761_37

def RemovedBody761_39 : StackLang.HolProg 64 :=
.seq RemovedBody761_27 RemovedBody761_38

def RemovedBody761_40 : StackLang.HolProg 64 :=
.seq RemovedBody761_26 RemovedBody761_39

def RemovedBody761_41 : StackLang.HolProg 64 :=
.seq RemovedBody761_25 RemovedBody761_40

def RemovedBody761_42 : StackLang.HolProg 64 :=
.seq RemovedBody761_24 RemovedBody761_41

def RemovedBody761_43 : StackLang.HolProg 64 :=
.seq RemovedBody761_23 RemovedBody761_42

def RemovedBody761_44 : StackLang.HolProg 64 :=
.seq RemovedBody761_22 RemovedBody761_43

def RemovedBody761_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody761_52 : StackLang.HolProg 64 :=
.seq RemovedBody761_50 RemovedBody761_51

def RemovedBody761_53 : StackLang.HolProg 64 :=
.seq RemovedBody761_49 RemovedBody761_52

def RemovedBody761_54 : StackLang.HolProg 64 :=
.seq RemovedBody761_48 RemovedBody761_53

def RemovedBody761_55 : StackLang.HolProg 64 :=
.seq RemovedBody761_47 RemovedBody761_54

def RemovedBody761_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_58 : StackLang.HolProg 64 :=
.seq RemovedBody761_56 RemovedBody761_57

def RemovedBody761_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_55, 0, 761, 2)) (Sum.inl 69) (some (RemovedBody761_58, 761, 3))

def RemovedBody761_60 : StackLang.HolProg 64 :=
.seq RemovedBody761_46 RemovedBody761_59

def RemovedBody761_61 : StackLang.HolProg 64 :=
.seq RemovedBody761_45 RemovedBody761_60

def RemovedBody761_62 : StackLang.HolProg 64 :=
.seq RemovedBody761_44 RemovedBody761_61

def RemovedBody761_63 : StackLang.HolProg 64 :=
.seq RemovedBody761_15 RemovedBody761_62

def RemovedBody761_64 : StackLang.HolProg 64 :=
.seq RemovedBody761_12 RemovedBody761_63

def RemovedBody761_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 864#64)

def RemovedBody761_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3394#64)

def RemovedBody761_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_71 : StackLang.HolProg 64 :=
.seq RemovedBody761_69 RemovedBody761_70

def RemovedBody761_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_75 : StackLang.HolProg 64 :=
.seq RemovedBody761_73 RemovedBody761_74

def RemovedBody761_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_75 RemovedBody761_76

def RemovedBody761_78 : StackLang.HolProg 64 :=
.seq RemovedBody761_72 RemovedBody761_77

def RemovedBody761_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 5

def RemovedBody761_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_88 : StackLang.HolProg 64 :=
.seq RemovedBody761_86 RemovedBody761_87

def RemovedBody761_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_90 : StackLang.HolProg 64 :=
.seq RemovedBody761_88 RemovedBody761_89

def RemovedBody761_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_92 : StackLang.HolProg 64 :=
.seq RemovedBody761_90 RemovedBody761_91

def RemovedBody761_93 : StackLang.HolProg 64 :=
.seq RemovedBody761_85 RemovedBody761_92

def RemovedBody761_94 : StackLang.HolProg 64 :=
.seq RemovedBody761_84 RemovedBody761_93

def RemovedBody761_95 : StackLang.HolProg 64 :=
.seq RemovedBody761_83 RemovedBody761_94

def RemovedBody761_96 : StackLang.HolProg 64 :=
.seq RemovedBody761_82 RemovedBody761_95

def RemovedBody761_97 : StackLang.HolProg 64 :=
.seq RemovedBody761_81 RemovedBody761_96

def RemovedBody761_98 : StackLang.HolProg 64 :=
.seq RemovedBody761_80 RemovedBody761_97

def RemovedBody761_99 : StackLang.HolProg 64 :=
.seq RemovedBody761_79 RemovedBody761_98

def RemovedBody761_100 : StackLang.HolProg 64 :=
.seq RemovedBody761_78 RemovedBody761_99

def RemovedBody761_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody761_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_109 : StackLang.HolProg 64 :=
.seq RemovedBody761_107 RemovedBody761_108

def RemovedBody761_110 : StackLang.HolProg 64 :=
.seq RemovedBody761_106 RemovedBody761_109

def RemovedBody761_111 : StackLang.HolProg 64 :=
.seq RemovedBody761_105 RemovedBody761_110

def RemovedBody761_112 : StackLang.HolProg 64 :=
.seq RemovedBody761_104 RemovedBody761_111

def RemovedBody761_113 : StackLang.HolProg 64 :=
.seq RemovedBody761_103 RemovedBody761_112

def RemovedBody761_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_116 : StackLang.HolProg 64 :=
.seq RemovedBody761_114 RemovedBody761_115

def RemovedBody761_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_113, 0, 761, 4)) (Sum.inl 68) (some (RemovedBody761_116, 761, 5))

def RemovedBody761_118 : StackLang.HolProg 64 :=
.seq RemovedBody761_102 RemovedBody761_117

def RemovedBody761_119 : StackLang.HolProg 64 :=
.seq RemovedBody761_101 RemovedBody761_118

def RemovedBody761_120 : StackLang.HolProg 64 :=
.seq RemovedBody761_100 RemovedBody761_119

def RemovedBody761_121 : StackLang.HolProg 64 :=
.seq RemovedBody761_71 RemovedBody761_120

def RemovedBody761_122 : StackLang.HolProg 64 :=
.seq RemovedBody761_68 RemovedBody761_121

def RemovedBody761_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody761_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody761_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def RemovedBody761_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody761_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_133 : StackLang.HolProg 64 :=
.seq RemovedBody761_131 RemovedBody761_132

def RemovedBody761_134 : StackLang.HolProg 64 :=
.seq RemovedBody761_130 RemovedBody761_133

def RemovedBody761_135 : StackLang.HolProg 64 :=
.seq RemovedBody761_129 RemovedBody761_134

def RemovedBody761_136 : StackLang.HolProg 64 :=
.seq RemovedBody761_128 RemovedBody761_135

def RemovedBody761_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3395#64)

def RemovedBody761_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_140 : StackLang.HolProg 64 :=
.seq RemovedBody761_138 RemovedBody761_139

def RemovedBody761_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_144 : StackLang.HolProg 64 :=
.seq RemovedBody761_142 RemovedBody761_143

def RemovedBody761_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_144 RemovedBody761_145

def RemovedBody761_147 : StackLang.HolProg 64 :=
.seq RemovedBody761_141 RemovedBody761_146

def RemovedBody761_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 7

def RemovedBody761_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_157 : StackLang.HolProg 64 :=
.seq RemovedBody761_155 RemovedBody761_156

def RemovedBody761_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_159 : StackLang.HolProg 64 :=
.seq RemovedBody761_157 RemovedBody761_158

def RemovedBody761_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_161 : StackLang.HolProg 64 :=
.seq RemovedBody761_159 RemovedBody761_160

def RemovedBody761_162 : StackLang.HolProg 64 :=
.seq RemovedBody761_154 RemovedBody761_161

def RemovedBody761_163 : StackLang.HolProg 64 :=
.seq RemovedBody761_153 RemovedBody761_162

def RemovedBody761_164 : StackLang.HolProg 64 :=
.seq RemovedBody761_152 RemovedBody761_163

def RemovedBody761_165 : StackLang.HolProg 64 :=
.seq RemovedBody761_151 RemovedBody761_164

def RemovedBody761_166 : StackLang.HolProg 64 :=
.seq RemovedBody761_150 RemovedBody761_165

def RemovedBody761_167 : StackLang.HolProg 64 :=
.seq RemovedBody761_149 RemovedBody761_166

def RemovedBody761_168 : StackLang.HolProg 64 :=
.seq RemovedBody761_148 RemovedBody761_167

def RemovedBody761_169 : StackLang.HolProg 64 :=
.seq RemovedBody761_147 RemovedBody761_168

def RemovedBody761_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_178 : StackLang.HolProg 64 :=
.seq RemovedBody761_176 RemovedBody761_177

def RemovedBody761_179 : StackLang.HolProg 64 :=
.seq RemovedBody761_175 RemovedBody761_178

def RemovedBody761_180 : StackLang.HolProg 64 :=
.seq RemovedBody761_174 RemovedBody761_179

def RemovedBody761_181 : StackLang.HolProg 64 :=
.seq RemovedBody761_173 RemovedBody761_180

def RemovedBody761_182 : StackLang.HolProg 64 :=
.seq RemovedBody761_172 RemovedBody761_181

def RemovedBody761_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_185 : StackLang.HolProg 64 :=
.seq RemovedBody761_183 RemovedBody761_184

def RemovedBody761_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_187 : StackLang.HolProg 64 :=
.seq RemovedBody761_185 RemovedBody761_186

def RemovedBody761_188 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_182, 0, 761, 6)) (Sum.inl 752) (some (RemovedBody761_187, 761, 7))

def RemovedBody761_189 : StackLang.HolProg 64 :=
.seq RemovedBody761_171 RemovedBody761_188

def RemovedBody761_190 : StackLang.HolProg 64 :=
.seq RemovedBody761_170 RemovedBody761_189

def RemovedBody761_191 : StackLang.HolProg 64 :=
.seq RemovedBody761_169 RemovedBody761_190

def RemovedBody761_192 : StackLang.HolProg 64 :=
.seq RemovedBody761_140 RemovedBody761_191

def RemovedBody761_193 : StackLang.HolProg 64 :=
.seq RemovedBody761_137 RemovedBody761_192

def RemovedBody761_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody761_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody761_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody761_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_200 : StackLang.HolProg 64 :=
.seq RemovedBody761_198 RemovedBody761_199

def RemovedBody761_201 : StackLang.HolProg 64 :=
.seq RemovedBody761_197 RemovedBody761_200

def RemovedBody761_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3396#64)

def RemovedBody761_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_205 : StackLang.HolProg 64 :=
.seq RemovedBody761_203 RemovedBody761_204

def RemovedBody761_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_209 : StackLang.HolProg 64 :=
.seq RemovedBody761_207 RemovedBody761_208

def RemovedBody761_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_211 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_209 RemovedBody761_210

def RemovedBody761_212 : StackLang.HolProg 64 :=
.seq RemovedBody761_206 RemovedBody761_211

def RemovedBody761_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 9

def RemovedBody761_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_222 : StackLang.HolProg 64 :=
.seq RemovedBody761_220 RemovedBody761_221

def RemovedBody761_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_224 : StackLang.HolProg 64 :=
.seq RemovedBody761_222 RemovedBody761_223

def RemovedBody761_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_226 : StackLang.HolProg 64 :=
.seq RemovedBody761_224 RemovedBody761_225

def RemovedBody761_227 : StackLang.HolProg 64 :=
.seq RemovedBody761_219 RemovedBody761_226

def RemovedBody761_228 : StackLang.HolProg 64 :=
.seq RemovedBody761_218 RemovedBody761_227

def RemovedBody761_229 : StackLang.HolProg 64 :=
.seq RemovedBody761_217 RemovedBody761_228

def RemovedBody761_230 : StackLang.HolProg 64 :=
.seq RemovedBody761_216 RemovedBody761_229

def RemovedBody761_231 : StackLang.HolProg 64 :=
.seq RemovedBody761_215 RemovedBody761_230

def RemovedBody761_232 : StackLang.HolProg 64 :=
.seq RemovedBody761_214 RemovedBody761_231

def RemovedBody761_233 : StackLang.HolProg 64 :=
.seq RemovedBody761_213 RemovedBody761_232

def RemovedBody761_234 : StackLang.HolProg 64 :=
.seq RemovedBody761_212 RemovedBody761_233

def RemovedBody761_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_242 : StackLang.HolProg 64 :=
.seq RemovedBody761_240 RemovedBody761_241

def RemovedBody761_243 : StackLang.HolProg 64 :=
.seq RemovedBody761_239 RemovedBody761_242

def RemovedBody761_244 : StackLang.HolProg 64 :=
.seq RemovedBody761_238 RemovedBody761_243

def RemovedBody761_245 : StackLang.HolProg 64 :=
.seq RemovedBody761_237 RemovedBody761_244

def RemovedBody761_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_248 : StackLang.HolProg 64 :=
.seq RemovedBody761_246 RemovedBody761_247

def RemovedBody761_249 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_245, 0, 761, 8)) (Sum.inl 752) (some (RemovedBody761_248, 761, 9))

def RemovedBody761_250 : StackLang.HolProg 64 :=
.seq RemovedBody761_236 RemovedBody761_249

def RemovedBody761_251 : StackLang.HolProg 64 :=
.seq RemovedBody761_235 RemovedBody761_250

def RemovedBody761_252 : StackLang.HolProg 64 :=
.seq RemovedBody761_234 RemovedBody761_251

def RemovedBody761_253 : StackLang.HolProg 64 :=
.seq RemovedBody761_205 RemovedBody761_252

def RemovedBody761_254 : StackLang.HolProg 64 :=
.seq RemovedBody761_202 RemovedBody761_253

def RemovedBody761_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody761_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_258 : StackLang.HolProg 64 :=
.seq RemovedBody761_256 RemovedBody761_257

def RemovedBody761_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3397#64)

def RemovedBody761_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_262 : StackLang.HolProg 64 :=
.seq RemovedBody761_260 RemovedBody761_261

def RemovedBody761_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_266 : StackLang.HolProg 64 :=
.seq RemovedBody761_264 RemovedBody761_265

def RemovedBody761_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_266 RemovedBody761_267

def RemovedBody761_269 : StackLang.HolProg 64 :=
.seq RemovedBody761_263 RemovedBody761_268

def RemovedBody761_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 11

def RemovedBody761_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_279 : StackLang.HolProg 64 :=
.seq RemovedBody761_277 RemovedBody761_278

def RemovedBody761_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_281 : StackLang.HolProg 64 :=
.seq RemovedBody761_279 RemovedBody761_280

def RemovedBody761_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_283 : StackLang.HolProg 64 :=
.seq RemovedBody761_281 RemovedBody761_282

def RemovedBody761_284 : StackLang.HolProg 64 :=
.seq RemovedBody761_276 RemovedBody761_283

def RemovedBody761_285 : StackLang.HolProg 64 :=
.seq RemovedBody761_275 RemovedBody761_284

def RemovedBody761_286 : StackLang.HolProg 64 :=
.seq RemovedBody761_274 RemovedBody761_285

def RemovedBody761_287 : StackLang.HolProg 64 :=
.seq RemovedBody761_273 RemovedBody761_286

def RemovedBody761_288 : StackLang.HolProg 64 :=
.seq RemovedBody761_272 RemovedBody761_287

def RemovedBody761_289 : StackLang.HolProg 64 :=
.seq RemovedBody761_271 RemovedBody761_288

def RemovedBody761_290 : StackLang.HolProg 64 :=
.seq RemovedBody761_270 RemovedBody761_289

def RemovedBody761_291 : StackLang.HolProg 64 :=
.seq RemovedBody761_269 RemovedBody761_290

def RemovedBody761_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_301 : StackLang.HolProg 64 :=
.seq RemovedBody761_299 RemovedBody761_300

def RemovedBody761_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_305 : StackLang.HolProg 64 :=
.seq RemovedBody761_303 RemovedBody761_304

def RemovedBody761_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_308 : StackLang.HolProg 64 :=
.seq RemovedBody761_306 RemovedBody761_307

def RemovedBody761_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_310 : StackLang.HolProg 64 :=
.seq RemovedBody761_308 RemovedBody761_309

def RemovedBody761_311 : StackLang.HolProg 64 :=
.seq RemovedBody761_305 RemovedBody761_310

def RemovedBody761_312 : StackLang.HolProg 64 :=
.seq RemovedBody761_302 RemovedBody761_311

def RemovedBody761_313 : StackLang.HolProg 64 :=
.seq RemovedBody761_301 RemovedBody761_312

def RemovedBody761_314 : StackLang.HolProg 64 :=
.seq RemovedBody761_298 RemovedBody761_313

def RemovedBody761_315 : StackLang.HolProg 64 :=
.seq RemovedBody761_297 RemovedBody761_314

def RemovedBody761_316 : StackLang.HolProg 64 :=
.seq RemovedBody761_296 RemovedBody761_315

def RemovedBody761_317 : StackLang.HolProg 64 :=
.seq RemovedBody761_295 RemovedBody761_316

def RemovedBody761_318 : StackLang.HolProg 64 :=
.seq RemovedBody761_294 RemovedBody761_317

def RemovedBody761_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_322 : StackLang.HolProg 64 :=
.seq RemovedBody761_320 RemovedBody761_321

def RemovedBody761_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_326 : StackLang.HolProg 64 :=
.seq RemovedBody761_324 RemovedBody761_325

def RemovedBody761_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_329 : StackLang.HolProg 64 :=
.seq RemovedBody761_327 RemovedBody761_328

def RemovedBody761_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_331 : StackLang.HolProg 64 :=
.seq RemovedBody761_329 RemovedBody761_330

def RemovedBody761_332 : StackLang.HolProg 64 :=
.seq RemovedBody761_326 RemovedBody761_331

def RemovedBody761_333 : StackLang.HolProg 64 :=
.seq RemovedBody761_323 RemovedBody761_332

def RemovedBody761_334 : StackLang.HolProg 64 :=
.seq RemovedBody761_322 RemovedBody761_333

def RemovedBody761_335 : StackLang.HolProg 64 :=
.seq RemovedBody761_319 RemovedBody761_334

def RemovedBody761_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_337 : StackLang.HolProg 64 :=
.seq RemovedBody761_335 RemovedBody761_336

def RemovedBody761_338 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_318, 0, 761, 10)) (Sum.inl 753) (some (RemovedBody761_337, 761, 11))

def RemovedBody761_339 : StackLang.HolProg 64 :=
.seq RemovedBody761_293 RemovedBody761_338

def RemovedBody761_340 : StackLang.HolProg 64 :=
.seq RemovedBody761_292 RemovedBody761_339

def RemovedBody761_341 : StackLang.HolProg 64 :=
.seq RemovedBody761_291 RemovedBody761_340

def RemovedBody761_342 : StackLang.HolProg 64 :=
.seq RemovedBody761_262 RemovedBody761_341

def RemovedBody761_343 : StackLang.HolProg 64 :=
.seq RemovedBody761_259 RemovedBody761_342

def RemovedBody761_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody761_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_347 : StackLang.HolProg 64 :=
.seq RemovedBody761_345 RemovedBody761_346

def RemovedBody761_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3398#64)

def RemovedBody761_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_351 : StackLang.HolProg 64 :=
.seq RemovedBody761_349 RemovedBody761_350

def RemovedBody761_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_355 : StackLang.HolProg 64 :=
.seq RemovedBody761_353 RemovedBody761_354

def RemovedBody761_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_357 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_355 RemovedBody761_356

def RemovedBody761_358 : StackLang.HolProg 64 :=
.seq RemovedBody761_352 RemovedBody761_357

def RemovedBody761_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 13

def RemovedBody761_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_368 : StackLang.HolProg 64 :=
.seq RemovedBody761_366 RemovedBody761_367

def RemovedBody761_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_370 : StackLang.HolProg 64 :=
.seq RemovedBody761_368 RemovedBody761_369

def RemovedBody761_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_372 : StackLang.HolProg 64 :=
.seq RemovedBody761_370 RemovedBody761_371

def RemovedBody761_373 : StackLang.HolProg 64 :=
.seq RemovedBody761_365 RemovedBody761_372

def RemovedBody761_374 : StackLang.HolProg 64 :=
.seq RemovedBody761_364 RemovedBody761_373

def RemovedBody761_375 : StackLang.HolProg 64 :=
.seq RemovedBody761_363 RemovedBody761_374

def RemovedBody761_376 : StackLang.HolProg 64 :=
.seq RemovedBody761_362 RemovedBody761_375

def RemovedBody761_377 : StackLang.HolProg 64 :=
.seq RemovedBody761_361 RemovedBody761_376

def RemovedBody761_378 : StackLang.HolProg 64 :=
.seq RemovedBody761_360 RemovedBody761_377

def RemovedBody761_379 : StackLang.HolProg 64 :=
.seq RemovedBody761_359 RemovedBody761_378

def RemovedBody761_380 : StackLang.HolProg 64 :=
.seq RemovedBody761_358 RemovedBody761_379

def RemovedBody761_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_388 : StackLang.HolProg 64 :=
.seq RemovedBody761_386 RemovedBody761_387

def RemovedBody761_389 : StackLang.HolProg 64 :=
.seq RemovedBody761_385 RemovedBody761_388

def RemovedBody761_390 : StackLang.HolProg 64 :=
.seq RemovedBody761_384 RemovedBody761_389

def RemovedBody761_391 : StackLang.HolProg 64 :=
.seq RemovedBody761_383 RemovedBody761_390

def RemovedBody761_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_393 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_394 : StackLang.HolProg 64 :=
.seq RemovedBody761_392 RemovedBody761_393

def RemovedBody761_395 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_391, 0, 761, 12)) (Sum.inl 750) (some (RemovedBody761_394, 761, 13))

def RemovedBody761_396 : StackLang.HolProg 64 :=
.seq RemovedBody761_382 RemovedBody761_395

def RemovedBody761_397 : StackLang.HolProg 64 :=
.seq RemovedBody761_381 RemovedBody761_396

def RemovedBody761_398 : StackLang.HolProg 64 :=
.seq RemovedBody761_380 RemovedBody761_397

def RemovedBody761_399 : StackLang.HolProg 64 :=
.seq RemovedBody761_351 RemovedBody761_398

def RemovedBody761_400 : StackLang.HolProg 64 :=
.seq RemovedBody761_348 RemovedBody761_399

def RemovedBody761_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody761_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_404 : StackLang.HolProg 64 :=
.seq RemovedBody761_402 RemovedBody761_403

def RemovedBody761_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3399#64)

def RemovedBody761_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_408 : StackLang.HolProg 64 :=
.seq RemovedBody761_406 RemovedBody761_407

def RemovedBody761_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_412 : StackLang.HolProg 64 :=
.seq RemovedBody761_410 RemovedBody761_411

def RemovedBody761_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_414 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_412 RemovedBody761_413

def RemovedBody761_415 : StackLang.HolProg 64 :=
.seq RemovedBody761_409 RemovedBody761_414

def RemovedBody761_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 15

def RemovedBody761_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_425 : StackLang.HolProg 64 :=
.seq RemovedBody761_423 RemovedBody761_424

def RemovedBody761_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_427 : StackLang.HolProg 64 :=
.seq RemovedBody761_425 RemovedBody761_426

def RemovedBody761_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_429 : StackLang.HolProg 64 :=
.seq RemovedBody761_427 RemovedBody761_428

def RemovedBody761_430 : StackLang.HolProg 64 :=
.seq RemovedBody761_422 RemovedBody761_429

def RemovedBody761_431 : StackLang.HolProg 64 :=
.seq RemovedBody761_421 RemovedBody761_430

def RemovedBody761_432 : StackLang.HolProg 64 :=
.seq RemovedBody761_420 RemovedBody761_431

def RemovedBody761_433 : StackLang.HolProg 64 :=
.seq RemovedBody761_419 RemovedBody761_432

def RemovedBody761_434 : StackLang.HolProg 64 :=
.seq RemovedBody761_418 RemovedBody761_433

def RemovedBody761_435 : StackLang.HolProg 64 :=
.seq RemovedBody761_417 RemovedBody761_434

def RemovedBody761_436 : StackLang.HolProg 64 :=
.seq RemovedBody761_416 RemovedBody761_435

def RemovedBody761_437 : StackLang.HolProg 64 :=
.seq RemovedBody761_415 RemovedBody761_436

def RemovedBody761_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_447 : StackLang.HolProg 64 :=
.seq RemovedBody761_445 RemovedBody761_446

def RemovedBody761_448 : StackLang.HolProg 64 :=
.seq RemovedBody761_444 RemovedBody761_447

def RemovedBody761_449 : StackLang.HolProg 64 :=
.seq RemovedBody761_443 RemovedBody761_448

def RemovedBody761_450 : StackLang.HolProg 64 :=
.seq RemovedBody761_442 RemovedBody761_449

def RemovedBody761_451 : StackLang.HolProg 64 :=
.seq RemovedBody761_441 RemovedBody761_450

def RemovedBody761_452 : StackLang.HolProg 64 :=
.seq RemovedBody761_440 RemovedBody761_451

def RemovedBody761_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_456 : StackLang.HolProg 64 :=
.seq RemovedBody761_454 RemovedBody761_455

def RemovedBody761_457 : StackLang.HolProg 64 :=
.seq RemovedBody761_453 RemovedBody761_456

def RemovedBody761_458 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_459 : StackLang.HolProg 64 :=
.seq RemovedBody761_457 RemovedBody761_458

def RemovedBody761_460 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_452, 0, 761, 14)) (Sum.inl 754) (some (RemovedBody761_459, 761, 15))

def RemovedBody761_461 : StackLang.HolProg 64 :=
.seq RemovedBody761_439 RemovedBody761_460

def RemovedBody761_462 : StackLang.HolProg 64 :=
.seq RemovedBody761_438 RemovedBody761_461

def RemovedBody761_463 : StackLang.HolProg 64 :=
.seq RemovedBody761_437 RemovedBody761_462

def RemovedBody761_464 : StackLang.HolProg 64 :=
.seq RemovedBody761_408 RemovedBody761_463

def RemovedBody761_465 : StackLang.HolProg 64 :=
.seq RemovedBody761_405 RemovedBody761_464

def RemovedBody761_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody761_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_471 : StackLang.HolProg 64 :=
.seq RemovedBody761_469 RemovedBody761_470

def RemovedBody761_472 : StackLang.HolProg 64 :=
.seq RemovedBody761_468 RemovedBody761_471

def RemovedBody761_473 : StackLang.HolProg 64 :=
.seq RemovedBody761_467 RemovedBody761_472

def RemovedBody761_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3400#64)

def RemovedBody761_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_477 : StackLang.HolProg 64 :=
.seq RemovedBody761_475 RemovedBody761_476

def RemovedBody761_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_481 : StackLang.HolProg 64 :=
.seq RemovedBody761_479 RemovedBody761_480

def RemovedBody761_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_483 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_481 RemovedBody761_482

def RemovedBody761_484 : StackLang.HolProg 64 :=
.seq RemovedBody761_478 RemovedBody761_483

def RemovedBody761_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 17

def RemovedBody761_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_494 : StackLang.HolProg 64 :=
.seq RemovedBody761_492 RemovedBody761_493

def RemovedBody761_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_496 : StackLang.HolProg 64 :=
.seq RemovedBody761_494 RemovedBody761_495

def RemovedBody761_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_498 : StackLang.HolProg 64 :=
.seq RemovedBody761_496 RemovedBody761_497

def RemovedBody761_499 : StackLang.HolProg 64 :=
.seq RemovedBody761_491 RemovedBody761_498

def RemovedBody761_500 : StackLang.HolProg 64 :=
.seq RemovedBody761_490 RemovedBody761_499

def RemovedBody761_501 : StackLang.HolProg 64 :=
.seq RemovedBody761_489 RemovedBody761_500

def RemovedBody761_502 : StackLang.HolProg 64 :=
.seq RemovedBody761_488 RemovedBody761_501

def RemovedBody761_503 : StackLang.HolProg 64 :=
.seq RemovedBody761_487 RemovedBody761_502

def RemovedBody761_504 : StackLang.HolProg 64 :=
.seq RemovedBody761_486 RemovedBody761_503

def RemovedBody761_505 : StackLang.HolProg 64 :=
.seq RemovedBody761_485 RemovedBody761_504

def RemovedBody761_506 : StackLang.HolProg 64 :=
.seq RemovedBody761_484 RemovedBody761_505

def RemovedBody761_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_517 : StackLang.HolProg 64 :=
.seq RemovedBody761_515 RemovedBody761_516

def RemovedBody761_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_519 : StackLang.HolProg 64 :=
.seq RemovedBody761_517 RemovedBody761_518

def RemovedBody761_520 : StackLang.HolProg 64 :=
.seq RemovedBody761_514 RemovedBody761_519

def RemovedBody761_521 : StackLang.HolProg 64 :=
.seq RemovedBody761_513 RemovedBody761_520

def RemovedBody761_522 : StackLang.HolProg 64 :=
.seq RemovedBody761_512 RemovedBody761_521

def RemovedBody761_523 : StackLang.HolProg 64 :=
.seq RemovedBody761_511 RemovedBody761_522

def RemovedBody761_524 : StackLang.HolProg 64 :=
.seq RemovedBody761_510 RemovedBody761_523

def RemovedBody761_525 : StackLang.HolProg 64 :=
.seq RemovedBody761_509 RemovedBody761_524

def RemovedBody761_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody761_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_530 : StackLang.HolProg 64 :=
.seq RemovedBody761_528 RemovedBody761_529

def RemovedBody761_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody761_532 : StackLang.HolProg 64 :=
.seq RemovedBody761_530 RemovedBody761_531

def RemovedBody761_533 : StackLang.HolProg 64 :=
.seq RemovedBody761_527 RemovedBody761_532

def RemovedBody761_534 : StackLang.HolProg 64 :=
.seq RemovedBody761_526 RemovedBody761_533

def RemovedBody761_535 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_536 : StackLang.HolProg 64 :=
.seq RemovedBody761_534 RemovedBody761_535

def RemovedBody761_537 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_525, 0, 761, 16)) (Sum.inl 752) (some (RemovedBody761_536, 761, 17))

def RemovedBody761_538 : StackLang.HolProg 64 :=
.seq RemovedBody761_508 RemovedBody761_537

def RemovedBody761_539 : StackLang.HolProg 64 :=
.seq RemovedBody761_507 RemovedBody761_538

def RemovedBody761_540 : StackLang.HolProg 64 :=
.seq RemovedBody761_506 RemovedBody761_539

def RemovedBody761_541 : StackLang.HolProg 64 :=
.seq RemovedBody761_477 RemovedBody761_540

def RemovedBody761_542 : StackLang.HolProg 64 :=
.seq RemovedBody761_474 RemovedBody761_541

def RemovedBody761_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody761_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody761_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3401#64)

def RemovedBody761_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_552 : StackLang.HolProg 64 :=
.seq RemovedBody761_550 RemovedBody761_551

def RemovedBody761_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_556 : StackLang.HolProg 64 :=
.seq RemovedBody761_554 RemovedBody761_555

def RemovedBody761_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_558 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_556 RemovedBody761_557

def RemovedBody761_559 : StackLang.HolProg 64 :=
.seq RemovedBody761_553 RemovedBody761_558

def RemovedBody761_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 19

def RemovedBody761_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_569 : StackLang.HolProg 64 :=
.seq RemovedBody761_567 RemovedBody761_568

def RemovedBody761_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_571 : StackLang.HolProg 64 :=
.seq RemovedBody761_569 RemovedBody761_570

def RemovedBody761_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_573 : StackLang.HolProg 64 :=
.seq RemovedBody761_571 RemovedBody761_572

def RemovedBody761_574 : StackLang.HolProg 64 :=
.seq RemovedBody761_566 RemovedBody761_573

def RemovedBody761_575 : StackLang.HolProg 64 :=
.seq RemovedBody761_565 RemovedBody761_574

def RemovedBody761_576 : StackLang.HolProg 64 :=
.seq RemovedBody761_564 RemovedBody761_575

def RemovedBody761_577 : StackLang.HolProg 64 :=
.seq RemovedBody761_563 RemovedBody761_576

def RemovedBody761_578 : StackLang.HolProg 64 :=
.seq RemovedBody761_562 RemovedBody761_577

def RemovedBody761_579 : StackLang.HolProg 64 :=
.seq RemovedBody761_561 RemovedBody761_578

def RemovedBody761_580 : StackLang.HolProg 64 :=
.seq RemovedBody761_560 RemovedBody761_579

def RemovedBody761_581 : StackLang.HolProg 64 :=
.seq RemovedBody761_559 RemovedBody761_580

def RemovedBody761_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_591 : StackLang.HolProg 64 :=
.seq RemovedBody761_589 RemovedBody761_590

def RemovedBody761_592 : StackLang.HolProg 64 :=
.seq RemovedBody761_588 RemovedBody761_591

def RemovedBody761_593 : StackLang.HolProg 64 :=
.seq RemovedBody761_587 RemovedBody761_592

def RemovedBody761_594 : StackLang.HolProg 64 :=
.seq RemovedBody761_586 RemovedBody761_593

def RemovedBody761_595 : StackLang.HolProg 64 :=
.seq RemovedBody761_585 RemovedBody761_594

def RemovedBody761_596 : StackLang.HolProg 64 :=
.seq RemovedBody761_584 RemovedBody761_595

def RemovedBody761_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody761_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_600 : StackLang.HolProg 64 :=
.seq RemovedBody761_598 RemovedBody761_599

def RemovedBody761_601 : StackLang.HolProg 64 :=
.seq RemovedBody761_597 RemovedBody761_600

def RemovedBody761_602 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_603 : StackLang.HolProg 64 :=
.seq RemovedBody761_601 RemovedBody761_602

def RemovedBody761_604 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_596, 0, 761, 18)) (Sum.inl 752) (some (RemovedBody761_603, 761, 19))

def RemovedBody761_605 : StackLang.HolProg 64 :=
.seq RemovedBody761_583 RemovedBody761_604

def RemovedBody761_606 : StackLang.HolProg 64 :=
.seq RemovedBody761_582 RemovedBody761_605

def RemovedBody761_607 : StackLang.HolProg 64 :=
.seq RemovedBody761_581 RemovedBody761_606

def RemovedBody761_608 : StackLang.HolProg 64 :=
.seq RemovedBody761_552 RemovedBody761_607

def RemovedBody761_609 : StackLang.HolProg 64 :=
.seq RemovedBody761_549 RemovedBody761_608

def RemovedBody761_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody761_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody761_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3402#64)

def RemovedBody761_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_617 : StackLang.HolProg 64 :=
.seq RemovedBody761_615 RemovedBody761_616

def RemovedBody761_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_621 : StackLang.HolProg 64 :=
.seq RemovedBody761_619 RemovedBody761_620

def RemovedBody761_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_623 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_621 RemovedBody761_622

def RemovedBody761_624 : StackLang.HolProg 64 :=
.seq RemovedBody761_618 RemovedBody761_623

def RemovedBody761_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 21

def RemovedBody761_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_634 : StackLang.HolProg 64 :=
.seq RemovedBody761_632 RemovedBody761_633

def RemovedBody761_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_636 : StackLang.HolProg 64 :=
.seq RemovedBody761_634 RemovedBody761_635

def RemovedBody761_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_638 : StackLang.HolProg 64 :=
.seq RemovedBody761_636 RemovedBody761_637

def RemovedBody761_639 : StackLang.HolProg 64 :=
.seq RemovedBody761_631 RemovedBody761_638

def RemovedBody761_640 : StackLang.HolProg 64 :=
.seq RemovedBody761_630 RemovedBody761_639

def RemovedBody761_641 : StackLang.HolProg 64 :=
.seq RemovedBody761_629 RemovedBody761_640

def RemovedBody761_642 : StackLang.HolProg 64 :=
.seq RemovedBody761_628 RemovedBody761_641

def RemovedBody761_643 : StackLang.HolProg 64 :=
.seq RemovedBody761_627 RemovedBody761_642

def RemovedBody761_644 : StackLang.HolProg 64 :=
.seq RemovedBody761_626 RemovedBody761_643

def RemovedBody761_645 : StackLang.HolProg 64 :=
.seq RemovedBody761_625 RemovedBody761_644

def RemovedBody761_646 : StackLang.HolProg 64 :=
.seq RemovedBody761_624 RemovedBody761_645

def RemovedBody761_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_654 : StackLang.HolProg 64 :=
.seq RemovedBody761_652 RemovedBody761_653

def RemovedBody761_655 : StackLang.HolProg 64 :=
.seq RemovedBody761_651 RemovedBody761_654

def RemovedBody761_656 : StackLang.HolProg 64 :=
.seq RemovedBody761_650 RemovedBody761_655

def RemovedBody761_657 : StackLang.HolProg 64 :=
.seq RemovedBody761_649 RemovedBody761_656

def RemovedBody761_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody761_659 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_660 : StackLang.HolProg 64 :=
.seq RemovedBody761_658 RemovedBody761_659

def RemovedBody761_661 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_657, 0, 761, 20)) (Sum.inl 751) (some (RemovedBody761_660, 761, 21))

def RemovedBody761_662 : StackLang.HolProg 64 :=
.seq RemovedBody761_648 RemovedBody761_661

def RemovedBody761_663 : StackLang.HolProg 64 :=
.seq RemovedBody761_647 RemovedBody761_662

def RemovedBody761_664 : StackLang.HolProg 64 :=
.seq RemovedBody761_646 RemovedBody761_663

def RemovedBody761_665 : StackLang.HolProg 64 :=
.seq RemovedBody761_617 RemovedBody761_664

def RemovedBody761_666 : StackLang.HolProg 64 :=
.seq RemovedBody761_614 RemovedBody761_665

def RemovedBody761_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody761_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3403#64)

def RemovedBody761_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_672 : StackLang.HolProg 64 :=
.seq RemovedBody761_670 RemovedBody761_671

def RemovedBody761_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody761_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody761_676 : StackLang.HolProg 64 :=
.seq RemovedBody761_674 RemovedBody761_675

def RemovedBody761_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_678 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody761_676 RemovedBody761_677

def RemovedBody761_679 : StackLang.HolProg 64 :=
.seq RemovedBody761_673 RemovedBody761_678

def RemovedBody761_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody761_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody761_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 23

def RemovedBody761_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody761_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody761_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody761_689 : StackLang.HolProg 64 :=
.seq RemovedBody761_687 RemovedBody761_688

def RemovedBody761_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody761_691 : StackLang.HolProg 64 :=
.seq RemovedBody761_689 RemovedBody761_690

def RemovedBody761_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_693 : StackLang.HolProg 64 :=
.seq RemovedBody761_691 RemovedBody761_692

def RemovedBody761_694 : StackLang.HolProg 64 :=
.seq RemovedBody761_686 RemovedBody761_693

def RemovedBody761_695 : StackLang.HolProg 64 :=
.seq RemovedBody761_685 RemovedBody761_694

def RemovedBody761_696 : StackLang.HolProg 64 :=
.seq RemovedBody761_684 RemovedBody761_695

def RemovedBody761_697 : StackLang.HolProg 64 :=
.seq RemovedBody761_683 RemovedBody761_696

def RemovedBody761_698 : StackLang.HolProg 64 :=
.seq RemovedBody761_682 RemovedBody761_697

def RemovedBody761_699 : StackLang.HolProg 64 :=
.seq RemovedBody761_681 RemovedBody761_698

def RemovedBody761_700 : StackLang.HolProg 64 :=
.seq RemovedBody761_680 RemovedBody761_699

def RemovedBody761_701 : StackLang.HolProg 64 :=
.seq RemovedBody761_679 RemovedBody761_700

def RemovedBody761_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody761_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody761_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody761_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody761_709 : StackLang.HolProg 64 :=
.seq RemovedBody761_707 RemovedBody761_708

def RemovedBody761_710 : StackLang.HolProg 64 :=
.seq RemovedBody761_706 RemovedBody761_709

def RemovedBody761_711 : StackLang.HolProg 64 :=
.seq RemovedBody761_705 RemovedBody761_710

def RemovedBody761_712 : StackLang.HolProg 64 :=
.seq RemovedBody761_704 RemovedBody761_711

def RemovedBody761_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody761_714 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody761_715 : StackLang.HolProg 64 :=
.seq RemovedBody761_713 RemovedBody761_714

def RemovedBody761_716 : StackLang.HolProg 64 :=
.call (some (RemovedBody761_712, 0, 761, 22)) (Sum.inl 70) (some (RemovedBody761_715, 761, 23))

def RemovedBody761_717 : StackLang.HolProg 64 :=
.seq RemovedBody761_703 RemovedBody761_716

def RemovedBody761_718 : StackLang.HolProg 64 :=
.seq RemovedBody761_702 RemovedBody761_717

def RemovedBody761_719 : StackLang.HolProg 64 :=
.seq RemovedBody761_701 RemovedBody761_718

def RemovedBody761_720 : StackLang.HolProg 64 :=
.seq RemovedBody761_672 RemovedBody761_719

def RemovedBody761_721 : StackLang.HolProg 64 :=
.seq RemovedBody761_669 RemovedBody761_720

def RemovedBody761_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody761_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody761_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody761_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody761_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody761_727 : StackLang.HolProg 64 :=
.seq RemovedBody761_725 RemovedBody761_726

def RemovedBody761_728 : StackLang.HolProg 64 :=
.seq RemovedBody761_724 RemovedBody761_727

def RemovedBody761_729 : StackLang.HolProg 64 :=
.seq RemovedBody761_723 RemovedBody761_728

def RemovedBody761_730 : StackLang.HolProg 64 :=
.seq RemovedBody761_722 RemovedBody761_729

def RemovedBody761_731 : StackLang.HolProg 64 :=
.seq RemovedBody761_721 RemovedBody761_730

def RemovedBody761_732 : StackLang.HolProg 64 :=
.seq RemovedBody761_668 RemovedBody761_731

def RemovedBody761_733 : StackLang.HolProg 64 :=
.seq RemovedBody761_667 RemovedBody761_732

def RemovedBody761_734 : StackLang.HolProg 64 :=
.seq RemovedBody761_666 RemovedBody761_733

def RemovedBody761_735 : StackLang.HolProg 64 :=
.seq RemovedBody761_613 RemovedBody761_734

def RemovedBody761_736 : StackLang.HolProg 64 :=
.seq RemovedBody761_612 RemovedBody761_735

def RemovedBody761_737 : StackLang.HolProg 64 :=
.seq RemovedBody761_611 RemovedBody761_736

def RemovedBody761_738 : StackLang.HolProg 64 :=
.seq RemovedBody761_610 RemovedBody761_737

def RemovedBody761_739 : StackLang.HolProg 64 :=
.seq RemovedBody761_609 RemovedBody761_738

def RemovedBody761_740 : StackLang.HolProg 64 :=
.seq RemovedBody761_548 RemovedBody761_739

def RemovedBody761_741 : StackLang.HolProg 64 :=
.seq RemovedBody761_547 RemovedBody761_740

def RemovedBody761_742 : StackLang.HolProg 64 :=
.seq RemovedBody761_546 RemovedBody761_741

def RemovedBody761_743 : StackLang.HolProg 64 :=
.seq RemovedBody761_545 RemovedBody761_742

def RemovedBody761_744 : StackLang.HolProg 64 :=
.seq RemovedBody761_544 RemovedBody761_743

def RemovedBody761_745 : StackLang.HolProg 64 :=
.seq RemovedBody761_543 RemovedBody761_744

def RemovedBody761_746 : StackLang.HolProg 64 :=
.seq RemovedBody761_542 RemovedBody761_745

def RemovedBody761_747 : StackLang.HolProg 64 :=
.seq RemovedBody761_473 RemovedBody761_746

def RemovedBody761_748 : StackLang.HolProg 64 :=
.seq RemovedBody761_466 RemovedBody761_747

def RemovedBody761_749 : StackLang.HolProg 64 :=
.seq RemovedBody761_465 RemovedBody761_748

def RemovedBody761_750 : StackLang.HolProg 64 :=
.seq RemovedBody761_404 RemovedBody761_749

def RemovedBody761_751 : StackLang.HolProg 64 :=
.seq RemovedBody761_401 RemovedBody761_750

def RemovedBody761_752 : StackLang.HolProg 64 :=
.seq RemovedBody761_400 RemovedBody761_751

def RemovedBody761_753 : StackLang.HolProg 64 :=
.seq RemovedBody761_347 RemovedBody761_752

def RemovedBody761_754 : StackLang.HolProg 64 :=
.seq RemovedBody761_344 RemovedBody761_753

def RemovedBody761_755 : StackLang.HolProg 64 :=
.seq RemovedBody761_343 RemovedBody761_754

def RemovedBody761_756 : StackLang.HolProg 64 :=
.seq RemovedBody761_258 RemovedBody761_755

def RemovedBody761_757 : StackLang.HolProg 64 :=
.seq RemovedBody761_255 RemovedBody761_756

def RemovedBody761_758 : StackLang.HolProg 64 :=
.seq RemovedBody761_254 RemovedBody761_757

def RemovedBody761_759 : StackLang.HolProg 64 :=
.seq RemovedBody761_201 RemovedBody761_758

def RemovedBody761_760 : StackLang.HolProg 64 :=
.seq RemovedBody761_196 RemovedBody761_759

def RemovedBody761_761 : StackLang.HolProg 64 :=
.seq RemovedBody761_195 RemovedBody761_760

def RemovedBody761_762 : StackLang.HolProg 64 :=
.seq RemovedBody761_194 RemovedBody761_761

def RemovedBody761_763 : StackLang.HolProg 64 :=
.seq RemovedBody761_193 RemovedBody761_762

def RemovedBody761_764 : StackLang.HolProg 64 :=
.seq RemovedBody761_136 RemovedBody761_763

def RemovedBody761_765 : StackLang.HolProg 64 :=
.seq RemovedBody761_127 RemovedBody761_764

def RemovedBody761_766 : StackLang.HolProg 64 :=
.seq RemovedBody761_126 RemovedBody761_765

def RemovedBody761_767 : StackLang.HolProg 64 :=
.seq RemovedBody761_125 RemovedBody761_766

def RemovedBody761_768 : StackLang.HolProg 64 :=
.seq RemovedBody761_124 RemovedBody761_767

def RemovedBody761_769 : StackLang.HolProg 64 :=
.seq RemovedBody761_123 RemovedBody761_768

def RemovedBody761_770 : StackLang.HolProg 64 :=
.seq RemovedBody761_122 RemovedBody761_769

def RemovedBody761_771 : StackLang.HolProg 64 :=
.seq RemovedBody761_67 RemovedBody761_770

def RemovedBody761_772 : StackLang.HolProg 64 :=
.seq RemovedBody761_66 RemovedBody761_771

def RemovedBody761_773 : StackLang.HolProg 64 :=
.seq RemovedBody761_65 RemovedBody761_772

def RemovedBody761_774 : StackLang.HolProg 64 :=
.seq RemovedBody761_64 RemovedBody761_773

def RemovedBody761_775 : StackLang.HolProg 64 :=
.seq RemovedBody761_11 RemovedBody761_774

def RemovedBody761_776 : StackLang.HolProg 64 :=
.seq RemovedBody761_6 RemovedBody761_775

def Removed761 : Nat × StackLang.HolProg 64 := (761, RemovedBody761_776)
theorem Removed761_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc761 = Removed761 := by
  kernel_rfl
#print axioms Removed761_eq
end InitECandidate.Proofs.BackendStages
