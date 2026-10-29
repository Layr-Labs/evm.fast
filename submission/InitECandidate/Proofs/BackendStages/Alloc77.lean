import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw77
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody77_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody77_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody77_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody77_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody77_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody77_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody77_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody77_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody77_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody77_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody77_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody77_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody77_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody77_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody77_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody77_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody77_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody77_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody77_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody77_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody77_40 : StackLang.HolProg 64 :=
.seq AllocBody77_38 AllocBody77_39

def AllocBody77_41 : StackLang.HolProg 64 :=
.seq AllocBody77_37 AllocBody77_40

def AllocBody77_42 : StackLang.HolProg 64 :=
.seq AllocBody77_36 AllocBody77_41

def AllocBody77_43 : StackLang.HolProg 64 :=
.seq AllocBody77_35 AllocBody77_42

def AllocBody77_44 : StackLang.HolProg 64 :=
.seq AllocBody77_34 AllocBody77_43

def AllocBody77_45 : StackLang.HolProg 64 :=
.seq AllocBody77_33 AllocBody77_44

def AllocBody77_46 : StackLang.HolProg 64 :=
.seq AllocBody77_32 AllocBody77_45

def AllocBody77_47 : StackLang.HolProg 64 :=
.seq AllocBody77_31 AllocBody77_46

def AllocBody77_48 : StackLang.HolProg 64 :=
.seq AllocBody77_30 AllocBody77_47

def AllocBody77_49 : StackLang.HolProg 64 :=
.seq AllocBody77_29 AllocBody77_48

def AllocBody77_50 : StackLang.HolProg 64 :=
.seq AllocBody77_28 AllocBody77_49

def AllocBody77_51 : StackLang.HolProg 64 :=
.seq AllocBody77_27 AllocBody77_50

def AllocBody77_52 : StackLang.HolProg 64 :=
.seq AllocBody77_26 AllocBody77_51

def AllocBody77_53 : StackLang.HolProg 64 :=
.seq AllocBody77_25 AllocBody77_52

def AllocBody77_54 : StackLang.HolProg 64 :=
.seq AllocBody77_24 AllocBody77_53

def AllocBody77_55 : StackLang.HolProg 64 :=
.seq AllocBody77_23 AllocBody77_54

def AllocBody77_56 : StackLang.HolProg 64 :=
.seq AllocBody77_22 AllocBody77_55

def AllocBody77_57 : StackLang.HolProg 64 :=
.seq AllocBody77_21 AllocBody77_56

def AllocBody77_58 : StackLang.HolProg 64 :=
.seq AllocBody77_20 AllocBody77_57

def AllocBody77_59 : StackLang.HolProg 64 :=
.seq AllocBody77_19 AllocBody77_58

def AllocBody77_60 : StackLang.HolProg 64 :=
.seq AllocBody77_18 AllocBody77_59

def AllocBody77_61 : StackLang.HolProg 64 :=
.seq AllocBody77_17 AllocBody77_60

def AllocBody77_62 : StackLang.HolProg 64 :=
.seq AllocBody77_16 AllocBody77_61

def AllocBody77_63 : StackLang.HolProg 64 :=
.seq AllocBody77_15 AllocBody77_62

def AllocBody77_64 : StackLang.HolProg 64 :=
.seq AllocBody77_14 AllocBody77_63

def AllocBody77_65 : StackLang.HolProg 64 :=
.seq AllocBody77_13 AllocBody77_64

def AllocBody77_66 : StackLang.HolProg 64 :=
.seq AllocBody77_12 AllocBody77_65

def AllocBody77_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody77_70 : StackLang.HolProg 64 :=
.seq AllocBody77_68 AllocBody77_69

def AllocBody77_71 : StackLang.HolProg 64 :=
.seq AllocBody77_67 AllocBody77_70

def AllocBody77_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody77_66 AllocBody77_71

def AllocBody77_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_75 : StackLang.HolProg 64 :=
.seq AllocBody77_73 AllocBody77_74

def AllocBody77_76 : StackLang.HolProg 64 :=
.seq AllocBody77_72 AllocBody77_75

def AllocBody77_77 : StackLang.HolProg 64 :=
.seq AllocBody77_11 AllocBody77_76

def AllocBody77_78 : StackLang.HolProg 64 :=
.seq AllocBody77_10 AllocBody77_77

def AllocBody77_79 : StackLang.HolProg 64 :=
.loop AllocBody77_78

def AllocBody77_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody77_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody77_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody77_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody77_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody77_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody77_95 : StackLang.HolProg 64 :=
.seq AllocBody77_93 AllocBody77_94

def AllocBody77_96 : StackLang.HolProg 64 :=
.seq AllocBody77_92 AllocBody77_95

def AllocBody77_97 : StackLang.HolProg 64 :=
.seq AllocBody77_91 AllocBody77_96

def AllocBody77_98 : StackLang.HolProg 64 :=
.seq AllocBody77_90 AllocBody77_97

def AllocBody77_99 : StackLang.HolProg 64 :=
.seq AllocBody77_89 AllocBody77_98

def AllocBody77_100 : StackLang.HolProg 64 :=
.seq AllocBody77_88 AllocBody77_99

def AllocBody77_101 : StackLang.HolProg 64 :=
.seq AllocBody77_87 AllocBody77_100

def AllocBody77_102 : StackLang.HolProg 64 :=
.seq AllocBody77_86 AllocBody77_101

def AllocBody77_103 : StackLang.HolProg 64 :=
.seq AllocBody77_85 AllocBody77_102

def AllocBody77_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody77_107 : StackLang.HolProg 64 :=
.seq AllocBody77_105 AllocBody77_106

def AllocBody77_108 : StackLang.HolProg 64 :=
.seq AllocBody77_104 AllocBody77_107

def AllocBody77_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody77_103 AllocBody77_108

def AllocBody77_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_112 : StackLang.HolProg 64 :=
.seq AllocBody77_110 AllocBody77_111

def AllocBody77_113 : StackLang.HolProg 64 :=
.seq AllocBody77_109 AllocBody77_112

def AllocBody77_114 : StackLang.HolProg 64 :=
.seq AllocBody77_84 AllocBody77_113

def AllocBody77_115 : StackLang.HolProg 64 :=
.seq AllocBody77_83 AllocBody77_114

def AllocBody77_116 : StackLang.HolProg 64 :=
.loop AllocBody77_115

def AllocBody77_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_119 : StackLang.HolProg 64 :=
.seq AllocBody77_117 AllocBody77_118

def AllocBody77_120 : StackLang.HolProg 64 :=
.seq AllocBody77_116 AllocBody77_119

def AllocBody77_121 : StackLang.HolProg 64 :=
.seq AllocBody77_82 AllocBody77_120

def AllocBody77_122 : StackLang.HolProg 64 :=
.seq AllocBody77_81 AllocBody77_121

def AllocBody77_123 : StackLang.HolProg 64 :=
.seq AllocBody77_80 AllocBody77_122

def AllocBody77_124 : StackLang.HolProg 64 :=
.seq AllocBody77_79 AllocBody77_123

def AllocBody77_125 : StackLang.HolProg 64 :=
.seq AllocBody77_9 AllocBody77_124

def AllocBody77_126 : StackLang.HolProg 64 :=
.seq AllocBody77_8 AllocBody77_125

def AllocBody77_127 : StackLang.HolProg 64 :=
.seq AllocBody77_7 AllocBody77_126

def AllocBody77_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_130 : StackLang.HolProg 64 :=
.seq AllocBody77_128 AllocBody77_129

def AllocBody77_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody77_127 AllocBody77_130

def AllocBody77_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody77_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody77_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody77_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody77_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody77_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody77_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody77_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody77_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody77_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody77_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody77_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody77_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody77_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody77_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody77_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody77_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody77_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody77_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody77_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody77_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody77_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody77_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody77_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody77_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody77_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody77_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody77_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody77_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody77_196 : StackLang.HolProg 64 :=
.seq AllocBody77_194 AllocBody77_195

def AllocBody77_197 : StackLang.HolProg 64 :=
.seq AllocBody77_193 AllocBody77_196

def AllocBody77_198 : StackLang.HolProg 64 :=
.seq AllocBody77_192 AllocBody77_197

def AllocBody77_199 : StackLang.HolProg 64 :=
.seq AllocBody77_191 AllocBody77_198

def AllocBody77_200 : StackLang.HolProg 64 :=
.seq AllocBody77_190 AllocBody77_199

def AllocBody77_201 : StackLang.HolProg 64 :=
.seq AllocBody77_189 AllocBody77_200

def AllocBody77_202 : StackLang.HolProg 64 :=
.seq AllocBody77_188 AllocBody77_201

def AllocBody77_203 : StackLang.HolProg 64 :=
.seq AllocBody77_187 AllocBody77_202

def AllocBody77_204 : StackLang.HolProg 64 :=
.seq AllocBody77_186 AllocBody77_203

def AllocBody77_205 : StackLang.HolProg 64 :=
.seq AllocBody77_185 AllocBody77_204

def AllocBody77_206 : StackLang.HolProg 64 :=
.seq AllocBody77_184 AllocBody77_205

def AllocBody77_207 : StackLang.HolProg 64 :=
.seq AllocBody77_183 AllocBody77_206

def AllocBody77_208 : StackLang.HolProg 64 :=
.seq AllocBody77_182 AllocBody77_207

def AllocBody77_209 : StackLang.HolProg 64 :=
.seq AllocBody77_181 AllocBody77_208

def AllocBody77_210 : StackLang.HolProg 64 :=
.seq AllocBody77_180 AllocBody77_209

def AllocBody77_211 : StackLang.HolProg 64 :=
.seq AllocBody77_179 AllocBody77_210

def AllocBody77_212 : StackLang.HolProg 64 :=
.seq AllocBody77_178 AllocBody77_211

def AllocBody77_213 : StackLang.HolProg 64 :=
.seq AllocBody77_177 AllocBody77_212

def AllocBody77_214 : StackLang.HolProg 64 :=
.seq AllocBody77_176 AllocBody77_213

def AllocBody77_215 : StackLang.HolProg 64 :=
.seq AllocBody77_175 AllocBody77_214

def AllocBody77_216 : StackLang.HolProg 64 :=
.seq AllocBody77_174 AllocBody77_215

def AllocBody77_217 : StackLang.HolProg 64 :=
.seq AllocBody77_173 AllocBody77_216

def AllocBody77_218 : StackLang.HolProg 64 :=
.seq AllocBody77_172 AllocBody77_217

def AllocBody77_219 : StackLang.HolProg 64 :=
.seq AllocBody77_171 AllocBody77_218

def AllocBody77_220 : StackLang.HolProg 64 :=
.seq AllocBody77_170 AllocBody77_219

def AllocBody77_221 : StackLang.HolProg 64 :=
.seq AllocBody77_169 AllocBody77_220

def AllocBody77_222 : StackLang.HolProg 64 :=
.seq AllocBody77_168 AllocBody77_221

def AllocBody77_223 : StackLang.HolProg 64 :=
.seq AllocBody77_167 AllocBody77_222

def AllocBody77_224 : StackLang.HolProg 64 :=
.seq AllocBody77_166 AllocBody77_223

def AllocBody77_225 : StackLang.HolProg 64 :=
.seq AllocBody77_165 AllocBody77_224

def AllocBody77_226 : StackLang.HolProg 64 :=
.seq AllocBody77_164 AllocBody77_225

def AllocBody77_227 : StackLang.HolProg 64 :=
.seq AllocBody77_163 AllocBody77_226

def AllocBody77_228 : StackLang.HolProg 64 :=
.seq AllocBody77_162 AllocBody77_227

def AllocBody77_229 : StackLang.HolProg 64 :=
.seq AllocBody77_161 AllocBody77_228

def AllocBody77_230 : StackLang.HolProg 64 :=
.seq AllocBody77_160 AllocBody77_229

def AllocBody77_231 : StackLang.HolProg 64 :=
.seq AllocBody77_159 AllocBody77_230

def AllocBody77_232 : StackLang.HolProg 64 :=
.seq AllocBody77_158 AllocBody77_231

def AllocBody77_233 : StackLang.HolProg 64 :=
.seq AllocBody77_157 AllocBody77_232

def AllocBody77_234 : StackLang.HolProg 64 :=
.seq AllocBody77_156 AllocBody77_233

def AllocBody77_235 : StackLang.HolProg 64 :=
.seq AllocBody77_155 AllocBody77_234

def AllocBody77_236 : StackLang.HolProg 64 :=
.seq AllocBody77_154 AllocBody77_235

def AllocBody77_237 : StackLang.HolProg 64 :=
.seq AllocBody77_153 AllocBody77_236

def AllocBody77_238 : StackLang.HolProg 64 :=
.seq AllocBody77_152 AllocBody77_237

def AllocBody77_239 : StackLang.HolProg 64 :=
.seq AllocBody77_151 AllocBody77_238

def AllocBody77_240 : StackLang.HolProg 64 :=
.seq AllocBody77_150 AllocBody77_239

def AllocBody77_241 : StackLang.HolProg 64 :=
.seq AllocBody77_149 AllocBody77_240

def AllocBody77_242 : StackLang.HolProg 64 :=
.seq AllocBody77_148 AllocBody77_241

def AllocBody77_243 : StackLang.HolProg 64 :=
.seq AllocBody77_147 AllocBody77_242

def AllocBody77_244 : StackLang.HolProg 64 :=
.seq AllocBody77_146 AllocBody77_243

def AllocBody77_245 : StackLang.HolProg 64 :=
.seq AllocBody77_145 AllocBody77_244

def AllocBody77_246 : StackLang.HolProg 64 :=
.seq AllocBody77_144 AllocBody77_245

def AllocBody77_247 : StackLang.HolProg 64 :=
.seq AllocBody77_143 AllocBody77_246

def AllocBody77_248 : StackLang.HolProg 64 :=
.seq AllocBody77_142 AllocBody77_247

def AllocBody77_249 : StackLang.HolProg 64 :=
.seq AllocBody77_141 AllocBody77_248

def AllocBody77_250 : StackLang.HolProg 64 :=
.seq AllocBody77_140 AllocBody77_249

def AllocBody77_251 : StackLang.HolProg 64 :=
.seq AllocBody77_139 AllocBody77_250

def AllocBody77_252 : StackLang.HolProg 64 :=
.seq AllocBody77_138 AllocBody77_251

def AllocBody77_253 : StackLang.HolProg 64 :=
.seq AllocBody77_137 AllocBody77_252

def AllocBody77_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody77_257 : StackLang.HolProg 64 :=
.seq AllocBody77_255 AllocBody77_256

def AllocBody77_258 : StackLang.HolProg 64 :=
.seq AllocBody77_254 AllocBody77_257

def AllocBody77_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody77_253 AllocBody77_258

def AllocBody77_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_262 : StackLang.HolProg 64 :=
.seq AllocBody77_260 AllocBody77_261

def AllocBody77_263 : StackLang.HolProg 64 :=
.seq AllocBody77_259 AllocBody77_262

def AllocBody77_264 : StackLang.HolProg 64 :=
.seq AllocBody77_136 AllocBody77_263

def AllocBody77_265 : StackLang.HolProg 64 :=
.seq AllocBody77_135 AllocBody77_264

def AllocBody77_266 : StackLang.HolProg 64 :=
.loop AllocBody77_265

def AllocBody77_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody77_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody77_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody77_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody77_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody77_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody77_283 : StackLang.HolProg 64 :=
.seq AllocBody77_281 AllocBody77_282

def AllocBody77_284 : StackLang.HolProg 64 :=
.seq AllocBody77_280 AllocBody77_283

def AllocBody77_285 : StackLang.HolProg 64 :=
.seq AllocBody77_279 AllocBody77_284

def AllocBody77_286 : StackLang.HolProg 64 :=
.seq AllocBody77_278 AllocBody77_285

def AllocBody77_287 : StackLang.HolProg 64 :=
.seq AllocBody77_277 AllocBody77_286

def AllocBody77_288 : StackLang.HolProg 64 :=
.seq AllocBody77_276 AllocBody77_287

def AllocBody77_289 : StackLang.HolProg 64 :=
.seq AllocBody77_275 AllocBody77_288

def AllocBody77_290 : StackLang.HolProg 64 :=
.seq AllocBody77_274 AllocBody77_289

def AllocBody77_291 : StackLang.HolProg 64 :=
.seq AllocBody77_273 AllocBody77_290

def AllocBody77_292 : StackLang.HolProg 64 :=
.seq AllocBody77_272 AllocBody77_291

def AllocBody77_293 : StackLang.HolProg 64 :=
.seq AllocBody77_271 AllocBody77_292

def AllocBody77_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody77_296 : StackLang.HolProg 64 :=
.seq AllocBody77_294 AllocBody77_295

def AllocBody77_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody77_293 AllocBody77_296

def AllocBody77_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_300 : StackLang.HolProg 64 :=
.seq AllocBody77_298 AllocBody77_299

def AllocBody77_301 : StackLang.HolProg 64 :=
.seq AllocBody77_297 AllocBody77_300

def AllocBody77_302 : StackLang.HolProg 64 :=
.seq AllocBody77_270 AllocBody77_301

def AllocBody77_303 : StackLang.HolProg 64 :=
.loop AllocBody77_302

def AllocBody77_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody77_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody77_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody77_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody77_308 : StackLang.HolProg 64 :=
.seq AllocBody77_306 AllocBody77_307

def AllocBody77_309 : StackLang.HolProg 64 :=
.seq AllocBody77_305 AllocBody77_308

def AllocBody77_310 : StackLang.HolProg 64 :=
.seq AllocBody77_304 AllocBody77_309

def AllocBody77_311 : StackLang.HolProg 64 :=
.seq AllocBody77_303 AllocBody77_310

def AllocBody77_312 : StackLang.HolProg 64 :=
.seq AllocBody77_269 AllocBody77_311

def AllocBody77_313 : StackLang.HolProg 64 :=
.seq AllocBody77_268 AllocBody77_312

def AllocBody77_314 : StackLang.HolProg 64 :=
.seq AllocBody77_267 AllocBody77_313

def AllocBody77_315 : StackLang.HolProg 64 :=
.seq AllocBody77_266 AllocBody77_314

def AllocBody77_316 : StackLang.HolProg 64 :=
.seq AllocBody77_134 AllocBody77_315

def AllocBody77_317 : StackLang.HolProg 64 :=
.seq AllocBody77_133 AllocBody77_316

def AllocBody77_318 : StackLang.HolProg 64 :=
.seq AllocBody77_132 AllocBody77_317

def AllocBody77_319 : StackLang.HolProg 64 :=
.seq AllocBody77_131 AllocBody77_318

def AllocBody77_320 : StackLang.HolProg 64 :=
.seq AllocBody77_6 AllocBody77_319

def AllocBody77_321 : StackLang.HolProg 64 :=
.seq AllocBody77_5 AllocBody77_320

def AllocBody77_322 : StackLang.HolProg 64 :=
.seq AllocBody77_4 AllocBody77_321

def AllocBody77_323 : StackLang.HolProg 64 :=
.seq AllocBody77_3 AllocBody77_322

def AllocBody77_324 : StackLang.HolProg 64 :=
.seq AllocBody77_2 AllocBody77_323

def AllocBody77_325 : StackLang.HolProg 64 :=
.seq AllocBody77_1 AllocBody77_324

def AllocBody77_326 : StackLang.HolProg 64 :=
.seq AllocBody77_0 AllocBody77_325

def Alloc77 : Nat × StackLang.HolProg 64 := (77, AllocBody77_326)
theorem Alloc77_eq : StackAlloc.progComp (77, raw77) = Alloc77 := by
  kernel_rfl
#print axioms Alloc77_eq
end InitECandidate.Proofs.BackendStages
