import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc698
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody698_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody698_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_3 : StackLang.HolProg 64 :=
.seq RemovedBody698_1 RemovedBody698_2

def RemovedBody698_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_3 RemovedBody698_4

def RemovedBody698_6 : StackLang.HolProg 64 :=
.seq RemovedBody698_0 RemovedBody698_5

def RemovedBody698_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody698_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody698_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_10 : StackLang.HolProg 64 :=
.seq RemovedBody698_8 RemovedBody698_9

def RemovedBody698_11 : StackLang.HolProg 64 :=
.seq RemovedBody698_7 RemovedBody698_10

def RemovedBody698_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3076#64)

def RemovedBody698_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_15 : StackLang.HolProg 64 :=
.seq RemovedBody698_13 RemovedBody698_14

def RemovedBody698_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_19 : StackLang.HolProg 64 :=
.seq RemovedBody698_17 RemovedBody698_18

def RemovedBody698_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_19 RemovedBody698_20

def RemovedBody698_22 : StackLang.HolProg 64 :=
.seq RemovedBody698_16 RemovedBody698_21

def RemovedBody698_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 3

def RemovedBody698_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_32 : StackLang.HolProg 64 :=
.seq RemovedBody698_30 RemovedBody698_31

def RemovedBody698_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_34 : StackLang.HolProg 64 :=
.seq RemovedBody698_32 RemovedBody698_33

def RemovedBody698_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_36 : StackLang.HolProg 64 :=
.seq RemovedBody698_34 RemovedBody698_35

def RemovedBody698_37 : StackLang.HolProg 64 :=
.seq RemovedBody698_29 RemovedBody698_36

def RemovedBody698_38 : StackLang.HolProg 64 :=
.seq RemovedBody698_28 RemovedBody698_37

def RemovedBody698_39 : StackLang.HolProg 64 :=
.seq RemovedBody698_27 RemovedBody698_38

def RemovedBody698_40 : StackLang.HolProg 64 :=
.seq RemovedBody698_26 RemovedBody698_39

def RemovedBody698_41 : StackLang.HolProg 64 :=
.seq RemovedBody698_25 RemovedBody698_40

def RemovedBody698_42 : StackLang.HolProg 64 :=
.seq RemovedBody698_24 RemovedBody698_41

def RemovedBody698_43 : StackLang.HolProg 64 :=
.seq RemovedBody698_23 RemovedBody698_42

def RemovedBody698_44 : StackLang.HolProg 64 :=
.seq RemovedBody698_22 RemovedBody698_43

def RemovedBody698_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody698_52 : StackLang.HolProg 64 :=
.seq RemovedBody698_50 RemovedBody698_51

def RemovedBody698_53 : StackLang.HolProg 64 :=
.seq RemovedBody698_49 RemovedBody698_52

def RemovedBody698_54 : StackLang.HolProg 64 :=
.seq RemovedBody698_48 RemovedBody698_53

def RemovedBody698_55 : StackLang.HolProg 64 :=
.seq RemovedBody698_47 RemovedBody698_54

def RemovedBody698_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_58 : StackLang.HolProg 64 :=
.seq RemovedBody698_56 RemovedBody698_57

def RemovedBody698_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_55, 0, 698, 2)) (Sum.inl 69) (some (RemovedBody698_58, 698, 3))

def RemovedBody698_60 : StackLang.HolProg 64 :=
.seq RemovedBody698_46 RemovedBody698_59

def RemovedBody698_61 : StackLang.HolProg 64 :=
.seq RemovedBody698_45 RemovedBody698_60

def RemovedBody698_62 : StackLang.HolProg 64 :=
.seq RemovedBody698_44 RemovedBody698_61

def RemovedBody698_63 : StackLang.HolProg 64 :=
.seq RemovedBody698_15 RemovedBody698_62

def RemovedBody698_64 : StackLang.HolProg 64 :=
.seq RemovedBody698_12 RemovedBody698_63

def RemovedBody698_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody698_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody698_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3077#64)

def RemovedBody698_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_71 : StackLang.HolProg 64 :=
.seq RemovedBody698_69 RemovedBody698_70

def RemovedBody698_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_75 : StackLang.HolProg 64 :=
.seq RemovedBody698_73 RemovedBody698_74

def RemovedBody698_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_75 RemovedBody698_76

def RemovedBody698_78 : StackLang.HolProg 64 :=
.seq RemovedBody698_72 RemovedBody698_77

def RemovedBody698_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 5

def RemovedBody698_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_88 : StackLang.HolProg 64 :=
.seq RemovedBody698_86 RemovedBody698_87

def RemovedBody698_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_90 : StackLang.HolProg 64 :=
.seq RemovedBody698_88 RemovedBody698_89

def RemovedBody698_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_92 : StackLang.HolProg 64 :=
.seq RemovedBody698_90 RemovedBody698_91

def RemovedBody698_93 : StackLang.HolProg 64 :=
.seq RemovedBody698_85 RemovedBody698_92

def RemovedBody698_94 : StackLang.HolProg 64 :=
.seq RemovedBody698_84 RemovedBody698_93

def RemovedBody698_95 : StackLang.HolProg 64 :=
.seq RemovedBody698_83 RemovedBody698_94

def RemovedBody698_96 : StackLang.HolProg 64 :=
.seq RemovedBody698_82 RemovedBody698_95

def RemovedBody698_97 : StackLang.HolProg 64 :=
.seq RemovedBody698_81 RemovedBody698_96

def RemovedBody698_98 : StackLang.HolProg 64 :=
.seq RemovedBody698_80 RemovedBody698_97

def RemovedBody698_99 : StackLang.HolProg 64 :=
.seq RemovedBody698_79 RemovedBody698_98

def RemovedBody698_100 : StackLang.HolProg 64 :=
.seq RemovedBody698_78 RemovedBody698_99

def RemovedBody698_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody698_108 : StackLang.HolProg 64 :=
.seq RemovedBody698_106 RemovedBody698_107

def RemovedBody698_109 : StackLang.HolProg 64 :=
.seq RemovedBody698_105 RemovedBody698_108

def RemovedBody698_110 : StackLang.HolProg 64 :=
.seq RemovedBody698_104 RemovedBody698_109

def RemovedBody698_111 : StackLang.HolProg 64 :=
.seq RemovedBody698_103 RemovedBody698_110

def RemovedBody698_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_114 : StackLang.HolProg 64 :=
.seq RemovedBody698_112 RemovedBody698_113

def RemovedBody698_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_111, 0, 698, 4)) (Sum.inl 68) (some (RemovedBody698_114, 698, 5))

def RemovedBody698_116 : StackLang.HolProg 64 :=
.seq RemovedBody698_102 RemovedBody698_115

def RemovedBody698_117 : StackLang.HolProg 64 :=
.seq RemovedBody698_101 RemovedBody698_116

def RemovedBody698_118 : StackLang.HolProg 64 :=
.seq RemovedBody698_100 RemovedBody698_117

def RemovedBody698_119 : StackLang.HolProg 64 :=
.seq RemovedBody698_71 RemovedBody698_118

def RemovedBody698_120 : StackLang.HolProg 64 :=
.seq RemovedBody698_68 RemovedBody698_119

def RemovedBody698_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody698_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3078#64)

def RemovedBody698_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_127 : StackLang.HolProg 64 :=
.seq RemovedBody698_125 RemovedBody698_126

def RemovedBody698_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_131 : StackLang.HolProg 64 :=
.seq RemovedBody698_129 RemovedBody698_130

def RemovedBody698_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_131 RemovedBody698_132

def RemovedBody698_134 : StackLang.HolProg 64 :=
.seq RemovedBody698_128 RemovedBody698_133

def RemovedBody698_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 7

def RemovedBody698_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_144 : StackLang.HolProg 64 :=
.seq RemovedBody698_142 RemovedBody698_143

def RemovedBody698_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_146 : StackLang.HolProg 64 :=
.seq RemovedBody698_144 RemovedBody698_145

def RemovedBody698_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_148 : StackLang.HolProg 64 :=
.seq RemovedBody698_146 RemovedBody698_147

def RemovedBody698_149 : StackLang.HolProg 64 :=
.seq RemovedBody698_141 RemovedBody698_148

def RemovedBody698_150 : StackLang.HolProg 64 :=
.seq RemovedBody698_140 RemovedBody698_149

def RemovedBody698_151 : StackLang.HolProg 64 :=
.seq RemovedBody698_139 RemovedBody698_150

def RemovedBody698_152 : StackLang.HolProg 64 :=
.seq RemovedBody698_138 RemovedBody698_151

def RemovedBody698_153 : StackLang.HolProg 64 :=
.seq RemovedBody698_137 RemovedBody698_152

def RemovedBody698_154 : StackLang.HolProg 64 :=
.seq RemovedBody698_136 RemovedBody698_153

def RemovedBody698_155 : StackLang.HolProg 64 :=
.seq RemovedBody698_135 RemovedBody698_154

def RemovedBody698_156 : StackLang.HolProg 64 :=
.seq RemovedBody698_134 RemovedBody698_155

def RemovedBody698_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody698_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_166 : StackLang.HolProg 64 :=
.seq RemovedBody698_164 RemovedBody698_165

def RemovedBody698_167 : StackLang.HolProg 64 :=
.seq RemovedBody698_163 RemovedBody698_166

def RemovedBody698_168 : StackLang.HolProg 64 :=
.seq RemovedBody698_162 RemovedBody698_167

def RemovedBody698_169 : StackLang.HolProg 64 :=
.seq RemovedBody698_161 RemovedBody698_168

def RemovedBody698_170 : StackLang.HolProg 64 :=
.seq RemovedBody698_160 RemovedBody698_169

def RemovedBody698_171 : StackLang.HolProg 64 :=
.seq RemovedBody698_159 RemovedBody698_170

def RemovedBody698_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_174 : StackLang.HolProg 64 :=
.seq RemovedBody698_172 RemovedBody698_173

def RemovedBody698_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_176 : StackLang.HolProg 64 :=
.seq RemovedBody698_174 RemovedBody698_175

def RemovedBody698_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_171, 0, 698, 6)) (Sum.inl 68) (some (RemovedBody698_176, 698, 7))

def RemovedBody698_178 : StackLang.HolProg 64 :=
.seq RemovedBody698_158 RemovedBody698_177

def RemovedBody698_179 : StackLang.HolProg 64 :=
.seq RemovedBody698_157 RemovedBody698_178

def RemovedBody698_180 : StackLang.HolProg 64 :=
.seq RemovedBody698_156 RemovedBody698_179

def RemovedBody698_181 : StackLang.HolProg 64 :=
.seq RemovedBody698_127 RemovedBody698_180

def RemovedBody698_182 : StackLang.HolProg 64 :=
.seq RemovedBody698_124 RemovedBody698_181

def RemovedBody698_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody698_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_188 : StackLang.HolProg 64 :=
.seq RemovedBody698_186 RemovedBody698_187

def RemovedBody698_189 : StackLang.HolProg 64 :=
.seq RemovedBody698_185 RemovedBody698_188

def RemovedBody698_190 : StackLang.HolProg 64 :=
.seq RemovedBody698_184 RemovedBody698_189

def RemovedBody698_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3079#64)

def RemovedBody698_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_194 : StackLang.HolProg 64 :=
.seq RemovedBody698_192 RemovedBody698_193

def RemovedBody698_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_198 : StackLang.HolProg 64 :=
.seq RemovedBody698_196 RemovedBody698_197

def RemovedBody698_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_198 RemovedBody698_199

def RemovedBody698_201 : StackLang.HolProg 64 :=
.seq RemovedBody698_195 RemovedBody698_200

def RemovedBody698_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 9

def RemovedBody698_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_211 : StackLang.HolProg 64 :=
.seq RemovedBody698_209 RemovedBody698_210

def RemovedBody698_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_213 : StackLang.HolProg 64 :=
.seq RemovedBody698_211 RemovedBody698_212

def RemovedBody698_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_215 : StackLang.HolProg 64 :=
.seq RemovedBody698_213 RemovedBody698_214

def RemovedBody698_216 : StackLang.HolProg 64 :=
.seq RemovedBody698_208 RemovedBody698_215

def RemovedBody698_217 : StackLang.HolProg 64 :=
.seq RemovedBody698_207 RemovedBody698_216

def RemovedBody698_218 : StackLang.HolProg 64 :=
.seq RemovedBody698_206 RemovedBody698_217

def RemovedBody698_219 : StackLang.HolProg 64 :=
.seq RemovedBody698_205 RemovedBody698_218

def RemovedBody698_220 : StackLang.HolProg 64 :=
.seq RemovedBody698_204 RemovedBody698_219

def RemovedBody698_221 : StackLang.HolProg 64 :=
.seq RemovedBody698_203 RemovedBody698_220

def RemovedBody698_222 : StackLang.HolProg 64 :=
.seq RemovedBody698_202 RemovedBody698_221

def RemovedBody698_223 : StackLang.HolProg 64 :=
.seq RemovedBody698_201 RemovedBody698_222

def RemovedBody698_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody698_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_233 : StackLang.HolProg 64 :=
.seq RemovedBody698_231 RemovedBody698_232

def RemovedBody698_234 : StackLang.HolProg 64 :=
.seq RemovedBody698_230 RemovedBody698_233

def RemovedBody698_235 : StackLang.HolProg 64 :=
.seq RemovedBody698_229 RemovedBody698_234

def RemovedBody698_236 : StackLang.HolProg 64 :=
.seq RemovedBody698_228 RemovedBody698_235

def RemovedBody698_237 : StackLang.HolProg 64 :=
.seq RemovedBody698_227 RemovedBody698_236

def RemovedBody698_238 : StackLang.HolProg 64 :=
.seq RemovedBody698_226 RemovedBody698_237

def RemovedBody698_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_241 : StackLang.HolProg 64 :=
.seq RemovedBody698_239 RemovedBody698_240

def RemovedBody698_242 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_243 : StackLang.HolProg 64 :=
.seq RemovedBody698_241 RemovedBody698_242

def RemovedBody698_244 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_238, 0, 698, 8)) (Sum.inl 695) (some (RemovedBody698_243, 698, 9))

def RemovedBody698_245 : StackLang.HolProg 64 :=
.seq RemovedBody698_225 RemovedBody698_244

def RemovedBody698_246 : StackLang.HolProg 64 :=
.seq RemovedBody698_224 RemovedBody698_245

def RemovedBody698_247 : StackLang.HolProg 64 :=
.seq RemovedBody698_223 RemovedBody698_246

def RemovedBody698_248 : StackLang.HolProg 64 :=
.seq RemovedBody698_194 RemovedBody698_247

def RemovedBody698_249 : StackLang.HolProg 64 :=
.seq RemovedBody698_191 RemovedBody698_248

def RemovedBody698_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody698_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody698_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody698_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_257 : StackLang.HolProg 64 :=
.seq RemovedBody698_255 RemovedBody698_256

def RemovedBody698_258 : StackLang.HolProg 64 :=
.seq RemovedBody698_254 RemovedBody698_257

def RemovedBody698_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3080#64)

def RemovedBody698_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_262 : StackLang.HolProg 64 :=
.seq RemovedBody698_260 RemovedBody698_261

def RemovedBody698_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_266 : StackLang.HolProg 64 :=
.seq RemovedBody698_264 RemovedBody698_265

def RemovedBody698_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_266 RemovedBody698_267

def RemovedBody698_269 : StackLang.HolProg 64 :=
.seq RemovedBody698_263 RemovedBody698_268

def RemovedBody698_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 11

def RemovedBody698_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_279 : StackLang.HolProg 64 :=
.seq RemovedBody698_277 RemovedBody698_278

def RemovedBody698_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_281 : StackLang.HolProg 64 :=
.seq RemovedBody698_279 RemovedBody698_280

def RemovedBody698_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_283 : StackLang.HolProg 64 :=
.seq RemovedBody698_281 RemovedBody698_282

def RemovedBody698_284 : StackLang.HolProg 64 :=
.seq RemovedBody698_276 RemovedBody698_283

def RemovedBody698_285 : StackLang.HolProg 64 :=
.seq RemovedBody698_275 RemovedBody698_284

def RemovedBody698_286 : StackLang.HolProg 64 :=
.seq RemovedBody698_274 RemovedBody698_285

def RemovedBody698_287 : StackLang.HolProg 64 :=
.seq RemovedBody698_273 RemovedBody698_286

def RemovedBody698_288 : StackLang.HolProg 64 :=
.seq RemovedBody698_272 RemovedBody698_287

def RemovedBody698_289 : StackLang.HolProg 64 :=
.seq RemovedBody698_271 RemovedBody698_288

def RemovedBody698_290 : StackLang.HolProg 64 :=
.seq RemovedBody698_270 RemovedBody698_289

def RemovedBody698_291 : StackLang.HolProg 64 :=
.seq RemovedBody698_269 RemovedBody698_290

def RemovedBody698_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_299 : StackLang.HolProg 64 :=
.seq RemovedBody698_297 RemovedBody698_298

def RemovedBody698_300 : StackLang.HolProg 64 :=
.seq RemovedBody698_296 RemovedBody698_299

def RemovedBody698_301 : StackLang.HolProg 64 :=
.seq RemovedBody698_295 RemovedBody698_300

def RemovedBody698_302 : StackLang.HolProg 64 :=
.seq RemovedBody698_294 RemovedBody698_301

def RemovedBody698_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_305 : StackLang.HolProg 64 :=
.seq RemovedBody698_303 RemovedBody698_304

def RemovedBody698_306 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_302, 0, 698, 10)) (Sum.inl 70) (some (RemovedBody698_305, 698, 11))

def RemovedBody698_307 : StackLang.HolProg 64 :=
.seq RemovedBody698_293 RemovedBody698_306

def RemovedBody698_308 : StackLang.HolProg 64 :=
.seq RemovedBody698_292 RemovedBody698_307

def RemovedBody698_309 : StackLang.HolProg 64 :=
.seq RemovedBody698_291 RemovedBody698_308

def RemovedBody698_310 : StackLang.HolProg 64 :=
.seq RemovedBody698_262 RemovedBody698_309

def RemovedBody698_311 : StackLang.HolProg 64 :=
.seq RemovedBody698_259 RemovedBody698_310

def RemovedBody698_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody698_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody698_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody698_317 : StackLang.HolProg 64 :=
.seq RemovedBody698_315 RemovedBody698_316

def RemovedBody698_318 : StackLang.HolProg 64 :=
.seq RemovedBody698_314 RemovedBody698_317

def RemovedBody698_319 : StackLang.HolProg 64 :=
.seq RemovedBody698_313 RemovedBody698_318

def RemovedBody698_320 : StackLang.HolProg 64 :=
.seq RemovedBody698_312 RemovedBody698_319

def RemovedBody698_321 : StackLang.HolProg 64 :=
.seq RemovedBody698_311 RemovedBody698_320

def RemovedBody698_322 : StackLang.HolProg 64 :=
.seq RemovedBody698_258 RemovedBody698_321

def RemovedBody698_323 : StackLang.HolProg 64 :=
.seq RemovedBody698_253 RemovedBody698_322

def RemovedBody698_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_325 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody698_323 RemovedBody698_324

def RemovedBody698_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody698_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3081#64)

def RemovedBody698_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_334 : StackLang.HolProg 64 :=
.seq RemovedBody698_332 RemovedBody698_333

def RemovedBody698_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_338 : StackLang.HolProg 64 :=
.seq RemovedBody698_336 RemovedBody698_337

def RemovedBody698_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_340 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_338 RemovedBody698_339

def RemovedBody698_341 : StackLang.HolProg 64 :=
.seq RemovedBody698_335 RemovedBody698_340

def RemovedBody698_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 13

def RemovedBody698_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_351 : StackLang.HolProg 64 :=
.seq RemovedBody698_349 RemovedBody698_350

def RemovedBody698_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_353 : StackLang.HolProg 64 :=
.seq RemovedBody698_351 RemovedBody698_352

def RemovedBody698_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_355 : StackLang.HolProg 64 :=
.seq RemovedBody698_353 RemovedBody698_354

def RemovedBody698_356 : StackLang.HolProg 64 :=
.seq RemovedBody698_348 RemovedBody698_355

def RemovedBody698_357 : StackLang.HolProg 64 :=
.seq RemovedBody698_347 RemovedBody698_356

def RemovedBody698_358 : StackLang.HolProg 64 :=
.seq RemovedBody698_346 RemovedBody698_357

def RemovedBody698_359 : StackLang.HolProg 64 :=
.seq RemovedBody698_345 RemovedBody698_358

def RemovedBody698_360 : StackLang.HolProg 64 :=
.seq RemovedBody698_344 RemovedBody698_359

def RemovedBody698_361 : StackLang.HolProg 64 :=
.seq RemovedBody698_343 RemovedBody698_360

def RemovedBody698_362 : StackLang.HolProg 64 :=
.seq RemovedBody698_342 RemovedBody698_361

def RemovedBody698_363 : StackLang.HolProg 64 :=
.seq RemovedBody698_341 RemovedBody698_362

def RemovedBody698_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody698_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_373 : StackLang.HolProg 64 :=
.seq RemovedBody698_371 RemovedBody698_372

def RemovedBody698_374 : StackLang.HolProg 64 :=
.seq RemovedBody698_370 RemovedBody698_373

def RemovedBody698_375 : StackLang.HolProg 64 :=
.seq RemovedBody698_369 RemovedBody698_374

def RemovedBody698_376 : StackLang.HolProg 64 :=
.seq RemovedBody698_368 RemovedBody698_375

def RemovedBody698_377 : StackLang.HolProg 64 :=
.seq RemovedBody698_367 RemovedBody698_376

def RemovedBody698_378 : StackLang.HolProg 64 :=
.seq RemovedBody698_366 RemovedBody698_377

def RemovedBody698_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_381 : StackLang.HolProg 64 :=
.seq RemovedBody698_379 RemovedBody698_380

def RemovedBody698_382 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_383 : StackLang.HolProg 64 :=
.seq RemovedBody698_381 RemovedBody698_382

def RemovedBody698_384 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_378, 0, 698, 12)) (Sum.inl 695) (some (RemovedBody698_383, 698, 13))

def RemovedBody698_385 : StackLang.HolProg 64 :=
.seq RemovedBody698_365 RemovedBody698_384

def RemovedBody698_386 : StackLang.HolProg 64 :=
.seq RemovedBody698_364 RemovedBody698_385

def RemovedBody698_387 : StackLang.HolProg 64 :=
.seq RemovedBody698_363 RemovedBody698_386

def RemovedBody698_388 : StackLang.HolProg 64 :=
.seq RemovedBody698_334 RemovedBody698_387

def RemovedBody698_389 : StackLang.HolProg 64 :=
.seq RemovedBody698_331 RemovedBody698_388

def RemovedBody698_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody698_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody698_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody698_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_397 : StackLang.HolProg 64 :=
.seq RemovedBody698_395 RemovedBody698_396

def RemovedBody698_398 : StackLang.HolProg 64 :=
.seq RemovedBody698_394 RemovedBody698_397

def RemovedBody698_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3082#64)

def RemovedBody698_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_402 : StackLang.HolProg 64 :=
.seq RemovedBody698_400 RemovedBody698_401

def RemovedBody698_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_406 : StackLang.HolProg 64 :=
.seq RemovedBody698_404 RemovedBody698_405

def RemovedBody698_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_408 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_406 RemovedBody698_407

def RemovedBody698_409 : StackLang.HolProg 64 :=
.seq RemovedBody698_403 RemovedBody698_408

def RemovedBody698_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 15

def RemovedBody698_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_419 : StackLang.HolProg 64 :=
.seq RemovedBody698_417 RemovedBody698_418

def RemovedBody698_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_421 : StackLang.HolProg 64 :=
.seq RemovedBody698_419 RemovedBody698_420

def RemovedBody698_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_423 : StackLang.HolProg 64 :=
.seq RemovedBody698_421 RemovedBody698_422

def RemovedBody698_424 : StackLang.HolProg 64 :=
.seq RemovedBody698_416 RemovedBody698_423

def RemovedBody698_425 : StackLang.HolProg 64 :=
.seq RemovedBody698_415 RemovedBody698_424

def RemovedBody698_426 : StackLang.HolProg 64 :=
.seq RemovedBody698_414 RemovedBody698_425

def RemovedBody698_427 : StackLang.HolProg 64 :=
.seq RemovedBody698_413 RemovedBody698_426

def RemovedBody698_428 : StackLang.HolProg 64 :=
.seq RemovedBody698_412 RemovedBody698_427

def RemovedBody698_429 : StackLang.HolProg 64 :=
.seq RemovedBody698_411 RemovedBody698_428

def RemovedBody698_430 : StackLang.HolProg 64 :=
.seq RemovedBody698_410 RemovedBody698_429

def RemovedBody698_431 : StackLang.HolProg 64 :=
.seq RemovedBody698_409 RemovedBody698_430

def RemovedBody698_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_439 : StackLang.HolProg 64 :=
.seq RemovedBody698_437 RemovedBody698_438

def RemovedBody698_440 : StackLang.HolProg 64 :=
.seq RemovedBody698_436 RemovedBody698_439

def RemovedBody698_441 : StackLang.HolProg 64 :=
.seq RemovedBody698_435 RemovedBody698_440

def RemovedBody698_442 : StackLang.HolProg 64 :=
.seq RemovedBody698_434 RemovedBody698_441

def RemovedBody698_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_444 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_445 : StackLang.HolProg 64 :=
.seq RemovedBody698_443 RemovedBody698_444

def RemovedBody698_446 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_442, 0, 698, 14)) (Sum.inl 70) (some (RemovedBody698_445, 698, 15))

def RemovedBody698_447 : StackLang.HolProg 64 :=
.seq RemovedBody698_433 RemovedBody698_446

def RemovedBody698_448 : StackLang.HolProg 64 :=
.seq RemovedBody698_432 RemovedBody698_447

def RemovedBody698_449 : StackLang.HolProg 64 :=
.seq RemovedBody698_431 RemovedBody698_448

def RemovedBody698_450 : StackLang.HolProg 64 :=
.seq RemovedBody698_402 RemovedBody698_449

def RemovedBody698_451 : StackLang.HolProg 64 :=
.seq RemovedBody698_399 RemovedBody698_450

def RemovedBody698_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody698_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody698_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody698_457 : StackLang.HolProg 64 :=
.seq RemovedBody698_455 RemovedBody698_456

def RemovedBody698_458 : StackLang.HolProg 64 :=
.seq RemovedBody698_454 RemovedBody698_457

def RemovedBody698_459 : StackLang.HolProg 64 :=
.seq RemovedBody698_453 RemovedBody698_458

def RemovedBody698_460 : StackLang.HolProg 64 :=
.seq RemovedBody698_452 RemovedBody698_459

def RemovedBody698_461 : StackLang.HolProg 64 :=
.seq RemovedBody698_451 RemovedBody698_460

def RemovedBody698_462 : StackLang.HolProg 64 :=
.seq RemovedBody698_398 RemovedBody698_461

def RemovedBody698_463 : StackLang.HolProg 64 :=
.seq RemovedBody698_393 RemovedBody698_462

def RemovedBody698_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_465 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody698_463 RemovedBody698_464

def RemovedBody698_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody698_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody698_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_472 : StackLang.HolProg 64 :=
.seq RemovedBody698_470 RemovedBody698_471

def RemovedBody698_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3083#64)

def RemovedBody698_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_476 : StackLang.HolProg 64 :=
.seq RemovedBody698_474 RemovedBody698_475

def RemovedBody698_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_480 : StackLang.HolProg 64 :=
.seq RemovedBody698_478 RemovedBody698_479

def RemovedBody698_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_482 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_480 RemovedBody698_481

def RemovedBody698_483 : StackLang.HolProg 64 :=
.seq RemovedBody698_477 RemovedBody698_482

def RemovedBody698_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 17

def RemovedBody698_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_493 : StackLang.HolProg 64 :=
.seq RemovedBody698_491 RemovedBody698_492

def RemovedBody698_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_495 : StackLang.HolProg 64 :=
.seq RemovedBody698_493 RemovedBody698_494

def RemovedBody698_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_497 : StackLang.HolProg 64 :=
.seq RemovedBody698_495 RemovedBody698_496

def RemovedBody698_498 : StackLang.HolProg 64 :=
.seq RemovedBody698_490 RemovedBody698_497

def RemovedBody698_499 : StackLang.HolProg 64 :=
.seq RemovedBody698_489 RemovedBody698_498

def RemovedBody698_500 : StackLang.HolProg 64 :=
.seq RemovedBody698_488 RemovedBody698_499

def RemovedBody698_501 : StackLang.HolProg 64 :=
.seq RemovedBody698_487 RemovedBody698_500

def RemovedBody698_502 : StackLang.HolProg 64 :=
.seq RemovedBody698_486 RemovedBody698_501

def RemovedBody698_503 : StackLang.HolProg 64 :=
.seq RemovedBody698_485 RemovedBody698_502

def RemovedBody698_504 : StackLang.HolProg 64 :=
.seq RemovedBody698_484 RemovedBody698_503

def RemovedBody698_505 : StackLang.HolProg 64 :=
.seq RemovedBody698_483 RemovedBody698_504

def RemovedBody698_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody698_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody698_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_516 : StackLang.HolProg 64 :=
.seq RemovedBody698_514 RemovedBody698_515

def RemovedBody698_517 : StackLang.HolProg 64 :=
.seq RemovedBody698_513 RemovedBody698_516

def RemovedBody698_518 : StackLang.HolProg 64 :=
.seq RemovedBody698_512 RemovedBody698_517

def RemovedBody698_519 : StackLang.HolProg 64 :=
.seq RemovedBody698_511 RemovedBody698_518

def RemovedBody698_520 : StackLang.HolProg 64 :=
.seq RemovedBody698_510 RemovedBody698_519

def RemovedBody698_521 : StackLang.HolProg 64 :=
.seq RemovedBody698_509 RemovedBody698_520

def RemovedBody698_522 : StackLang.HolProg 64 :=
.seq RemovedBody698_508 RemovedBody698_521

def RemovedBody698_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody698_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody698_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_527 : StackLang.HolProg 64 :=
.seq RemovedBody698_525 RemovedBody698_526

def RemovedBody698_528 : StackLang.HolProg 64 :=
.seq RemovedBody698_524 RemovedBody698_527

def RemovedBody698_529 : StackLang.HolProg 64 :=
.seq RemovedBody698_523 RemovedBody698_528

def RemovedBody698_530 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_531 : StackLang.HolProg 64 :=
.seq RemovedBody698_529 RemovedBody698_530

def RemovedBody698_532 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_522, 0, 698, 16)) (Sum.inl 683) (some (RemovedBody698_531, 698, 17))

def RemovedBody698_533 : StackLang.HolProg 64 :=
.seq RemovedBody698_507 RemovedBody698_532

def RemovedBody698_534 : StackLang.HolProg 64 :=
.seq RemovedBody698_506 RemovedBody698_533

def RemovedBody698_535 : StackLang.HolProg 64 :=
.seq RemovedBody698_505 RemovedBody698_534

def RemovedBody698_536 : StackLang.HolProg 64 :=
.seq RemovedBody698_476 RemovedBody698_535

def RemovedBody698_537 : StackLang.HolProg 64 :=
.seq RemovedBody698_473 RemovedBody698_536

def RemovedBody698_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody698_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3084#64)

def RemovedBody698_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_543 : StackLang.HolProg 64 :=
.seq RemovedBody698_541 RemovedBody698_542

def RemovedBody698_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_547 : StackLang.HolProg 64 :=
.seq RemovedBody698_545 RemovedBody698_546

def RemovedBody698_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_549 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_547 RemovedBody698_548

def RemovedBody698_550 : StackLang.HolProg 64 :=
.seq RemovedBody698_544 RemovedBody698_549

def RemovedBody698_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 19

def RemovedBody698_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_560 : StackLang.HolProg 64 :=
.seq RemovedBody698_558 RemovedBody698_559

def RemovedBody698_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_562 : StackLang.HolProg 64 :=
.seq RemovedBody698_560 RemovedBody698_561

def RemovedBody698_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_564 : StackLang.HolProg 64 :=
.seq RemovedBody698_562 RemovedBody698_563

def RemovedBody698_565 : StackLang.HolProg 64 :=
.seq RemovedBody698_557 RemovedBody698_564

def RemovedBody698_566 : StackLang.HolProg 64 :=
.seq RemovedBody698_556 RemovedBody698_565

def RemovedBody698_567 : StackLang.HolProg 64 :=
.seq RemovedBody698_555 RemovedBody698_566

def RemovedBody698_568 : StackLang.HolProg 64 :=
.seq RemovedBody698_554 RemovedBody698_567

def RemovedBody698_569 : StackLang.HolProg 64 :=
.seq RemovedBody698_553 RemovedBody698_568

def RemovedBody698_570 : StackLang.HolProg 64 :=
.seq RemovedBody698_552 RemovedBody698_569

def RemovedBody698_571 : StackLang.HolProg 64 :=
.seq RemovedBody698_551 RemovedBody698_570

def RemovedBody698_572 : StackLang.HolProg 64 :=
.seq RemovedBody698_550 RemovedBody698_571

def RemovedBody698_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_580 : StackLang.HolProg 64 :=
.seq RemovedBody698_578 RemovedBody698_579

def RemovedBody698_581 : StackLang.HolProg 64 :=
.seq RemovedBody698_577 RemovedBody698_580

def RemovedBody698_582 : StackLang.HolProg 64 :=
.seq RemovedBody698_576 RemovedBody698_581

def RemovedBody698_583 : StackLang.HolProg 64 :=
.seq RemovedBody698_575 RemovedBody698_582

def RemovedBody698_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody698_585 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_586 : StackLang.HolProg 64 :=
.seq RemovedBody698_584 RemovedBody698_585

def RemovedBody698_587 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_583, 0, 698, 18)) (Sum.inl 697) (some (RemovedBody698_586, 698, 19))

def RemovedBody698_588 : StackLang.HolProg 64 :=
.seq RemovedBody698_574 RemovedBody698_587

def RemovedBody698_589 : StackLang.HolProg 64 :=
.seq RemovedBody698_573 RemovedBody698_588

def RemovedBody698_590 : StackLang.HolProg 64 :=
.seq RemovedBody698_572 RemovedBody698_589

def RemovedBody698_591 : StackLang.HolProg 64 :=
.seq RemovedBody698_543 RemovedBody698_590

def RemovedBody698_592 : StackLang.HolProg 64 :=
.seq RemovedBody698_540 RemovedBody698_591

def RemovedBody698_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody698_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3085#64)

def RemovedBody698_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_598 : StackLang.HolProg 64 :=
.seq RemovedBody698_596 RemovedBody698_597

def RemovedBody698_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody698_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody698_602 : StackLang.HolProg 64 :=
.seq RemovedBody698_600 RemovedBody698_601

def RemovedBody698_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_604 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody698_602 RemovedBody698_603

def RemovedBody698_605 : StackLang.HolProg 64 :=
.seq RemovedBody698_599 RemovedBody698_604

def RemovedBody698_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody698_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody698_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 698 21

def RemovedBody698_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody698_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody698_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody698_615 : StackLang.HolProg 64 :=
.seq RemovedBody698_613 RemovedBody698_614

def RemovedBody698_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody698_617 : StackLang.HolProg 64 :=
.seq RemovedBody698_615 RemovedBody698_616

def RemovedBody698_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_619 : StackLang.HolProg 64 :=
.seq RemovedBody698_617 RemovedBody698_618

def RemovedBody698_620 : StackLang.HolProg 64 :=
.seq RemovedBody698_612 RemovedBody698_619

def RemovedBody698_621 : StackLang.HolProg 64 :=
.seq RemovedBody698_611 RemovedBody698_620

def RemovedBody698_622 : StackLang.HolProg 64 :=
.seq RemovedBody698_610 RemovedBody698_621

def RemovedBody698_623 : StackLang.HolProg 64 :=
.seq RemovedBody698_609 RemovedBody698_622

def RemovedBody698_624 : StackLang.HolProg 64 :=
.seq RemovedBody698_608 RemovedBody698_623

def RemovedBody698_625 : StackLang.HolProg 64 :=
.seq RemovedBody698_607 RemovedBody698_624

def RemovedBody698_626 : StackLang.HolProg 64 :=
.seq RemovedBody698_606 RemovedBody698_625

def RemovedBody698_627 : StackLang.HolProg 64 :=
.seq RemovedBody698_605 RemovedBody698_626

def RemovedBody698_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody698_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody698_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody698_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody698_635 : StackLang.HolProg 64 :=
.seq RemovedBody698_633 RemovedBody698_634

def RemovedBody698_636 : StackLang.HolProg 64 :=
.seq RemovedBody698_632 RemovedBody698_635

def RemovedBody698_637 : StackLang.HolProg 64 :=
.seq RemovedBody698_631 RemovedBody698_636

def RemovedBody698_638 : StackLang.HolProg 64 :=
.seq RemovedBody698_630 RemovedBody698_637

def RemovedBody698_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody698_640 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody698_641 : StackLang.HolProg 64 :=
.seq RemovedBody698_639 RemovedBody698_640

def RemovedBody698_642 : StackLang.HolProg 64 :=
.call (some (RemovedBody698_638, 0, 698, 20)) (Sum.inl 70) (some (RemovedBody698_641, 698, 21))

def RemovedBody698_643 : StackLang.HolProg 64 :=
.seq RemovedBody698_629 RemovedBody698_642

def RemovedBody698_644 : StackLang.HolProg 64 :=
.seq RemovedBody698_628 RemovedBody698_643

def RemovedBody698_645 : StackLang.HolProg 64 :=
.seq RemovedBody698_627 RemovedBody698_644

def RemovedBody698_646 : StackLang.HolProg 64 :=
.seq RemovedBody698_598 RemovedBody698_645

def RemovedBody698_647 : StackLang.HolProg 64 :=
.seq RemovedBody698_595 RemovedBody698_646

def RemovedBody698_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody698_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody698_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody698_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody698_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody698_653 : StackLang.HolProg 64 :=
.seq RemovedBody698_651 RemovedBody698_652

def RemovedBody698_654 : StackLang.HolProg 64 :=
.seq RemovedBody698_650 RemovedBody698_653

def RemovedBody698_655 : StackLang.HolProg 64 :=
.seq RemovedBody698_649 RemovedBody698_654

def RemovedBody698_656 : StackLang.HolProg 64 :=
.seq RemovedBody698_648 RemovedBody698_655

def RemovedBody698_657 : StackLang.HolProg 64 :=
.seq RemovedBody698_647 RemovedBody698_656

def RemovedBody698_658 : StackLang.HolProg 64 :=
.seq RemovedBody698_594 RemovedBody698_657

def RemovedBody698_659 : StackLang.HolProg 64 :=
.seq RemovedBody698_593 RemovedBody698_658

def RemovedBody698_660 : StackLang.HolProg 64 :=
.seq RemovedBody698_592 RemovedBody698_659

def RemovedBody698_661 : StackLang.HolProg 64 :=
.seq RemovedBody698_539 RemovedBody698_660

def RemovedBody698_662 : StackLang.HolProg 64 :=
.seq RemovedBody698_538 RemovedBody698_661

def RemovedBody698_663 : StackLang.HolProg 64 :=
.seq RemovedBody698_537 RemovedBody698_662

def RemovedBody698_664 : StackLang.HolProg 64 :=
.seq RemovedBody698_472 RemovedBody698_663

def RemovedBody698_665 : StackLang.HolProg 64 :=
.seq RemovedBody698_469 RemovedBody698_664

def RemovedBody698_666 : StackLang.HolProg 64 :=
.seq RemovedBody698_468 RemovedBody698_665

def RemovedBody698_667 : StackLang.HolProg 64 :=
.seq RemovedBody698_467 RemovedBody698_666

def RemovedBody698_668 : StackLang.HolProg 64 :=
.seq RemovedBody698_466 RemovedBody698_667

def RemovedBody698_669 : StackLang.HolProg 64 :=
.seq RemovedBody698_465 RemovedBody698_668

def RemovedBody698_670 : StackLang.HolProg 64 :=
.seq RemovedBody698_392 RemovedBody698_669

def RemovedBody698_671 : StackLang.HolProg 64 :=
.seq RemovedBody698_391 RemovedBody698_670

def RemovedBody698_672 : StackLang.HolProg 64 :=
.seq RemovedBody698_390 RemovedBody698_671

def RemovedBody698_673 : StackLang.HolProg 64 :=
.seq RemovedBody698_389 RemovedBody698_672

def RemovedBody698_674 : StackLang.HolProg 64 :=
.seq RemovedBody698_330 RemovedBody698_673

def RemovedBody698_675 : StackLang.HolProg 64 :=
.seq RemovedBody698_329 RemovedBody698_674

def RemovedBody698_676 : StackLang.HolProg 64 :=
.seq RemovedBody698_328 RemovedBody698_675

def RemovedBody698_677 : StackLang.HolProg 64 :=
.seq RemovedBody698_327 RemovedBody698_676

def RemovedBody698_678 : StackLang.HolProg 64 :=
.seq RemovedBody698_326 RemovedBody698_677

def RemovedBody698_679 : StackLang.HolProg 64 :=
.seq RemovedBody698_325 RemovedBody698_678

def RemovedBody698_680 : StackLang.HolProg 64 :=
.seq RemovedBody698_252 RemovedBody698_679

def RemovedBody698_681 : StackLang.HolProg 64 :=
.seq RemovedBody698_251 RemovedBody698_680

def RemovedBody698_682 : StackLang.HolProg 64 :=
.seq RemovedBody698_250 RemovedBody698_681

def RemovedBody698_683 : StackLang.HolProg 64 :=
.seq RemovedBody698_249 RemovedBody698_682

def RemovedBody698_684 : StackLang.HolProg 64 :=
.seq RemovedBody698_190 RemovedBody698_683

def RemovedBody698_685 : StackLang.HolProg 64 :=
.seq RemovedBody698_183 RemovedBody698_684

def RemovedBody698_686 : StackLang.HolProg 64 :=
.seq RemovedBody698_182 RemovedBody698_685

def RemovedBody698_687 : StackLang.HolProg 64 :=
.seq RemovedBody698_123 RemovedBody698_686

def RemovedBody698_688 : StackLang.HolProg 64 :=
.seq RemovedBody698_122 RemovedBody698_687

def RemovedBody698_689 : StackLang.HolProg 64 :=
.seq RemovedBody698_121 RemovedBody698_688

def RemovedBody698_690 : StackLang.HolProg 64 :=
.seq RemovedBody698_120 RemovedBody698_689

def RemovedBody698_691 : StackLang.HolProg 64 :=
.seq RemovedBody698_67 RemovedBody698_690

def RemovedBody698_692 : StackLang.HolProg 64 :=
.seq RemovedBody698_66 RemovedBody698_691

def RemovedBody698_693 : StackLang.HolProg 64 :=
.seq RemovedBody698_65 RemovedBody698_692

def RemovedBody698_694 : StackLang.HolProg 64 :=
.seq RemovedBody698_64 RemovedBody698_693

def RemovedBody698_695 : StackLang.HolProg 64 :=
.seq RemovedBody698_11 RemovedBody698_694

def RemovedBody698_696 : StackLang.HolProg 64 :=
.seq RemovedBody698_6 RemovedBody698_695

def Removed698 : Nat × StackLang.HolProg 64 := (698, RemovedBody698_696)
theorem Removed698_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc698 = Removed698 := by
  kernel_rfl
#print axioms Removed698_eq
end InitECandidate.Proofs.BackendStages
