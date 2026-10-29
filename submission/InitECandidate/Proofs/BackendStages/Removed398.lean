import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc398
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody398_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody398_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody398_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody398_3 : StackLang.HolProg 64 :=
.seq RemovedBody398_1 RemovedBody398_2

def RemovedBody398_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody398_3 RemovedBody398_4

def RemovedBody398_6 : StackLang.HolProg 64 :=
.seq RemovedBody398_0 RemovedBody398_5

def RemovedBody398_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody398_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1181#64)

def RemovedBody398_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody398_11 : StackLang.HolProg 64 :=
.seq RemovedBody398_9 RemovedBody398_10

def RemovedBody398_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody398_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody398_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody398_15 : StackLang.HolProg 64 :=
.seq RemovedBody398_13 RemovedBody398_14

def RemovedBody398_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody398_15 RemovedBody398_16

def RemovedBody398_18 : StackLang.HolProg 64 :=
.seq RemovedBody398_12 RemovedBody398_17

def RemovedBody398_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody398_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody398_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 3

def RemovedBody398_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody398_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody398_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody398_28 : StackLang.HolProg 64 :=
.seq RemovedBody398_26 RemovedBody398_27

def RemovedBody398_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody398_30 : StackLang.HolProg 64 :=
.seq RemovedBody398_28 RemovedBody398_29

def RemovedBody398_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_32 : StackLang.HolProg 64 :=
.seq RemovedBody398_30 RemovedBody398_31

def RemovedBody398_33 : StackLang.HolProg 64 :=
.seq RemovedBody398_25 RemovedBody398_32

def RemovedBody398_34 : StackLang.HolProg 64 :=
.seq RemovedBody398_24 RemovedBody398_33

def RemovedBody398_35 : StackLang.HolProg 64 :=
.seq RemovedBody398_23 RemovedBody398_34

def RemovedBody398_36 : StackLang.HolProg 64 :=
.seq RemovedBody398_22 RemovedBody398_35

def RemovedBody398_37 : StackLang.HolProg 64 :=
.seq RemovedBody398_21 RemovedBody398_36

def RemovedBody398_38 : StackLang.HolProg 64 :=
.seq RemovedBody398_20 RemovedBody398_37

def RemovedBody398_39 : StackLang.HolProg 64 :=
.seq RemovedBody398_19 RemovedBody398_38

def RemovedBody398_40 : StackLang.HolProg 64 :=
.seq RemovedBody398_18 RemovedBody398_39

def RemovedBody398_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody398_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody398_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody398_49 : StackLang.HolProg 64 :=
.seq RemovedBody398_47 RemovedBody398_48

def RemovedBody398_50 : StackLang.HolProg 64 :=
.seq RemovedBody398_46 RemovedBody398_49

def RemovedBody398_51 : StackLang.HolProg 64 :=
.seq RemovedBody398_45 RemovedBody398_50

def RemovedBody398_52 : StackLang.HolProg 64 :=
.seq RemovedBody398_44 RemovedBody398_51

def RemovedBody398_53 : StackLang.HolProg 64 :=
.seq RemovedBody398_43 RemovedBody398_52

def RemovedBody398_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody398_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody398_56 : StackLang.HolProg 64 :=
.seq RemovedBody398_54 RemovedBody398_55

def RemovedBody398_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody398_53, 0, 398, 2)) (Sum.inl 397) (some (RemovedBody398_56, 398, 3))

def RemovedBody398_58 : StackLang.HolProg 64 :=
.seq RemovedBody398_42 RemovedBody398_57

def RemovedBody398_59 : StackLang.HolProg 64 :=
.seq RemovedBody398_41 RemovedBody398_58

def RemovedBody398_60 : StackLang.HolProg 64 :=
.seq RemovedBody398_40 RemovedBody398_59

def RemovedBody398_61 : StackLang.HolProg 64 :=
.seq RemovedBody398_11 RemovedBody398_60

def RemovedBody398_62 : StackLang.HolProg 64 :=
.seq RemovedBody398_8 RemovedBody398_61

def RemovedBody398_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody398_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody398_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody398_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody398_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody398_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody398_71 : StackLang.HolProg 64 :=
.seq RemovedBody398_69 RemovedBody398_70

def RemovedBody398_72 : StackLang.HolProg 64 :=
.seq RemovedBody398_68 RemovedBody398_71

def RemovedBody398_73 : StackLang.HolProg 64 :=
.seq RemovedBody398_67 RemovedBody398_72

def RemovedBody398_74 : StackLang.HolProg 64 :=
.seq RemovedBody398_66 RemovedBody398_73

def RemovedBody398_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody398_74 RemovedBody398_75

def RemovedBody398_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody398_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody398_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def RemovedBody398_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody398_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody398_83 : StackLang.HolProg 64 :=
.seq RemovedBody398_81 RemovedBody398_82

def RemovedBody398_84 : StackLang.HolProg 64 :=
.seq RemovedBody398_80 RemovedBody398_83

def RemovedBody398_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1182#64)

def RemovedBody398_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody398_88 : StackLang.HolProg 64 :=
.seq RemovedBody398_86 RemovedBody398_87

def RemovedBody398_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody398_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody398_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody398_92 : StackLang.HolProg 64 :=
.seq RemovedBody398_90 RemovedBody398_91

def RemovedBody398_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody398_92 RemovedBody398_93

def RemovedBody398_95 : StackLang.HolProg 64 :=
.seq RemovedBody398_89 RemovedBody398_94

def RemovedBody398_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody398_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody398_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 5

def RemovedBody398_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody398_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody398_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody398_105 : StackLang.HolProg 64 :=
.seq RemovedBody398_103 RemovedBody398_104

def RemovedBody398_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody398_107 : StackLang.HolProg 64 :=
.seq RemovedBody398_105 RemovedBody398_106

def RemovedBody398_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_109 : StackLang.HolProg 64 :=
.seq RemovedBody398_107 RemovedBody398_108

def RemovedBody398_110 : StackLang.HolProg 64 :=
.seq RemovedBody398_102 RemovedBody398_109

def RemovedBody398_111 : StackLang.HolProg 64 :=
.seq RemovedBody398_101 RemovedBody398_110

def RemovedBody398_112 : StackLang.HolProg 64 :=
.seq RemovedBody398_100 RemovedBody398_111

def RemovedBody398_113 : StackLang.HolProg 64 :=
.seq RemovedBody398_99 RemovedBody398_112

def RemovedBody398_114 : StackLang.HolProg 64 :=
.seq RemovedBody398_98 RemovedBody398_113

def RemovedBody398_115 : StackLang.HolProg 64 :=
.seq RemovedBody398_97 RemovedBody398_114

def RemovedBody398_116 : StackLang.HolProg 64 :=
.seq RemovedBody398_96 RemovedBody398_115

def RemovedBody398_117 : StackLang.HolProg 64 :=
.seq RemovedBody398_95 RemovedBody398_116

def RemovedBody398_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody398_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody398_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody398_127 : StackLang.HolProg 64 :=
.seq RemovedBody398_125 RemovedBody398_126

def RemovedBody398_128 : StackLang.HolProg 64 :=
.seq RemovedBody398_124 RemovedBody398_127

def RemovedBody398_129 : StackLang.HolProg 64 :=
.seq RemovedBody398_123 RemovedBody398_128

def RemovedBody398_130 : StackLang.HolProg 64 :=
.seq RemovedBody398_122 RemovedBody398_129

def RemovedBody398_131 : StackLang.HolProg 64 :=
.seq RemovedBody398_121 RemovedBody398_130

def RemovedBody398_132 : StackLang.HolProg 64 :=
.seq RemovedBody398_120 RemovedBody398_131

def RemovedBody398_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody398_135 : StackLang.HolProg 64 :=
.seq RemovedBody398_133 RemovedBody398_134

def RemovedBody398_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody398_137 : StackLang.HolProg 64 :=
.seq RemovedBody398_135 RemovedBody398_136

def RemovedBody398_138 : StackLang.HolProg 64 :=
.call (some (RemovedBody398_132, 0, 398, 4)) (Sum.inl 68) (some (RemovedBody398_137, 398, 5))

def RemovedBody398_139 : StackLang.HolProg 64 :=
.seq RemovedBody398_119 RemovedBody398_138

def RemovedBody398_140 : StackLang.HolProg 64 :=
.seq RemovedBody398_118 RemovedBody398_139

def RemovedBody398_141 : StackLang.HolProg 64 :=
.seq RemovedBody398_117 RemovedBody398_140

def RemovedBody398_142 : StackLang.HolProg 64 :=
.seq RemovedBody398_88 RemovedBody398_141

def RemovedBody398_143 : StackLang.HolProg 64 :=
.seq RemovedBody398_85 RemovedBody398_142

def RemovedBody398_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody398_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody398_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_147 : StackLang.HolProg 64 :=
.seq RemovedBody398_145 RemovedBody398_146

def RemovedBody398_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1183#64)

def RemovedBody398_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody398_151 : StackLang.HolProg 64 :=
.seq RemovedBody398_149 RemovedBody398_150

def RemovedBody398_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody398_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody398_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody398_155 : StackLang.HolProg 64 :=
.seq RemovedBody398_153 RemovedBody398_154

def RemovedBody398_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody398_155 RemovedBody398_156

def RemovedBody398_158 : StackLang.HolProg 64 :=
.seq RemovedBody398_152 RemovedBody398_157

def RemovedBody398_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody398_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody398_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 7

def RemovedBody398_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody398_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody398_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody398_168 : StackLang.HolProg 64 :=
.seq RemovedBody398_166 RemovedBody398_167

def RemovedBody398_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody398_170 : StackLang.HolProg 64 :=
.seq RemovedBody398_168 RemovedBody398_169

def RemovedBody398_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_172 : StackLang.HolProg 64 :=
.seq RemovedBody398_170 RemovedBody398_171

def RemovedBody398_173 : StackLang.HolProg 64 :=
.seq RemovedBody398_165 RemovedBody398_172

def RemovedBody398_174 : StackLang.HolProg 64 :=
.seq RemovedBody398_164 RemovedBody398_173

def RemovedBody398_175 : StackLang.HolProg 64 :=
.seq RemovedBody398_163 RemovedBody398_174

def RemovedBody398_176 : StackLang.HolProg 64 :=
.seq RemovedBody398_162 RemovedBody398_175

def RemovedBody398_177 : StackLang.HolProg 64 :=
.seq RemovedBody398_161 RemovedBody398_176

def RemovedBody398_178 : StackLang.HolProg 64 :=
.seq RemovedBody398_160 RemovedBody398_177

def RemovedBody398_179 : StackLang.HolProg 64 :=
.seq RemovedBody398_159 RemovedBody398_178

def RemovedBody398_180 : StackLang.HolProg 64 :=
.seq RemovedBody398_158 RemovedBody398_179

def RemovedBody398_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody398_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody398_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody398_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody398_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_189 : StackLang.HolProg 64 :=
.seq RemovedBody398_187 RemovedBody398_188

def RemovedBody398_190 : StackLang.HolProg 64 :=
.seq RemovedBody398_186 RemovedBody398_189

def RemovedBody398_191 : StackLang.HolProg 64 :=
.seq RemovedBody398_185 RemovedBody398_190

def RemovedBody398_192 : StackLang.HolProg 64 :=
.seq RemovedBody398_184 RemovedBody398_191

def RemovedBody398_193 : StackLang.HolProg 64 :=
.seq RemovedBody398_183 RemovedBody398_192

def RemovedBody398_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody398_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody398_196 : StackLang.HolProg 64 :=
.seq RemovedBody398_194 RemovedBody398_195

def RemovedBody398_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody398_198 : StackLang.HolProg 64 :=
.seq RemovedBody398_196 RemovedBody398_197

def RemovedBody398_199 : StackLang.HolProg 64 :=
.call (some (RemovedBody398_193, 0, 398, 6)) (Sum.inl 333) (some (RemovedBody398_198, 398, 7))

def RemovedBody398_200 : StackLang.HolProg 64 :=
.seq RemovedBody398_182 RemovedBody398_199

def RemovedBody398_201 : StackLang.HolProg 64 :=
.seq RemovedBody398_181 RemovedBody398_200

def RemovedBody398_202 : StackLang.HolProg 64 :=
.seq RemovedBody398_180 RemovedBody398_201

def RemovedBody398_203 : StackLang.HolProg 64 :=
.seq RemovedBody398_151 RemovedBody398_202

def RemovedBody398_204 : StackLang.HolProg 64 :=
.seq RemovedBody398_148 RemovedBody398_203

def RemovedBody398_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody398_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody398_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody398_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody398_209 : StackLang.HolProg 64 :=
.seq RemovedBody398_207 RemovedBody398_208

def RemovedBody398_210 : StackLang.HolProg 64 :=
.seq RemovedBody398_206 RemovedBody398_209

def RemovedBody398_211 : StackLang.HolProg 64 :=
.seq RemovedBody398_205 RemovedBody398_210

def RemovedBody398_212 : StackLang.HolProg 64 :=
.seq RemovedBody398_204 RemovedBody398_211

def RemovedBody398_213 : StackLang.HolProg 64 :=
.seq RemovedBody398_147 RemovedBody398_212

def RemovedBody398_214 : StackLang.HolProg 64 :=
.seq RemovedBody398_144 RemovedBody398_213

def RemovedBody398_215 : StackLang.HolProg 64 :=
.seq RemovedBody398_143 RemovedBody398_214

def RemovedBody398_216 : StackLang.HolProg 64 :=
.seq RemovedBody398_84 RemovedBody398_215

def RemovedBody398_217 : StackLang.HolProg 64 :=
.seq RemovedBody398_79 RemovedBody398_216

def RemovedBody398_218 : StackLang.HolProg 64 :=
.seq RemovedBody398_78 RemovedBody398_217

def RemovedBody398_219 : StackLang.HolProg 64 :=
.seq RemovedBody398_77 RemovedBody398_218

def RemovedBody398_220 : StackLang.HolProg 64 :=
.seq RemovedBody398_76 RemovedBody398_219

def RemovedBody398_221 : StackLang.HolProg 64 :=
.seq RemovedBody398_65 RemovedBody398_220

def RemovedBody398_222 : StackLang.HolProg 64 :=
.seq RemovedBody398_64 RemovedBody398_221

def RemovedBody398_223 : StackLang.HolProg 64 :=
.seq RemovedBody398_63 RemovedBody398_222

def RemovedBody398_224 : StackLang.HolProg 64 :=
.seq RemovedBody398_62 RemovedBody398_223

def RemovedBody398_225 : StackLang.HolProg 64 :=
.seq RemovedBody398_7 RemovedBody398_224

def RemovedBody398_226 : StackLang.HolProg 64 :=
.seq RemovedBody398_6 RemovedBody398_225

def Removed398 : Nat × StackLang.HolProg 64 := (398, RemovedBody398_226)
theorem Removed398_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc398 = Removed398 := by
  kernel_rfl
#print axioms Removed398_eq
end InitECandidate.Proofs.BackendStages
