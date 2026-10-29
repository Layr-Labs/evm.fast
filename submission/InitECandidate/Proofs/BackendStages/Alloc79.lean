import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw79
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody79_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody79_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody79_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody79_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody79_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody79_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def AllocBody79_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def AllocBody79_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody79_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody79_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_19 : StackLang.HolProg 64 :=
.seq AllocBody79_17 AllocBody79_18

def AllocBody79_20 : StackLang.HolProg 64 :=
.seq AllocBody79_16 AllocBody79_19

def AllocBody79_21 : StackLang.HolProg 64 :=
.seq AllocBody79_15 AllocBody79_20

def AllocBody79_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody79_21 AllocBody79_22

def AllocBody79_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def AllocBody79_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody79_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_34 : StackLang.HolProg 64 :=
.seq AllocBody79_32 AllocBody79_33

def AllocBody79_35 : StackLang.HolProg 64 :=
.seq AllocBody79_31 AllocBody79_34

def AllocBody79_36 : StackLang.HolProg 64 :=
.seq AllocBody79_30 AllocBody79_35

def AllocBody79_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_38 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody79_36 AllocBody79_37

def AllocBody79_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody79_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody79_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def AllocBody79_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_52 : StackLang.HolProg 64 :=
.seq AllocBody79_50 AllocBody79_51

def AllocBody79_53 : StackLang.HolProg 64 :=
.seq AllocBody79_49 AllocBody79_52

def AllocBody79_54 : StackLang.HolProg 64 :=
.seq AllocBody79_48 AllocBody79_53

def AllocBody79_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody79_54 AllocBody79_55

def AllocBody79_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 17#64)))

def AllocBody79_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 17#64)))

def AllocBody79_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def AllocBody79_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_70 : StackLang.HolProg 64 :=
.seq AllocBody79_68 AllocBody79_69

def AllocBody79_71 : StackLang.HolProg 64 :=
.seq AllocBody79_67 AllocBody79_70

def AllocBody79_72 : StackLang.HolProg 64 :=
.seq AllocBody79_66 AllocBody79_71

def AllocBody79_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody79_72 AllocBody79_73

def AllocBody79_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18#64)))

def AllocBody79_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18#64)))

def AllocBody79_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def AllocBody79_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_88 : StackLang.HolProg 64 :=
.seq AllocBody79_86 AllocBody79_87

def AllocBody79_89 : StackLang.HolProg 64 :=
.seq AllocBody79_85 AllocBody79_88

def AllocBody79_90 : StackLang.HolProg 64 :=
.seq AllocBody79_84 AllocBody79_89

def AllocBody79_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody79_90 AllocBody79_91

def AllocBody79_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def AllocBody79_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def AllocBody79_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody79_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_106 : StackLang.HolProg 64 :=
.seq AllocBody79_104 AllocBody79_105

def AllocBody79_107 : StackLang.HolProg 64 :=
.seq AllocBody79_103 AllocBody79_106

def AllocBody79_108 : StackLang.HolProg 64 :=
.seq AllocBody79_102 AllocBody79_107

def AllocBody79_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_108 AllocBody79_109

def AllocBody79_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody79_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_116 : StackLang.HolProg 64 :=
.seq AllocBody79_114 AllocBody79_115

def AllocBody79_117 : StackLang.HolProg 64 :=
.seq AllocBody79_113 AllocBody79_116

def AllocBody79_118 : StackLang.HolProg 64 :=
.seq AllocBody79_112 AllocBody79_117

def AllocBody79_119 : StackLang.HolProg 64 :=
.seq AllocBody79_111 AllocBody79_118

def AllocBody79_120 : StackLang.HolProg 64 :=
.seq AllocBody79_110 AllocBody79_119

def AllocBody79_121 : StackLang.HolProg 64 :=
.seq AllocBody79_101 AllocBody79_120

def AllocBody79_122 : StackLang.HolProg 64 :=
.seq AllocBody79_100 AllocBody79_121

def AllocBody79_123 : StackLang.HolProg 64 :=
.seq AllocBody79_99 AllocBody79_122

def AllocBody79_124 : StackLang.HolProg 64 :=
.seq AllocBody79_98 AllocBody79_123

def AllocBody79_125 : StackLang.HolProg 64 :=
.seq AllocBody79_97 AllocBody79_124

def AllocBody79_126 : StackLang.HolProg 64 :=
.seq AllocBody79_96 AllocBody79_125

def AllocBody79_127 : StackLang.HolProg 64 :=
.seq AllocBody79_95 AllocBody79_126

def AllocBody79_128 : StackLang.HolProg 64 :=
.seq AllocBody79_94 AllocBody79_127

def AllocBody79_129 : StackLang.HolProg 64 :=
.seq AllocBody79_93 AllocBody79_128

def AllocBody79_130 : StackLang.HolProg 64 :=
.seq AllocBody79_92 AllocBody79_129

def AllocBody79_131 : StackLang.HolProg 64 :=
.seq AllocBody79_83 AllocBody79_130

def AllocBody79_132 : StackLang.HolProg 64 :=
.seq AllocBody79_82 AllocBody79_131

def AllocBody79_133 : StackLang.HolProg 64 :=
.seq AllocBody79_81 AllocBody79_132

def AllocBody79_134 : StackLang.HolProg 64 :=
.seq AllocBody79_80 AllocBody79_133

def AllocBody79_135 : StackLang.HolProg 64 :=
.seq AllocBody79_79 AllocBody79_134

def AllocBody79_136 : StackLang.HolProg 64 :=
.seq AllocBody79_78 AllocBody79_135

def AllocBody79_137 : StackLang.HolProg 64 :=
.seq AllocBody79_77 AllocBody79_136

def AllocBody79_138 : StackLang.HolProg 64 :=
.seq AllocBody79_76 AllocBody79_137

def AllocBody79_139 : StackLang.HolProg 64 :=
.seq AllocBody79_75 AllocBody79_138

def AllocBody79_140 : StackLang.HolProg 64 :=
.seq AllocBody79_74 AllocBody79_139

def AllocBody79_141 : StackLang.HolProg 64 :=
.seq AllocBody79_65 AllocBody79_140

def AllocBody79_142 : StackLang.HolProg 64 :=
.seq AllocBody79_64 AllocBody79_141

def AllocBody79_143 : StackLang.HolProg 64 :=
.seq AllocBody79_63 AllocBody79_142

def AllocBody79_144 : StackLang.HolProg 64 :=
.seq AllocBody79_62 AllocBody79_143

def AllocBody79_145 : StackLang.HolProg 64 :=
.seq AllocBody79_61 AllocBody79_144

def AllocBody79_146 : StackLang.HolProg 64 :=
.seq AllocBody79_60 AllocBody79_145

def AllocBody79_147 : StackLang.HolProg 64 :=
.seq AllocBody79_59 AllocBody79_146

def AllocBody79_148 : StackLang.HolProg 64 :=
.seq AllocBody79_58 AllocBody79_147

def AllocBody79_149 : StackLang.HolProg 64 :=
.seq AllocBody79_57 AllocBody79_148

def AllocBody79_150 : StackLang.HolProg 64 :=
.seq AllocBody79_56 AllocBody79_149

def AllocBody79_151 : StackLang.HolProg 64 :=
.seq AllocBody79_47 AllocBody79_150

def AllocBody79_152 : StackLang.HolProg 64 :=
.seq AllocBody79_46 AllocBody79_151

def AllocBody79_153 : StackLang.HolProg 64 :=
.seq AllocBody79_45 AllocBody79_152

def AllocBody79_154 : StackLang.HolProg 64 :=
.seq AllocBody79_44 AllocBody79_153

def AllocBody79_155 : StackLang.HolProg 64 :=
.seq AllocBody79_43 AllocBody79_154

def AllocBody79_156 : StackLang.HolProg 64 :=
.seq AllocBody79_42 AllocBody79_155

def AllocBody79_157 : StackLang.HolProg 64 :=
.seq AllocBody79_41 AllocBody79_156

def AllocBody79_158 : StackLang.HolProg 64 :=
.seq AllocBody79_40 AllocBody79_157

def AllocBody79_159 : StackLang.HolProg 64 :=
.seq AllocBody79_39 AllocBody79_158

def AllocBody79_160 : StackLang.HolProg 64 :=
.seq AllocBody79_38 AllocBody79_159

def AllocBody79_161 : StackLang.HolProg 64 :=
.seq AllocBody79_29 AllocBody79_160

def AllocBody79_162 : StackLang.HolProg 64 :=
.seq AllocBody79_28 AllocBody79_161

def AllocBody79_163 : StackLang.HolProg 64 :=
.seq AllocBody79_27 AllocBody79_162

def AllocBody79_164 : StackLang.HolProg 64 :=
.seq AllocBody79_26 AllocBody79_163

def AllocBody79_165 : StackLang.HolProg 64 :=
.seq AllocBody79_25 AllocBody79_164

def AllocBody79_166 : StackLang.HolProg 64 :=
.seq AllocBody79_24 AllocBody79_165

def AllocBody79_167 : StackLang.HolProg 64 :=
.seq AllocBody79_23 AllocBody79_166

def AllocBody79_168 : StackLang.HolProg 64 :=
.seq AllocBody79_14 AllocBody79_167

def AllocBody79_169 : StackLang.HolProg 64 :=
.seq AllocBody79_13 AllocBody79_168

def AllocBody79_170 : StackLang.HolProg 64 :=
.seq AllocBody79_12 AllocBody79_169

def AllocBody79_171 : StackLang.HolProg 64 :=
.seq AllocBody79_11 AllocBody79_170

def AllocBody79_172 : StackLang.HolProg 64 :=
.seq AllocBody79_10 AllocBody79_171

def AllocBody79_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody79_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody79_175 : StackLang.HolProg 64 :=
.seq AllocBody79_173 AllocBody79_174

def AllocBody79_176 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody79_172 AllocBody79_175

def AllocBody79_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody79_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def AllocBody79_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody79_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_190 : StackLang.HolProg 64 :=
.seq AllocBody79_188 AllocBody79_189

def AllocBody79_191 : StackLang.HolProg 64 :=
.seq AllocBody79_187 AllocBody79_190

def AllocBody79_192 : StackLang.HolProg 64 :=
.seq AllocBody79_186 AllocBody79_191

def AllocBody79_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_192 AllocBody79_193

def AllocBody79_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 8#64))

def AllocBody79_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def AllocBody79_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_205 : StackLang.HolProg 64 :=
.seq AllocBody79_203 AllocBody79_204

def AllocBody79_206 : StackLang.HolProg 64 :=
.seq AllocBody79_202 AllocBody79_205

def AllocBody79_207 : StackLang.HolProg 64 :=
.seq AllocBody79_201 AllocBody79_206

def AllocBody79_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_207 AllocBody79_208

def AllocBody79_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 16#64))

def AllocBody79_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def AllocBody79_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_220 : StackLang.HolProg 64 :=
.seq AllocBody79_218 AllocBody79_219

def AllocBody79_221 : StackLang.HolProg 64 :=
.seq AllocBody79_217 AllocBody79_220

def AllocBody79_222 : StackLang.HolProg 64 :=
.seq AllocBody79_216 AllocBody79_221

def AllocBody79_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_222 AllocBody79_223

def AllocBody79_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 24#64))

def AllocBody79_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def AllocBody79_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_235 : StackLang.HolProg 64 :=
.seq AllocBody79_233 AllocBody79_234

def AllocBody79_236 : StackLang.HolProg 64 :=
.seq AllocBody79_232 AllocBody79_235

def AllocBody79_237 : StackLang.HolProg 64 :=
.seq AllocBody79_231 AllocBody79_236

def AllocBody79_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_237 AllocBody79_238

def AllocBody79_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody79_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_245 : StackLang.HolProg 64 :=
.seq AllocBody79_243 AllocBody79_244

def AllocBody79_246 : StackLang.HolProg 64 :=
.seq AllocBody79_242 AllocBody79_245

def AllocBody79_247 : StackLang.HolProg 64 :=
.seq AllocBody79_241 AllocBody79_246

def AllocBody79_248 : StackLang.HolProg 64 :=
.seq AllocBody79_240 AllocBody79_247

def AllocBody79_249 : StackLang.HolProg 64 :=
.seq AllocBody79_239 AllocBody79_248

def AllocBody79_250 : StackLang.HolProg 64 :=
.seq AllocBody79_230 AllocBody79_249

def AllocBody79_251 : StackLang.HolProg 64 :=
.seq AllocBody79_229 AllocBody79_250

def AllocBody79_252 : StackLang.HolProg 64 :=
.seq AllocBody79_228 AllocBody79_251

def AllocBody79_253 : StackLang.HolProg 64 :=
.seq AllocBody79_227 AllocBody79_252

def AllocBody79_254 : StackLang.HolProg 64 :=
.seq AllocBody79_226 AllocBody79_253

def AllocBody79_255 : StackLang.HolProg 64 :=
.seq AllocBody79_225 AllocBody79_254

def AllocBody79_256 : StackLang.HolProg 64 :=
.seq AllocBody79_224 AllocBody79_255

def AllocBody79_257 : StackLang.HolProg 64 :=
.seq AllocBody79_215 AllocBody79_256

def AllocBody79_258 : StackLang.HolProg 64 :=
.seq AllocBody79_214 AllocBody79_257

def AllocBody79_259 : StackLang.HolProg 64 :=
.seq AllocBody79_213 AllocBody79_258

def AllocBody79_260 : StackLang.HolProg 64 :=
.seq AllocBody79_212 AllocBody79_259

def AllocBody79_261 : StackLang.HolProg 64 :=
.seq AllocBody79_211 AllocBody79_260

def AllocBody79_262 : StackLang.HolProg 64 :=
.seq AllocBody79_210 AllocBody79_261

def AllocBody79_263 : StackLang.HolProg 64 :=
.seq AllocBody79_209 AllocBody79_262

def AllocBody79_264 : StackLang.HolProg 64 :=
.seq AllocBody79_200 AllocBody79_263

def AllocBody79_265 : StackLang.HolProg 64 :=
.seq AllocBody79_199 AllocBody79_264

def AllocBody79_266 : StackLang.HolProg 64 :=
.seq AllocBody79_198 AllocBody79_265

def AllocBody79_267 : StackLang.HolProg 64 :=
.seq AllocBody79_197 AllocBody79_266

def AllocBody79_268 : StackLang.HolProg 64 :=
.seq AllocBody79_196 AllocBody79_267

def AllocBody79_269 : StackLang.HolProg 64 :=
.seq AllocBody79_195 AllocBody79_268

def AllocBody79_270 : StackLang.HolProg 64 :=
.seq AllocBody79_194 AllocBody79_269

def AllocBody79_271 : StackLang.HolProg 64 :=
.seq AllocBody79_185 AllocBody79_270

def AllocBody79_272 : StackLang.HolProg 64 :=
.seq AllocBody79_184 AllocBody79_271

def AllocBody79_273 : StackLang.HolProg 64 :=
.seq AllocBody79_183 AllocBody79_272

def AllocBody79_274 : StackLang.HolProg 64 :=
.seq AllocBody79_182 AllocBody79_273

def AllocBody79_275 : StackLang.HolProg 64 :=
.seq AllocBody79_181 AllocBody79_274

def AllocBody79_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody79_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody79_278 : StackLang.HolProg 64 :=
.seq AllocBody79_276 AllocBody79_277

def AllocBody79_279 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody79_275 AllocBody79_278

def AllocBody79_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def AllocBody79_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody79_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody79_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_293 : StackLang.HolProg 64 :=
.seq AllocBody79_291 AllocBody79_292

def AllocBody79_294 : StackLang.HolProg 64 :=
.seq AllocBody79_290 AllocBody79_293

def AllocBody79_295 : StackLang.HolProg 64 :=
.seq AllocBody79_289 AllocBody79_294

def AllocBody79_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_295 AllocBody79_296

def AllocBody79_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def AllocBody79_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody79_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_308 : StackLang.HolProg 64 :=
.seq AllocBody79_306 AllocBody79_307

def AllocBody79_309 : StackLang.HolProg 64 :=
.seq AllocBody79_305 AllocBody79_308

def AllocBody79_310 : StackLang.HolProg 64 :=
.seq AllocBody79_304 AllocBody79_309

def AllocBody79_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_312 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_310 AllocBody79_311

def AllocBody79_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def AllocBody79_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody79_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_323 : StackLang.HolProg 64 :=
.seq AllocBody79_321 AllocBody79_322

def AllocBody79_324 : StackLang.HolProg 64 :=
.seq AllocBody79_320 AllocBody79_323

def AllocBody79_325 : StackLang.HolProg 64 :=
.seq AllocBody79_319 AllocBody79_324

def AllocBody79_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_327 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_325 AllocBody79_326

def AllocBody79_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def AllocBody79_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody79_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_338 : StackLang.HolProg 64 :=
.seq AllocBody79_336 AllocBody79_337

def AllocBody79_339 : StackLang.HolProg 64 :=
.seq AllocBody79_335 AllocBody79_338

def AllocBody79_340 : StackLang.HolProg 64 :=
.seq AllocBody79_334 AllocBody79_339

def AllocBody79_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_342 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_340 AllocBody79_341

def AllocBody79_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def AllocBody79_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def AllocBody79_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_353 : StackLang.HolProg 64 :=
.seq AllocBody79_351 AllocBody79_352

def AllocBody79_354 : StackLang.HolProg 64 :=
.seq AllocBody79_350 AllocBody79_353

def AllocBody79_355 : StackLang.HolProg 64 :=
.seq AllocBody79_349 AllocBody79_354

def AllocBody79_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_357 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_355 AllocBody79_356

def AllocBody79_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 40#64))

def AllocBody79_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def AllocBody79_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_368 : StackLang.HolProg 64 :=
.seq AllocBody79_366 AllocBody79_367

def AllocBody79_369 : StackLang.HolProg 64 :=
.seq AllocBody79_365 AllocBody79_368

def AllocBody79_370 : StackLang.HolProg 64 :=
.seq AllocBody79_364 AllocBody79_369

def AllocBody79_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_370 AllocBody79_371

def AllocBody79_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody79_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody79_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody79_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_386 : StackLang.HolProg 64 :=
.seq AllocBody79_384 AllocBody79_385

def AllocBody79_387 : StackLang.HolProg 64 :=
.seq AllocBody79_383 AllocBody79_386

def AllocBody79_388 : StackLang.HolProg 64 :=
.seq AllocBody79_382 AllocBody79_387

def AllocBody79_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_390 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_388 AllocBody79_389

def AllocBody79_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 49#64)))

def AllocBody79_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 49#64)))

def AllocBody79_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody79_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_404 : StackLang.HolProg 64 :=
.seq AllocBody79_402 AllocBody79_403

def AllocBody79_405 : StackLang.HolProg 64 :=
.seq AllocBody79_401 AllocBody79_404

def AllocBody79_406 : StackLang.HolProg 64 :=
.seq AllocBody79_400 AllocBody79_405

def AllocBody79_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_408 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_406 AllocBody79_407

def AllocBody79_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 50#64)))

def AllocBody79_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 50#64)))

def AllocBody79_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody79_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_422 : StackLang.HolProg 64 :=
.seq AllocBody79_420 AllocBody79_421

def AllocBody79_423 : StackLang.HolProg 64 :=
.seq AllocBody79_419 AllocBody79_422

def AllocBody79_424 : StackLang.HolProg 64 :=
.seq AllocBody79_418 AllocBody79_423

def AllocBody79_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_426 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_424 AllocBody79_425

def AllocBody79_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 51#64)))

def AllocBody79_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 51#64)))

def AllocBody79_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody79_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_440 : StackLang.HolProg 64 :=
.seq AllocBody79_438 AllocBody79_439

def AllocBody79_441 : StackLang.HolProg 64 :=
.seq AllocBody79_437 AllocBody79_440

def AllocBody79_442 : StackLang.HolProg 64 :=
.seq AllocBody79_436 AllocBody79_441

def AllocBody79_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_444 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody79_442 AllocBody79_443

def AllocBody79_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody79_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_450 : StackLang.HolProg 64 :=
.seq AllocBody79_448 AllocBody79_449

def AllocBody79_451 : StackLang.HolProg 64 :=
.seq AllocBody79_447 AllocBody79_450

def AllocBody79_452 : StackLang.HolProg 64 :=
.seq AllocBody79_446 AllocBody79_451

def AllocBody79_453 : StackLang.HolProg 64 :=
.seq AllocBody79_445 AllocBody79_452

def AllocBody79_454 : StackLang.HolProg 64 :=
.seq AllocBody79_444 AllocBody79_453

def AllocBody79_455 : StackLang.HolProg 64 :=
.seq AllocBody79_435 AllocBody79_454

def AllocBody79_456 : StackLang.HolProg 64 :=
.seq AllocBody79_434 AllocBody79_455

def AllocBody79_457 : StackLang.HolProg 64 :=
.seq AllocBody79_433 AllocBody79_456

def AllocBody79_458 : StackLang.HolProg 64 :=
.seq AllocBody79_432 AllocBody79_457

def AllocBody79_459 : StackLang.HolProg 64 :=
.seq AllocBody79_431 AllocBody79_458

def AllocBody79_460 : StackLang.HolProg 64 :=
.seq AllocBody79_430 AllocBody79_459

def AllocBody79_461 : StackLang.HolProg 64 :=
.seq AllocBody79_429 AllocBody79_460

def AllocBody79_462 : StackLang.HolProg 64 :=
.seq AllocBody79_428 AllocBody79_461

def AllocBody79_463 : StackLang.HolProg 64 :=
.seq AllocBody79_427 AllocBody79_462

def AllocBody79_464 : StackLang.HolProg 64 :=
.seq AllocBody79_426 AllocBody79_463

def AllocBody79_465 : StackLang.HolProg 64 :=
.seq AllocBody79_417 AllocBody79_464

def AllocBody79_466 : StackLang.HolProg 64 :=
.seq AllocBody79_416 AllocBody79_465

def AllocBody79_467 : StackLang.HolProg 64 :=
.seq AllocBody79_415 AllocBody79_466

def AllocBody79_468 : StackLang.HolProg 64 :=
.seq AllocBody79_414 AllocBody79_467

def AllocBody79_469 : StackLang.HolProg 64 :=
.seq AllocBody79_413 AllocBody79_468

def AllocBody79_470 : StackLang.HolProg 64 :=
.seq AllocBody79_412 AllocBody79_469

def AllocBody79_471 : StackLang.HolProg 64 :=
.seq AllocBody79_411 AllocBody79_470

def AllocBody79_472 : StackLang.HolProg 64 :=
.seq AllocBody79_410 AllocBody79_471

def AllocBody79_473 : StackLang.HolProg 64 :=
.seq AllocBody79_409 AllocBody79_472

def AllocBody79_474 : StackLang.HolProg 64 :=
.seq AllocBody79_408 AllocBody79_473

def AllocBody79_475 : StackLang.HolProg 64 :=
.seq AllocBody79_399 AllocBody79_474

def AllocBody79_476 : StackLang.HolProg 64 :=
.seq AllocBody79_398 AllocBody79_475

def AllocBody79_477 : StackLang.HolProg 64 :=
.seq AllocBody79_397 AllocBody79_476

def AllocBody79_478 : StackLang.HolProg 64 :=
.seq AllocBody79_396 AllocBody79_477

def AllocBody79_479 : StackLang.HolProg 64 :=
.seq AllocBody79_395 AllocBody79_478

def AllocBody79_480 : StackLang.HolProg 64 :=
.seq AllocBody79_394 AllocBody79_479

def AllocBody79_481 : StackLang.HolProg 64 :=
.seq AllocBody79_393 AllocBody79_480

def AllocBody79_482 : StackLang.HolProg 64 :=
.seq AllocBody79_392 AllocBody79_481

def AllocBody79_483 : StackLang.HolProg 64 :=
.seq AllocBody79_391 AllocBody79_482

def AllocBody79_484 : StackLang.HolProg 64 :=
.seq AllocBody79_390 AllocBody79_483

def AllocBody79_485 : StackLang.HolProg 64 :=
.seq AllocBody79_381 AllocBody79_484

def AllocBody79_486 : StackLang.HolProg 64 :=
.seq AllocBody79_380 AllocBody79_485

def AllocBody79_487 : StackLang.HolProg 64 :=
.seq AllocBody79_379 AllocBody79_486

def AllocBody79_488 : StackLang.HolProg 64 :=
.seq AllocBody79_378 AllocBody79_487

def AllocBody79_489 : StackLang.HolProg 64 :=
.seq AllocBody79_377 AllocBody79_488

def AllocBody79_490 : StackLang.HolProg 64 :=
.seq AllocBody79_376 AllocBody79_489

def AllocBody79_491 : StackLang.HolProg 64 :=
.seq AllocBody79_375 AllocBody79_490

def AllocBody79_492 : StackLang.HolProg 64 :=
.seq AllocBody79_374 AllocBody79_491

def AllocBody79_493 : StackLang.HolProg 64 :=
.seq AllocBody79_373 AllocBody79_492

def AllocBody79_494 : StackLang.HolProg 64 :=
.seq AllocBody79_372 AllocBody79_493

def AllocBody79_495 : StackLang.HolProg 64 :=
.seq AllocBody79_363 AllocBody79_494

def AllocBody79_496 : StackLang.HolProg 64 :=
.seq AllocBody79_362 AllocBody79_495

def AllocBody79_497 : StackLang.HolProg 64 :=
.seq AllocBody79_361 AllocBody79_496

def AllocBody79_498 : StackLang.HolProg 64 :=
.seq AllocBody79_360 AllocBody79_497

def AllocBody79_499 : StackLang.HolProg 64 :=
.seq AllocBody79_359 AllocBody79_498

def AllocBody79_500 : StackLang.HolProg 64 :=
.seq AllocBody79_358 AllocBody79_499

def AllocBody79_501 : StackLang.HolProg 64 :=
.seq AllocBody79_357 AllocBody79_500

def AllocBody79_502 : StackLang.HolProg 64 :=
.seq AllocBody79_348 AllocBody79_501

def AllocBody79_503 : StackLang.HolProg 64 :=
.seq AllocBody79_347 AllocBody79_502

def AllocBody79_504 : StackLang.HolProg 64 :=
.seq AllocBody79_346 AllocBody79_503

def AllocBody79_505 : StackLang.HolProg 64 :=
.seq AllocBody79_345 AllocBody79_504

def AllocBody79_506 : StackLang.HolProg 64 :=
.seq AllocBody79_344 AllocBody79_505

def AllocBody79_507 : StackLang.HolProg 64 :=
.seq AllocBody79_343 AllocBody79_506

def AllocBody79_508 : StackLang.HolProg 64 :=
.seq AllocBody79_342 AllocBody79_507

def AllocBody79_509 : StackLang.HolProg 64 :=
.seq AllocBody79_333 AllocBody79_508

def AllocBody79_510 : StackLang.HolProg 64 :=
.seq AllocBody79_332 AllocBody79_509

def AllocBody79_511 : StackLang.HolProg 64 :=
.seq AllocBody79_331 AllocBody79_510

def AllocBody79_512 : StackLang.HolProg 64 :=
.seq AllocBody79_330 AllocBody79_511

def AllocBody79_513 : StackLang.HolProg 64 :=
.seq AllocBody79_329 AllocBody79_512

def AllocBody79_514 : StackLang.HolProg 64 :=
.seq AllocBody79_328 AllocBody79_513

def AllocBody79_515 : StackLang.HolProg 64 :=
.seq AllocBody79_327 AllocBody79_514

def AllocBody79_516 : StackLang.HolProg 64 :=
.seq AllocBody79_318 AllocBody79_515

def AllocBody79_517 : StackLang.HolProg 64 :=
.seq AllocBody79_317 AllocBody79_516

def AllocBody79_518 : StackLang.HolProg 64 :=
.seq AllocBody79_316 AllocBody79_517

def AllocBody79_519 : StackLang.HolProg 64 :=
.seq AllocBody79_315 AllocBody79_518

def AllocBody79_520 : StackLang.HolProg 64 :=
.seq AllocBody79_314 AllocBody79_519

def AllocBody79_521 : StackLang.HolProg 64 :=
.seq AllocBody79_313 AllocBody79_520

def AllocBody79_522 : StackLang.HolProg 64 :=
.seq AllocBody79_312 AllocBody79_521

def AllocBody79_523 : StackLang.HolProg 64 :=
.seq AllocBody79_303 AllocBody79_522

def AllocBody79_524 : StackLang.HolProg 64 :=
.seq AllocBody79_302 AllocBody79_523

def AllocBody79_525 : StackLang.HolProg 64 :=
.seq AllocBody79_301 AllocBody79_524

def AllocBody79_526 : StackLang.HolProg 64 :=
.seq AllocBody79_300 AllocBody79_525

def AllocBody79_527 : StackLang.HolProg 64 :=
.seq AllocBody79_299 AllocBody79_526

def AllocBody79_528 : StackLang.HolProg 64 :=
.seq AllocBody79_298 AllocBody79_527

def AllocBody79_529 : StackLang.HolProg 64 :=
.seq AllocBody79_297 AllocBody79_528

def AllocBody79_530 : StackLang.HolProg 64 :=
.seq AllocBody79_288 AllocBody79_529

def AllocBody79_531 : StackLang.HolProg 64 :=
.seq AllocBody79_287 AllocBody79_530

def AllocBody79_532 : StackLang.HolProg 64 :=
.seq AllocBody79_286 AllocBody79_531

def AllocBody79_533 : StackLang.HolProg 64 :=
.seq AllocBody79_285 AllocBody79_532

def AllocBody79_534 : StackLang.HolProg 64 :=
.seq AllocBody79_284 AllocBody79_533

def AllocBody79_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody79_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody79_537 : StackLang.HolProg 64 :=
.seq AllocBody79_535 AllocBody79_536

def AllocBody79_538 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody79_534 AllocBody79_537

def AllocBody79_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody79_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody79_544 : StackLang.HolProg 64 :=
.seq AllocBody79_542 AllocBody79_543

def AllocBody79_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody79_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody79_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody79_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody79_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody79_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_558 : StackLang.HolProg 64 :=
.seq AllocBody79_556 AllocBody79_557

def AllocBody79_559 : StackLang.HolProg 64 :=
.seq AllocBody79_555 AllocBody79_558

def AllocBody79_560 : StackLang.HolProg 64 :=
.seq AllocBody79_554 AllocBody79_559

def AllocBody79_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_562 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody79_560 AllocBody79_561

def AllocBody79_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def AllocBody79_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody79_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_573 : StackLang.HolProg 64 :=
.seq AllocBody79_571 AllocBody79_572

def AllocBody79_574 : StackLang.HolProg 64 :=
.seq AllocBody79_570 AllocBody79_573

def AllocBody79_575 : StackLang.HolProg 64 :=
.seq AllocBody79_569 AllocBody79_574

def AllocBody79_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_577 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody79_575 AllocBody79_576

def AllocBody79_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def AllocBody79_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody79_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_588 : StackLang.HolProg 64 :=
.seq AllocBody79_586 AllocBody79_587

def AllocBody79_589 : StackLang.HolProg 64 :=
.seq AllocBody79_585 AllocBody79_588

def AllocBody79_590 : StackLang.HolProg 64 :=
.seq AllocBody79_584 AllocBody79_589

def AllocBody79_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_592 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody79_590 AllocBody79_591

def AllocBody79_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def AllocBody79_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody79_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_603 : StackLang.HolProg 64 :=
.seq AllocBody79_601 AllocBody79_602

def AllocBody79_604 : StackLang.HolProg 64 :=
.seq AllocBody79_600 AllocBody79_603

def AllocBody79_605 : StackLang.HolProg 64 :=
.seq AllocBody79_599 AllocBody79_604

def AllocBody79_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_607 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody79_605 AllocBody79_606

def AllocBody79_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody79_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody79_612 : StackLang.HolProg 64 :=
.seq AllocBody79_610 AllocBody79_611

def AllocBody79_613 : StackLang.HolProg 64 :=
.seq AllocBody79_609 AllocBody79_612

def AllocBody79_614 : StackLang.HolProg 64 :=
.seq AllocBody79_608 AllocBody79_613

def AllocBody79_615 : StackLang.HolProg 64 :=
.seq AllocBody79_607 AllocBody79_614

def AllocBody79_616 : StackLang.HolProg 64 :=
.seq AllocBody79_598 AllocBody79_615

def AllocBody79_617 : StackLang.HolProg 64 :=
.seq AllocBody79_597 AllocBody79_616

def AllocBody79_618 : StackLang.HolProg 64 :=
.seq AllocBody79_596 AllocBody79_617

def AllocBody79_619 : StackLang.HolProg 64 :=
.seq AllocBody79_595 AllocBody79_618

def AllocBody79_620 : StackLang.HolProg 64 :=
.seq AllocBody79_594 AllocBody79_619

def AllocBody79_621 : StackLang.HolProg 64 :=
.seq AllocBody79_593 AllocBody79_620

def AllocBody79_622 : StackLang.HolProg 64 :=
.seq AllocBody79_592 AllocBody79_621

def AllocBody79_623 : StackLang.HolProg 64 :=
.seq AllocBody79_583 AllocBody79_622

def AllocBody79_624 : StackLang.HolProg 64 :=
.seq AllocBody79_582 AllocBody79_623

def AllocBody79_625 : StackLang.HolProg 64 :=
.seq AllocBody79_581 AllocBody79_624

def AllocBody79_626 : StackLang.HolProg 64 :=
.seq AllocBody79_580 AllocBody79_625

def AllocBody79_627 : StackLang.HolProg 64 :=
.seq AllocBody79_579 AllocBody79_626

def AllocBody79_628 : StackLang.HolProg 64 :=
.seq AllocBody79_578 AllocBody79_627

def AllocBody79_629 : StackLang.HolProg 64 :=
.seq AllocBody79_577 AllocBody79_628

def AllocBody79_630 : StackLang.HolProg 64 :=
.seq AllocBody79_568 AllocBody79_629

def AllocBody79_631 : StackLang.HolProg 64 :=
.seq AllocBody79_567 AllocBody79_630

def AllocBody79_632 : StackLang.HolProg 64 :=
.seq AllocBody79_566 AllocBody79_631

def AllocBody79_633 : StackLang.HolProg 64 :=
.seq AllocBody79_565 AllocBody79_632

def AllocBody79_634 : StackLang.HolProg 64 :=
.seq AllocBody79_564 AllocBody79_633

def AllocBody79_635 : StackLang.HolProg 64 :=
.seq AllocBody79_563 AllocBody79_634

def AllocBody79_636 : StackLang.HolProg 64 :=
.seq AllocBody79_562 AllocBody79_635

def AllocBody79_637 : StackLang.HolProg 64 :=
.seq AllocBody79_553 AllocBody79_636

def AllocBody79_638 : StackLang.HolProg 64 :=
.seq AllocBody79_552 AllocBody79_637

def AllocBody79_639 : StackLang.HolProg 64 :=
.seq AllocBody79_551 AllocBody79_638

def AllocBody79_640 : StackLang.HolProg 64 :=
.seq AllocBody79_550 AllocBody79_639

def AllocBody79_641 : StackLang.HolProg 64 :=
.seq AllocBody79_549 AllocBody79_640

def AllocBody79_642 : StackLang.HolProg 64 :=
.seq AllocBody79_548 AllocBody79_641

def AllocBody79_643 : StackLang.HolProg 64 :=
.seq AllocBody79_547 AllocBody79_642

def AllocBody79_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody79_647 : StackLang.HolProg 64 :=
.seq AllocBody79_645 AllocBody79_646

def AllocBody79_648 : StackLang.HolProg 64 :=
.seq AllocBody79_644 AllocBody79_647

def AllocBody79_649 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_643 AllocBody79_648

def AllocBody79_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_652 : StackLang.HolProg 64 :=
.seq AllocBody79_650 AllocBody79_651

def AllocBody79_653 : StackLang.HolProg 64 :=
.seq AllocBody79_649 AllocBody79_652

def AllocBody79_654 : StackLang.HolProg 64 :=
.seq AllocBody79_546 AllocBody79_653

def AllocBody79_655 : StackLang.HolProg 64 :=
.seq AllocBody79_545 AllocBody79_654

def AllocBody79_656 : StackLang.HolProg 64 :=
.loop AllocBody79_655

def AllocBody79_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody79_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody79_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody79_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody79_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_673 : StackLang.HolProg 64 :=
.seq AllocBody79_671 AllocBody79_672

def AllocBody79_674 : StackLang.HolProg 64 :=
.seq AllocBody79_670 AllocBody79_673

def AllocBody79_675 : StackLang.HolProg 64 :=
.seq AllocBody79_669 AllocBody79_674

def AllocBody79_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_677 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody79_675 AllocBody79_676

def AllocBody79_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody79_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody79_682 : StackLang.HolProg 64 :=
.seq AllocBody79_680 AllocBody79_681

def AllocBody79_683 : StackLang.HolProg 64 :=
.seq AllocBody79_679 AllocBody79_682

def AllocBody79_684 : StackLang.HolProg 64 :=
.seq AllocBody79_678 AllocBody79_683

def AllocBody79_685 : StackLang.HolProg 64 :=
.seq AllocBody79_677 AllocBody79_684

def AllocBody79_686 : StackLang.HolProg 64 :=
.seq AllocBody79_668 AllocBody79_685

def AllocBody79_687 : StackLang.HolProg 64 :=
.seq AllocBody79_667 AllocBody79_686

def AllocBody79_688 : StackLang.HolProg 64 :=
.seq AllocBody79_666 AllocBody79_687

def AllocBody79_689 : StackLang.HolProg 64 :=
.seq AllocBody79_665 AllocBody79_688

def AllocBody79_690 : StackLang.HolProg 64 :=
.seq AllocBody79_664 AllocBody79_689

def AllocBody79_691 : StackLang.HolProg 64 :=
.seq AllocBody79_663 AllocBody79_690

def AllocBody79_692 : StackLang.HolProg 64 :=
.seq AllocBody79_662 AllocBody79_691

def AllocBody79_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody79_696 : StackLang.HolProg 64 :=
.seq AllocBody79_694 AllocBody79_695

def AllocBody79_697 : StackLang.HolProg 64 :=
.seq AllocBody79_693 AllocBody79_696

def AllocBody79_698 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody79_692 AllocBody79_697

def AllocBody79_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_701 : StackLang.HolProg 64 :=
.seq AllocBody79_699 AllocBody79_700

def AllocBody79_702 : StackLang.HolProg 64 :=
.seq AllocBody79_698 AllocBody79_701

def AllocBody79_703 : StackLang.HolProg 64 :=
.seq AllocBody79_661 AllocBody79_702

def AllocBody79_704 : StackLang.HolProg 64 :=
.seq AllocBody79_660 AllocBody79_703

def AllocBody79_705 : StackLang.HolProg 64 :=
.loop AllocBody79_704

def AllocBody79_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_708 : StackLang.HolProg 64 :=
.seq AllocBody79_706 AllocBody79_707

def AllocBody79_709 : StackLang.HolProg 64 :=
.seq AllocBody79_705 AllocBody79_708

def AllocBody79_710 : StackLang.HolProg 64 :=
.seq AllocBody79_659 AllocBody79_709

def AllocBody79_711 : StackLang.HolProg 64 :=
.seq AllocBody79_658 AllocBody79_710

def AllocBody79_712 : StackLang.HolProg 64 :=
.seq AllocBody79_657 AllocBody79_711

def AllocBody79_713 : StackLang.HolProg 64 :=
.seq AllocBody79_656 AllocBody79_712

def AllocBody79_714 : StackLang.HolProg 64 :=
.seq AllocBody79_544 AllocBody79_713

def AllocBody79_715 : StackLang.HolProg 64 :=
.seq AllocBody79_541 AllocBody79_714

def AllocBody79_716 : StackLang.HolProg 64 :=
.seq AllocBody79_540 AllocBody79_715

def AllocBody79_717 : StackLang.HolProg 64 :=
.seq AllocBody79_539 AllocBody79_716

def AllocBody79_718 : StackLang.HolProg 64 :=
.seq AllocBody79_538 AllocBody79_717

def AllocBody79_719 : StackLang.HolProg 64 :=
.seq AllocBody79_283 AllocBody79_718

def AllocBody79_720 : StackLang.HolProg 64 :=
.seq AllocBody79_282 AllocBody79_719

def AllocBody79_721 : StackLang.HolProg 64 :=
.seq AllocBody79_281 AllocBody79_720

def AllocBody79_722 : StackLang.HolProg 64 :=
.seq AllocBody79_280 AllocBody79_721

def AllocBody79_723 : StackLang.HolProg 64 :=
.seq AllocBody79_279 AllocBody79_722

def AllocBody79_724 : StackLang.HolProg 64 :=
.seq AllocBody79_180 AllocBody79_723

def AllocBody79_725 : StackLang.HolProg 64 :=
.seq AllocBody79_179 AllocBody79_724

def AllocBody79_726 : StackLang.HolProg 64 :=
.seq AllocBody79_178 AllocBody79_725

def AllocBody79_727 : StackLang.HolProg 64 :=
.seq AllocBody79_177 AllocBody79_726

def AllocBody79_728 : StackLang.HolProg 64 :=
.seq AllocBody79_176 AllocBody79_727

def AllocBody79_729 : StackLang.HolProg 64 :=
.seq AllocBody79_9 AllocBody79_728

def AllocBody79_730 : StackLang.HolProg 64 :=
.seq AllocBody79_8 AllocBody79_729

def AllocBody79_731 : StackLang.HolProg 64 :=
.seq AllocBody79_7 AllocBody79_730

def AllocBody79_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_734 : StackLang.HolProg 64 :=
.seq AllocBody79_732 AllocBody79_733

def AllocBody79_735 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody79_731 AllocBody79_734

def AllocBody79_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody79_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody79_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody79_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody79_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody79_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_753 : StackLang.HolProg 64 :=
.seq AllocBody79_751 AllocBody79_752

def AllocBody79_754 : StackLang.HolProg 64 :=
.seq AllocBody79_750 AllocBody79_753

def AllocBody79_755 : StackLang.HolProg 64 :=
.seq AllocBody79_749 AllocBody79_754

def AllocBody79_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_757 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_755 AllocBody79_756

def AllocBody79_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody79_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody79_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody79_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_771 : StackLang.HolProg 64 :=
.seq AllocBody79_769 AllocBody79_770

def AllocBody79_772 : StackLang.HolProg 64 :=
.seq AllocBody79_768 AllocBody79_771

def AllocBody79_773 : StackLang.HolProg 64 :=
.seq AllocBody79_767 AllocBody79_772

def AllocBody79_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_775 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_773 AllocBody79_774

def AllocBody79_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody79_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody79_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody79_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_789 : StackLang.HolProg 64 :=
.seq AllocBody79_787 AllocBody79_788

def AllocBody79_790 : StackLang.HolProg 64 :=
.seq AllocBody79_786 AllocBody79_789

def AllocBody79_791 : StackLang.HolProg 64 :=
.seq AllocBody79_785 AllocBody79_790

def AllocBody79_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_793 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_791 AllocBody79_792

def AllocBody79_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody79_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody79_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody79_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_807 : StackLang.HolProg 64 :=
.seq AllocBody79_805 AllocBody79_806

def AllocBody79_808 : StackLang.HolProg 64 :=
.seq AllocBody79_804 AllocBody79_807

def AllocBody79_809 : StackLang.HolProg 64 :=
.seq AllocBody79_803 AllocBody79_808

def AllocBody79_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_811 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_809 AllocBody79_810

def AllocBody79_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody79_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody79_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody79_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_825 : StackLang.HolProg 64 :=
.seq AllocBody79_823 AllocBody79_824

def AllocBody79_826 : StackLang.HolProg 64 :=
.seq AllocBody79_822 AllocBody79_825

def AllocBody79_827 : StackLang.HolProg 64 :=
.seq AllocBody79_821 AllocBody79_826

def AllocBody79_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_829 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_827 AllocBody79_828

def AllocBody79_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody79_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody79_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody79_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_843 : StackLang.HolProg 64 :=
.seq AllocBody79_841 AllocBody79_842

def AllocBody79_844 : StackLang.HolProg 64 :=
.seq AllocBody79_840 AllocBody79_843

def AllocBody79_845 : StackLang.HolProg 64 :=
.seq AllocBody79_839 AllocBody79_844

def AllocBody79_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_847 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_845 AllocBody79_846

def AllocBody79_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody79_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody79_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody79_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_861 : StackLang.HolProg 64 :=
.seq AllocBody79_859 AllocBody79_860

def AllocBody79_862 : StackLang.HolProg 64 :=
.seq AllocBody79_858 AllocBody79_861

def AllocBody79_863 : StackLang.HolProg 64 :=
.seq AllocBody79_857 AllocBody79_862

def AllocBody79_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_865 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody79_863 AllocBody79_864

def AllocBody79_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody79_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody79_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody79_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_879 : StackLang.HolProg 64 :=
.seq AllocBody79_877 AllocBody79_878

def AllocBody79_880 : StackLang.HolProg 64 :=
.seq AllocBody79_876 AllocBody79_879

def AllocBody79_881 : StackLang.HolProg 64 :=
.seq AllocBody79_875 AllocBody79_880

def AllocBody79_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_883 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody79_881 AllocBody79_882

def AllocBody79_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody79_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody79_888 : StackLang.HolProg 64 :=
.seq AllocBody79_886 AllocBody79_887

def AllocBody79_889 : StackLang.HolProg 64 :=
.seq AllocBody79_885 AllocBody79_888

def AllocBody79_890 : StackLang.HolProg 64 :=
.seq AllocBody79_884 AllocBody79_889

def AllocBody79_891 : StackLang.HolProg 64 :=
.seq AllocBody79_883 AllocBody79_890

def AllocBody79_892 : StackLang.HolProg 64 :=
.seq AllocBody79_874 AllocBody79_891

def AllocBody79_893 : StackLang.HolProg 64 :=
.seq AllocBody79_873 AllocBody79_892

def AllocBody79_894 : StackLang.HolProg 64 :=
.seq AllocBody79_872 AllocBody79_893

def AllocBody79_895 : StackLang.HolProg 64 :=
.seq AllocBody79_871 AllocBody79_894

def AllocBody79_896 : StackLang.HolProg 64 :=
.seq AllocBody79_870 AllocBody79_895

def AllocBody79_897 : StackLang.HolProg 64 :=
.seq AllocBody79_869 AllocBody79_896

def AllocBody79_898 : StackLang.HolProg 64 :=
.seq AllocBody79_868 AllocBody79_897

def AllocBody79_899 : StackLang.HolProg 64 :=
.seq AllocBody79_867 AllocBody79_898

def AllocBody79_900 : StackLang.HolProg 64 :=
.seq AllocBody79_866 AllocBody79_899

def AllocBody79_901 : StackLang.HolProg 64 :=
.seq AllocBody79_865 AllocBody79_900

def AllocBody79_902 : StackLang.HolProg 64 :=
.seq AllocBody79_856 AllocBody79_901

def AllocBody79_903 : StackLang.HolProg 64 :=
.seq AllocBody79_855 AllocBody79_902

def AllocBody79_904 : StackLang.HolProg 64 :=
.seq AllocBody79_854 AllocBody79_903

def AllocBody79_905 : StackLang.HolProg 64 :=
.seq AllocBody79_853 AllocBody79_904

def AllocBody79_906 : StackLang.HolProg 64 :=
.seq AllocBody79_852 AllocBody79_905

def AllocBody79_907 : StackLang.HolProg 64 :=
.seq AllocBody79_851 AllocBody79_906

def AllocBody79_908 : StackLang.HolProg 64 :=
.seq AllocBody79_850 AllocBody79_907

def AllocBody79_909 : StackLang.HolProg 64 :=
.seq AllocBody79_849 AllocBody79_908

def AllocBody79_910 : StackLang.HolProg 64 :=
.seq AllocBody79_848 AllocBody79_909

def AllocBody79_911 : StackLang.HolProg 64 :=
.seq AllocBody79_847 AllocBody79_910

def AllocBody79_912 : StackLang.HolProg 64 :=
.seq AllocBody79_838 AllocBody79_911

def AllocBody79_913 : StackLang.HolProg 64 :=
.seq AllocBody79_837 AllocBody79_912

def AllocBody79_914 : StackLang.HolProg 64 :=
.seq AllocBody79_836 AllocBody79_913

def AllocBody79_915 : StackLang.HolProg 64 :=
.seq AllocBody79_835 AllocBody79_914

def AllocBody79_916 : StackLang.HolProg 64 :=
.seq AllocBody79_834 AllocBody79_915

def AllocBody79_917 : StackLang.HolProg 64 :=
.seq AllocBody79_833 AllocBody79_916

def AllocBody79_918 : StackLang.HolProg 64 :=
.seq AllocBody79_832 AllocBody79_917

def AllocBody79_919 : StackLang.HolProg 64 :=
.seq AllocBody79_831 AllocBody79_918

def AllocBody79_920 : StackLang.HolProg 64 :=
.seq AllocBody79_830 AllocBody79_919

def AllocBody79_921 : StackLang.HolProg 64 :=
.seq AllocBody79_829 AllocBody79_920

def AllocBody79_922 : StackLang.HolProg 64 :=
.seq AllocBody79_820 AllocBody79_921

def AllocBody79_923 : StackLang.HolProg 64 :=
.seq AllocBody79_819 AllocBody79_922

def AllocBody79_924 : StackLang.HolProg 64 :=
.seq AllocBody79_818 AllocBody79_923

def AllocBody79_925 : StackLang.HolProg 64 :=
.seq AllocBody79_817 AllocBody79_924

def AllocBody79_926 : StackLang.HolProg 64 :=
.seq AllocBody79_816 AllocBody79_925

def AllocBody79_927 : StackLang.HolProg 64 :=
.seq AllocBody79_815 AllocBody79_926

def AllocBody79_928 : StackLang.HolProg 64 :=
.seq AllocBody79_814 AllocBody79_927

def AllocBody79_929 : StackLang.HolProg 64 :=
.seq AllocBody79_813 AllocBody79_928

def AllocBody79_930 : StackLang.HolProg 64 :=
.seq AllocBody79_812 AllocBody79_929

def AllocBody79_931 : StackLang.HolProg 64 :=
.seq AllocBody79_811 AllocBody79_930

def AllocBody79_932 : StackLang.HolProg 64 :=
.seq AllocBody79_802 AllocBody79_931

def AllocBody79_933 : StackLang.HolProg 64 :=
.seq AllocBody79_801 AllocBody79_932

def AllocBody79_934 : StackLang.HolProg 64 :=
.seq AllocBody79_800 AllocBody79_933

def AllocBody79_935 : StackLang.HolProg 64 :=
.seq AllocBody79_799 AllocBody79_934

def AllocBody79_936 : StackLang.HolProg 64 :=
.seq AllocBody79_798 AllocBody79_935

def AllocBody79_937 : StackLang.HolProg 64 :=
.seq AllocBody79_797 AllocBody79_936

def AllocBody79_938 : StackLang.HolProg 64 :=
.seq AllocBody79_796 AllocBody79_937

def AllocBody79_939 : StackLang.HolProg 64 :=
.seq AllocBody79_795 AllocBody79_938

def AllocBody79_940 : StackLang.HolProg 64 :=
.seq AllocBody79_794 AllocBody79_939

def AllocBody79_941 : StackLang.HolProg 64 :=
.seq AllocBody79_793 AllocBody79_940

def AllocBody79_942 : StackLang.HolProg 64 :=
.seq AllocBody79_784 AllocBody79_941

def AllocBody79_943 : StackLang.HolProg 64 :=
.seq AllocBody79_783 AllocBody79_942

def AllocBody79_944 : StackLang.HolProg 64 :=
.seq AllocBody79_782 AllocBody79_943

def AllocBody79_945 : StackLang.HolProg 64 :=
.seq AllocBody79_781 AllocBody79_944

def AllocBody79_946 : StackLang.HolProg 64 :=
.seq AllocBody79_780 AllocBody79_945

def AllocBody79_947 : StackLang.HolProg 64 :=
.seq AllocBody79_779 AllocBody79_946

def AllocBody79_948 : StackLang.HolProg 64 :=
.seq AllocBody79_778 AllocBody79_947

def AllocBody79_949 : StackLang.HolProg 64 :=
.seq AllocBody79_777 AllocBody79_948

def AllocBody79_950 : StackLang.HolProg 64 :=
.seq AllocBody79_776 AllocBody79_949

def AllocBody79_951 : StackLang.HolProg 64 :=
.seq AllocBody79_775 AllocBody79_950

def AllocBody79_952 : StackLang.HolProg 64 :=
.seq AllocBody79_766 AllocBody79_951

def AllocBody79_953 : StackLang.HolProg 64 :=
.seq AllocBody79_765 AllocBody79_952

def AllocBody79_954 : StackLang.HolProg 64 :=
.seq AllocBody79_764 AllocBody79_953

def AllocBody79_955 : StackLang.HolProg 64 :=
.seq AllocBody79_763 AllocBody79_954

def AllocBody79_956 : StackLang.HolProg 64 :=
.seq AllocBody79_762 AllocBody79_955

def AllocBody79_957 : StackLang.HolProg 64 :=
.seq AllocBody79_761 AllocBody79_956

def AllocBody79_958 : StackLang.HolProg 64 :=
.seq AllocBody79_760 AllocBody79_957

def AllocBody79_959 : StackLang.HolProg 64 :=
.seq AllocBody79_759 AllocBody79_958

def AllocBody79_960 : StackLang.HolProg 64 :=
.seq AllocBody79_758 AllocBody79_959

def AllocBody79_961 : StackLang.HolProg 64 :=
.seq AllocBody79_757 AllocBody79_960

def AllocBody79_962 : StackLang.HolProg 64 :=
.seq AllocBody79_748 AllocBody79_961

def AllocBody79_963 : StackLang.HolProg 64 :=
.seq AllocBody79_747 AllocBody79_962

def AllocBody79_964 : StackLang.HolProg 64 :=
.seq AllocBody79_746 AllocBody79_963

def AllocBody79_965 : StackLang.HolProg 64 :=
.seq AllocBody79_745 AllocBody79_964

def AllocBody79_966 : StackLang.HolProg 64 :=
.seq AllocBody79_744 AllocBody79_965

def AllocBody79_967 : StackLang.HolProg 64 :=
.seq AllocBody79_743 AllocBody79_966

def AllocBody79_968 : StackLang.HolProg 64 :=
.seq AllocBody79_742 AllocBody79_967

def AllocBody79_969 : StackLang.HolProg 64 :=
.seq AllocBody79_741 AllocBody79_968

def AllocBody79_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody79_973 : StackLang.HolProg 64 :=
.seq AllocBody79_971 AllocBody79_972

def AllocBody79_974 : StackLang.HolProg 64 :=
.seq AllocBody79_970 AllocBody79_973

def AllocBody79_975 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody79_969 AllocBody79_974

def AllocBody79_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_978 : StackLang.HolProg 64 :=
.seq AllocBody79_976 AllocBody79_977

def AllocBody79_979 : StackLang.HolProg 64 :=
.seq AllocBody79_975 AllocBody79_978

def AllocBody79_980 : StackLang.HolProg 64 :=
.seq AllocBody79_740 AllocBody79_979

def AllocBody79_981 : StackLang.HolProg 64 :=
.seq AllocBody79_739 AllocBody79_980

def AllocBody79_982 : StackLang.HolProg 64 :=
.loop AllocBody79_981

def AllocBody79_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody79_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody79_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody79_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody79_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody79_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_999 : StackLang.HolProg 64 :=
.seq AllocBody79_997 AllocBody79_998

def AllocBody79_1000 : StackLang.HolProg 64 :=
.seq AllocBody79_996 AllocBody79_999

def AllocBody79_1001 : StackLang.HolProg 64 :=
.seq AllocBody79_995 AllocBody79_1000

def AllocBody79_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_1003 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody79_1001 AllocBody79_1002

def AllocBody79_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody79_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody79_1010 : StackLang.HolProg 64 :=
.seq AllocBody79_1008 AllocBody79_1009

def AllocBody79_1011 : StackLang.HolProg 64 :=
.seq AllocBody79_1007 AllocBody79_1010

def AllocBody79_1012 : StackLang.HolProg 64 :=
.seq AllocBody79_1006 AllocBody79_1011

def AllocBody79_1013 : StackLang.HolProg 64 :=
.seq AllocBody79_1005 AllocBody79_1012

def AllocBody79_1014 : StackLang.HolProg 64 :=
.seq AllocBody79_1004 AllocBody79_1013

def AllocBody79_1015 : StackLang.HolProg 64 :=
.seq AllocBody79_1003 AllocBody79_1014

def AllocBody79_1016 : StackLang.HolProg 64 :=
.seq AllocBody79_994 AllocBody79_1015

def AllocBody79_1017 : StackLang.HolProg 64 :=
.seq AllocBody79_993 AllocBody79_1016

def AllocBody79_1018 : StackLang.HolProg 64 :=
.seq AllocBody79_992 AllocBody79_1017

def AllocBody79_1019 : StackLang.HolProg 64 :=
.seq AllocBody79_991 AllocBody79_1018

def AllocBody79_1020 : StackLang.HolProg 64 :=
.seq AllocBody79_990 AllocBody79_1019

def AllocBody79_1021 : StackLang.HolProg 64 :=
.seq AllocBody79_989 AllocBody79_1020

def AllocBody79_1022 : StackLang.HolProg 64 :=
.seq AllocBody79_988 AllocBody79_1021

def AllocBody79_1023 : StackLang.HolProg 64 :=
.seq AllocBody79_987 AllocBody79_1022

def AllocBody79_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody79_1026 : StackLang.HolProg 64 :=
.seq AllocBody79_1024 AllocBody79_1025

def AllocBody79_1027 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody79_1023 AllocBody79_1026

def AllocBody79_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_1030 : StackLang.HolProg 64 :=
.seq AllocBody79_1028 AllocBody79_1029

def AllocBody79_1031 : StackLang.HolProg 64 :=
.seq AllocBody79_1027 AllocBody79_1030

def AllocBody79_1032 : StackLang.HolProg 64 :=
.seq AllocBody79_986 AllocBody79_1031

def AllocBody79_1033 : StackLang.HolProg 64 :=
.loop AllocBody79_1032

def AllocBody79_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody79_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody79_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody79_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody79_1038 : StackLang.HolProg 64 :=
.seq AllocBody79_1036 AllocBody79_1037

def AllocBody79_1039 : StackLang.HolProg 64 :=
.seq AllocBody79_1035 AllocBody79_1038

def AllocBody79_1040 : StackLang.HolProg 64 :=
.seq AllocBody79_1034 AllocBody79_1039

def AllocBody79_1041 : StackLang.HolProg 64 :=
.seq AllocBody79_1033 AllocBody79_1040

def AllocBody79_1042 : StackLang.HolProg 64 :=
.seq AllocBody79_985 AllocBody79_1041

def AllocBody79_1043 : StackLang.HolProg 64 :=
.seq AllocBody79_984 AllocBody79_1042

def AllocBody79_1044 : StackLang.HolProg 64 :=
.seq AllocBody79_983 AllocBody79_1043

def AllocBody79_1045 : StackLang.HolProg 64 :=
.seq AllocBody79_982 AllocBody79_1044

def AllocBody79_1046 : StackLang.HolProg 64 :=
.seq AllocBody79_738 AllocBody79_1045

def AllocBody79_1047 : StackLang.HolProg 64 :=
.seq AllocBody79_737 AllocBody79_1046

def AllocBody79_1048 : StackLang.HolProg 64 :=
.seq AllocBody79_736 AllocBody79_1047

def AllocBody79_1049 : StackLang.HolProg 64 :=
.seq AllocBody79_735 AllocBody79_1048

def AllocBody79_1050 : StackLang.HolProg 64 :=
.seq AllocBody79_6 AllocBody79_1049

def AllocBody79_1051 : StackLang.HolProg 64 :=
.seq AllocBody79_5 AllocBody79_1050

def AllocBody79_1052 : StackLang.HolProg 64 :=
.seq AllocBody79_4 AllocBody79_1051

def AllocBody79_1053 : StackLang.HolProg 64 :=
.seq AllocBody79_3 AllocBody79_1052

def AllocBody79_1054 : StackLang.HolProg 64 :=
.seq AllocBody79_2 AllocBody79_1053

def AllocBody79_1055 : StackLang.HolProg 64 :=
.seq AllocBody79_1 AllocBody79_1054

def AllocBody79_1056 : StackLang.HolProg 64 :=
.seq AllocBody79_0 AllocBody79_1055

def Alloc79 : Nat × StackLang.HolProg 64 := (79, AllocBody79_1056)
theorem Alloc79_eq : StackAlloc.progComp (79, raw79) = Alloc79 := by
  kernel_rfl
#print axioms Alloc79_eq
end InitECandidate.Proofs.BackendStages
