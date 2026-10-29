import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc77
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody77_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody77_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody77_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody77_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody77_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody77_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody77_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody77_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody77_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody77_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody77_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody77_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody77_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody77_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody77_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody77_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody77_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody77_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody77_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody77_40 : StackLang.HolProg 64 :=
.seq RemovedBody77_38 RemovedBody77_39

def RemovedBody77_41 : StackLang.HolProg 64 :=
.seq RemovedBody77_37 RemovedBody77_40

def RemovedBody77_42 : StackLang.HolProg 64 :=
.seq RemovedBody77_36 RemovedBody77_41

def RemovedBody77_43 : StackLang.HolProg 64 :=
.seq RemovedBody77_35 RemovedBody77_42

def RemovedBody77_44 : StackLang.HolProg 64 :=
.seq RemovedBody77_34 RemovedBody77_43

def RemovedBody77_45 : StackLang.HolProg 64 :=
.seq RemovedBody77_33 RemovedBody77_44

def RemovedBody77_46 : StackLang.HolProg 64 :=
.seq RemovedBody77_32 RemovedBody77_45

def RemovedBody77_47 : StackLang.HolProg 64 :=
.seq RemovedBody77_31 RemovedBody77_46

def RemovedBody77_48 : StackLang.HolProg 64 :=
.seq RemovedBody77_30 RemovedBody77_47

def RemovedBody77_49 : StackLang.HolProg 64 :=
.seq RemovedBody77_29 RemovedBody77_48

def RemovedBody77_50 : StackLang.HolProg 64 :=
.seq RemovedBody77_28 RemovedBody77_49

def RemovedBody77_51 : StackLang.HolProg 64 :=
.seq RemovedBody77_27 RemovedBody77_50

def RemovedBody77_52 : StackLang.HolProg 64 :=
.seq RemovedBody77_26 RemovedBody77_51

def RemovedBody77_53 : StackLang.HolProg 64 :=
.seq RemovedBody77_25 RemovedBody77_52

def RemovedBody77_54 : StackLang.HolProg 64 :=
.seq RemovedBody77_24 RemovedBody77_53

def RemovedBody77_55 : StackLang.HolProg 64 :=
.seq RemovedBody77_23 RemovedBody77_54

def RemovedBody77_56 : StackLang.HolProg 64 :=
.seq RemovedBody77_22 RemovedBody77_55

def RemovedBody77_57 : StackLang.HolProg 64 :=
.seq RemovedBody77_21 RemovedBody77_56

def RemovedBody77_58 : StackLang.HolProg 64 :=
.seq RemovedBody77_20 RemovedBody77_57

def RemovedBody77_59 : StackLang.HolProg 64 :=
.seq RemovedBody77_19 RemovedBody77_58

def RemovedBody77_60 : StackLang.HolProg 64 :=
.seq RemovedBody77_18 RemovedBody77_59

def RemovedBody77_61 : StackLang.HolProg 64 :=
.seq RemovedBody77_17 RemovedBody77_60

def RemovedBody77_62 : StackLang.HolProg 64 :=
.seq RemovedBody77_16 RemovedBody77_61

def RemovedBody77_63 : StackLang.HolProg 64 :=
.seq RemovedBody77_15 RemovedBody77_62

def RemovedBody77_64 : StackLang.HolProg 64 :=
.seq RemovedBody77_14 RemovedBody77_63

def RemovedBody77_65 : StackLang.HolProg 64 :=
.seq RemovedBody77_13 RemovedBody77_64

def RemovedBody77_66 : StackLang.HolProg 64 :=
.seq RemovedBody77_12 RemovedBody77_65

def RemovedBody77_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody77_70 : StackLang.HolProg 64 :=
.seq RemovedBody77_68 RemovedBody77_69

def RemovedBody77_71 : StackLang.HolProg 64 :=
.seq RemovedBody77_67 RemovedBody77_70

def RemovedBody77_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody77_66 RemovedBody77_71

def RemovedBody77_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_75 : StackLang.HolProg 64 :=
.seq RemovedBody77_73 RemovedBody77_74

def RemovedBody77_76 : StackLang.HolProg 64 :=
.seq RemovedBody77_72 RemovedBody77_75

def RemovedBody77_77 : StackLang.HolProg 64 :=
.seq RemovedBody77_11 RemovedBody77_76

def RemovedBody77_78 : StackLang.HolProg 64 :=
.seq RemovedBody77_10 RemovedBody77_77

def RemovedBody77_79 : StackLang.HolProg 64 :=
.loop RemovedBody77_78

def RemovedBody77_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody77_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody77_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody77_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody77_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody77_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody77_95 : StackLang.HolProg 64 :=
.seq RemovedBody77_93 RemovedBody77_94

def RemovedBody77_96 : StackLang.HolProg 64 :=
.seq RemovedBody77_92 RemovedBody77_95

def RemovedBody77_97 : StackLang.HolProg 64 :=
.seq RemovedBody77_91 RemovedBody77_96

def RemovedBody77_98 : StackLang.HolProg 64 :=
.seq RemovedBody77_90 RemovedBody77_97

def RemovedBody77_99 : StackLang.HolProg 64 :=
.seq RemovedBody77_89 RemovedBody77_98

def RemovedBody77_100 : StackLang.HolProg 64 :=
.seq RemovedBody77_88 RemovedBody77_99

def RemovedBody77_101 : StackLang.HolProg 64 :=
.seq RemovedBody77_87 RemovedBody77_100

def RemovedBody77_102 : StackLang.HolProg 64 :=
.seq RemovedBody77_86 RemovedBody77_101

def RemovedBody77_103 : StackLang.HolProg 64 :=
.seq RemovedBody77_85 RemovedBody77_102

def RemovedBody77_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody77_107 : StackLang.HolProg 64 :=
.seq RemovedBody77_105 RemovedBody77_106

def RemovedBody77_108 : StackLang.HolProg 64 :=
.seq RemovedBody77_104 RemovedBody77_107

def RemovedBody77_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody77_103 RemovedBody77_108

def RemovedBody77_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_112 : StackLang.HolProg 64 :=
.seq RemovedBody77_110 RemovedBody77_111

def RemovedBody77_113 : StackLang.HolProg 64 :=
.seq RemovedBody77_109 RemovedBody77_112

def RemovedBody77_114 : StackLang.HolProg 64 :=
.seq RemovedBody77_84 RemovedBody77_113

def RemovedBody77_115 : StackLang.HolProg 64 :=
.seq RemovedBody77_83 RemovedBody77_114

def RemovedBody77_116 : StackLang.HolProg 64 :=
.loop RemovedBody77_115

def RemovedBody77_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_119 : StackLang.HolProg 64 :=
.seq RemovedBody77_117 RemovedBody77_118

def RemovedBody77_120 : StackLang.HolProg 64 :=
.seq RemovedBody77_116 RemovedBody77_119

def RemovedBody77_121 : StackLang.HolProg 64 :=
.seq RemovedBody77_82 RemovedBody77_120

def RemovedBody77_122 : StackLang.HolProg 64 :=
.seq RemovedBody77_81 RemovedBody77_121

def RemovedBody77_123 : StackLang.HolProg 64 :=
.seq RemovedBody77_80 RemovedBody77_122

def RemovedBody77_124 : StackLang.HolProg 64 :=
.seq RemovedBody77_79 RemovedBody77_123

def RemovedBody77_125 : StackLang.HolProg 64 :=
.seq RemovedBody77_9 RemovedBody77_124

def RemovedBody77_126 : StackLang.HolProg 64 :=
.seq RemovedBody77_8 RemovedBody77_125

def RemovedBody77_127 : StackLang.HolProg 64 :=
.seq RemovedBody77_7 RemovedBody77_126

def RemovedBody77_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_130 : StackLang.HolProg 64 :=
.seq RemovedBody77_128 RemovedBody77_129

def RemovedBody77_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody77_127 RemovedBody77_130

def RemovedBody77_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody77_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody77_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody77_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody77_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody77_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody77_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody77_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody77_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody77_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody77_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody77_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody77_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody77_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody77_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody77_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody77_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody77_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody77_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody77_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody77_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody77_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody77_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody77_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody77_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody77_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody77_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody77_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody77_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody77_196 : StackLang.HolProg 64 :=
.seq RemovedBody77_194 RemovedBody77_195

def RemovedBody77_197 : StackLang.HolProg 64 :=
.seq RemovedBody77_193 RemovedBody77_196

def RemovedBody77_198 : StackLang.HolProg 64 :=
.seq RemovedBody77_192 RemovedBody77_197

def RemovedBody77_199 : StackLang.HolProg 64 :=
.seq RemovedBody77_191 RemovedBody77_198

def RemovedBody77_200 : StackLang.HolProg 64 :=
.seq RemovedBody77_190 RemovedBody77_199

def RemovedBody77_201 : StackLang.HolProg 64 :=
.seq RemovedBody77_189 RemovedBody77_200

def RemovedBody77_202 : StackLang.HolProg 64 :=
.seq RemovedBody77_188 RemovedBody77_201

def RemovedBody77_203 : StackLang.HolProg 64 :=
.seq RemovedBody77_187 RemovedBody77_202

def RemovedBody77_204 : StackLang.HolProg 64 :=
.seq RemovedBody77_186 RemovedBody77_203

def RemovedBody77_205 : StackLang.HolProg 64 :=
.seq RemovedBody77_185 RemovedBody77_204

def RemovedBody77_206 : StackLang.HolProg 64 :=
.seq RemovedBody77_184 RemovedBody77_205

def RemovedBody77_207 : StackLang.HolProg 64 :=
.seq RemovedBody77_183 RemovedBody77_206

def RemovedBody77_208 : StackLang.HolProg 64 :=
.seq RemovedBody77_182 RemovedBody77_207

def RemovedBody77_209 : StackLang.HolProg 64 :=
.seq RemovedBody77_181 RemovedBody77_208

def RemovedBody77_210 : StackLang.HolProg 64 :=
.seq RemovedBody77_180 RemovedBody77_209

def RemovedBody77_211 : StackLang.HolProg 64 :=
.seq RemovedBody77_179 RemovedBody77_210

def RemovedBody77_212 : StackLang.HolProg 64 :=
.seq RemovedBody77_178 RemovedBody77_211

def RemovedBody77_213 : StackLang.HolProg 64 :=
.seq RemovedBody77_177 RemovedBody77_212

def RemovedBody77_214 : StackLang.HolProg 64 :=
.seq RemovedBody77_176 RemovedBody77_213

def RemovedBody77_215 : StackLang.HolProg 64 :=
.seq RemovedBody77_175 RemovedBody77_214

def RemovedBody77_216 : StackLang.HolProg 64 :=
.seq RemovedBody77_174 RemovedBody77_215

def RemovedBody77_217 : StackLang.HolProg 64 :=
.seq RemovedBody77_173 RemovedBody77_216

def RemovedBody77_218 : StackLang.HolProg 64 :=
.seq RemovedBody77_172 RemovedBody77_217

def RemovedBody77_219 : StackLang.HolProg 64 :=
.seq RemovedBody77_171 RemovedBody77_218

def RemovedBody77_220 : StackLang.HolProg 64 :=
.seq RemovedBody77_170 RemovedBody77_219

def RemovedBody77_221 : StackLang.HolProg 64 :=
.seq RemovedBody77_169 RemovedBody77_220

def RemovedBody77_222 : StackLang.HolProg 64 :=
.seq RemovedBody77_168 RemovedBody77_221

def RemovedBody77_223 : StackLang.HolProg 64 :=
.seq RemovedBody77_167 RemovedBody77_222

def RemovedBody77_224 : StackLang.HolProg 64 :=
.seq RemovedBody77_166 RemovedBody77_223

def RemovedBody77_225 : StackLang.HolProg 64 :=
.seq RemovedBody77_165 RemovedBody77_224

def RemovedBody77_226 : StackLang.HolProg 64 :=
.seq RemovedBody77_164 RemovedBody77_225

def RemovedBody77_227 : StackLang.HolProg 64 :=
.seq RemovedBody77_163 RemovedBody77_226

def RemovedBody77_228 : StackLang.HolProg 64 :=
.seq RemovedBody77_162 RemovedBody77_227

def RemovedBody77_229 : StackLang.HolProg 64 :=
.seq RemovedBody77_161 RemovedBody77_228

def RemovedBody77_230 : StackLang.HolProg 64 :=
.seq RemovedBody77_160 RemovedBody77_229

def RemovedBody77_231 : StackLang.HolProg 64 :=
.seq RemovedBody77_159 RemovedBody77_230

def RemovedBody77_232 : StackLang.HolProg 64 :=
.seq RemovedBody77_158 RemovedBody77_231

def RemovedBody77_233 : StackLang.HolProg 64 :=
.seq RemovedBody77_157 RemovedBody77_232

def RemovedBody77_234 : StackLang.HolProg 64 :=
.seq RemovedBody77_156 RemovedBody77_233

def RemovedBody77_235 : StackLang.HolProg 64 :=
.seq RemovedBody77_155 RemovedBody77_234

def RemovedBody77_236 : StackLang.HolProg 64 :=
.seq RemovedBody77_154 RemovedBody77_235

def RemovedBody77_237 : StackLang.HolProg 64 :=
.seq RemovedBody77_153 RemovedBody77_236

def RemovedBody77_238 : StackLang.HolProg 64 :=
.seq RemovedBody77_152 RemovedBody77_237

def RemovedBody77_239 : StackLang.HolProg 64 :=
.seq RemovedBody77_151 RemovedBody77_238

def RemovedBody77_240 : StackLang.HolProg 64 :=
.seq RemovedBody77_150 RemovedBody77_239

def RemovedBody77_241 : StackLang.HolProg 64 :=
.seq RemovedBody77_149 RemovedBody77_240

def RemovedBody77_242 : StackLang.HolProg 64 :=
.seq RemovedBody77_148 RemovedBody77_241

def RemovedBody77_243 : StackLang.HolProg 64 :=
.seq RemovedBody77_147 RemovedBody77_242

def RemovedBody77_244 : StackLang.HolProg 64 :=
.seq RemovedBody77_146 RemovedBody77_243

def RemovedBody77_245 : StackLang.HolProg 64 :=
.seq RemovedBody77_145 RemovedBody77_244

def RemovedBody77_246 : StackLang.HolProg 64 :=
.seq RemovedBody77_144 RemovedBody77_245

def RemovedBody77_247 : StackLang.HolProg 64 :=
.seq RemovedBody77_143 RemovedBody77_246

def RemovedBody77_248 : StackLang.HolProg 64 :=
.seq RemovedBody77_142 RemovedBody77_247

def RemovedBody77_249 : StackLang.HolProg 64 :=
.seq RemovedBody77_141 RemovedBody77_248

def RemovedBody77_250 : StackLang.HolProg 64 :=
.seq RemovedBody77_140 RemovedBody77_249

def RemovedBody77_251 : StackLang.HolProg 64 :=
.seq RemovedBody77_139 RemovedBody77_250

def RemovedBody77_252 : StackLang.HolProg 64 :=
.seq RemovedBody77_138 RemovedBody77_251

def RemovedBody77_253 : StackLang.HolProg 64 :=
.seq RemovedBody77_137 RemovedBody77_252

def RemovedBody77_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody77_257 : StackLang.HolProg 64 :=
.seq RemovedBody77_255 RemovedBody77_256

def RemovedBody77_258 : StackLang.HolProg 64 :=
.seq RemovedBody77_254 RemovedBody77_257

def RemovedBody77_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody77_253 RemovedBody77_258

def RemovedBody77_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_262 : StackLang.HolProg 64 :=
.seq RemovedBody77_260 RemovedBody77_261

def RemovedBody77_263 : StackLang.HolProg 64 :=
.seq RemovedBody77_259 RemovedBody77_262

def RemovedBody77_264 : StackLang.HolProg 64 :=
.seq RemovedBody77_136 RemovedBody77_263

def RemovedBody77_265 : StackLang.HolProg 64 :=
.seq RemovedBody77_135 RemovedBody77_264

def RemovedBody77_266 : StackLang.HolProg 64 :=
.loop RemovedBody77_265

def RemovedBody77_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody77_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody77_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody77_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody77_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody77_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody77_283 : StackLang.HolProg 64 :=
.seq RemovedBody77_281 RemovedBody77_282

def RemovedBody77_284 : StackLang.HolProg 64 :=
.seq RemovedBody77_280 RemovedBody77_283

def RemovedBody77_285 : StackLang.HolProg 64 :=
.seq RemovedBody77_279 RemovedBody77_284

def RemovedBody77_286 : StackLang.HolProg 64 :=
.seq RemovedBody77_278 RemovedBody77_285

def RemovedBody77_287 : StackLang.HolProg 64 :=
.seq RemovedBody77_277 RemovedBody77_286

def RemovedBody77_288 : StackLang.HolProg 64 :=
.seq RemovedBody77_276 RemovedBody77_287

def RemovedBody77_289 : StackLang.HolProg 64 :=
.seq RemovedBody77_275 RemovedBody77_288

def RemovedBody77_290 : StackLang.HolProg 64 :=
.seq RemovedBody77_274 RemovedBody77_289

def RemovedBody77_291 : StackLang.HolProg 64 :=
.seq RemovedBody77_273 RemovedBody77_290

def RemovedBody77_292 : StackLang.HolProg 64 :=
.seq RemovedBody77_272 RemovedBody77_291

def RemovedBody77_293 : StackLang.HolProg 64 :=
.seq RemovedBody77_271 RemovedBody77_292

def RemovedBody77_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody77_296 : StackLang.HolProg 64 :=
.seq RemovedBody77_294 RemovedBody77_295

def RemovedBody77_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody77_293 RemovedBody77_296

def RemovedBody77_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_300 : StackLang.HolProg 64 :=
.seq RemovedBody77_298 RemovedBody77_299

def RemovedBody77_301 : StackLang.HolProg 64 :=
.seq RemovedBody77_297 RemovedBody77_300

def RemovedBody77_302 : StackLang.HolProg 64 :=
.seq RemovedBody77_270 RemovedBody77_301

def RemovedBody77_303 : StackLang.HolProg 64 :=
.loop RemovedBody77_302

def RemovedBody77_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody77_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody77_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody77_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody77_308 : StackLang.HolProg 64 :=
.seq RemovedBody77_306 RemovedBody77_307

def RemovedBody77_309 : StackLang.HolProg 64 :=
.seq RemovedBody77_305 RemovedBody77_308

def RemovedBody77_310 : StackLang.HolProg 64 :=
.seq RemovedBody77_304 RemovedBody77_309

def RemovedBody77_311 : StackLang.HolProg 64 :=
.seq RemovedBody77_303 RemovedBody77_310

def RemovedBody77_312 : StackLang.HolProg 64 :=
.seq RemovedBody77_269 RemovedBody77_311

def RemovedBody77_313 : StackLang.HolProg 64 :=
.seq RemovedBody77_268 RemovedBody77_312

def RemovedBody77_314 : StackLang.HolProg 64 :=
.seq RemovedBody77_267 RemovedBody77_313

def RemovedBody77_315 : StackLang.HolProg 64 :=
.seq RemovedBody77_266 RemovedBody77_314

def RemovedBody77_316 : StackLang.HolProg 64 :=
.seq RemovedBody77_134 RemovedBody77_315

def RemovedBody77_317 : StackLang.HolProg 64 :=
.seq RemovedBody77_133 RemovedBody77_316

def RemovedBody77_318 : StackLang.HolProg 64 :=
.seq RemovedBody77_132 RemovedBody77_317

def RemovedBody77_319 : StackLang.HolProg 64 :=
.seq RemovedBody77_131 RemovedBody77_318

def RemovedBody77_320 : StackLang.HolProg 64 :=
.seq RemovedBody77_6 RemovedBody77_319

def RemovedBody77_321 : StackLang.HolProg 64 :=
.seq RemovedBody77_5 RemovedBody77_320

def RemovedBody77_322 : StackLang.HolProg 64 :=
.seq RemovedBody77_4 RemovedBody77_321

def RemovedBody77_323 : StackLang.HolProg 64 :=
.seq RemovedBody77_3 RemovedBody77_322

def RemovedBody77_324 : StackLang.HolProg 64 :=
.seq RemovedBody77_2 RemovedBody77_323

def RemovedBody77_325 : StackLang.HolProg 64 :=
.seq RemovedBody77_1 RemovedBody77_324

def RemovedBody77_326 : StackLang.HolProg 64 :=
.seq RemovedBody77_0 RemovedBody77_325

def Removed77 : Nat × StackLang.HolProg 64 := (77, RemovedBody77_326)
theorem Removed77_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc77 = Removed77 := by
  kernel_rfl
#print axioms Removed77_eq
end InitECandidate.Proofs.BackendStages
