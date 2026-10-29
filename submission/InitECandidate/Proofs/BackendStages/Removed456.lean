import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc456
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody456_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody456_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody456_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody456_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody456_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody456_12 : StackLang.HolProg 64 :=
.seq RemovedBody456_10 RemovedBody456_11

def RemovedBody456_13 : StackLang.HolProg 64 :=
.seq RemovedBody456_9 RemovedBody456_12

def RemovedBody456_14 : StackLang.HolProg 64 :=
.seq RemovedBody456_8 RemovedBody456_13

def RemovedBody456_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody456_14 RemovedBody456_15

def RemovedBody456_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody456_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody456_22 : StackLang.HolProg 64 :=
.seq RemovedBody456_20 RemovedBody456_21

def RemovedBody456_23 : StackLang.HolProg 64 :=
.seq RemovedBody456_19 RemovedBody456_22

def RemovedBody456_24 : StackLang.HolProg 64 :=
.seq RemovedBody456_18 RemovedBody456_23

def RemovedBody456_25 : StackLang.HolProg 64 :=
.seq RemovedBody456_17 RemovedBody456_24

def RemovedBody456_26 : StackLang.HolProg 64 :=
.seq RemovedBody456_16 RemovedBody456_25

def RemovedBody456_27 : StackLang.HolProg 64 :=
.seq RemovedBody456_7 RemovedBody456_26

def RemovedBody456_28 : StackLang.HolProg 64 :=
.seq RemovedBody456_6 RemovedBody456_27

def RemovedBody456_29 : StackLang.HolProg 64 :=
.seq RemovedBody456_5 RemovedBody456_28

def RemovedBody456_30 : StackLang.HolProg 64 :=
.seq RemovedBody456_4 RemovedBody456_29

def RemovedBody456_31 : StackLang.HolProg 64 :=
.seq RemovedBody456_3 RemovedBody456_30

def RemovedBody456_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody456_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody456_34 : StackLang.HolProg 64 :=
.seq RemovedBody456_32 RemovedBody456_33

def RemovedBody456_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody456_31 RemovedBody456_34

def RemovedBody456_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 20#64)

def RemovedBody456_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody456_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 32#64)

def RemovedBody456_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_44 : StackLang.HolProg 64 :=
.seq RemovedBody456_42 RemovedBody456_43

def RemovedBody456_45 : StackLang.HolProg 64 :=
.seq RemovedBody456_41 RemovedBody456_44

def RemovedBody456_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_48 : StackLang.HolProg 64 :=
.seq RemovedBody456_46 RemovedBody456_47

def RemovedBody456_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody456_45 RemovedBody456_48

def RemovedBody456_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody456_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody456_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody456_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody456_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody456_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody456_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody456_69 : StackLang.HolProg 64 :=
.seq RemovedBody456_67 RemovedBody456_68

def RemovedBody456_70 : StackLang.HolProg 64 :=
.seq RemovedBody456_66 RemovedBody456_69

def RemovedBody456_71 : StackLang.HolProg 64 :=
.seq RemovedBody456_65 RemovedBody456_70

def RemovedBody456_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody456_71 RemovedBody456_72

def RemovedBody456_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody456_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody456_79 : StackLang.HolProg 64 :=
.seq RemovedBody456_77 RemovedBody456_78

def RemovedBody456_80 : StackLang.HolProg 64 :=
.seq RemovedBody456_76 RemovedBody456_79

def RemovedBody456_81 : StackLang.HolProg 64 :=
.seq RemovedBody456_75 RemovedBody456_80

def RemovedBody456_82 : StackLang.HolProg 64 :=
.seq RemovedBody456_74 RemovedBody456_81

def RemovedBody456_83 : StackLang.HolProg 64 :=
.seq RemovedBody456_73 RemovedBody456_82

def RemovedBody456_84 : StackLang.HolProg 64 :=
.seq RemovedBody456_64 RemovedBody456_83

def RemovedBody456_85 : StackLang.HolProg 64 :=
.seq RemovedBody456_63 RemovedBody456_84

def RemovedBody456_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody456_85 RemovedBody456_86

def RemovedBody456_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody456_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody456_94 : StackLang.HolProg 64 :=
.seq RemovedBody456_92 RemovedBody456_93

def RemovedBody456_95 : StackLang.HolProg 64 :=
.seq RemovedBody456_91 RemovedBody456_94

def RemovedBody456_96 : StackLang.HolProg 64 :=
.seq RemovedBody456_90 RemovedBody456_95

def RemovedBody456_97 : StackLang.HolProg 64 :=
.seq RemovedBody456_89 RemovedBody456_96

def RemovedBody456_98 : StackLang.HolProg 64 :=
.seq RemovedBody456_88 RemovedBody456_97

def RemovedBody456_99 : StackLang.HolProg 64 :=
.seq RemovedBody456_87 RemovedBody456_98

def RemovedBody456_100 : StackLang.HolProg 64 :=
.seq RemovedBody456_62 RemovedBody456_99

def RemovedBody456_101 : StackLang.HolProg 64 :=
.seq RemovedBody456_61 RemovedBody456_100

def RemovedBody456_102 : StackLang.HolProg 64 :=
.seq RemovedBody456_60 RemovedBody456_101

def RemovedBody456_103 : StackLang.HolProg 64 :=
.seq RemovedBody456_59 RemovedBody456_102

def RemovedBody456_104 : StackLang.HolProg 64 :=
.seq RemovedBody456_58 RemovedBody456_103

def RemovedBody456_105 : StackLang.HolProg 64 :=
.seq RemovedBody456_57 RemovedBody456_104

def RemovedBody456_106 : StackLang.HolProg 64 :=
.seq RemovedBody456_56 RemovedBody456_105

def RemovedBody456_107 : StackLang.HolProg 64 :=
.seq RemovedBody456_55 RemovedBody456_106

def RemovedBody456_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody456_110 : StackLang.HolProg 64 :=
.seq RemovedBody456_108 RemovedBody456_109

def RemovedBody456_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody456_107 RemovedBody456_110

def RemovedBody456_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_114 : StackLang.HolProg 64 :=
.seq RemovedBody456_112 RemovedBody456_113

def RemovedBody456_115 : StackLang.HolProg 64 :=
.seq RemovedBody456_111 RemovedBody456_114

def RemovedBody456_116 : StackLang.HolProg 64 :=
.seq RemovedBody456_54 RemovedBody456_115

def RemovedBody456_117 : StackLang.HolProg 64 :=
.loop RemovedBody456_116

def RemovedBody456_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody456_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody456_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody456_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody456_122 : StackLang.HolProg 64 :=
.seq RemovedBody456_120 RemovedBody456_121

def RemovedBody456_123 : StackLang.HolProg 64 :=
.seq RemovedBody456_119 RemovedBody456_122

def RemovedBody456_124 : StackLang.HolProg 64 :=
.seq RemovedBody456_118 RemovedBody456_123

def RemovedBody456_125 : StackLang.HolProg 64 :=
.seq RemovedBody456_117 RemovedBody456_124

def RemovedBody456_126 : StackLang.HolProg 64 :=
.seq RemovedBody456_53 RemovedBody456_125

def RemovedBody456_127 : StackLang.HolProg 64 :=
.seq RemovedBody456_52 RemovedBody456_126

def RemovedBody456_128 : StackLang.HolProg 64 :=
.seq RemovedBody456_51 RemovedBody456_127

def RemovedBody456_129 : StackLang.HolProg 64 :=
.seq RemovedBody456_50 RemovedBody456_128

def RemovedBody456_130 : StackLang.HolProg 64 :=
.seq RemovedBody456_49 RemovedBody456_129

def RemovedBody456_131 : StackLang.HolProg 64 :=
.seq RemovedBody456_40 RemovedBody456_130

def RemovedBody456_132 : StackLang.HolProg 64 :=
.seq RemovedBody456_39 RemovedBody456_131

def RemovedBody456_133 : StackLang.HolProg 64 :=
.seq RemovedBody456_38 RemovedBody456_132

def RemovedBody456_134 : StackLang.HolProg 64 :=
.seq RemovedBody456_37 RemovedBody456_133

def RemovedBody456_135 : StackLang.HolProg 64 :=
.seq RemovedBody456_36 RemovedBody456_134

def RemovedBody456_136 : StackLang.HolProg 64 :=
.seq RemovedBody456_35 RemovedBody456_135

def RemovedBody456_137 : StackLang.HolProg 64 :=
.seq RemovedBody456_2 RemovedBody456_136

def RemovedBody456_138 : StackLang.HolProg 64 :=
.seq RemovedBody456_1 RemovedBody456_137

def RemovedBody456_139 : StackLang.HolProg 64 :=
.seq RemovedBody456_0 RemovedBody456_138

def Removed456 : Nat × StackLang.HolProg 64 := (456, RemovedBody456_139)
theorem Removed456_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc456 = Removed456 := by
  kernel_rfl
#print axioms Removed456_eq
end InitECandidate.Proofs.BackendStages
