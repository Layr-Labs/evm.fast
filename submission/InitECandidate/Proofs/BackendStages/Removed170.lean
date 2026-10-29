import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc170
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody170_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody170_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody170_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody170_3 : StackLang.HolProg 64 :=
.seq RemovedBody170_1 RemovedBody170_2

def RemovedBody170_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody170_3 RemovedBody170_4

def RemovedBody170_6 : StackLang.HolProg 64 :=
.seq RemovedBody170_0 RemovedBody170_5

def RemovedBody170_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody170_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody170_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def RemovedBody170_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody170_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_15 : StackLang.HolProg 64 :=
.seq RemovedBody170_13 RemovedBody170_14

def RemovedBody170_16 : StackLang.HolProg 64 :=
.seq RemovedBody170_12 RemovedBody170_15

def RemovedBody170_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 190#64)

def RemovedBody170_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody170_20 : StackLang.HolProg 64 :=
.seq RemovedBody170_18 RemovedBody170_19

def RemovedBody170_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody170_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody170_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody170_24 : StackLang.HolProg 64 :=
.seq RemovedBody170_22 RemovedBody170_23

def RemovedBody170_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody170_24 RemovedBody170_25

def RemovedBody170_27 : StackLang.HolProg 64 :=
.seq RemovedBody170_21 RemovedBody170_26

def RemovedBody170_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody170_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody170_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 3

def RemovedBody170_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody170_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody170_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody170_37 : StackLang.HolProg 64 :=
.seq RemovedBody170_35 RemovedBody170_36

def RemovedBody170_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody170_39 : StackLang.HolProg 64 :=
.seq RemovedBody170_37 RemovedBody170_38

def RemovedBody170_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody170_41 : StackLang.HolProg 64 :=
.seq RemovedBody170_39 RemovedBody170_40

def RemovedBody170_42 : StackLang.HolProg 64 :=
.seq RemovedBody170_34 RemovedBody170_41

def RemovedBody170_43 : StackLang.HolProg 64 :=
.seq RemovedBody170_33 RemovedBody170_42

def RemovedBody170_44 : StackLang.HolProg 64 :=
.seq RemovedBody170_32 RemovedBody170_43

def RemovedBody170_45 : StackLang.HolProg 64 :=
.seq RemovedBody170_31 RemovedBody170_44

def RemovedBody170_46 : StackLang.HolProg 64 :=
.seq RemovedBody170_30 RemovedBody170_45

def RemovedBody170_47 : StackLang.HolProg 64 :=
.seq RemovedBody170_29 RemovedBody170_46

def RemovedBody170_48 : StackLang.HolProg 64 :=
.seq RemovedBody170_28 RemovedBody170_47

def RemovedBody170_49 : StackLang.HolProg 64 :=
.seq RemovedBody170_27 RemovedBody170_48

def RemovedBody170_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody170_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody170_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_58 : StackLang.HolProg 64 :=
.seq RemovedBody170_56 RemovedBody170_57

def RemovedBody170_59 : StackLang.HolProg 64 :=
.seq RemovedBody170_55 RemovedBody170_58

def RemovedBody170_60 : StackLang.HolProg 64 :=
.seq RemovedBody170_54 RemovedBody170_59

def RemovedBody170_61 : StackLang.HolProg 64 :=
.seq RemovedBody170_53 RemovedBody170_60

def RemovedBody170_62 : StackLang.HolProg 64 :=
.seq RemovedBody170_52 RemovedBody170_61

def RemovedBody170_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_65 : StackLang.HolProg 64 :=
.seq RemovedBody170_63 RemovedBody170_64

def RemovedBody170_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody170_67 : StackLang.HolProg 64 :=
.seq RemovedBody170_65 RemovedBody170_66

def RemovedBody170_68 : StackLang.HolProg 64 :=
.call (some (RemovedBody170_62, 0, 170, 2)) (Sum.inl 159) (some (RemovedBody170_67, 170, 3))

def RemovedBody170_69 : StackLang.HolProg 64 :=
.seq RemovedBody170_51 RemovedBody170_68

def RemovedBody170_70 : StackLang.HolProg 64 :=
.seq RemovedBody170_50 RemovedBody170_69

def RemovedBody170_71 : StackLang.HolProg 64 :=
.seq RemovedBody170_49 RemovedBody170_70

def RemovedBody170_72 : StackLang.HolProg 64 :=
.seq RemovedBody170_20 RemovedBody170_71

def RemovedBody170_73 : StackLang.HolProg 64 :=
.seq RemovedBody170_17 RemovedBody170_72

def RemovedBody170_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_76 : StackLang.HolProg 64 :=
.seq RemovedBody170_74 RemovedBody170_75

def RemovedBody170_77 : StackLang.HolProg 64 :=
.seq RemovedBody170_73 RemovedBody170_76

def RemovedBody170_78 : StackLang.HolProg 64 :=
.seq RemovedBody170_16 RemovedBody170_77

def RemovedBody170_79 : StackLang.HolProg 64 :=
.seq RemovedBody170_11 RemovedBody170_78

def RemovedBody170_80 : StackLang.HolProg 64 :=
.seq RemovedBody170_10 RemovedBody170_79

def RemovedBody170_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody170_83 : StackLang.HolProg 64 :=
.seq RemovedBody170_81 RemovedBody170_82

def RemovedBody170_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody170_80 RemovedBody170_83

def RemovedBody170_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody170_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody170_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_91 : StackLang.HolProg 64 :=
.seq RemovedBody170_89 RemovedBody170_90

def RemovedBody170_92 : StackLang.HolProg 64 :=
.seq RemovedBody170_88 RemovedBody170_91

def RemovedBody170_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody170_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_96 : StackLang.HolProg 64 :=
.seq RemovedBody170_94 RemovedBody170_95

def RemovedBody170_97 : StackLang.HolProg 64 :=
.seq RemovedBody170_93 RemovedBody170_96

def RemovedBody170_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody170_92 RemovedBody170_97

def RemovedBody170_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody170_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody170_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody170_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_107 : StackLang.HolProg 64 :=
.seq RemovedBody170_105 RemovedBody170_106

def RemovedBody170_108 : StackLang.HolProg 64 :=
.seq RemovedBody170_104 RemovedBody170_107

def RemovedBody170_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody170_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_112 : StackLang.HolProg 64 :=
.seq RemovedBody170_110 RemovedBody170_111

def RemovedBody170_113 : StackLang.HolProg 64 :=
.seq RemovedBody170_109 RemovedBody170_112

def RemovedBody170_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody170_108 RemovedBody170_113

def RemovedBody170_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody170_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 21#64)

def RemovedBody170_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_121 : StackLang.HolProg 64 :=
.seq RemovedBody170_119 RemovedBody170_120

def RemovedBody170_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 191#64)

def RemovedBody170_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody170_125 : StackLang.HolProg 64 :=
.seq RemovedBody170_123 RemovedBody170_124

def RemovedBody170_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody170_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody170_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody170_129 : StackLang.HolProg 64 :=
.seq RemovedBody170_127 RemovedBody170_128

def RemovedBody170_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody170_129 RemovedBody170_130

def RemovedBody170_132 : StackLang.HolProg 64 :=
.seq RemovedBody170_126 RemovedBody170_131

def RemovedBody170_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody170_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody170_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 5

def RemovedBody170_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody170_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody170_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody170_142 : StackLang.HolProg 64 :=
.seq RemovedBody170_140 RemovedBody170_141

def RemovedBody170_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody170_144 : StackLang.HolProg 64 :=
.seq RemovedBody170_142 RemovedBody170_143

def RemovedBody170_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody170_146 : StackLang.HolProg 64 :=
.seq RemovedBody170_144 RemovedBody170_145

def RemovedBody170_147 : StackLang.HolProg 64 :=
.seq RemovedBody170_139 RemovedBody170_146

def RemovedBody170_148 : StackLang.HolProg 64 :=
.seq RemovedBody170_138 RemovedBody170_147

def RemovedBody170_149 : StackLang.HolProg 64 :=
.seq RemovedBody170_137 RemovedBody170_148

def RemovedBody170_150 : StackLang.HolProg 64 :=
.seq RemovedBody170_136 RemovedBody170_149

def RemovedBody170_151 : StackLang.HolProg 64 :=
.seq RemovedBody170_135 RemovedBody170_150

def RemovedBody170_152 : StackLang.HolProg 64 :=
.seq RemovedBody170_134 RemovedBody170_151

def RemovedBody170_153 : StackLang.HolProg 64 :=
.seq RemovedBody170_133 RemovedBody170_152

def RemovedBody170_154 : StackLang.HolProg 64 :=
.seq RemovedBody170_132 RemovedBody170_153

def RemovedBody170_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody170_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody170_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody170_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_164 : StackLang.HolProg 64 :=
.seq RemovedBody170_162 RemovedBody170_163

def RemovedBody170_165 : StackLang.HolProg 64 :=
.seq RemovedBody170_161 RemovedBody170_164

def RemovedBody170_166 : StackLang.HolProg 64 :=
.seq RemovedBody170_160 RemovedBody170_165

def RemovedBody170_167 : StackLang.HolProg 64 :=
.seq RemovedBody170_159 RemovedBody170_166

def RemovedBody170_168 : StackLang.HolProg 64 :=
.seq RemovedBody170_158 RemovedBody170_167

def RemovedBody170_169 : StackLang.HolProg 64 :=
.seq RemovedBody170_157 RemovedBody170_168

def RemovedBody170_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody170_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody170_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody170_173 : StackLang.HolProg 64 :=
.seq RemovedBody170_171 RemovedBody170_172

def RemovedBody170_174 : StackLang.HolProg 64 :=
.seq RemovedBody170_170 RemovedBody170_173

def RemovedBody170_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody170_176 : StackLang.HolProg 64 :=
.seq RemovedBody170_174 RemovedBody170_175

def RemovedBody170_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody170_169, 0, 170, 4)) (Sum.inl 159) (some (RemovedBody170_176, 170, 5))

def RemovedBody170_178 : StackLang.HolProg 64 :=
.seq RemovedBody170_156 RemovedBody170_177

def RemovedBody170_179 : StackLang.HolProg 64 :=
.seq RemovedBody170_155 RemovedBody170_178

def RemovedBody170_180 : StackLang.HolProg 64 :=
.seq RemovedBody170_154 RemovedBody170_179

def RemovedBody170_181 : StackLang.HolProg 64 :=
.seq RemovedBody170_125 RemovedBody170_180

def RemovedBody170_182 : StackLang.HolProg 64 :=
.seq RemovedBody170_122 RemovedBody170_181

def RemovedBody170_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_185 : StackLang.HolProg 64 :=
.seq RemovedBody170_183 RemovedBody170_184

def RemovedBody170_186 : StackLang.HolProg 64 :=
.seq RemovedBody170_182 RemovedBody170_185

def RemovedBody170_187 : StackLang.HolProg 64 :=
.seq RemovedBody170_121 RemovedBody170_186

def RemovedBody170_188 : StackLang.HolProg 64 :=
.seq RemovedBody170_118 RemovedBody170_187

def RemovedBody170_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody170_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody170_188 RemovedBody170_189

def RemovedBody170_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody170_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody170_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody170_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody170_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody170_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody170_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody170_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody170_208 : StackLang.HolProg 64 :=
.seq RemovedBody170_206 RemovedBody170_207

def RemovedBody170_209 : StackLang.HolProg 64 :=
.seq RemovedBody170_205 RemovedBody170_208

def RemovedBody170_210 : StackLang.HolProg 64 :=
.seq RemovedBody170_204 RemovedBody170_209

def RemovedBody170_211 : StackLang.HolProg 64 :=
.seq RemovedBody170_203 RemovedBody170_210

def RemovedBody170_212 : StackLang.HolProg 64 :=
.seq RemovedBody170_202 RemovedBody170_211

def RemovedBody170_213 : StackLang.HolProg 64 :=
.seq RemovedBody170_201 RemovedBody170_212

def RemovedBody170_214 : StackLang.HolProg 64 :=
.seq RemovedBody170_200 RemovedBody170_213

def RemovedBody170_215 : StackLang.HolProg 64 :=
.seq RemovedBody170_199 RemovedBody170_214

def RemovedBody170_216 : StackLang.HolProg 64 :=
.seq RemovedBody170_198 RemovedBody170_215

def RemovedBody170_217 : StackLang.HolProg 64 :=
.seq RemovedBody170_197 RemovedBody170_216

def RemovedBody170_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody170_220 : StackLang.HolProg 64 :=
.seq RemovedBody170_218 RemovedBody170_219

def RemovedBody170_221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody170_217 RemovedBody170_220

def RemovedBody170_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_224 : StackLang.HolProg 64 :=
.seq RemovedBody170_222 RemovedBody170_223

def RemovedBody170_225 : StackLang.HolProg 64 :=
.seq RemovedBody170_221 RemovedBody170_224

def RemovedBody170_226 : StackLang.HolProg 64 :=
.seq RemovedBody170_196 RemovedBody170_225

def RemovedBody170_227 : StackLang.HolProg 64 :=
.loop RemovedBody170_226

def RemovedBody170_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody170_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody170_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody170_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody170_232 : StackLang.HolProg 64 :=
.seq RemovedBody170_230 RemovedBody170_231

def RemovedBody170_233 : StackLang.HolProg 64 :=
.seq RemovedBody170_229 RemovedBody170_232

def RemovedBody170_234 : StackLang.HolProg 64 :=
.seq RemovedBody170_228 RemovedBody170_233

def RemovedBody170_235 : StackLang.HolProg 64 :=
.seq RemovedBody170_227 RemovedBody170_234

def RemovedBody170_236 : StackLang.HolProg 64 :=
.seq RemovedBody170_195 RemovedBody170_235

def RemovedBody170_237 : StackLang.HolProg 64 :=
.seq RemovedBody170_194 RemovedBody170_236

def RemovedBody170_238 : StackLang.HolProg 64 :=
.seq RemovedBody170_193 RemovedBody170_237

def RemovedBody170_239 : StackLang.HolProg 64 :=
.seq RemovedBody170_192 RemovedBody170_238

def RemovedBody170_240 : StackLang.HolProg 64 :=
.seq RemovedBody170_191 RemovedBody170_239

def RemovedBody170_241 : StackLang.HolProg 64 :=
.seq RemovedBody170_190 RemovedBody170_240

def RemovedBody170_242 : StackLang.HolProg 64 :=
.seq RemovedBody170_117 RemovedBody170_241

def RemovedBody170_243 : StackLang.HolProg 64 :=
.seq RemovedBody170_116 RemovedBody170_242

def RemovedBody170_244 : StackLang.HolProg 64 :=
.seq RemovedBody170_115 RemovedBody170_243

def RemovedBody170_245 : StackLang.HolProg 64 :=
.seq RemovedBody170_114 RemovedBody170_244

def RemovedBody170_246 : StackLang.HolProg 64 :=
.seq RemovedBody170_103 RemovedBody170_245

def RemovedBody170_247 : StackLang.HolProg 64 :=
.seq RemovedBody170_102 RemovedBody170_246

def RemovedBody170_248 : StackLang.HolProg 64 :=
.seq RemovedBody170_101 RemovedBody170_247

def RemovedBody170_249 : StackLang.HolProg 64 :=
.seq RemovedBody170_100 RemovedBody170_248

def RemovedBody170_250 : StackLang.HolProg 64 :=
.seq RemovedBody170_99 RemovedBody170_249

def RemovedBody170_251 : StackLang.HolProg 64 :=
.seq RemovedBody170_98 RemovedBody170_250

def RemovedBody170_252 : StackLang.HolProg 64 :=
.seq RemovedBody170_87 RemovedBody170_251

def RemovedBody170_253 : StackLang.HolProg 64 :=
.seq RemovedBody170_86 RemovedBody170_252

def RemovedBody170_254 : StackLang.HolProg 64 :=
.seq RemovedBody170_85 RemovedBody170_253

def RemovedBody170_255 : StackLang.HolProg 64 :=
.seq RemovedBody170_84 RemovedBody170_254

def RemovedBody170_256 : StackLang.HolProg 64 :=
.seq RemovedBody170_9 RemovedBody170_255

def RemovedBody170_257 : StackLang.HolProg 64 :=
.seq RemovedBody170_8 RemovedBody170_256

def RemovedBody170_258 : StackLang.HolProg 64 :=
.seq RemovedBody170_7 RemovedBody170_257

def RemovedBody170_259 : StackLang.HolProg 64 :=
.seq RemovedBody170_6 RemovedBody170_258

def Removed170 : Nat × StackLang.HolProg 64 := (170, RemovedBody170_259)
theorem Removed170_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc170 = Removed170 := by
  kernel_rfl
#print axioms Removed170_eq
end InitECandidate.Proofs.BackendStages
