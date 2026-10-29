import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc753
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody753_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody753_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_3 : StackLang.HolProg 64 :=
.seq RemovedBody753_1 RemovedBody753_2

def RemovedBody753_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_3 RemovedBody753_4

def RemovedBody753_6 : StackLang.HolProg 64 :=
.seq RemovedBody753_0 RemovedBody753_5

def RemovedBody753_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody753_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_10 : StackLang.HolProg 64 :=
.seq RemovedBody753_8 RemovedBody753_9

def RemovedBody753_11 : StackLang.HolProg 64 :=
.seq RemovedBody753_7 RemovedBody753_10

def RemovedBody753_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3340#64)

def RemovedBody753_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_15 : StackLang.HolProg 64 :=
.seq RemovedBody753_13 RemovedBody753_14

def RemovedBody753_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_19 : StackLang.HolProg 64 :=
.seq RemovedBody753_17 RemovedBody753_18

def RemovedBody753_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_19 RemovedBody753_20

def RemovedBody753_22 : StackLang.HolProg 64 :=
.seq RemovedBody753_16 RemovedBody753_21

def RemovedBody753_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody753_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 3

def RemovedBody753_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody753_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody753_32 : StackLang.HolProg 64 :=
.seq RemovedBody753_30 RemovedBody753_31

def RemovedBody753_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody753_34 : StackLang.HolProg 64 :=
.seq RemovedBody753_32 RemovedBody753_33

def RemovedBody753_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_36 : StackLang.HolProg 64 :=
.seq RemovedBody753_34 RemovedBody753_35

def RemovedBody753_37 : StackLang.HolProg 64 :=
.seq RemovedBody753_29 RemovedBody753_36

def RemovedBody753_38 : StackLang.HolProg 64 :=
.seq RemovedBody753_28 RemovedBody753_37

def RemovedBody753_39 : StackLang.HolProg 64 :=
.seq RemovedBody753_27 RemovedBody753_38

def RemovedBody753_40 : StackLang.HolProg 64 :=
.seq RemovedBody753_26 RemovedBody753_39

def RemovedBody753_41 : StackLang.HolProg 64 :=
.seq RemovedBody753_25 RemovedBody753_40

def RemovedBody753_42 : StackLang.HolProg 64 :=
.seq RemovedBody753_24 RemovedBody753_41

def RemovedBody753_43 : StackLang.HolProg 64 :=
.seq RemovedBody753_23 RemovedBody753_42

def RemovedBody753_44 : StackLang.HolProg 64 :=
.seq RemovedBody753_22 RemovedBody753_43

def RemovedBody753_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody753_52 : StackLang.HolProg 64 :=
.seq RemovedBody753_50 RemovedBody753_51

def RemovedBody753_53 : StackLang.HolProg 64 :=
.seq RemovedBody753_49 RemovedBody753_52

def RemovedBody753_54 : StackLang.HolProg 64 :=
.seq RemovedBody753_48 RemovedBody753_53

def RemovedBody753_55 : StackLang.HolProg 64 :=
.seq RemovedBody753_47 RemovedBody753_54

def RemovedBody753_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody753_58 : StackLang.HolProg 64 :=
.seq RemovedBody753_56 RemovedBody753_57

def RemovedBody753_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody753_55, 0, 753, 2)) (Sum.inl 69) (some (RemovedBody753_58, 753, 3))

def RemovedBody753_60 : StackLang.HolProg 64 :=
.seq RemovedBody753_46 RemovedBody753_59

def RemovedBody753_61 : StackLang.HolProg 64 :=
.seq RemovedBody753_45 RemovedBody753_60

def RemovedBody753_62 : StackLang.HolProg 64 :=
.seq RemovedBody753_44 RemovedBody753_61

def RemovedBody753_63 : StackLang.HolProg 64 :=
.seq RemovedBody753_15 RemovedBody753_62

def RemovedBody753_64 : StackLang.HolProg 64 :=
.seq RemovedBody753_12 RemovedBody753_63

def RemovedBody753_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody753_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody753_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody753_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3341#64)

def RemovedBody753_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_71 : StackLang.HolProg 64 :=
.seq RemovedBody753_69 RemovedBody753_70

def RemovedBody753_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_75 : StackLang.HolProg 64 :=
.seq RemovedBody753_73 RemovedBody753_74

def RemovedBody753_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_75 RemovedBody753_76

def RemovedBody753_78 : StackLang.HolProg 64 :=
.seq RemovedBody753_72 RemovedBody753_77

def RemovedBody753_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody753_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 5

def RemovedBody753_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody753_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody753_88 : StackLang.HolProg 64 :=
.seq RemovedBody753_86 RemovedBody753_87

def RemovedBody753_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody753_90 : StackLang.HolProg 64 :=
.seq RemovedBody753_88 RemovedBody753_89

def RemovedBody753_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_92 : StackLang.HolProg 64 :=
.seq RemovedBody753_90 RemovedBody753_91

def RemovedBody753_93 : StackLang.HolProg 64 :=
.seq RemovedBody753_85 RemovedBody753_92

def RemovedBody753_94 : StackLang.HolProg 64 :=
.seq RemovedBody753_84 RemovedBody753_93

def RemovedBody753_95 : StackLang.HolProg 64 :=
.seq RemovedBody753_83 RemovedBody753_94

def RemovedBody753_96 : StackLang.HolProg 64 :=
.seq RemovedBody753_82 RemovedBody753_95

def RemovedBody753_97 : StackLang.HolProg 64 :=
.seq RemovedBody753_81 RemovedBody753_96

def RemovedBody753_98 : StackLang.HolProg 64 :=
.seq RemovedBody753_80 RemovedBody753_97

def RemovedBody753_99 : StackLang.HolProg 64 :=
.seq RemovedBody753_79 RemovedBody753_98

def RemovedBody753_100 : StackLang.HolProg 64 :=
.seq RemovedBody753_78 RemovedBody753_99

def RemovedBody753_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody753_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_109 : StackLang.HolProg 64 :=
.seq RemovedBody753_107 RemovedBody753_108

def RemovedBody753_110 : StackLang.HolProg 64 :=
.seq RemovedBody753_106 RemovedBody753_109

def RemovedBody753_111 : StackLang.HolProg 64 :=
.seq RemovedBody753_105 RemovedBody753_110

def RemovedBody753_112 : StackLang.HolProg 64 :=
.seq RemovedBody753_104 RemovedBody753_111

def RemovedBody753_113 : StackLang.HolProg 64 :=
.seq RemovedBody753_103 RemovedBody753_112

def RemovedBody753_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody753_116 : StackLang.HolProg 64 :=
.seq RemovedBody753_114 RemovedBody753_115

def RemovedBody753_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody753_113, 0, 753, 4)) (Sum.inl 68) (some (RemovedBody753_116, 753, 5))

def RemovedBody753_118 : StackLang.HolProg 64 :=
.seq RemovedBody753_102 RemovedBody753_117

def RemovedBody753_119 : StackLang.HolProg 64 :=
.seq RemovedBody753_101 RemovedBody753_118

def RemovedBody753_120 : StackLang.HolProg 64 :=
.seq RemovedBody753_100 RemovedBody753_119

def RemovedBody753_121 : StackLang.HolProg 64 :=
.seq RemovedBody753_71 RemovedBody753_120

def RemovedBody753_122 : StackLang.HolProg 64 :=
.seq RemovedBody753_68 RemovedBody753_121

def RemovedBody753_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody753_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody753_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody753_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_128 : StackLang.HolProg 64 :=
.seq RemovedBody753_126 RemovedBody753_127

def RemovedBody753_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3342#64)

def RemovedBody753_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_132 : StackLang.HolProg 64 :=
.seq RemovedBody753_130 RemovedBody753_131

def RemovedBody753_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_136 : StackLang.HolProg 64 :=
.seq RemovedBody753_134 RemovedBody753_135

def RemovedBody753_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_136 RemovedBody753_137

def RemovedBody753_139 : StackLang.HolProg 64 :=
.seq RemovedBody753_133 RemovedBody753_138

def RemovedBody753_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody753_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 7

def RemovedBody753_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody753_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody753_149 : StackLang.HolProg 64 :=
.seq RemovedBody753_147 RemovedBody753_148

def RemovedBody753_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody753_151 : StackLang.HolProg 64 :=
.seq RemovedBody753_149 RemovedBody753_150

def RemovedBody753_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_153 : StackLang.HolProg 64 :=
.seq RemovedBody753_151 RemovedBody753_152

def RemovedBody753_154 : StackLang.HolProg 64 :=
.seq RemovedBody753_146 RemovedBody753_153

def RemovedBody753_155 : StackLang.HolProg 64 :=
.seq RemovedBody753_145 RemovedBody753_154

def RemovedBody753_156 : StackLang.HolProg 64 :=
.seq RemovedBody753_144 RemovedBody753_155

def RemovedBody753_157 : StackLang.HolProg 64 :=
.seq RemovedBody753_143 RemovedBody753_156

def RemovedBody753_158 : StackLang.HolProg 64 :=
.seq RemovedBody753_142 RemovedBody753_157

def RemovedBody753_159 : StackLang.HolProg 64 :=
.seq RemovedBody753_141 RemovedBody753_158

def RemovedBody753_160 : StackLang.HolProg 64 :=
.seq RemovedBody753_140 RemovedBody753_159

def RemovedBody753_161 : StackLang.HolProg 64 :=
.seq RemovedBody753_139 RemovedBody753_160

def RemovedBody753_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_170 : StackLang.HolProg 64 :=
.seq RemovedBody753_168 RemovedBody753_169

def RemovedBody753_171 : StackLang.HolProg 64 :=
.seq RemovedBody753_167 RemovedBody753_170

def RemovedBody753_172 : StackLang.HolProg 64 :=
.seq RemovedBody753_166 RemovedBody753_171

def RemovedBody753_173 : StackLang.HolProg 64 :=
.seq RemovedBody753_165 RemovedBody753_172

def RemovedBody753_174 : StackLang.HolProg 64 :=
.seq RemovedBody753_164 RemovedBody753_173

def RemovedBody753_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_177 : StackLang.HolProg 64 :=
.seq RemovedBody753_175 RemovedBody753_176

def RemovedBody753_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody753_179 : StackLang.HolProg 64 :=
.seq RemovedBody753_177 RemovedBody753_178

def RemovedBody753_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody753_174, 0, 753, 6)) (Sum.inl 741) (some (RemovedBody753_179, 753, 7))

def RemovedBody753_181 : StackLang.HolProg 64 :=
.seq RemovedBody753_163 RemovedBody753_180

def RemovedBody753_182 : StackLang.HolProg 64 :=
.seq RemovedBody753_162 RemovedBody753_181

def RemovedBody753_183 : StackLang.HolProg 64 :=
.seq RemovedBody753_161 RemovedBody753_182

def RemovedBody753_184 : StackLang.HolProg 64 :=
.seq RemovedBody753_132 RemovedBody753_183

def RemovedBody753_185 : StackLang.HolProg 64 :=
.seq RemovedBody753_129 RemovedBody753_184

def RemovedBody753_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody753_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody753_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody753_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_193 : StackLang.HolProg 64 :=
.seq RemovedBody753_191 RemovedBody753_192

def RemovedBody753_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3343#64)

def RemovedBody753_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_197 : StackLang.HolProg 64 :=
.seq RemovedBody753_195 RemovedBody753_196

def RemovedBody753_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_201 : StackLang.HolProg 64 :=
.seq RemovedBody753_199 RemovedBody753_200

def RemovedBody753_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_201 RemovedBody753_202

def RemovedBody753_204 : StackLang.HolProg 64 :=
.seq RemovedBody753_198 RemovedBody753_203

def RemovedBody753_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody753_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 9

def RemovedBody753_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody753_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody753_214 : StackLang.HolProg 64 :=
.seq RemovedBody753_212 RemovedBody753_213

def RemovedBody753_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody753_216 : StackLang.HolProg 64 :=
.seq RemovedBody753_214 RemovedBody753_215

def RemovedBody753_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_218 : StackLang.HolProg 64 :=
.seq RemovedBody753_216 RemovedBody753_217

def RemovedBody753_219 : StackLang.HolProg 64 :=
.seq RemovedBody753_211 RemovedBody753_218

def RemovedBody753_220 : StackLang.HolProg 64 :=
.seq RemovedBody753_210 RemovedBody753_219

def RemovedBody753_221 : StackLang.HolProg 64 :=
.seq RemovedBody753_209 RemovedBody753_220

def RemovedBody753_222 : StackLang.HolProg 64 :=
.seq RemovedBody753_208 RemovedBody753_221

def RemovedBody753_223 : StackLang.HolProg 64 :=
.seq RemovedBody753_207 RemovedBody753_222

def RemovedBody753_224 : StackLang.HolProg 64 :=
.seq RemovedBody753_206 RemovedBody753_223

def RemovedBody753_225 : StackLang.HolProg 64 :=
.seq RemovedBody753_205 RemovedBody753_224

def RemovedBody753_226 : StackLang.HolProg 64 :=
.seq RemovedBody753_204 RemovedBody753_225

def RemovedBody753_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody753_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_236 : StackLang.HolProg 64 :=
.seq RemovedBody753_234 RemovedBody753_235

def RemovedBody753_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_240 : StackLang.HolProg 64 :=
.seq RemovedBody753_238 RemovedBody753_239

def RemovedBody753_241 : StackLang.HolProg 64 :=
.seq RemovedBody753_237 RemovedBody753_240

def RemovedBody753_242 : StackLang.HolProg 64 :=
.seq RemovedBody753_236 RemovedBody753_241

def RemovedBody753_243 : StackLang.HolProg 64 :=
.seq RemovedBody753_233 RemovedBody753_242

def RemovedBody753_244 : StackLang.HolProg 64 :=
.seq RemovedBody753_232 RemovedBody753_243

def RemovedBody753_245 : StackLang.HolProg 64 :=
.seq RemovedBody753_231 RemovedBody753_244

def RemovedBody753_246 : StackLang.HolProg 64 :=
.seq RemovedBody753_230 RemovedBody753_245

def RemovedBody753_247 : StackLang.HolProg 64 :=
.seq RemovedBody753_229 RemovedBody753_246

def RemovedBody753_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody753_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_251 : StackLang.HolProg 64 :=
.seq RemovedBody753_249 RemovedBody753_250

def RemovedBody753_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_255 : StackLang.HolProg 64 :=
.seq RemovedBody753_253 RemovedBody753_254

def RemovedBody753_256 : StackLang.HolProg 64 :=
.seq RemovedBody753_252 RemovedBody753_255

def RemovedBody753_257 : StackLang.HolProg 64 :=
.seq RemovedBody753_251 RemovedBody753_256

def RemovedBody753_258 : StackLang.HolProg 64 :=
.seq RemovedBody753_248 RemovedBody753_257

def RemovedBody753_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody753_260 : StackLang.HolProg 64 :=
.seq RemovedBody753_258 RemovedBody753_259

def RemovedBody753_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody753_247, 0, 753, 8)) (Sum.inl 729) (some (RemovedBody753_260, 753, 9))

def RemovedBody753_262 : StackLang.HolProg 64 :=
.seq RemovedBody753_228 RemovedBody753_261

def RemovedBody753_263 : StackLang.HolProg 64 :=
.seq RemovedBody753_227 RemovedBody753_262

def RemovedBody753_264 : StackLang.HolProg 64 :=
.seq RemovedBody753_226 RemovedBody753_263

def RemovedBody753_265 : StackLang.HolProg 64 :=
.seq RemovedBody753_197 RemovedBody753_264

def RemovedBody753_266 : StackLang.HolProg 64 :=
.seq RemovedBody753_194 RemovedBody753_265

def RemovedBody753_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody753_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody753_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody753_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3344#64)

def RemovedBody753_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_274 : StackLang.HolProg 64 :=
.seq RemovedBody753_272 RemovedBody753_273

def RemovedBody753_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_278 : StackLang.HolProg 64 :=
.seq RemovedBody753_276 RemovedBody753_277

def RemovedBody753_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_280 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_278 RemovedBody753_279

def RemovedBody753_281 : StackLang.HolProg 64 :=
.seq RemovedBody753_275 RemovedBody753_280

def RemovedBody753_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody753_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 11

def RemovedBody753_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody753_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody753_291 : StackLang.HolProg 64 :=
.seq RemovedBody753_289 RemovedBody753_290

def RemovedBody753_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody753_293 : StackLang.HolProg 64 :=
.seq RemovedBody753_291 RemovedBody753_292

def RemovedBody753_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_295 : StackLang.HolProg 64 :=
.seq RemovedBody753_293 RemovedBody753_294

def RemovedBody753_296 : StackLang.HolProg 64 :=
.seq RemovedBody753_288 RemovedBody753_295

def RemovedBody753_297 : StackLang.HolProg 64 :=
.seq RemovedBody753_287 RemovedBody753_296

def RemovedBody753_298 : StackLang.HolProg 64 :=
.seq RemovedBody753_286 RemovedBody753_297

def RemovedBody753_299 : StackLang.HolProg 64 :=
.seq RemovedBody753_285 RemovedBody753_298

def RemovedBody753_300 : StackLang.HolProg 64 :=
.seq RemovedBody753_284 RemovedBody753_299

def RemovedBody753_301 : StackLang.HolProg 64 :=
.seq RemovedBody753_283 RemovedBody753_300

def RemovedBody753_302 : StackLang.HolProg 64 :=
.seq RemovedBody753_282 RemovedBody753_301

def RemovedBody753_303 : StackLang.HolProg 64 :=
.seq RemovedBody753_281 RemovedBody753_302

def RemovedBody753_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody753_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_312 : StackLang.HolProg 64 :=
.seq RemovedBody753_310 RemovedBody753_311

def RemovedBody753_313 : StackLang.HolProg 64 :=
.seq RemovedBody753_309 RemovedBody753_312

def RemovedBody753_314 : StackLang.HolProg 64 :=
.seq RemovedBody753_308 RemovedBody753_313

def RemovedBody753_315 : StackLang.HolProg 64 :=
.seq RemovedBody753_307 RemovedBody753_314

def RemovedBody753_316 : StackLang.HolProg 64 :=
.seq RemovedBody753_306 RemovedBody753_315

def RemovedBody753_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody753_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_319 : StackLang.HolProg 64 :=
.seq RemovedBody753_317 RemovedBody753_318

def RemovedBody753_320 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody753_321 : StackLang.HolProg 64 :=
.seq RemovedBody753_319 RemovedBody753_320

def RemovedBody753_322 : StackLang.HolProg 64 :=
.call (some (RemovedBody753_316, 0, 753, 10)) (Sum.inl 729) (some (RemovedBody753_321, 753, 11))

def RemovedBody753_323 : StackLang.HolProg 64 :=
.seq RemovedBody753_305 RemovedBody753_322

def RemovedBody753_324 : StackLang.HolProg 64 :=
.seq RemovedBody753_304 RemovedBody753_323

def RemovedBody753_325 : StackLang.HolProg 64 :=
.seq RemovedBody753_303 RemovedBody753_324

def RemovedBody753_326 : StackLang.HolProg 64 :=
.seq RemovedBody753_274 RemovedBody753_325

def RemovedBody753_327 : StackLang.HolProg 64 :=
.seq RemovedBody753_271 RemovedBody753_326

def RemovedBody753_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody753_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody753_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3345#64)

def RemovedBody753_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_333 : StackLang.HolProg 64 :=
.seq RemovedBody753_331 RemovedBody753_332

def RemovedBody753_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_337 : StackLang.HolProg 64 :=
.seq RemovedBody753_335 RemovedBody753_336

def RemovedBody753_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_339 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_337 RemovedBody753_338

def RemovedBody753_340 : StackLang.HolProg 64 :=
.seq RemovedBody753_334 RemovedBody753_339

def RemovedBody753_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody753_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 13

def RemovedBody753_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody753_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody753_350 : StackLang.HolProg 64 :=
.seq RemovedBody753_348 RemovedBody753_349

def RemovedBody753_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody753_352 : StackLang.HolProg 64 :=
.seq RemovedBody753_350 RemovedBody753_351

def RemovedBody753_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_354 : StackLang.HolProg 64 :=
.seq RemovedBody753_352 RemovedBody753_353

def RemovedBody753_355 : StackLang.HolProg 64 :=
.seq RemovedBody753_347 RemovedBody753_354

def RemovedBody753_356 : StackLang.HolProg 64 :=
.seq RemovedBody753_346 RemovedBody753_355

def RemovedBody753_357 : StackLang.HolProg 64 :=
.seq RemovedBody753_345 RemovedBody753_356

def RemovedBody753_358 : StackLang.HolProg 64 :=
.seq RemovedBody753_344 RemovedBody753_357

def RemovedBody753_359 : StackLang.HolProg 64 :=
.seq RemovedBody753_343 RemovedBody753_358

def RemovedBody753_360 : StackLang.HolProg 64 :=
.seq RemovedBody753_342 RemovedBody753_359

def RemovedBody753_361 : StackLang.HolProg 64 :=
.seq RemovedBody753_341 RemovedBody753_360

def RemovedBody753_362 : StackLang.HolProg 64 :=
.seq RemovedBody753_340 RemovedBody753_361

def RemovedBody753_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_370 : StackLang.HolProg 64 :=
.seq RemovedBody753_368 RemovedBody753_369

def RemovedBody753_371 : StackLang.HolProg 64 :=
.seq RemovedBody753_367 RemovedBody753_370

def RemovedBody753_372 : StackLang.HolProg 64 :=
.seq RemovedBody753_366 RemovedBody753_371

def RemovedBody753_373 : StackLang.HolProg 64 :=
.seq RemovedBody753_365 RemovedBody753_372

def RemovedBody753_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody753_375 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody753_376 : StackLang.HolProg 64 :=
.seq RemovedBody753_374 RemovedBody753_375

def RemovedBody753_377 : StackLang.HolProg 64 :=
.call (some (RemovedBody753_373, 0, 753, 12)) (Sum.inl 729) (some (RemovedBody753_376, 753, 13))

def RemovedBody753_378 : StackLang.HolProg 64 :=
.seq RemovedBody753_364 RemovedBody753_377

def RemovedBody753_379 : StackLang.HolProg 64 :=
.seq RemovedBody753_363 RemovedBody753_378

def RemovedBody753_380 : StackLang.HolProg 64 :=
.seq RemovedBody753_362 RemovedBody753_379

def RemovedBody753_381 : StackLang.HolProg 64 :=
.seq RemovedBody753_333 RemovedBody753_380

def RemovedBody753_382 : StackLang.HolProg 64 :=
.seq RemovedBody753_330 RemovedBody753_381

def RemovedBody753_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody753_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody753_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3346#64)

def RemovedBody753_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_388 : StackLang.HolProg 64 :=
.seq RemovedBody753_386 RemovedBody753_387

def RemovedBody753_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody753_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody753_392 : StackLang.HolProg 64 :=
.seq RemovedBody753_390 RemovedBody753_391

def RemovedBody753_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_394 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody753_392 RemovedBody753_393

def RemovedBody753_395 : StackLang.HolProg 64 :=
.seq RemovedBody753_389 RemovedBody753_394

def RemovedBody753_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody753_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody753_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 753 15

def RemovedBody753_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody753_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody753_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody753_405 : StackLang.HolProg 64 :=
.seq RemovedBody753_403 RemovedBody753_404

def RemovedBody753_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody753_407 : StackLang.HolProg 64 :=
.seq RemovedBody753_405 RemovedBody753_406

def RemovedBody753_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_409 : StackLang.HolProg 64 :=
.seq RemovedBody753_407 RemovedBody753_408

def RemovedBody753_410 : StackLang.HolProg 64 :=
.seq RemovedBody753_402 RemovedBody753_409

def RemovedBody753_411 : StackLang.HolProg 64 :=
.seq RemovedBody753_401 RemovedBody753_410

def RemovedBody753_412 : StackLang.HolProg 64 :=
.seq RemovedBody753_400 RemovedBody753_411

def RemovedBody753_413 : StackLang.HolProg 64 :=
.seq RemovedBody753_399 RemovedBody753_412

def RemovedBody753_414 : StackLang.HolProg 64 :=
.seq RemovedBody753_398 RemovedBody753_413

def RemovedBody753_415 : StackLang.HolProg 64 :=
.seq RemovedBody753_397 RemovedBody753_414

def RemovedBody753_416 : StackLang.HolProg 64 :=
.seq RemovedBody753_396 RemovedBody753_415

def RemovedBody753_417 : StackLang.HolProg 64 :=
.seq RemovedBody753_395 RemovedBody753_416

def RemovedBody753_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody753_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody753_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody753_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody753_425 : StackLang.HolProg 64 :=
.seq RemovedBody753_423 RemovedBody753_424

def RemovedBody753_426 : StackLang.HolProg 64 :=
.seq RemovedBody753_422 RemovedBody753_425

def RemovedBody753_427 : StackLang.HolProg 64 :=
.seq RemovedBody753_421 RemovedBody753_426

def RemovedBody753_428 : StackLang.HolProg 64 :=
.seq RemovedBody753_420 RemovedBody753_427

def RemovedBody753_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody753_430 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody753_431 : StackLang.HolProg 64 :=
.seq RemovedBody753_429 RemovedBody753_430

def RemovedBody753_432 : StackLang.HolProg 64 :=
.call (some (RemovedBody753_428, 0, 753, 14)) (Sum.inl 70) (some (RemovedBody753_431, 753, 15))

def RemovedBody753_433 : StackLang.HolProg 64 :=
.seq RemovedBody753_419 RemovedBody753_432

def RemovedBody753_434 : StackLang.HolProg 64 :=
.seq RemovedBody753_418 RemovedBody753_433

def RemovedBody753_435 : StackLang.HolProg 64 :=
.seq RemovedBody753_417 RemovedBody753_434

def RemovedBody753_436 : StackLang.HolProg 64 :=
.seq RemovedBody753_388 RemovedBody753_435

def RemovedBody753_437 : StackLang.HolProg 64 :=
.seq RemovedBody753_385 RemovedBody753_436

def RemovedBody753_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody753_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody753_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody753_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody753_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody753_443 : StackLang.HolProg 64 :=
.seq RemovedBody753_441 RemovedBody753_442

def RemovedBody753_444 : StackLang.HolProg 64 :=
.seq RemovedBody753_440 RemovedBody753_443

def RemovedBody753_445 : StackLang.HolProg 64 :=
.seq RemovedBody753_439 RemovedBody753_444

def RemovedBody753_446 : StackLang.HolProg 64 :=
.seq RemovedBody753_438 RemovedBody753_445

def RemovedBody753_447 : StackLang.HolProg 64 :=
.seq RemovedBody753_437 RemovedBody753_446

def RemovedBody753_448 : StackLang.HolProg 64 :=
.seq RemovedBody753_384 RemovedBody753_447

def RemovedBody753_449 : StackLang.HolProg 64 :=
.seq RemovedBody753_383 RemovedBody753_448

def RemovedBody753_450 : StackLang.HolProg 64 :=
.seq RemovedBody753_382 RemovedBody753_449

def RemovedBody753_451 : StackLang.HolProg 64 :=
.seq RemovedBody753_329 RemovedBody753_450

def RemovedBody753_452 : StackLang.HolProg 64 :=
.seq RemovedBody753_328 RemovedBody753_451

def RemovedBody753_453 : StackLang.HolProg 64 :=
.seq RemovedBody753_327 RemovedBody753_452

def RemovedBody753_454 : StackLang.HolProg 64 :=
.seq RemovedBody753_270 RemovedBody753_453

def RemovedBody753_455 : StackLang.HolProg 64 :=
.seq RemovedBody753_269 RemovedBody753_454

def RemovedBody753_456 : StackLang.HolProg 64 :=
.seq RemovedBody753_268 RemovedBody753_455

def RemovedBody753_457 : StackLang.HolProg 64 :=
.seq RemovedBody753_267 RemovedBody753_456

def RemovedBody753_458 : StackLang.HolProg 64 :=
.seq RemovedBody753_266 RemovedBody753_457

def RemovedBody753_459 : StackLang.HolProg 64 :=
.seq RemovedBody753_193 RemovedBody753_458

def RemovedBody753_460 : StackLang.HolProg 64 :=
.seq RemovedBody753_190 RemovedBody753_459

def RemovedBody753_461 : StackLang.HolProg 64 :=
.seq RemovedBody753_189 RemovedBody753_460

def RemovedBody753_462 : StackLang.HolProg 64 :=
.seq RemovedBody753_188 RemovedBody753_461

def RemovedBody753_463 : StackLang.HolProg 64 :=
.seq RemovedBody753_187 RemovedBody753_462

def RemovedBody753_464 : StackLang.HolProg 64 :=
.seq RemovedBody753_186 RemovedBody753_463

def RemovedBody753_465 : StackLang.HolProg 64 :=
.seq RemovedBody753_185 RemovedBody753_464

def RemovedBody753_466 : StackLang.HolProg 64 :=
.seq RemovedBody753_128 RemovedBody753_465

def RemovedBody753_467 : StackLang.HolProg 64 :=
.seq RemovedBody753_125 RemovedBody753_466

def RemovedBody753_468 : StackLang.HolProg 64 :=
.seq RemovedBody753_124 RemovedBody753_467

def RemovedBody753_469 : StackLang.HolProg 64 :=
.seq RemovedBody753_123 RemovedBody753_468

def RemovedBody753_470 : StackLang.HolProg 64 :=
.seq RemovedBody753_122 RemovedBody753_469

def RemovedBody753_471 : StackLang.HolProg 64 :=
.seq RemovedBody753_67 RemovedBody753_470

def RemovedBody753_472 : StackLang.HolProg 64 :=
.seq RemovedBody753_66 RemovedBody753_471

def RemovedBody753_473 : StackLang.HolProg 64 :=
.seq RemovedBody753_65 RemovedBody753_472

def RemovedBody753_474 : StackLang.HolProg 64 :=
.seq RemovedBody753_64 RemovedBody753_473

def RemovedBody753_475 : StackLang.HolProg 64 :=
.seq RemovedBody753_11 RemovedBody753_474

def RemovedBody753_476 : StackLang.HolProg 64 :=
.seq RemovedBody753_6 RemovedBody753_475

def Removed753 : Nat × StackLang.HolProg 64 := (753, RemovedBody753_476)
theorem Removed753_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc753 = Removed753 := by
  kernel_rfl
#print axioms Removed753_eq
end InitECandidate.Proofs.BackendStages
