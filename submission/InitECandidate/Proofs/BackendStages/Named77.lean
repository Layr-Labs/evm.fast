import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed77
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody77_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody77_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody77_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody77_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody77_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody77_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody77_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody77_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody77_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody77_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody77_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody77_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody77_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody77_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody77_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody77_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody77_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody77_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody77_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody77_40 : StackLang.HolProg 64 :=
.seq NamedBody77_38 NamedBody77_39

def NamedBody77_41 : StackLang.HolProg 64 :=
.seq NamedBody77_37 NamedBody77_40

def NamedBody77_42 : StackLang.HolProg 64 :=
.seq NamedBody77_36 NamedBody77_41

def NamedBody77_43 : StackLang.HolProg 64 :=
.seq NamedBody77_35 NamedBody77_42

def NamedBody77_44 : StackLang.HolProg 64 :=
.seq NamedBody77_34 NamedBody77_43

def NamedBody77_45 : StackLang.HolProg 64 :=
.seq NamedBody77_33 NamedBody77_44

def NamedBody77_46 : StackLang.HolProg 64 :=
.seq NamedBody77_32 NamedBody77_45

def NamedBody77_47 : StackLang.HolProg 64 :=
.seq NamedBody77_31 NamedBody77_46

def NamedBody77_48 : StackLang.HolProg 64 :=
.seq NamedBody77_30 NamedBody77_47

def NamedBody77_49 : StackLang.HolProg 64 :=
.seq NamedBody77_29 NamedBody77_48

def NamedBody77_50 : StackLang.HolProg 64 :=
.seq NamedBody77_28 NamedBody77_49

def NamedBody77_51 : StackLang.HolProg 64 :=
.seq NamedBody77_27 NamedBody77_50

def NamedBody77_52 : StackLang.HolProg 64 :=
.seq NamedBody77_26 NamedBody77_51

def NamedBody77_53 : StackLang.HolProg 64 :=
.seq NamedBody77_25 NamedBody77_52

def NamedBody77_54 : StackLang.HolProg 64 :=
.seq NamedBody77_24 NamedBody77_53

def NamedBody77_55 : StackLang.HolProg 64 :=
.seq NamedBody77_23 NamedBody77_54

def NamedBody77_56 : StackLang.HolProg 64 :=
.seq NamedBody77_22 NamedBody77_55

def NamedBody77_57 : StackLang.HolProg 64 :=
.seq NamedBody77_21 NamedBody77_56

def NamedBody77_58 : StackLang.HolProg 64 :=
.seq NamedBody77_20 NamedBody77_57

def NamedBody77_59 : StackLang.HolProg 64 :=
.seq NamedBody77_19 NamedBody77_58

def NamedBody77_60 : StackLang.HolProg 64 :=
.seq NamedBody77_18 NamedBody77_59

def NamedBody77_61 : StackLang.HolProg 64 :=
.seq NamedBody77_17 NamedBody77_60

def NamedBody77_62 : StackLang.HolProg 64 :=
.seq NamedBody77_16 NamedBody77_61

def NamedBody77_63 : StackLang.HolProg 64 :=
.seq NamedBody77_15 NamedBody77_62

def NamedBody77_64 : StackLang.HolProg 64 :=
.seq NamedBody77_14 NamedBody77_63

def NamedBody77_65 : StackLang.HolProg 64 :=
.seq NamedBody77_13 NamedBody77_64

def NamedBody77_66 : StackLang.HolProg 64 :=
.seq NamedBody77_12 NamedBody77_65

def NamedBody77_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody77_70 : StackLang.HolProg 64 :=
.seq NamedBody77_68 NamedBody77_69

def NamedBody77_71 : StackLang.HolProg 64 :=
.seq NamedBody77_67 NamedBody77_70

def NamedBody77_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody77_66 NamedBody77_71

def NamedBody77_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_75 : StackLang.HolProg 64 :=
.seq NamedBody77_73 NamedBody77_74

def NamedBody77_76 : StackLang.HolProg 64 :=
.seq NamedBody77_72 NamedBody77_75

def NamedBody77_77 : StackLang.HolProg 64 :=
.seq NamedBody77_11 NamedBody77_76

def NamedBody77_78 : StackLang.HolProg 64 :=
.seq NamedBody77_10 NamedBody77_77

def NamedBody77_79 : StackLang.HolProg 64 :=
.loop NamedBody77_78

def NamedBody77_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody77_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody77_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody77_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody77_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody77_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody77_95 : StackLang.HolProg 64 :=
.seq NamedBody77_93 NamedBody77_94

def NamedBody77_96 : StackLang.HolProg 64 :=
.seq NamedBody77_92 NamedBody77_95

def NamedBody77_97 : StackLang.HolProg 64 :=
.seq NamedBody77_91 NamedBody77_96

def NamedBody77_98 : StackLang.HolProg 64 :=
.seq NamedBody77_90 NamedBody77_97

def NamedBody77_99 : StackLang.HolProg 64 :=
.seq NamedBody77_89 NamedBody77_98

def NamedBody77_100 : StackLang.HolProg 64 :=
.seq NamedBody77_88 NamedBody77_99

def NamedBody77_101 : StackLang.HolProg 64 :=
.seq NamedBody77_87 NamedBody77_100

def NamedBody77_102 : StackLang.HolProg 64 :=
.seq NamedBody77_86 NamedBody77_101

def NamedBody77_103 : StackLang.HolProg 64 :=
.seq NamedBody77_85 NamedBody77_102

def NamedBody77_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody77_107 : StackLang.HolProg 64 :=
.seq NamedBody77_105 NamedBody77_106

def NamedBody77_108 : StackLang.HolProg 64 :=
.seq NamedBody77_104 NamedBody77_107

def NamedBody77_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody77_103 NamedBody77_108

def NamedBody77_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_112 : StackLang.HolProg 64 :=
.seq NamedBody77_110 NamedBody77_111

def NamedBody77_113 : StackLang.HolProg 64 :=
.seq NamedBody77_109 NamedBody77_112

def NamedBody77_114 : StackLang.HolProg 64 :=
.seq NamedBody77_84 NamedBody77_113

def NamedBody77_115 : StackLang.HolProg 64 :=
.seq NamedBody77_83 NamedBody77_114

def NamedBody77_116 : StackLang.HolProg 64 :=
.loop NamedBody77_115

def NamedBody77_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_119 : StackLang.HolProg 64 :=
.seq NamedBody77_117 NamedBody77_118

def NamedBody77_120 : StackLang.HolProg 64 :=
.seq NamedBody77_116 NamedBody77_119

def NamedBody77_121 : StackLang.HolProg 64 :=
.seq NamedBody77_82 NamedBody77_120

def NamedBody77_122 : StackLang.HolProg 64 :=
.seq NamedBody77_81 NamedBody77_121

def NamedBody77_123 : StackLang.HolProg 64 :=
.seq NamedBody77_80 NamedBody77_122

def NamedBody77_124 : StackLang.HolProg 64 :=
.seq NamedBody77_79 NamedBody77_123

def NamedBody77_125 : StackLang.HolProg 64 :=
.seq NamedBody77_9 NamedBody77_124

def NamedBody77_126 : StackLang.HolProg 64 :=
.seq NamedBody77_8 NamedBody77_125

def NamedBody77_127 : StackLang.HolProg 64 :=
.seq NamedBody77_7 NamedBody77_126

def NamedBody77_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_130 : StackLang.HolProg 64 :=
.seq NamedBody77_128 NamedBody77_129

def NamedBody77_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody77_127 NamedBody77_130

def NamedBody77_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody77_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody77_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody77_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody77_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody77_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody77_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody77_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody77_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody77_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody77_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody77_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody77_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody77_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody77_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody77_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody77_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody77_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody77_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody77_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody77_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody77_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody77_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody77_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody77_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody77_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody77_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody77_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody77_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody77_196 : StackLang.HolProg 64 :=
.seq NamedBody77_194 NamedBody77_195

def NamedBody77_197 : StackLang.HolProg 64 :=
.seq NamedBody77_193 NamedBody77_196

def NamedBody77_198 : StackLang.HolProg 64 :=
.seq NamedBody77_192 NamedBody77_197

def NamedBody77_199 : StackLang.HolProg 64 :=
.seq NamedBody77_191 NamedBody77_198

def NamedBody77_200 : StackLang.HolProg 64 :=
.seq NamedBody77_190 NamedBody77_199

def NamedBody77_201 : StackLang.HolProg 64 :=
.seq NamedBody77_189 NamedBody77_200

def NamedBody77_202 : StackLang.HolProg 64 :=
.seq NamedBody77_188 NamedBody77_201

def NamedBody77_203 : StackLang.HolProg 64 :=
.seq NamedBody77_187 NamedBody77_202

def NamedBody77_204 : StackLang.HolProg 64 :=
.seq NamedBody77_186 NamedBody77_203

def NamedBody77_205 : StackLang.HolProg 64 :=
.seq NamedBody77_185 NamedBody77_204

def NamedBody77_206 : StackLang.HolProg 64 :=
.seq NamedBody77_184 NamedBody77_205

def NamedBody77_207 : StackLang.HolProg 64 :=
.seq NamedBody77_183 NamedBody77_206

def NamedBody77_208 : StackLang.HolProg 64 :=
.seq NamedBody77_182 NamedBody77_207

def NamedBody77_209 : StackLang.HolProg 64 :=
.seq NamedBody77_181 NamedBody77_208

def NamedBody77_210 : StackLang.HolProg 64 :=
.seq NamedBody77_180 NamedBody77_209

def NamedBody77_211 : StackLang.HolProg 64 :=
.seq NamedBody77_179 NamedBody77_210

def NamedBody77_212 : StackLang.HolProg 64 :=
.seq NamedBody77_178 NamedBody77_211

def NamedBody77_213 : StackLang.HolProg 64 :=
.seq NamedBody77_177 NamedBody77_212

def NamedBody77_214 : StackLang.HolProg 64 :=
.seq NamedBody77_176 NamedBody77_213

def NamedBody77_215 : StackLang.HolProg 64 :=
.seq NamedBody77_175 NamedBody77_214

def NamedBody77_216 : StackLang.HolProg 64 :=
.seq NamedBody77_174 NamedBody77_215

def NamedBody77_217 : StackLang.HolProg 64 :=
.seq NamedBody77_173 NamedBody77_216

def NamedBody77_218 : StackLang.HolProg 64 :=
.seq NamedBody77_172 NamedBody77_217

def NamedBody77_219 : StackLang.HolProg 64 :=
.seq NamedBody77_171 NamedBody77_218

def NamedBody77_220 : StackLang.HolProg 64 :=
.seq NamedBody77_170 NamedBody77_219

def NamedBody77_221 : StackLang.HolProg 64 :=
.seq NamedBody77_169 NamedBody77_220

def NamedBody77_222 : StackLang.HolProg 64 :=
.seq NamedBody77_168 NamedBody77_221

def NamedBody77_223 : StackLang.HolProg 64 :=
.seq NamedBody77_167 NamedBody77_222

def NamedBody77_224 : StackLang.HolProg 64 :=
.seq NamedBody77_166 NamedBody77_223

def NamedBody77_225 : StackLang.HolProg 64 :=
.seq NamedBody77_165 NamedBody77_224

def NamedBody77_226 : StackLang.HolProg 64 :=
.seq NamedBody77_164 NamedBody77_225

def NamedBody77_227 : StackLang.HolProg 64 :=
.seq NamedBody77_163 NamedBody77_226

def NamedBody77_228 : StackLang.HolProg 64 :=
.seq NamedBody77_162 NamedBody77_227

def NamedBody77_229 : StackLang.HolProg 64 :=
.seq NamedBody77_161 NamedBody77_228

def NamedBody77_230 : StackLang.HolProg 64 :=
.seq NamedBody77_160 NamedBody77_229

def NamedBody77_231 : StackLang.HolProg 64 :=
.seq NamedBody77_159 NamedBody77_230

def NamedBody77_232 : StackLang.HolProg 64 :=
.seq NamedBody77_158 NamedBody77_231

def NamedBody77_233 : StackLang.HolProg 64 :=
.seq NamedBody77_157 NamedBody77_232

def NamedBody77_234 : StackLang.HolProg 64 :=
.seq NamedBody77_156 NamedBody77_233

def NamedBody77_235 : StackLang.HolProg 64 :=
.seq NamedBody77_155 NamedBody77_234

def NamedBody77_236 : StackLang.HolProg 64 :=
.seq NamedBody77_154 NamedBody77_235

def NamedBody77_237 : StackLang.HolProg 64 :=
.seq NamedBody77_153 NamedBody77_236

def NamedBody77_238 : StackLang.HolProg 64 :=
.seq NamedBody77_152 NamedBody77_237

def NamedBody77_239 : StackLang.HolProg 64 :=
.seq NamedBody77_151 NamedBody77_238

def NamedBody77_240 : StackLang.HolProg 64 :=
.seq NamedBody77_150 NamedBody77_239

def NamedBody77_241 : StackLang.HolProg 64 :=
.seq NamedBody77_149 NamedBody77_240

def NamedBody77_242 : StackLang.HolProg 64 :=
.seq NamedBody77_148 NamedBody77_241

def NamedBody77_243 : StackLang.HolProg 64 :=
.seq NamedBody77_147 NamedBody77_242

def NamedBody77_244 : StackLang.HolProg 64 :=
.seq NamedBody77_146 NamedBody77_243

def NamedBody77_245 : StackLang.HolProg 64 :=
.seq NamedBody77_145 NamedBody77_244

def NamedBody77_246 : StackLang.HolProg 64 :=
.seq NamedBody77_144 NamedBody77_245

def NamedBody77_247 : StackLang.HolProg 64 :=
.seq NamedBody77_143 NamedBody77_246

def NamedBody77_248 : StackLang.HolProg 64 :=
.seq NamedBody77_142 NamedBody77_247

def NamedBody77_249 : StackLang.HolProg 64 :=
.seq NamedBody77_141 NamedBody77_248

def NamedBody77_250 : StackLang.HolProg 64 :=
.seq NamedBody77_140 NamedBody77_249

def NamedBody77_251 : StackLang.HolProg 64 :=
.seq NamedBody77_139 NamedBody77_250

def NamedBody77_252 : StackLang.HolProg 64 :=
.seq NamedBody77_138 NamedBody77_251

def NamedBody77_253 : StackLang.HolProg 64 :=
.seq NamedBody77_137 NamedBody77_252

def NamedBody77_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody77_257 : StackLang.HolProg 64 :=
.seq NamedBody77_255 NamedBody77_256

def NamedBody77_258 : StackLang.HolProg 64 :=
.seq NamedBody77_254 NamedBody77_257

def NamedBody77_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody77_253 NamedBody77_258

def NamedBody77_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_262 : StackLang.HolProg 64 :=
.seq NamedBody77_260 NamedBody77_261

def NamedBody77_263 : StackLang.HolProg 64 :=
.seq NamedBody77_259 NamedBody77_262

def NamedBody77_264 : StackLang.HolProg 64 :=
.seq NamedBody77_136 NamedBody77_263

def NamedBody77_265 : StackLang.HolProg 64 :=
.seq NamedBody77_135 NamedBody77_264

def NamedBody77_266 : StackLang.HolProg 64 :=
.loop NamedBody77_265

def NamedBody77_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody77_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody77_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody77_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody77_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody77_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody77_283 : StackLang.HolProg 64 :=
.seq NamedBody77_281 NamedBody77_282

def NamedBody77_284 : StackLang.HolProg 64 :=
.seq NamedBody77_280 NamedBody77_283

def NamedBody77_285 : StackLang.HolProg 64 :=
.seq NamedBody77_279 NamedBody77_284

def NamedBody77_286 : StackLang.HolProg 64 :=
.seq NamedBody77_278 NamedBody77_285

def NamedBody77_287 : StackLang.HolProg 64 :=
.seq NamedBody77_277 NamedBody77_286

def NamedBody77_288 : StackLang.HolProg 64 :=
.seq NamedBody77_276 NamedBody77_287

def NamedBody77_289 : StackLang.HolProg 64 :=
.seq NamedBody77_275 NamedBody77_288

def NamedBody77_290 : StackLang.HolProg 64 :=
.seq NamedBody77_274 NamedBody77_289

def NamedBody77_291 : StackLang.HolProg 64 :=
.seq NamedBody77_273 NamedBody77_290

def NamedBody77_292 : StackLang.HolProg 64 :=
.seq NamedBody77_272 NamedBody77_291

def NamedBody77_293 : StackLang.HolProg 64 :=
.seq NamedBody77_271 NamedBody77_292

def NamedBody77_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody77_296 : StackLang.HolProg 64 :=
.seq NamedBody77_294 NamedBody77_295

def NamedBody77_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody77_293 NamedBody77_296

def NamedBody77_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_300 : StackLang.HolProg 64 :=
.seq NamedBody77_298 NamedBody77_299

def NamedBody77_301 : StackLang.HolProg 64 :=
.seq NamedBody77_297 NamedBody77_300

def NamedBody77_302 : StackLang.HolProg 64 :=
.seq NamedBody77_270 NamedBody77_301

def NamedBody77_303 : StackLang.HolProg 64 :=
.loop NamedBody77_302

def NamedBody77_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody77_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody77_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody77_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody77_308 : StackLang.HolProg 64 :=
.seq NamedBody77_306 NamedBody77_307

def NamedBody77_309 : StackLang.HolProg 64 :=
.seq NamedBody77_305 NamedBody77_308

def NamedBody77_310 : StackLang.HolProg 64 :=
.seq NamedBody77_304 NamedBody77_309

def NamedBody77_311 : StackLang.HolProg 64 :=
.seq NamedBody77_303 NamedBody77_310

def NamedBody77_312 : StackLang.HolProg 64 :=
.seq NamedBody77_269 NamedBody77_311

def NamedBody77_313 : StackLang.HolProg 64 :=
.seq NamedBody77_268 NamedBody77_312

def NamedBody77_314 : StackLang.HolProg 64 :=
.seq NamedBody77_267 NamedBody77_313

def NamedBody77_315 : StackLang.HolProg 64 :=
.seq NamedBody77_266 NamedBody77_314

def NamedBody77_316 : StackLang.HolProg 64 :=
.seq NamedBody77_134 NamedBody77_315

def NamedBody77_317 : StackLang.HolProg 64 :=
.seq NamedBody77_133 NamedBody77_316

def NamedBody77_318 : StackLang.HolProg 64 :=
.seq NamedBody77_132 NamedBody77_317

def NamedBody77_319 : StackLang.HolProg 64 :=
.seq NamedBody77_131 NamedBody77_318

def NamedBody77_320 : StackLang.HolProg 64 :=
.seq NamedBody77_6 NamedBody77_319

def NamedBody77_321 : StackLang.HolProg 64 :=
.seq NamedBody77_5 NamedBody77_320

def NamedBody77_322 : StackLang.HolProg 64 :=
.seq NamedBody77_4 NamedBody77_321

def NamedBody77_323 : StackLang.HolProg 64 :=
.seq NamedBody77_3 NamedBody77_322

def NamedBody77_324 : StackLang.HolProg 64 :=
.seq NamedBody77_2 NamedBody77_323

def NamedBody77_325 : StackLang.HolProg 64 :=
.seq NamedBody77_1 NamedBody77_324

def NamedBody77_326 : StackLang.HolProg 64 :=
.seq NamedBody77_0 NamedBody77_325

def Named77 : Nat × StackLang.HolProg 64 := (77, NamedBody77_326)
theorem Named77_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed77 = Named77 := by
  kernel_rfl
#print axioms Named77_eq
end InitECandidate.Proofs.BackendStages
