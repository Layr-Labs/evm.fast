import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc358
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody358_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody358_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody358_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody358_3 : StackLang.HolProg 64 :=
.seq RemovedBody358_1 RemovedBody358_2

def RemovedBody358_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody358_3 RemovedBody358_4

def RemovedBody358_6 : StackLang.HolProg 64 :=
.seq RemovedBody358_0 RemovedBody358_5

def RemovedBody358_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody358_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody358_9 : StackLang.HolProg 64 :=
.seq RemovedBody358_7 RemovedBody358_8

def RemovedBody358_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1032#64)

def RemovedBody358_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody358_13 : StackLang.HolProg 64 :=
.seq RemovedBody358_11 RemovedBody358_12

def RemovedBody358_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody358_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody358_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody358_17 : StackLang.HolProg 64 :=
.seq RemovedBody358_15 RemovedBody358_16

def RemovedBody358_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody358_17 RemovedBody358_18

def RemovedBody358_20 : StackLang.HolProg 64 :=
.seq RemovedBody358_14 RemovedBody358_19

def RemovedBody358_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody358_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody358_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 358 3

def RemovedBody358_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody358_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody358_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody358_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody358_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody358_30 : StackLang.HolProg 64 :=
.seq RemovedBody358_28 RemovedBody358_29

def RemovedBody358_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody358_32 : StackLang.HolProg 64 :=
.seq RemovedBody358_30 RemovedBody358_31

def RemovedBody358_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody358_34 : StackLang.HolProg 64 :=
.seq RemovedBody358_32 RemovedBody358_33

def RemovedBody358_35 : StackLang.HolProg 64 :=
.seq RemovedBody358_27 RemovedBody358_34

def RemovedBody358_36 : StackLang.HolProg 64 :=
.seq RemovedBody358_26 RemovedBody358_35

def RemovedBody358_37 : StackLang.HolProg 64 :=
.seq RemovedBody358_25 RemovedBody358_36

def RemovedBody358_38 : StackLang.HolProg 64 :=
.seq RemovedBody358_24 RemovedBody358_37

def RemovedBody358_39 : StackLang.HolProg 64 :=
.seq RemovedBody358_23 RemovedBody358_38

def RemovedBody358_40 : StackLang.HolProg 64 :=
.seq RemovedBody358_22 RemovedBody358_39

def RemovedBody358_41 : StackLang.HolProg 64 :=
.seq RemovedBody358_21 RemovedBody358_40

def RemovedBody358_42 : StackLang.HolProg 64 :=
.seq RemovedBody358_20 RemovedBody358_41

def RemovedBody358_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody358_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody358_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody358_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody358_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody358_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody358_52 : StackLang.HolProg 64 :=
.seq RemovedBody358_50 RemovedBody358_51

def RemovedBody358_53 : StackLang.HolProg 64 :=
.seq RemovedBody358_49 RemovedBody358_52

def RemovedBody358_54 : StackLang.HolProg 64 :=
.seq RemovedBody358_48 RemovedBody358_53

def RemovedBody358_55 : StackLang.HolProg 64 :=
.seq RemovedBody358_47 RemovedBody358_54

def RemovedBody358_56 : StackLang.HolProg 64 :=
.seq RemovedBody358_46 RemovedBody358_55

def RemovedBody358_57 : StackLang.HolProg 64 :=
.seq RemovedBody358_45 RemovedBody358_56

def RemovedBody358_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody358_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody358_60 : StackLang.HolProg 64 :=
.seq RemovedBody358_58 RemovedBody358_59

def RemovedBody358_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody358_62 : StackLang.HolProg 64 :=
.seq RemovedBody358_60 RemovedBody358_61

def RemovedBody358_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody358_57, 0, 358, 2)) (Sum.inl 139) (some (RemovedBody358_62, 358, 3))

def RemovedBody358_64 : StackLang.HolProg 64 :=
.seq RemovedBody358_44 RemovedBody358_63

def RemovedBody358_65 : StackLang.HolProg 64 :=
.seq RemovedBody358_43 RemovedBody358_64

def RemovedBody358_66 : StackLang.HolProg 64 :=
.seq RemovedBody358_42 RemovedBody358_65

def RemovedBody358_67 : StackLang.HolProg 64 :=
.seq RemovedBody358_13 RemovedBody358_66

def RemovedBody358_68 : StackLang.HolProg 64 :=
.seq RemovedBody358_10 RemovedBody358_67

def RemovedBody358_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody358_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody358_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody358_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody358_77 : StackLang.HolProg 64 :=
.seq RemovedBody358_75 RemovedBody358_76

def RemovedBody358_78 : StackLang.HolProg 64 :=
.seq RemovedBody358_74 RemovedBody358_77

def RemovedBody358_79 : StackLang.HolProg 64 :=
.seq RemovedBody358_73 RemovedBody358_78

def RemovedBody358_80 : StackLang.HolProg 64 :=
.seq RemovedBody358_72 RemovedBody358_79

def RemovedBody358_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody358_80 RemovedBody358_81

def RemovedBody358_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody358_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody358_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody358_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody358_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody358_95 : StackLang.HolProg 64 :=
.seq RemovedBody358_93 RemovedBody358_94

def RemovedBody358_96 : StackLang.HolProg 64 :=
.seq RemovedBody358_92 RemovedBody358_95

def RemovedBody358_97 : StackLang.HolProg 64 :=
.seq RemovedBody358_91 RemovedBody358_96

def RemovedBody358_98 : StackLang.HolProg 64 :=
.seq RemovedBody358_90 RemovedBody358_97

def RemovedBody358_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_100 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody358_98 RemovedBody358_99

def RemovedBody358_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_103 : StackLang.HolProg 64 :=
.seq RemovedBody358_101 RemovedBody358_102

def RemovedBody358_104 : StackLang.HolProg 64 :=
.seq RemovedBody358_100 RemovedBody358_103

def RemovedBody358_105 : StackLang.HolProg 64 :=
.seq RemovedBody358_89 RemovedBody358_104

def RemovedBody358_106 : StackLang.HolProg 64 :=
.seq RemovedBody358_88 RemovedBody358_105

def RemovedBody358_107 : StackLang.HolProg 64 :=
.seq RemovedBody358_87 RemovedBody358_106

def RemovedBody358_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody358_107 RemovedBody358_108

def RemovedBody358_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody358_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody358_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody358_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody358_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody358_116 : StackLang.HolProg 64 :=
.seq RemovedBody358_114 RemovedBody358_115

def RemovedBody358_117 : StackLang.HolProg 64 :=
.seq RemovedBody358_113 RemovedBody358_116

def RemovedBody358_118 : StackLang.HolProg 64 :=
.seq RemovedBody358_112 RemovedBody358_117

def RemovedBody358_119 : StackLang.HolProg 64 :=
.seq RemovedBody358_111 RemovedBody358_118

def RemovedBody358_120 : StackLang.HolProg 64 :=
.seq RemovedBody358_110 RemovedBody358_119

def RemovedBody358_121 : StackLang.HolProg 64 :=
.seq RemovedBody358_109 RemovedBody358_120

def RemovedBody358_122 : StackLang.HolProg 64 :=
.seq RemovedBody358_86 RemovedBody358_121

def RemovedBody358_123 : StackLang.HolProg 64 :=
.seq RemovedBody358_85 RemovedBody358_122

def RemovedBody358_124 : StackLang.HolProg 64 :=
.seq RemovedBody358_84 RemovedBody358_123

def RemovedBody358_125 : StackLang.HolProg 64 :=
.seq RemovedBody358_83 RemovedBody358_124

def RemovedBody358_126 : StackLang.HolProg 64 :=
.seq RemovedBody358_82 RemovedBody358_125

def RemovedBody358_127 : StackLang.HolProg 64 :=
.seq RemovedBody358_71 RemovedBody358_126

def RemovedBody358_128 : StackLang.HolProg 64 :=
.seq RemovedBody358_70 RemovedBody358_127

def RemovedBody358_129 : StackLang.HolProg 64 :=
.seq RemovedBody358_69 RemovedBody358_128

def RemovedBody358_130 : StackLang.HolProg 64 :=
.seq RemovedBody358_68 RemovedBody358_129

def RemovedBody358_131 : StackLang.HolProg 64 :=
.seq RemovedBody358_9 RemovedBody358_130

def RemovedBody358_132 : StackLang.HolProg 64 :=
.seq RemovedBody358_6 RemovedBody358_131

def Removed358 : Nat × StackLang.HolProg 64 := (358, RemovedBody358_132)
theorem Removed358_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc358 = Removed358 := by
  kernel_rfl
#print axioms Removed358_eq
end InitECandidate.Proofs.BackendStages
