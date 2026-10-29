import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc628
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody628_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody628_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def RemovedBody628_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody628_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody628_7 : StackLang.HolProg 64 :=
.seq RemovedBody628_5 RemovedBody628_6

def RemovedBody628_8 : StackLang.HolProg 64 :=
.seq RemovedBody628_4 RemovedBody628_7

def RemovedBody628_9 : StackLang.HolProg 64 :=
.seq RemovedBody628_3 RemovedBody628_8

def RemovedBody628_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody628_9 RemovedBody628_10

def RemovedBody628_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody628_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1518500249#64)

def RemovedBody628_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody628_20 : StackLang.HolProg 64 :=
.seq RemovedBody628_18 RemovedBody628_19

def RemovedBody628_21 : StackLang.HolProg 64 :=
.seq RemovedBody628_17 RemovedBody628_20

def RemovedBody628_22 : StackLang.HolProg 64 :=
.seq RemovedBody628_16 RemovedBody628_21

def RemovedBody628_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody628_22 RemovedBody628_23

def RemovedBody628_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def RemovedBody628_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1859775393#64)

def RemovedBody628_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody628_33 : StackLang.HolProg 64 :=
.seq RemovedBody628_31 RemovedBody628_32

def RemovedBody628_34 : StackLang.HolProg 64 :=
.seq RemovedBody628_30 RemovedBody628_33

def RemovedBody628_35 : StackLang.HolProg 64 :=
.seq RemovedBody628_29 RemovedBody628_34

def RemovedBody628_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody628_35 RemovedBody628_36

def RemovedBody628_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody628_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2400959708#64)

def RemovedBody628_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody628_46 : StackLang.HolProg 64 :=
.seq RemovedBody628_44 RemovedBody628_45

def RemovedBody628_47 : StackLang.HolProg 64 :=
.seq RemovedBody628_43 RemovedBody628_46

def RemovedBody628_48 : StackLang.HolProg 64 :=
.seq RemovedBody628_42 RemovedBody628_47

def RemovedBody628_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody628_48 RemovedBody628_49

def RemovedBody628_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody628_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2840853838#64)

def RemovedBody628_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody628_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody628_56 : StackLang.HolProg 64 :=
.seq RemovedBody628_54 RemovedBody628_55

def RemovedBody628_57 : StackLang.HolProg 64 :=
.seq RemovedBody628_53 RemovedBody628_56

def RemovedBody628_58 : StackLang.HolProg 64 :=
.seq RemovedBody628_52 RemovedBody628_57

def RemovedBody628_59 : StackLang.HolProg 64 :=
.seq RemovedBody628_51 RemovedBody628_58

def RemovedBody628_60 : StackLang.HolProg 64 :=
.seq RemovedBody628_50 RemovedBody628_59

def RemovedBody628_61 : StackLang.HolProg 64 :=
.seq RemovedBody628_41 RemovedBody628_60

def RemovedBody628_62 : StackLang.HolProg 64 :=
.seq RemovedBody628_40 RemovedBody628_61

def RemovedBody628_63 : StackLang.HolProg 64 :=
.seq RemovedBody628_39 RemovedBody628_62

def RemovedBody628_64 : StackLang.HolProg 64 :=
.seq RemovedBody628_38 RemovedBody628_63

def RemovedBody628_65 : StackLang.HolProg 64 :=
.seq RemovedBody628_37 RemovedBody628_64

def RemovedBody628_66 : StackLang.HolProg 64 :=
.seq RemovedBody628_28 RemovedBody628_65

def RemovedBody628_67 : StackLang.HolProg 64 :=
.seq RemovedBody628_27 RemovedBody628_66

def RemovedBody628_68 : StackLang.HolProg 64 :=
.seq RemovedBody628_26 RemovedBody628_67

def RemovedBody628_69 : StackLang.HolProg 64 :=
.seq RemovedBody628_25 RemovedBody628_68

def RemovedBody628_70 : StackLang.HolProg 64 :=
.seq RemovedBody628_24 RemovedBody628_69

def RemovedBody628_71 : StackLang.HolProg 64 :=
.seq RemovedBody628_15 RemovedBody628_70

def RemovedBody628_72 : StackLang.HolProg 64 :=
.seq RemovedBody628_14 RemovedBody628_71

def RemovedBody628_73 : StackLang.HolProg 64 :=
.seq RemovedBody628_13 RemovedBody628_72

def RemovedBody628_74 : StackLang.HolProg 64 :=
.seq RemovedBody628_12 RemovedBody628_73

def RemovedBody628_75 : StackLang.HolProg 64 :=
.seq RemovedBody628_11 RemovedBody628_74

def RemovedBody628_76 : StackLang.HolProg 64 :=
.seq RemovedBody628_2 RemovedBody628_75

def RemovedBody628_77 : StackLang.HolProg 64 :=
.seq RemovedBody628_1 RemovedBody628_76

def RemovedBody628_78 : StackLang.HolProg 64 :=
.seq RemovedBody628_0 RemovedBody628_77

def Removed628 : Nat × StackLang.HolProg 64 := (628, RemovedBody628_78)
theorem Removed628_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc628 = Removed628 := by
  kernel_rfl
#print axioms Removed628_eq
end InitECandidate.Proofs.BackendStages
