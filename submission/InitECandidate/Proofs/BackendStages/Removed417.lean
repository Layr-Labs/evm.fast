import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc417
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody417_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody417_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody417_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody417_3 : StackLang.HolProg 64 :=
.seq RemovedBody417_1 RemovedBody417_2

def RemovedBody417_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody417_3 RemovedBody417_4

def RemovedBody417_6 : StackLang.HolProg 64 :=
.seq RemovedBody417_0 RemovedBody417_5

def RemovedBody417_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1243#64)

def RemovedBody417_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody417_11 : StackLang.HolProg 64 :=
.seq RemovedBody417_9 RemovedBody417_10

def RemovedBody417_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody417_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody417_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody417_15 : StackLang.HolProg 64 :=
.seq RemovedBody417_13 RemovedBody417_14

def RemovedBody417_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody417_15 RemovedBody417_16

def RemovedBody417_18 : StackLang.HolProg 64 :=
.seq RemovedBody417_12 RemovedBody417_17

def RemovedBody417_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody417_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody417_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 3

def RemovedBody417_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody417_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody417_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody417_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody417_28 : StackLang.HolProg 64 :=
.seq RemovedBody417_26 RemovedBody417_27

def RemovedBody417_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody417_30 : StackLang.HolProg 64 :=
.seq RemovedBody417_28 RemovedBody417_29

def RemovedBody417_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody417_32 : StackLang.HolProg 64 :=
.seq RemovedBody417_30 RemovedBody417_31

def RemovedBody417_33 : StackLang.HolProg 64 :=
.seq RemovedBody417_25 RemovedBody417_32

def RemovedBody417_34 : StackLang.HolProg 64 :=
.seq RemovedBody417_24 RemovedBody417_33

def RemovedBody417_35 : StackLang.HolProg 64 :=
.seq RemovedBody417_23 RemovedBody417_34

def RemovedBody417_36 : StackLang.HolProg 64 :=
.seq RemovedBody417_22 RemovedBody417_35

def RemovedBody417_37 : StackLang.HolProg 64 :=
.seq RemovedBody417_21 RemovedBody417_36

def RemovedBody417_38 : StackLang.HolProg 64 :=
.seq RemovedBody417_20 RemovedBody417_37

def RemovedBody417_39 : StackLang.HolProg 64 :=
.seq RemovedBody417_19 RemovedBody417_38

def RemovedBody417_40 : StackLang.HolProg 64 :=
.seq RemovedBody417_18 RemovedBody417_39

def RemovedBody417_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody417_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody417_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody417_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody417_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_49 : StackLang.HolProg 64 :=
.seq RemovedBody417_47 RemovedBody417_48

def RemovedBody417_50 : StackLang.HolProg 64 :=
.seq RemovedBody417_46 RemovedBody417_49

def RemovedBody417_51 : StackLang.HolProg 64 :=
.seq RemovedBody417_45 RemovedBody417_50

def RemovedBody417_52 : StackLang.HolProg 64 :=
.seq RemovedBody417_44 RemovedBody417_51

def RemovedBody417_53 : StackLang.HolProg 64 :=
.seq RemovedBody417_43 RemovedBody417_52

def RemovedBody417_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody417_56 : StackLang.HolProg 64 :=
.seq RemovedBody417_54 RemovedBody417_55

def RemovedBody417_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody417_53, 0, 417, 2)) (Sum.inl 406) (some (RemovedBody417_56, 417, 3))

def RemovedBody417_58 : StackLang.HolProg 64 :=
.seq RemovedBody417_42 RemovedBody417_57

def RemovedBody417_59 : StackLang.HolProg 64 :=
.seq RemovedBody417_41 RemovedBody417_58

def RemovedBody417_60 : StackLang.HolProg 64 :=
.seq RemovedBody417_40 RemovedBody417_59

def RemovedBody417_61 : StackLang.HolProg 64 :=
.seq RemovedBody417_11 RemovedBody417_60

def RemovedBody417_62 : StackLang.HolProg 64 :=
.seq RemovedBody417_8 RemovedBody417_61

def RemovedBody417_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody417_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody417_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody417_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody417_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody417_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody417_71 : StackLang.HolProg 64 :=
.seq RemovedBody417_69 RemovedBody417_70

def RemovedBody417_72 : StackLang.HolProg 64 :=
.seq RemovedBody417_68 RemovedBody417_71

def RemovedBody417_73 : StackLang.HolProg 64 :=
.seq RemovedBody417_67 RemovedBody417_72

def RemovedBody417_74 : StackLang.HolProg 64 :=
.seq RemovedBody417_66 RemovedBody417_73

def RemovedBody417_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody417_74 RemovedBody417_75

def RemovedBody417_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody417_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody417_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody417_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_81 : StackLang.HolProg 64 :=
.seq RemovedBody417_79 RemovedBody417_80

def RemovedBody417_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1244#64)

def RemovedBody417_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody417_85 : StackLang.HolProg 64 :=
.seq RemovedBody417_83 RemovedBody417_84

def RemovedBody417_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody417_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody417_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody417_89 : StackLang.HolProg 64 :=
.seq RemovedBody417_87 RemovedBody417_88

def RemovedBody417_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody417_89 RemovedBody417_90

def RemovedBody417_92 : StackLang.HolProg 64 :=
.seq RemovedBody417_86 RemovedBody417_91

def RemovedBody417_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody417_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody417_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 5

def RemovedBody417_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody417_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody417_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody417_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody417_102 : StackLang.HolProg 64 :=
.seq RemovedBody417_100 RemovedBody417_101

def RemovedBody417_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody417_104 : StackLang.HolProg 64 :=
.seq RemovedBody417_102 RemovedBody417_103

def RemovedBody417_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody417_106 : StackLang.HolProg 64 :=
.seq RemovedBody417_104 RemovedBody417_105

def RemovedBody417_107 : StackLang.HolProg 64 :=
.seq RemovedBody417_99 RemovedBody417_106

def RemovedBody417_108 : StackLang.HolProg 64 :=
.seq RemovedBody417_98 RemovedBody417_107

def RemovedBody417_109 : StackLang.HolProg 64 :=
.seq RemovedBody417_97 RemovedBody417_108

def RemovedBody417_110 : StackLang.HolProg 64 :=
.seq RemovedBody417_96 RemovedBody417_109

def RemovedBody417_111 : StackLang.HolProg 64 :=
.seq RemovedBody417_95 RemovedBody417_110

def RemovedBody417_112 : StackLang.HolProg 64 :=
.seq RemovedBody417_94 RemovedBody417_111

def RemovedBody417_113 : StackLang.HolProg 64 :=
.seq RemovedBody417_93 RemovedBody417_112

def RemovedBody417_114 : StackLang.HolProg 64 :=
.seq RemovedBody417_92 RemovedBody417_113

def RemovedBody417_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody417_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody417_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody417_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody417_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody417_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_123 : StackLang.HolProg 64 :=
.seq RemovedBody417_121 RemovedBody417_122

def RemovedBody417_124 : StackLang.HolProg 64 :=
.seq RemovedBody417_120 RemovedBody417_123

def RemovedBody417_125 : StackLang.HolProg 64 :=
.seq RemovedBody417_119 RemovedBody417_124

def RemovedBody417_126 : StackLang.HolProg 64 :=
.seq RemovedBody417_118 RemovedBody417_125

def RemovedBody417_127 : StackLang.HolProg 64 :=
.seq RemovedBody417_117 RemovedBody417_126

def RemovedBody417_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody417_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody417_130 : StackLang.HolProg 64 :=
.seq RemovedBody417_128 RemovedBody417_129

def RemovedBody417_131 : StackLang.HolProg 64 :=
.call (some (RemovedBody417_127, 0, 417, 4)) (Sum.inl 416) (some (RemovedBody417_130, 417, 5))

def RemovedBody417_132 : StackLang.HolProg 64 :=
.seq RemovedBody417_116 RemovedBody417_131

def RemovedBody417_133 : StackLang.HolProg 64 :=
.seq RemovedBody417_115 RemovedBody417_132

def RemovedBody417_134 : StackLang.HolProg 64 :=
.seq RemovedBody417_114 RemovedBody417_133

def RemovedBody417_135 : StackLang.HolProg 64 :=
.seq RemovedBody417_85 RemovedBody417_134

def RemovedBody417_136 : StackLang.HolProg 64 :=
.seq RemovedBody417_82 RemovedBody417_135

def RemovedBody417_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody417_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody417_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody417_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody417_141 : StackLang.HolProg 64 :=
.seq RemovedBody417_139 RemovedBody417_140

def RemovedBody417_142 : StackLang.HolProg 64 :=
.seq RemovedBody417_138 RemovedBody417_141

def RemovedBody417_143 : StackLang.HolProg 64 :=
.seq RemovedBody417_137 RemovedBody417_142

def RemovedBody417_144 : StackLang.HolProg 64 :=
.seq RemovedBody417_136 RemovedBody417_143

def RemovedBody417_145 : StackLang.HolProg 64 :=
.seq RemovedBody417_81 RemovedBody417_144

def RemovedBody417_146 : StackLang.HolProg 64 :=
.seq RemovedBody417_78 RemovedBody417_145

def RemovedBody417_147 : StackLang.HolProg 64 :=
.seq RemovedBody417_77 RemovedBody417_146

def RemovedBody417_148 : StackLang.HolProg 64 :=
.seq RemovedBody417_76 RemovedBody417_147

def RemovedBody417_149 : StackLang.HolProg 64 :=
.seq RemovedBody417_65 RemovedBody417_148

def RemovedBody417_150 : StackLang.HolProg 64 :=
.seq RemovedBody417_64 RemovedBody417_149

def RemovedBody417_151 : StackLang.HolProg 64 :=
.seq RemovedBody417_63 RemovedBody417_150

def RemovedBody417_152 : StackLang.HolProg 64 :=
.seq RemovedBody417_62 RemovedBody417_151

def RemovedBody417_153 : StackLang.HolProg 64 :=
.seq RemovedBody417_7 RemovedBody417_152

def RemovedBody417_154 : StackLang.HolProg 64 :=
.seq RemovedBody417_6 RemovedBody417_153

def Removed417 : Nat × StackLang.HolProg 64 := (417, RemovedBody417_154)
theorem Removed417_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc417 = Removed417 := by
  kernel_rfl
#print axioms Removed417_eq
end InitECandidate.Proofs.BackendStages
