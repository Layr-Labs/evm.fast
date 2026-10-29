import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc804
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody804_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody804_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody804_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody804_3 : StackLang.HolProg 64 :=
.seq RemovedBody804_1 RemovedBody804_2

def RemovedBody804_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody804_3 RemovedBody804_4

def RemovedBody804_6 : StackLang.HolProg 64 :=
.seq RemovedBody804_0 RemovedBody804_5

def RemovedBody804_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody804_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_10 : StackLang.HolProg 64 :=
.seq RemovedBody804_8 RemovedBody804_9

def RemovedBody804_11 : StackLang.HolProg 64 :=
.seq RemovedBody804_7 RemovedBody804_10

def RemovedBody804_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3927#64)

def RemovedBody804_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_15 : StackLang.HolProg 64 :=
.seq RemovedBody804_13 RemovedBody804_14

def RemovedBody804_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody804_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody804_19 : StackLang.HolProg 64 :=
.seq RemovedBody804_17 RemovedBody804_18

def RemovedBody804_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody804_19 RemovedBody804_20

def RemovedBody804_22 : StackLang.HolProg 64 :=
.seq RemovedBody804_16 RemovedBody804_21

def RemovedBody804_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody804_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 3

def RemovedBody804_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody804_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody804_32 : StackLang.HolProg 64 :=
.seq RemovedBody804_30 RemovedBody804_31

def RemovedBody804_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody804_34 : StackLang.HolProg 64 :=
.seq RemovedBody804_32 RemovedBody804_33

def RemovedBody804_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_36 : StackLang.HolProg 64 :=
.seq RemovedBody804_34 RemovedBody804_35

def RemovedBody804_37 : StackLang.HolProg 64 :=
.seq RemovedBody804_29 RemovedBody804_36

def RemovedBody804_38 : StackLang.HolProg 64 :=
.seq RemovedBody804_28 RemovedBody804_37

def RemovedBody804_39 : StackLang.HolProg 64 :=
.seq RemovedBody804_27 RemovedBody804_38

def RemovedBody804_40 : StackLang.HolProg 64 :=
.seq RemovedBody804_26 RemovedBody804_39

def RemovedBody804_41 : StackLang.HolProg 64 :=
.seq RemovedBody804_25 RemovedBody804_40

def RemovedBody804_42 : StackLang.HolProg 64 :=
.seq RemovedBody804_24 RemovedBody804_41

def RemovedBody804_43 : StackLang.HolProg 64 :=
.seq RemovedBody804_23 RemovedBody804_42

def RemovedBody804_44 : StackLang.HolProg 64 :=
.seq RemovedBody804_22 RemovedBody804_43

def RemovedBody804_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody804_52 : StackLang.HolProg 64 :=
.seq RemovedBody804_50 RemovedBody804_51

def RemovedBody804_53 : StackLang.HolProg 64 :=
.seq RemovedBody804_49 RemovedBody804_52

def RemovedBody804_54 : StackLang.HolProg 64 :=
.seq RemovedBody804_48 RemovedBody804_53

def RemovedBody804_55 : StackLang.HolProg 64 :=
.seq RemovedBody804_47 RemovedBody804_54

def RemovedBody804_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody804_58 : StackLang.HolProg 64 :=
.seq RemovedBody804_56 RemovedBody804_57

def RemovedBody804_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody804_55, 0, 804, 2)) (Sum.inl 69) (some (RemovedBody804_58, 804, 3))

def RemovedBody804_60 : StackLang.HolProg 64 :=
.seq RemovedBody804_46 RemovedBody804_59

def RemovedBody804_61 : StackLang.HolProg 64 :=
.seq RemovedBody804_45 RemovedBody804_60

def RemovedBody804_62 : StackLang.HolProg 64 :=
.seq RemovedBody804_44 RemovedBody804_61

def RemovedBody804_63 : StackLang.HolProg 64 :=
.seq RemovedBody804_15 RemovedBody804_62

def RemovedBody804_64 : StackLang.HolProg 64 :=
.seq RemovedBody804_12 RemovedBody804_63

def RemovedBody804_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody804_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def RemovedBody804_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody804_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3928#64)

def RemovedBody804_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_71 : StackLang.HolProg 64 :=
.seq RemovedBody804_69 RemovedBody804_70

def RemovedBody804_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody804_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody804_75 : StackLang.HolProg 64 :=
.seq RemovedBody804_73 RemovedBody804_74

def RemovedBody804_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody804_75 RemovedBody804_76

def RemovedBody804_78 : StackLang.HolProg 64 :=
.seq RemovedBody804_72 RemovedBody804_77

def RemovedBody804_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody804_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 5

def RemovedBody804_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody804_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody804_88 : StackLang.HolProg 64 :=
.seq RemovedBody804_86 RemovedBody804_87

def RemovedBody804_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody804_90 : StackLang.HolProg 64 :=
.seq RemovedBody804_88 RemovedBody804_89

def RemovedBody804_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_92 : StackLang.HolProg 64 :=
.seq RemovedBody804_90 RemovedBody804_91

def RemovedBody804_93 : StackLang.HolProg 64 :=
.seq RemovedBody804_85 RemovedBody804_92

def RemovedBody804_94 : StackLang.HolProg 64 :=
.seq RemovedBody804_84 RemovedBody804_93

def RemovedBody804_95 : StackLang.HolProg 64 :=
.seq RemovedBody804_83 RemovedBody804_94

def RemovedBody804_96 : StackLang.HolProg 64 :=
.seq RemovedBody804_82 RemovedBody804_95

def RemovedBody804_97 : StackLang.HolProg 64 :=
.seq RemovedBody804_81 RemovedBody804_96

def RemovedBody804_98 : StackLang.HolProg 64 :=
.seq RemovedBody804_80 RemovedBody804_97

def RemovedBody804_99 : StackLang.HolProg 64 :=
.seq RemovedBody804_79 RemovedBody804_98

def RemovedBody804_100 : StackLang.HolProg 64 :=
.seq RemovedBody804_78 RemovedBody804_99

def RemovedBody804_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody804_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_109 : StackLang.HolProg 64 :=
.seq RemovedBody804_107 RemovedBody804_108

def RemovedBody804_110 : StackLang.HolProg 64 :=
.seq RemovedBody804_106 RemovedBody804_109

def RemovedBody804_111 : StackLang.HolProg 64 :=
.seq RemovedBody804_105 RemovedBody804_110

def RemovedBody804_112 : StackLang.HolProg 64 :=
.seq RemovedBody804_104 RemovedBody804_111

def RemovedBody804_113 : StackLang.HolProg 64 :=
.seq RemovedBody804_103 RemovedBody804_112

def RemovedBody804_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody804_116 : StackLang.HolProg 64 :=
.seq RemovedBody804_114 RemovedBody804_115

def RemovedBody804_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody804_113, 0, 804, 4)) (Sum.inl 68) (some (RemovedBody804_116, 804, 5))

def RemovedBody804_118 : StackLang.HolProg 64 :=
.seq RemovedBody804_102 RemovedBody804_117

def RemovedBody804_119 : StackLang.HolProg 64 :=
.seq RemovedBody804_101 RemovedBody804_118

def RemovedBody804_120 : StackLang.HolProg 64 :=
.seq RemovedBody804_100 RemovedBody804_119

def RemovedBody804_121 : StackLang.HolProg 64 :=
.seq RemovedBody804_71 RemovedBody804_120

def RemovedBody804_122 : StackLang.HolProg 64 :=
.seq RemovedBody804_68 RemovedBody804_121

def RemovedBody804_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody804_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody804_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_126 : StackLang.HolProg 64 :=
.seq RemovedBody804_124 RemovedBody804_125

def RemovedBody804_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3929#64)

def RemovedBody804_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_130 : StackLang.HolProg 64 :=
.seq RemovedBody804_128 RemovedBody804_129

def RemovedBody804_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody804_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody804_134 : StackLang.HolProg 64 :=
.seq RemovedBody804_132 RemovedBody804_133

def RemovedBody804_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody804_134 RemovedBody804_135

def RemovedBody804_137 : StackLang.HolProg 64 :=
.seq RemovedBody804_131 RemovedBody804_136

def RemovedBody804_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody804_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 7

def RemovedBody804_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody804_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody804_147 : StackLang.HolProg 64 :=
.seq RemovedBody804_145 RemovedBody804_146

def RemovedBody804_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody804_149 : StackLang.HolProg 64 :=
.seq RemovedBody804_147 RemovedBody804_148

def RemovedBody804_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_151 : StackLang.HolProg 64 :=
.seq RemovedBody804_149 RemovedBody804_150

def RemovedBody804_152 : StackLang.HolProg 64 :=
.seq RemovedBody804_144 RemovedBody804_151

def RemovedBody804_153 : StackLang.HolProg 64 :=
.seq RemovedBody804_143 RemovedBody804_152

def RemovedBody804_154 : StackLang.HolProg 64 :=
.seq RemovedBody804_142 RemovedBody804_153

def RemovedBody804_155 : StackLang.HolProg 64 :=
.seq RemovedBody804_141 RemovedBody804_154

def RemovedBody804_156 : StackLang.HolProg 64 :=
.seq RemovedBody804_140 RemovedBody804_155

def RemovedBody804_157 : StackLang.HolProg 64 :=
.seq RemovedBody804_139 RemovedBody804_156

def RemovedBody804_158 : StackLang.HolProg 64 :=
.seq RemovedBody804_138 RemovedBody804_157

def RemovedBody804_159 : StackLang.HolProg 64 :=
.seq RemovedBody804_137 RemovedBody804_158

def RemovedBody804_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_167 : StackLang.HolProg 64 :=
.seq RemovedBody804_165 RemovedBody804_166

def RemovedBody804_168 : StackLang.HolProg 64 :=
.seq RemovedBody804_164 RemovedBody804_167

def RemovedBody804_169 : StackLang.HolProg 64 :=
.seq RemovedBody804_163 RemovedBody804_168

def RemovedBody804_170 : StackLang.HolProg 64 :=
.seq RemovedBody804_162 RemovedBody804_169

def RemovedBody804_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody804_173 : StackLang.HolProg 64 :=
.seq RemovedBody804_171 RemovedBody804_172

def RemovedBody804_174 : StackLang.HolProg 64 :=
.call (some (RemovedBody804_170, 0, 804, 6)) (Sum.inl 801) (some (RemovedBody804_173, 804, 7))

def RemovedBody804_175 : StackLang.HolProg 64 :=
.seq RemovedBody804_161 RemovedBody804_174

def RemovedBody804_176 : StackLang.HolProg 64 :=
.seq RemovedBody804_160 RemovedBody804_175

def RemovedBody804_177 : StackLang.HolProg 64 :=
.seq RemovedBody804_159 RemovedBody804_176

def RemovedBody804_178 : StackLang.HolProg 64 :=
.seq RemovedBody804_130 RemovedBody804_177

def RemovedBody804_179 : StackLang.HolProg 64 :=
.seq RemovedBody804_127 RemovedBody804_178

def RemovedBody804_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody804_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody804_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_183 : StackLang.HolProg 64 :=
.seq RemovedBody804_181 RemovedBody804_182

def RemovedBody804_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3930#64)

def RemovedBody804_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_187 : StackLang.HolProg 64 :=
.seq RemovedBody804_185 RemovedBody804_186

def RemovedBody804_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody804_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody804_191 : StackLang.HolProg 64 :=
.seq RemovedBody804_189 RemovedBody804_190

def RemovedBody804_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody804_191 RemovedBody804_192

def RemovedBody804_194 : StackLang.HolProg 64 :=
.seq RemovedBody804_188 RemovedBody804_193

def RemovedBody804_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody804_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 9

def RemovedBody804_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody804_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody804_204 : StackLang.HolProg 64 :=
.seq RemovedBody804_202 RemovedBody804_203

def RemovedBody804_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody804_206 : StackLang.HolProg 64 :=
.seq RemovedBody804_204 RemovedBody804_205

def RemovedBody804_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_208 : StackLang.HolProg 64 :=
.seq RemovedBody804_206 RemovedBody804_207

def RemovedBody804_209 : StackLang.HolProg 64 :=
.seq RemovedBody804_201 RemovedBody804_208

def RemovedBody804_210 : StackLang.HolProg 64 :=
.seq RemovedBody804_200 RemovedBody804_209

def RemovedBody804_211 : StackLang.HolProg 64 :=
.seq RemovedBody804_199 RemovedBody804_210

def RemovedBody804_212 : StackLang.HolProg 64 :=
.seq RemovedBody804_198 RemovedBody804_211

def RemovedBody804_213 : StackLang.HolProg 64 :=
.seq RemovedBody804_197 RemovedBody804_212

def RemovedBody804_214 : StackLang.HolProg 64 :=
.seq RemovedBody804_196 RemovedBody804_213

def RemovedBody804_215 : StackLang.HolProg 64 :=
.seq RemovedBody804_195 RemovedBody804_214

def RemovedBody804_216 : StackLang.HolProg 64 :=
.seq RemovedBody804_194 RemovedBody804_215

def RemovedBody804_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_225 : StackLang.HolProg 64 :=
.seq RemovedBody804_223 RemovedBody804_224

def RemovedBody804_226 : StackLang.HolProg 64 :=
.seq RemovedBody804_222 RemovedBody804_225

def RemovedBody804_227 : StackLang.HolProg 64 :=
.seq RemovedBody804_221 RemovedBody804_226

def RemovedBody804_228 : StackLang.HolProg 64 :=
.seq RemovedBody804_220 RemovedBody804_227

def RemovedBody804_229 : StackLang.HolProg 64 :=
.seq RemovedBody804_219 RemovedBody804_228

def RemovedBody804_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_232 : StackLang.HolProg 64 :=
.seq RemovedBody804_230 RemovedBody804_231

def RemovedBody804_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody804_234 : StackLang.HolProg 64 :=
.seq RemovedBody804_232 RemovedBody804_233

def RemovedBody804_235 : StackLang.HolProg 64 :=
.call (some (RemovedBody804_229, 0, 804, 8)) (Sum.inl 803) (some (RemovedBody804_234, 804, 9))

def RemovedBody804_236 : StackLang.HolProg 64 :=
.seq RemovedBody804_218 RemovedBody804_235

def RemovedBody804_237 : StackLang.HolProg 64 :=
.seq RemovedBody804_217 RemovedBody804_236

def RemovedBody804_238 : StackLang.HolProg 64 :=
.seq RemovedBody804_216 RemovedBody804_237

def RemovedBody804_239 : StackLang.HolProg 64 :=
.seq RemovedBody804_187 RemovedBody804_238

def RemovedBody804_240 : StackLang.HolProg 64 :=
.seq RemovedBody804_184 RemovedBody804_239

def RemovedBody804_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody804_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody804_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody804_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody804_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody804_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def RemovedBody804_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1632#64)))

def RemovedBody804_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 10#64)

def RemovedBody804_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3931#64)

def RemovedBody804_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_253 : StackLang.HolProg 64 :=
.seq RemovedBody804_251 RemovedBody804_252

def RemovedBody804_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody804_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody804_257 : StackLang.HolProg 64 :=
.seq RemovedBody804_255 RemovedBody804_256

def RemovedBody804_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody804_257 RemovedBody804_258

def RemovedBody804_260 : StackLang.HolProg 64 :=
.seq RemovedBody804_254 RemovedBody804_259

def RemovedBody804_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody804_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 11

def RemovedBody804_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody804_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody804_270 : StackLang.HolProg 64 :=
.seq RemovedBody804_268 RemovedBody804_269

def RemovedBody804_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody804_272 : StackLang.HolProg 64 :=
.seq RemovedBody804_270 RemovedBody804_271

def RemovedBody804_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_274 : StackLang.HolProg 64 :=
.seq RemovedBody804_272 RemovedBody804_273

def RemovedBody804_275 : StackLang.HolProg 64 :=
.seq RemovedBody804_267 RemovedBody804_274

def RemovedBody804_276 : StackLang.HolProg 64 :=
.seq RemovedBody804_266 RemovedBody804_275

def RemovedBody804_277 : StackLang.HolProg 64 :=
.seq RemovedBody804_265 RemovedBody804_276

def RemovedBody804_278 : StackLang.HolProg 64 :=
.seq RemovedBody804_264 RemovedBody804_277

def RemovedBody804_279 : StackLang.HolProg 64 :=
.seq RemovedBody804_263 RemovedBody804_278

def RemovedBody804_280 : StackLang.HolProg 64 :=
.seq RemovedBody804_262 RemovedBody804_279

def RemovedBody804_281 : StackLang.HolProg 64 :=
.seq RemovedBody804_261 RemovedBody804_280

def RemovedBody804_282 : StackLang.HolProg 64 :=
.seq RemovedBody804_260 RemovedBody804_281

def RemovedBody804_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody804_290 : StackLang.HolProg 64 :=
.seq RemovedBody804_288 RemovedBody804_289

def RemovedBody804_291 : StackLang.HolProg 64 :=
.seq RemovedBody804_287 RemovedBody804_290

def RemovedBody804_292 : StackLang.HolProg 64 :=
.seq RemovedBody804_286 RemovedBody804_291

def RemovedBody804_293 : StackLang.HolProg 64 :=
.seq RemovedBody804_285 RemovedBody804_292

def RemovedBody804_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody804_295 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody804_296 : StackLang.HolProg 64 :=
.seq RemovedBody804_294 RemovedBody804_295

def RemovedBody804_297 : StackLang.HolProg 64 :=
.call (some (RemovedBody804_293, 0, 804, 10)) (Sum.inl 784) (some (RemovedBody804_296, 804, 11))

def RemovedBody804_298 : StackLang.HolProg 64 :=
.seq RemovedBody804_284 RemovedBody804_297

def RemovedBody804_299 : StackLang.HolProg 64 :=
.seq RemovedBody804_283 RemovedBody804_298

def RemovedBody804_300 : StackLang.HolProg 64 :=
.seq RemovedBody804_282 RemovedBody804_299

def RemovedBody804_301 : StackLang.HolProg 64 :=
.seq RemovedBody804_253 RemovedBody804_300

def RemovedBody804_302 : StackLang.HolProg 64 :=
.seq RemovedBody804_250 RemovedBody804_301

def RemovedBody804_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody804_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody804_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3932#64)

def RemovedBody804_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_308 : StackLang.HolProg 64 :=
.seq RemovedBody804_306 RemovedBody804_307

def RemovedBody804_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody804_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody804_312 : StackLang.HolProg 64 :=
.seq RemovedBody804_310 RemovedBody804_311

def RemovedBody804_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_314 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody804_312 RemovedBody804_313

def RemovedBody804_315 : StackLang.HolProg 64 :=
.seq RemovedBody804_309 RemovedBody804_314

def RemovedBody804_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody804_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody804_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 13

def RemovedBody804_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody804_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody804_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody804_325 : StackLang.HolProg 64 :=
.seq RemovedBody804_323 RemovedBody804_324

def RemovedBody804_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody804_327 : StackLang.HolProg 64 :=
.seq RemovedBody804_325 RemovedBody804_326

def RemovedBody804_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_329 : StackLang.HolProg 64 :=
.seq RemovedBody804_327 RemovedBody804_328

def RemovedBody804_330 : StackLang.HolProg 64 :=
.seq RemovedBody804_322 RemovedBody804_329

def RemovedBody804_331 : StackLang.HolProg 64 :=
.seq RemovedBody804_321 RemovedBody804_330

def RemovedBody804_332 : StackLang.HolProg 64 :=
.seq RemovedBody804_320 RemovedBody804_331

def RemovedBody804_333 : StackLang.HolProg 64 :=
.seq RemovedBody804_319 RemovedBody804_332

def RemovedBody804_334 : StackLang.HolProg 64 :=
.seq RemovedBody804_318 RemovedBody804_333

def RemovedBody804_335 : StackLang.HolProg 64 :=
.seq RemovedBody804_317 RemovedBody804_334

def RemovedBody804_336 : StackLang.HolProg 64 :=
.seq RemovedBody804_316 RemovedBody804_335

def RemovedBody804_337 : StackLang.HolProg 64 :=
.seq RemovedBody804_315 RemovedBody804_336

def RemovedBody804_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody804_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody804_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody804_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody804_345 : StackLang.HolProg 64 :=
.seq RemovedBody804_343 RemovedBody804_344

def RemovedBody804_346 : StackLang.HolProg 64 :=
.seq RemovedBody804_342 RemovedBody804_345

def RemovedBody804_347 : StackLang.HolProg 64 :=
.seq RemovedBody804_341 RemovedBody804_346

def RemovedBody804_348 : StackLang.HolProg 64 :=
.seq RemovedBody804_340 RemovedBody804_347

def RemovedBody804_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody804_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody804_351 : StackLang.HolProg 64 :=
.seq RemovedBody804_349 RemovedBody804_350

def RemovedBody804_352 : StackLang.HolProg 64 :=
.call (some (RemovedBody804_348, 0, 804, 12)) (Sum.inl 70) (some (RemovedBody804_351, 804, 13))

def RemovedBody804_353 : StackLang.HolProg 64 :=
.seq RemovedBody804_339 RemovedBody804_352

def RemovedBody804_354 : StackLang.HolProg 64 :=
.seq RemovedBody804_338 RemovedBody804_353

def RemovedBody804_355 : StackLang.HolProg 64 :=
.seq RemovedBody804_337 RemovedBody804_354

def RemovedBody804_356 : StackLang.HolProg 64 :=
.seq RemovedBody804_308 RemovedBody804_355

def RemovedBody804_357 : StackLang.HolProg 64 :=
.seq RemovedBody804_305 RemovedBody804_356

def RemovedBody804_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody804_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody804_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody804_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody804_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody804_363 : StackLang.HolProg 64 :=
.seq RemovedBody804_361 RemovedBody804_362

def RemovedBody804_364 : StackLang.HolProg 64 :=
.seq RemovedBody804_360 RemovedBody804_363

def RemovedBody804_365 : StackLang.HolProg 64 :=
.seq RemovedBody804_359 RemovedBody804_364

def RemovedBody804_366 : StackLang.HolProg 64 :=
.seq RemovedBody804_358 RemovedBody804_365

def RemovedBody804_367 : StackLang.HolProg 64 :=
.seq RemovedBody804_357 RemovedBody804_366

def RemovedBody804_368 : StackLang.HolProg 64 :=
.seq RemovedBody804_304 RemovedBody804_367

def RemovedBody804_369 : StackLang.HolProg 64 :=
.seq RemovedBody804_303 RemovedBody804_368

def RemovedBody804_370 : StackLang.HolProg 64 :=
.seq RemovedBody804_302 RemovedBody804_369

def RemovedBody804_371 : StackLang.HolProg 64 :=
.seq RemovedBody804_249 RemovedBody804_370

def RemovedBody804_372 : StackLang.HolProg 64 :=
.seq RemovedBody804_248 RemovedBody804_371

def RemovedBody804_373 : StackLang.HolProg 64 :=
.seq RemovedBody804_247 RemovedBody804_372

def RemovedBody804_374 : StackLang.HolProg 64 :=
.seq RemovedBody804_246 RemovedBody804_373

def RemovedBody804_375 : StackLang.HolProg 64 :=
.seq RemovedBody804_245 RemovedBody804_374

def RemovedBody804_376 : StackLang.HolProg 64 :=
.seq RemovedBody804_244 RemovedBody804_375

def RemovedBody804_377 : StackLang.HolProg 64 :=
.seq RemovedBody804_243 RemovedBody804_376

def RemovedBody804_378 : StackLang.HolProg 64 :=
.seq RemovedBody804_242 RemovedBody804_377

def RemovedBody804_379 : StackLang.HolProg 64 :=
.seq RemovedBody804_241 RemovedBody804_378

def RemovedBody804_380 : StackLang.HolProg 64 :=
.seq RemovedBody804_240 RemovedBody804_379

def RemovedBody804_381 : StackLang.HolProg 64 :=
.seq RemovedBody804_183 RemovedBody804_380

def RemovedBody804_382 : StackLang.HolProg 64 :=
.seq RemovedBody804_180 RemovedBody804_381

def RemovedBody804_383 : StackLang.HolProg 64 :=
.seq RemovedBody804_179 RemovedBody804_382

def RemovedBody804_384 : StackLang.HolProg 64 :=
.seq RemovedBody804_126 RemovedBody804_383

def RemovedBody804_385 : StackLang.HolProg 64 :=
.seq RemovedBody804_123 RemovedBody804_384

def RemovedBody804_386 : StackLang.HolProg 64 :=
.seq RemovedBody804_122 RemovedBody804_385

def RemovedBody804_387 : StackLang.HolProg 64 :=
.seq RemovedBody804_67 RemovedBody804_386

def RemovedBody804_388 : StackLang.HolProg 64 :=
.seq RemovedBody804_66 RemovedBody804_387

def RemovedBody804_389 : StackLang.HolProg 64 :=
.seq RemovedBody804_65 RemovedBody804_388

def RemovedBody804_390 : StackLang.HolProg 64 :=
.seq RemovedBody804_64 RemovedBody804_389

def RemovedBody804_391 : StackLang.HolProg 64 :=
.seq RemovedBody804_11 RemovedBody804_390

def RemovedBody804_392 : StackLang.HolProg 64 :=
.seq RemovedBody804_6 RemovedBody804_391

def Removed804 : Nat × StackLang.HolProg 64 := (804, RemovedBody804_392)
theorem Removed804_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc804 = Removed804 := by
  kernel_rfl
#print axioms Removed804_eq
end InitECandidate.Proofs.BackendStages
