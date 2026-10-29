import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc137
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody137_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody137_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody137_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody137_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody137_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_9 : StackLang.HolProg 64 :=
.seq RemovedBody137_7 RemovedBody137_8

def RemovedBody137_10 : StackLang.HolProg 64 :=
.seq RemovedBody137_6 RemovedBody137_9

def RemovedBody137_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody137_13 : StackLang.HolProg 64 :=
.seq RemovedBody137_11 RemovedBody137_12

def RemovedBody137_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody137_10 RemovedBody137_13

def RemovedBody137_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody137_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody137_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody137_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_23 : StackLang.HolProg 64 :=
.seq RemovedBody137_21 RemovedBody137_22

def RemovedBody137_24 : StackLang.HolProg 64 :=
.seq RemovedBody137_20 RemovedBody137_23

def RemovedBody137_25 : StackLang.HolProg 64 :=
.seq RemovedBody137_19 RemovedBody137_24

def RemovedBody137_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody137_28 : StackLang.HolProg 64 :=
.seq RemovedBody137_26 RemovedBody137_27

def RemovedBody137_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody137_25 RemovedBody137_28

def RemovedBody137_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody137_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody137_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody137_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_38 : StackLang.HolProg 64 :=
.seq RemovedBody137_36 RemovedBody137_37

def RemovedBody137_39 : StackLang.HolProg 64 :=
.seq RemovedBody137_35 RemovedBody137_38

def RemovedBody137_40 : StackLang.HolProg 64 :=
.seq RemovedBody137_34 RemovedBody137_39

def RemovedBody137_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody137_43 : StackLang.HolProg 64 :=
.seq RemovedBody137_41 RemovedBody137_42

def RemovedBody137_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody137_40 RemovedBody137_43

def RemovedBody137_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody137_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody137_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody137_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_53 : StackLang.HolProg 64 :=
.seq RemovedBody137_51 RemovedBody137_52

def RemovedBody137_54 : StackLang.HolProg 64 :=
.seq RemovedBody137_50 RemovedBody137_53

def RemovedBody137_55 : StackLang.HolProg 64 :=
.seq RemovedBody137_49 RemovedBody137_54

def RemovedBody137_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody137_58 : StackLang.HolProg 64 :=
.seq RemovedBody137_56 RemovedBody137_57

def RemovedBody137_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody137_55 RemovedBody137_58

def RemovedBody137_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody137_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody137_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody137_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_68 : StackLang.HolProg 64 :=
.seq RemovedBody137_66 RemovedBody137_67

def RemovedBody137_69 : StackLang.HolProg 64 :=
.seq RemovedBody137_65 RemovedBody137_68

def RemovedBody137_70 : StackLang.HolProg 64 :=
.seq RemovedBody137_64 RemovedBody137_69

def RemovedBody137_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody137_73 : StackLang.HolProg 64 :=
.seq RemovedBody137_71 RemovedBody137_72

def RemovedBody137_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody137_70 RemovedBody137_73

def RemovedBody137_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody137_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody137_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody137_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_83 : StackLang.HolProg 64 :=
.seq RemovedBody137_81 RemovedBody137_82

def RemovedBody137_84 : StackLang.HolProg 64 :=
.seq RemovedBody137_80 RemovedBody137_83

def RemovedBody137_85 : StackLang.HolProg 64 :=
.seq RemovedBody137_79 RemovedBody137_84

def RemovedBody137_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody137_88 : StackLang.HolProg 64 :=
.seq RemovedBody137_86 RemovedBody137_87

def RemovedBody137_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody137_85 RemovedBody137_88

def RemovedBody137_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody137_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody137_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody137_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody137_95 : StackLang.HolProg 64 :=
.seq RemovedBody137_93 RemovedBody137_94

def RemovedBody137_96 : StackLang.HolProg 64 :=
.seq RemovedBody137_92 RemovedBody137_95

def RemovedBody137_97 : StackLang.HolProg 64 :=
.seq RemovedBody137_91 RemovedBody137_96

def RemovedBody137_98 : StackLang.HolProg 64 :=
.seq RemovedBody137_90 RemovedBody137_97

def RemovedBody137_99 : StackLang.HolProg 64 :=
.seq RemovedBody137_89 RemovedBody137_98

def RemovedBody137_100 : StackLang.HolProg 64 :=
.seq RemovedBody137_78 RemovedBody137_99

def RemovedBody137_101 : StackLang.HolProg 64 :=
.seq RemovedBody137_77 RemovedBody137_100

def RemovedBody137_102 : StackLang.HolProg 64 :=
.seq RemovedBody137_76 RemovedBody137_101

def RemovedBody137_103 : StackLang.HolProg 64 :=
.seq RemovedBody137_75 RemovedBody137_102

def RemovedBody137_104 : StackLang.HolProg 64 :=
.seq RemovedBody137_74 RemovedBody137_103

def RemovedBody137_105 : StackLang.HolProg 64 :=
.seq RemovedBody137_63 RemovedBody137_104

def RemovedBody137_106 : StackLang.HolProg 64 :=
.seq RemovedBody137_62 RemovedBody137_105

def RemovedBody137_107 : StackLang.HolProg 64 :=
.seq RemovedBody137_61 RemovedBody137_106

def RemovedBody137_108 : StackLang.HolProg 64 :=
.seq RemovedBody137_60 RemovedBody137_107

def RemovedBody137_109 : StackLang.HolProg 64 :=
.seq RemovedBody137_59 RemovedBody137_108

def RemovedBody137_110 : StackLang.HolProg 64 :=
.seq RemovedBody137_48 RemovedBody137_109

def RemovedBody137_111 : StackLang.HolProg 64 :=
.seq RemovedBody137_47 RemovedBody137_110

def RemovedBody137_112 : StackLang.HolProg 64 :=
.seq RemovedBody137_46 RemovedBody137_111

def RemovedBody137_113 : StackLang.HolProg 64 :=
.seq RemovedBody137_45 RemovedBody137_112

def RemovedBody137_114 : StackLang.HolProg 64 :=
.seq RemovedBody137_44 RemovedBody137_113

def RemovedBody137_115 : StackLang.HolProg 64 :=
.seq RemovedBody137_33 RemovedBody137_114

def RemovedBody137_116 : StackLang.HolProg 64 :=
.seq RemovedBody137_32 RemovedBody137_115

def RemovedBody137_117 : StackLang.HolProg 64 :=
.seq RemovedBody137_31 RemovedBody137_116

def RemovedBody137_118 : StackLang.HolProg 64 :=
.seq RemovedBody137_30 RemovedBody137_117

def RemovedBody137_119 : StackLang.HolProg 64 :=
.seq RemovedBody137_29 RemovedBody137_118

def RemovedBody137_120 : StackLang.HolProg 64 :=
.seq RemovedBody137_18 RemovedBody137_119

def RemovedBody137_121 : StackLang.HolProg 64 :=
.seq RemovedBody137_17 RemovedBody137_120

def RemovedBody137_122 : StackLang.HolProg 64 :=
.seq RemovedBody137_16 RemovedBody137_121

def RemovedBody137_123 : StackLang.HolProg 64 :=
.seq RemovedBody137_15 RemovedBody137_122

def RemovedBody137_124 : StackLang.HolProg 64 :=
.seq RemovedBody137_14 RemovedBody137_123

def RemovedBody137_125 : StackLang.HolProg 64 :=
.seq RemovedBody137_5 RemovedBody137_124

def RemovedBody137_126 : StackLang.HolProg 64 :=
.seq RemovedBody137_4 RemovedBody137_125

def RemovedBody137_127 : StackLang.HolProg 64 :=
.seq RemovedBody137_3 RemovedBody137_126

def RemovedBody137_128 : StackLang.HolProg 64 :=
.seq RemovedBody137_2 RemovedBody137_127

def RemovedBody137_129 : StackLang.HolProg 64 :=
.seq RemovedBody137_1 RemovedBody137_128

def RemovedBody137_130 : StackLang.HolProg 64 :=
.seq RemovedBody137_0 RemovedBody137_129

def Removed137 : Nat × StackLang.HolProg 64 := (137, RemovedBody137_130)
theorem Removed137_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc137 = Removed137 := by
  kernel_rfl
#print axioms Removed137_eq
end InitECandidate.Proofs.BackendStages
