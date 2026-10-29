import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc106
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody106_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody106_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody106_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_8 : StackLang.HolProg 64 :=
.seq RemovedBody106_6 RemovedBody106_7

def RemovedBody106_9 : StackLang.HolProg 64 :=
.seq RemovedBody106_5 RemovedBody106_8

def RemovedBody106_10 : StackLang.HolProg 64 :=
.seq RemovedBody106_4 RemovedBody106_9

def RemovedBody106_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody106_10 RemovedBody106_11

def RemovedBody106_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody106_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_18 : StackLang.HolProg 64 :=
.seq RemovedBody106_16 RemovedBody106_17

def RemovedBody106_19 : StackLang.HolProg 64 :=
.seq RemovedBody106_15 RemovedBody106_18

def RemovedBody106_20 : StackLang.HolProg 64 :=
.seq RemovedBody106_14 RemovedBody106_19

def RemovedBody106_21 : StackLang.HolProg 64 :=
.seq RemovedBody106_13 RemovedBody106_20

def RemovedBody106_22 : StackLang.HolProg 64 :=
.seq RemovedBody106_12 RemovedBody106_21

def RemovedBody106_23 : StackLang.HolProg 64 :=
.seq RemovedBody106_3 RemovedBody106_22

def RemovedBody106_24 : StackLang.HolProg 64 :=
.seq RemovedBody106_2 RemovedBody106_23

def RemovedBody106_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody106_24 RemovedBody106_25

def RemovedBody106_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody106_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_36 : StackLang.HolProg 64 :=
.seq RemovedBody106_34 RemovedBody106_35

def RemovedBody106_37 : StackLang.HolProg 64 :=
.seq RemovedBody106_33 RemovedBody106_36

def RemovedBody106_38 : StackLang.HolProg 64 :=
.seq RemovedBody106_32 RemovedBody106_37

def RemovedBody106_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody106_38 RemovedBody106_39

def RemovedBody106_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody106_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_46 : StackLang.HolProg 64 :=
.seq RemovedBody106_44 RemovedBody106_45

def RemovedBody106_47 : StackLang.HolProg 64 :=
.seq RemovedBody106_43 RemovedBody106_46

def RemovedBody106_48 : StackLang.HolProg 64 :=
.seq RemovedBody106_42 RemovedBody106_47

def RemovedBody106_49 : StackLang.HolProg 64 :=
.seq RemovedBody106_41 RemovedBody106_48

def RemovedBody106_50 : StackLang.HolProg 64 :=
.seq RemovedBody106_40 RemovedBody106_49

def RemovedBody106_51 : StackLang.HolProg 64 :=
.seq RemovedBody106_31 RemovedBody106_50

def RemovedBody106_52 : StackLang.HolProg 64 :=
.seq RemovedBody106_30 RemovedBody106_51

def RemovedBody106_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody106_52 RemovedBody106_53

def RemovedBody106_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody106_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_64 : StackLang.HolProg 64 :=
.seq RemovedBody106_62 RemovedBody106_63

def RemovedBody106_65 : StackLang.HolProg 64 :=
.seq RemovedBody106_61 RemovedBody106_64

def RemovedBody106_66 : StackLang.HolProg 64 :=
.seq RemovedBody106_60 RemovedBody106_65

def RemovedBody106_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody106_66 RemovedBody106_67

def RemovedBody106_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody106_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_74 : StackLang.HolProg 64 :=
.seq RemovedBody106_72 RemovedBody106_73

def RemovedBody106_75 : StackLang.HolProg 64 :=
.seq RemovedBody106_71 RemovedBody106_74

def RemovedBody106_76 : StackLang.HolProg 64 :=
.seq RemovedBody106_70 RemovedBody106_75

def RemovedBody106_77 : StackLang.HolProg 64 :=
.seq RemovedBody106_69 RemovedBody106_76

def RemovedBody106_78 : StackLang.HolProg 64 :=
.seq RemovedBody106_68 RemovedBody106_77

def RemovedBody106_79 : StackLang.HolProg 64 :=
.seq RemovedBody106_59 RemovedBody106_78

def RemovedBody106_80 : StackLang.HolProg 64 :=
.seq RemovedBody106_58 RemovedBody106_79

def RemovedBody106_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody106_80 RemovedBody106_81

def RemovedBody106_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody106_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_90 : StackLang.HolProg 64 :=
.seq RemovedBody106_88 RemovedBody106_89

def RemovedBody106_91 : StackLang.HolProg 64 :=
.seq RemovedBody106_87 RemovedBody106_90

def RemovedBody106_92 : StackLang.HolProg 64 :=
.seq RemovedBody106_86 RemovedBody106_91

def RemovedBody106_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody106_92 RemovedBody106_93

def RemovedBody106_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody106_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody106_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody106_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody106_100 : StackLang.HolProg 64 :=
.seq RemovedBody106_98 RemovedBody106_99

def RemovedBody106_101 : StackLang.HolProg 64 :=
.seq RemovedBody106_97 RemovedBody106_100

def RemovedBody106_102 : StackLang.HolProg 64 :=
.seq RemovedBody106_96 RemovedBody106_101

def RemovedBody106_103 : StackLang.HolProg 64 :=
.seq RemovedBody106_95 RemovedBody106_102

def RemovedBody106_104 : StackLang.HolProg 64 :=
.seq RemovedBody106_94 RemovedBody106_103

def RemovedBody106_105 : StackLang.HolProg 64 :=
.seq RemovedBody106_85 RemovedBody106_104

def RemovedBody106_106 : StackLang.HolProg 64 :=
.seq RemovedBody106_84 RemovedBody106_105

def RemovedBody106_107 : StackLang.HolProg 64 :=
.seq RemovedBody106_83 RemovedBody106_106

def RemovedBody106_108 : StackLang.HolProg 64 :=
.seq RemovedBody106_82 RemovedBody106_107

def RemovedBody106_109 : StackLang.HolProg 64 :=
.seq RemovedBody106_57 RemovedBody106_108

def RemovedBody106_110 : StackLang.HolProg 64 :=
.seq RemovedBody106_56 RemovedBody106_109

def RemovedBody106_111 : StackLang.HolProg 64 :=
.seq RemovedBody106_55 RemovedBody106_110

def RemovedBody106_112 : StackLang.HolProg 64 :=
.seq RemovedBody106_54 RemovedBody106_111

def RemovedBody106_113 : StackLang.HolProg 64 :=
.seq RemovedBody106_29 RemovedBody106_112

def RemovedBody106_114 : StackLang.HolProg 64 :=
.seq RemovedBody106_28 RemovedBody106_113

def RemovedBody106_115 : StackLang.HolProg 64 :=
.seq RemovedBody106_27 RemovedBody106_114

def RemovedBody106_116 : StackLang.HolProg 64 :=
.seq RemovedBody106_26 RemovedBody106_115

def RemovedBody106_117 : StackLang.HolProg 64 :=
.seq RemovedBody106_1 RemovedBody106_116

def RemovedBody106_118 : StackLang.HolProg 64 :=
.seq RemovedBody106_0 RemovedBody106_117

def Removed106 : Nat × StackLang.HolProg 64 := (106, RemovedBody106_118)
theorem Removed106_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc106 = Removed106 := by
  kernel_rfl
#print axioms Removed106_eq
end InitECandidate.Proofs.BackendStages
