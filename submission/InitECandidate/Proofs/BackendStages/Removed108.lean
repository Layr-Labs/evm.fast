import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc108
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody108_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody108_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody108_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_8 : StackLang.HolProg 64 :=
.seq RemovedBody108_6 RemovedBody108_7

def RemovedBody108_9 : StackLang.HolProg 64 :=
.seq RemovedBody108_5 RemovedBody108_8

def RemovedBody108_10 : StackLang.HolProg 64 :=
.seq RemovedBody108_4 RemovedBody108_9

def RemovedBody108_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody108_10 RemovedBody108_11

def RemovedBody108_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody108_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_18 : StackLang.HolProg 64 :=
.seq RemovedBody108_16 RemovedBody108_17

def RemovedBody108_19 : StackLang.HolProg 64 :=
.seq RemovedBody108_15 RemovedBody108_18

def RemovedBody108_20 : StackLang.HolProg 64 :=
.seq RemovedBody108_14 RemovedBody108_19

def RemovedBody108_21 : StackLang.HolProg 64 :=
.seq RemovedBody108_13 RemovedBody108_20

def RemovedBody108_22 : StackLang.HolProg 64 :=
.seq RemovedBody108_12 RemovedBody108_21

def RemovedBody108_23 : StackLang.HolProg 64 :=
.seq RemovedBody108_3 RemovedBody108_22

def RemovedBody108_24 : StackLang.HolProg 64 :=
.seq RemovedBody108_2 RemovedBody108_23

def RemovedBody108_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody108_24 RemovedBody108_25

def RemovedBody108_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody108_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_36 : StackLang.HolProg 64 :=
.seq RemovedBody108_34 RemovedBody108_35

def RemovedBody108_37 : StackLang.HolProg 64 :=
.seq RemovedBody108_33 RemovedBody108_36

def RemovedBody108_38 : StackLang.HolProg 64 :=
.seq RemovedBody108_32 RemovedBody108_37

def RemovedBody108_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody108_38 RemovedBody108_39

def RemovedBody108_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody108_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_46 : StackLang.HolProg 64 :=
.seq RemovedBody108_44 RemovedBody108_45

def RemovedBody108_47 : StackLang.HolProg 64 :=
.seq RemovedBody108_43 RemovedBody108_46

def RemovedBody108_48 : StackLang.HolProg 64 :=
.seq RemovedBody108_42 RemovedBody108_47

def RemovedBody108_49 : StackLang.HolProg 64 :=
.seq RemovedBody108_41 RemovedBody108_48

def RemovedBody108_50 : StackLang.HolProg 64 :=
.seq RemovedBody108_40 RemovedBody108_49

def RemovedBody108_51 : StackLang.HolProg 64 :=
.seq RemovedBody108_31 RemovedBody108_50

def RemovedBody108_52 : StackLang.HolProg 64 :=
.seq RemovedBody108_30 RemovedBody108_51

def RemovedBody108_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody108_52 RemovedBody108_53

def RemovedBody108_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody108_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_64 : StackLang.HolProg 64 :=
.seq RemovedBody108_62 RemovedBody108_63

def RemovedBody108_65 : StackLang.HolProg 64 :=
.seq RemovedBody108_61 RemovedBody108_64

def RemovedBody108_66 : StackLang.HolProg 64 :=
.seq RemovedBody108_60 RemovedBody108_65

def RemovedBody108_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody108_66 RemovedBody108_67

def RemovedBody108_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody108_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_74 : StackLang.HolProg 64 :=
.seq RemovedBody108_72 RemovedBody108_73

def RemovedBody108_75 : StackLang.HolProg 64 :=
.seq RemovedBody108_71 RemovedBody108_74

def RemovedBody108_76 : StackLang.HolProg 64 :=
.seq RemovedBody108_70 RemovedBody108_75

def RemovedBody108_77 : StackLang.HolProg 64 :=
.seq RemovedBody108_69 RemovedBody108_76

def RemovedBody108_78 : StackLang.HolProg 64 :=
.seq RemovedBody108_68 RemovedBody108_77

def RemovedBody108_79 : StackLang.HolProg 64 :=
.seq RemovedBody108_59 RemovedBody108_78

def RemovedBody108_80 : StackLang.HolProg 64 :=
.seq RemovedBody108_58 RemovedBody108_79

def RemovedBody108_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody108_80 RemovedBody108_81

def RemovedBody108_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody108_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_90 : StackLang.HolProg 64 :=
.seq RemovedBody108_88 RemovedBody108_89

def RemovedBody108_91 : StackLang.HolProg 64 :=
.seq RemovedBody108_87 RemovedBody108_90

def RemovedBody108_92 : StackLang.HolProg 64 :=
.seq RemovedBody108_86 RemovedBody108_91

def RemovedBody108_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody108_92 RemovedBody108_93

def RemovedBody108_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody108_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody108_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody108_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody108_100 : StackLang.HolProg 64 :=
.seq RemovedBody108_98 RemovedBody108_99

def RemovedBody108_101 : StackLang.HolProg 64 :=
.seq RemovedBody108_97 RemovedBody108_100

def RemovedBody108_102 : StackLang.HolProg 64 :=
.seq RemovedBody108_96 RemovedBody108_101

def RemovedBody108_103 : StackLang.HolProg 64 :=
.seq RemovedBody108_95 RemovedBody108_102

def RemovedBody108_104 : StackLang.HolProg 64 :=
.seq RemovedBody108_94 RemovedBody108_103

def RemovedBody108_105 : StackLang.HolProg 64 :=
.seq RemovedBody108_85 RemovedBody108_104

def RemovedBody108_106 : StackLang.HolProg 64 :=
.seq RemovedBody108_84 RemovedBody108_105

def RemovedBody108_107 : StackLang.HolProg 64 :=
.seq RemovedBody108_83 RemovedBody108_106

def RemovedBody108_108 : StackLang.HolProg 64 :=
.seq RemovedBody108_82 RemovedBody108_107

def RemovedBody108_109 : StackLang.HolProg 64 :=
.seq RemovedBody108_57 RemovedBody108_108

def RemovedBody108_110 : StackLang.HolProg 64 :=
.seq RemovedBody108_56 RemovedBody108_109

def RemovedBody108_111 : StackLang.HolProg 64 :=
.seq RemovedBody108_55 RemovedBody108_110

def RemovedBody108_112 : StackLang.HolProg 64 :=
.seq RemovedBody108_54 RemovedBody108_111

def RemovedBody108_113 : StackLang.HolProg 64 :=
.seq RemovedBody108_29 RemovedBody108_112

def RemovedBody108_114 : StackLang.HolProg 64 :=
.seq RemovedBody108_28 RemovedBody108_113

def RemovedBody108_115 : StackLang.HolProg 64 :=
.seq RemovedBody108_27 RemovedBody108_114

def RemovedBody108_116 : StackLang.HolProg 64 :=
.seq RemovedBody108_26 RemovedBody108_115

def RemovedBody108_117 : StackLang.HolProg 64 :=
.seq RemovedBody108_1 RemovedBody108_116

def RemovedBody108_118 : StackLang.HolProg 64 :=
.seq RemovedBody108_0 RemovedBody108_117

def Removed108 : Nat × StackLang.HolProg 64 := (108, RemovedBody108_118)
theorem Removed108_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc108 = Removed108 := by
  kernel_rfl
#print axioms Removed108_eq
end InitECandidate.Proofs.BackendStages
