import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc184
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody184_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody184_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody184_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody184_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody184_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody184_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody184_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody184_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody184_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody184_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 8#64)

def RemovedBody184_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 7#64)

def RemovedBody184_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody184_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody184_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody184_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def RemovedBody184_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody184_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody184_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody184_38 : StackLang.HolProg 64 :=
.seq RemovedBody184_36 RemovedBody184_37

def RemovedBody184_39 : StackLang.HolProg 64 :=
.seq RemovedBody184_35 RemovedBody184_38

def RemovedBody184_40 : StackLang.HolProg 64 :=
.seq RemovedBody184_34 RemovedBody184_39

def RemovedBody184_41 : StackLang.HolProg 64 :=
.seq RemovedBody184_33 RemovedBody184_40

def RemovedBody184_42 : StackLang.HolProg 64 :=
.seq RemovedBody184_32 RemovedBody184_41

def RemovedBody184_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody184_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody184_45 : StackLang.HolProg 64 :=
.seq RemovedBody184_43 RemovedBody184_44

def RemovedBody184_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) RemovedBody184_42 RemovedBody184_45

def RemovedBody184_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody184_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody184_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody184_53 : StackLang.HolProg 64 :=
.seq RemovedBody184_51 RemovedBody184_52

def RemovedBody184_54 : StackLang.HolProg 64 :=
.seq RemovedBody184_50 RemovedBody184_53

def RemovedBody184_55 : StackLang.HolProg 64 :=
.seq RemovedBody184_49 RemovedBody184_54

def RemovedBody184_56 : StackLang.HolProg 64 :=
.seq RemovedBody184_48 RemovedBody184_55

def RemovedBody184_57 : StackLang.HolProg 64 :=
.seq RemovedBody184_47 RemovedBody184_56

def RemovedBody184_58 : StackLang.HolProg 64 :=
.seq RemovedBody184_46 RemovedBody184_57

def RemovedBody184_59 : StackLang.HolProg 64 :=
.seq RemovedBody184_31 RemovedBody184_58

def RemovedBody184_60 : StackLang.HolProg 64 :=
.seq RemovedBody184_30 RemovedBody184_59

def RemovedBody184_61 : StackLang.HolProg 64 :=
.seq RemovedBody184_29 RemovedBody184_60

def RemovedBody184_62 : StackLang.HolProg 64 :=
.seq RemovedBody184_28 RemovedBody184_61

def RemovedBody184_63 : StackLang.HolProg 64 :=
.seq RemovedBody184_27 RemovedBody184_62

def RemovedBody184_64 : StackLang.HolProg 64 :=
.seq RemovedBody184_26 RemovedBody184_63

def RemovedBody184_65 : StackLang.HolProg 64 :=
.seq RemovedBody184_25 RemovedBody184_64

def RemovedBody184_66 : StackLang.HolProg 64 :=
.seq RemovedBody184_24 RemovedBody184_65

def RemovedBody184_67 : StackLang.HolProg 64 :=
.seq RemovedBody184_23 RemovedBody184_66

def RemovedBody184_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody184_70 : StackLang.HolProg 64 :=
.seq RemovedBody184_68 RemovedBody184_69

def RemovedBody184_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody184_67 RemovedBody184_70

def RemovedBody184_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_74 : StackLang.HolProg 64 :=
.seq RemovedBody184_72 RemovedBody184_73

def RemovedBody184_75 : StackLang.HolProg 64 :=
.seq RemovedBody184_71 RemovedBody184_74

def RemovedBody184_76 : StackLang.HolProg 64 :=
.seq RemovedBody184_22 RemovedBody184_75

def RemovedBody184_77 : StackLang.HolProg 64 :=
.seq RemovedBody184_21 RemovedBody184_76

def RemovedBody184_78 : StackLang.HolProg 64 :=
.loop RemovedBody184_77

def RemovedBody184_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_81 : StackLang.HolProg 64 :=
.seq RemovedBody184_79 RemovedBody184_80

def RemovedBody184_82 : StackLang.HolProg 64 :=
.seq RemovedBody184_78 RemovedBody184_81

def RemovedBody184_83 : StackLang.HolProg 64 :=
.seq RemovedBody184_20 RemovedBody184_82

def RemovedBody184_84 : StackLang.HolProg 64 :=
.seq RemovedBody184_19 RemovedBody184_83

def RemovedBody184_85 : StackLang.HolProg 64 :=
.seq RemovedBody184_18 RemovedBody184_84

def RemovedBody184_86 : StackLang.HolProg 64 :=
.seq RemovedBody184_17 RemovedBody184_85

def RemovedBody184_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_89 : StackLang.HolProg 64 :=
.seq RemovedBody184_87 RemovedBody184_88

def RemovedBody184_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody184_86 RemovedBody184_89

def RemovedBody184_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody184_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody184_96 : StackLang.HolProg 64 :=
.seq RemovedBody184_94 RemovedBody184_95

def RemovedBody184_97 : StackLang.HolProg 64 :=
.seq RemovedBody184_93 RemovedBody184_96

def RemovedBody184_98 : StackLang.HolProg 64 :=
.seq RemovedBody184_92 RemovedBody184_97

def RemovedBody184_99 : StackLang.HolProg 64 :=
.seq RemovedBody184_91 RemovedBody184_98

def RemovedBody184_100 : StackLang.HolProg 64 :=
.seq RemovedBody184_90 RemovedBody184_99

def RemovedBody184_101 : StackLang.HolProg 64 :=
.seq RemovedBody184_16 RemovedBody184_100

def RemovedBody184_102 : StackLang.HolProg 64 :=
.seq RemovedBody184_15 RemovedBody184_101

def RemovedBody184_103 : StackLang.HolProg 64 :=
.seq RemovedBody184_14 RemovedBody184_102

def RemovedBody184_104 : StackLang.HolProg 64 :=
.seq RemovedBody184_13 RemovedBody184_103

def RemovedBody184_105 : StackLang.HolProg 64 :=
.seq RemovedBody184_12 RemovedBody184_104

def RemovedBody184_106 : StackLang.HolProg 64 :=
.seq RemovedBody184_11 RemovedBody184_105

def RemovedBody184_107 : StackLang.HolProg 64 :=
.seq RemovedBody184_10 RemovedBody184_106

def RemovedBody184_108 : StackLang.HolProg 64 :=
.seq RemovedBody184_9 RemovedBody184_107

def RemovedBody184_109 : StackLang.HolProg 64 :=
.seq RemovedBody184_8 RemovedBody184_108

def RemovedBody184_110 : StackLang.HolProg 64 :=
.seq RemovedBody184_7 RemovedBody184_109

def RemovedBody184_111 : StackLang.HolProg 64 :=
.seq RemovedBody184_6 RemovedBody184_110

def RemovedBody184_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody184_115 : StackLang.HolProg 64 :=
.seq RemovedBody184_113 RemovedBody184_114

def RemovedBody184_116 : StackLang.HolProg 64 :=
.seq RemovedBody184_112 RemovedBody184_115

def RemovedBody184_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody184_111 RemovedBody184_116

def RemovedBody184_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_120 : StackLang.HolProg 64 :=
.seq RemovedBody184_118 RemovedBody184_119

def RemovedBody184_121 : StackLang.HolProg 64 :=
.seq RemovedBody184_117 RemovedBody184_120

def RemovedBody184_122 : StackLang.HolProg 64 :=
.seq RemovedBody184_5 RemovedBody184_121

def RemovedBody184_123 : StackLang.HolProg 64 :=
.loop RemovedBody184_122

def RemovedBody184_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody184_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody184_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody184_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody184_129 : StackLang.HolProg 64 :=
.seq RemovedBody184_127 RemovedBody184_128

def RemovedBody184_130 : StackLang.HolProg 64 :=
.seq RemovedBody184_126 RemovedBody184_129

def RemovedBody184_131 : StackLang.HolProg 64 :=
.seq RemovedBody184_125 RemovedBody184_130

def RemovedBody184_132 : StackLang.HolProg 64 :=
.seq RemovedBody184_124 RemovedBody184_131

def RemovedBody184_133 : StackLang.HolProg 64 :=
.seq RemovedBody184_123 RemovedBody184_132

def RemovedBody184_134 : StackLang.HolProg 64 :=
.seq RemovedBody184_4 RemovedBody184_133

def RemovedBody184_135 : StackLang.HolProg 64 :=
.seq RemovedBody184_3 RemovedBody184_134

def RemovedBody184_136 : StackLang.HolProg 64 :=
.seq RemovedBody184_2 RemovedBody184_135

def RemovedBody184_137 : StackLang.HolProg 64 :=
.seq RemovedBody184_1 RemovedBody184_136

def RemovedBody184_138 : StackLang.HolProg 64 :=
.seq RemovedBody184_0 RemovedBody184_137

def Removed184 : Nat × StackLang.HolProg 64 := (184, RemovedBody184_138)
theorem Removed184_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc184 = Removed184 := by
  kernel_rfl
#print axioms Removed184_eq
end InitECandidate.Proofs.BackendStages
