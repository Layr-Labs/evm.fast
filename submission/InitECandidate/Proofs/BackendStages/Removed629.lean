import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc629
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody629_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody629_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def RemovedBody629_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1352829926#64)

def RemovedBody629_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody629_7 : StackLang.HolProg 64 :=
.seq RemovedBody629_5 RemovedBody629_6

def RemovedBody629_8 : StackLang.HolProg 64 :=
.seq RemovedBody629_4 RemovedBody629_7

def RemovedBody629_9 : StackLang.HolProg 64 :=
.seq RemovedBody629_3 RemovedBody629_8

def RemovedBody629_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody629_9 RemovedBody629_10

def RemovedBody629_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody629_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1548603684#64)

def RemovedBody629_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody629_20 : StackLang.HolProg 64 :=
.seq RemovedBody629_18 RemovedBody629_19

def RemovedBody629_21 : StackLang.HolProg 64 :=
.seq RemovedBody629_17 RemovedBody629_20

def RemovedBody629_22 : StackLang.HolProg 64 :=
.seq RemovedBody629_16 RemovedBody629_21

def RemovedBody629_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody629_22 RemovedBody629_23

def RemovedBody629_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def RemovedBody629_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1836072691#64)

def RemovedBody629_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody629_33 : StackLang.HolProg 64 :=
.seq RemovedBody629_31 RemovedBody629_32

def RemovedBody629_34 : StackLang.HolProg 64 :=
.seq RemovedBody629_30 RemovedBody629_33

def RemovedBody629_35 : StackLang.HolProg 64 :=
.seq RemovedBody629_29 RemovedBody629_34

def RemovedBody629_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody629_35 RemovedBody629_36

def RemovedBody629_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody629_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2053994217#64)

def RemovedBody629_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody629_46 : StackLang.HolProg 64 :=
.seq RemovedBody629_44 RemovedBody629_45

def RemovedBody629_47 : StackLang.HolProg 64 :=
.seq RemovedBody629_43 RemovedBody629_46

def RemovedBody629_48 : StackLang.HolProg 64 :=
.seq RemovedBody629_42 RemovedBody629_47

def RemovedBody629_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody629_48 RemovedBody629_49

def RemovedBody629_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody629_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody629_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody629_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody629_56 : StackLang.HolProg 64 :=
.seq RemovedBody629_54 RemovedBody629_55

def RemovedBody629_57 : StackLang.HolProg 64 :=
.seq RemovedBody629_53 RemovedBody629_56

def RemovedBody629_58 : StackLang.HolProg 64 :=
.seq RemovedBody629_52 RemovedBody629_57

def RemovedBody629_59 : StackLang.HolProg 64 :=
.seq RemovedBody629_51 RemovedBody629_58

def RemovedBody629_60 : StackLang.HolProg 64 :=
.seq RemovedBody629_50 RemovedBody629_59

def RemovedBody629_61 : StackLang.HolProg 64 :=
.seq RemovedBody629_41 RemovedBody629_60

def RemovedBody629_62 : StackLang.HolProg 64 :=
.seq RemovedBody629_40 RemovedBody629_61

def RemovedBody629_63 : StackLang.HolProg 64 :=
.seq RemovedBody629_39 RemovedBody629_62

def RemovedBody629_64 : StackLang.HolProg 64 :=
.seq RemovedBody629_38 RemovedBody629_63

def RemovedBody629_65 : StackLang.HolProg 64 :=
.seq RemovedBody629_37 RemovedBody629_64

def RemovedBody629_66 : StackLang.HolProg 64 :=
.seq RemovedBody629_28 RemovedBody629_65

def RemovedBody629_67 : StackLang.HolProg 64 :=
.seq RemovedBody629_27 RemovedBody629_66

def RemovedBody629_68 : StackLang.HolProg 64 :=
.seq RemovedBody629_26 RemovedBody629_67

def RemovedBody629_69 : StackLang.HolProg 64 :=
.seq RemovedBody629_25 RemovedBody629_68

def RemovedBody629_70 : StackLang.HolProg 64 :=
.seq RemovedBody629_24 RemovedBody629_69

def RemovedBody629_71 : StackLang.HolProg 64 :=
.seq RemovedBody629_15 RemovedBody629_70

def RemovedBody629_72 : StackLang.HolProg 64 :=
.seq RemovedBody629_14 RemovedBody629_71

def RemovedBody629_73 : StackLang.HolProg 64 :=
.seq RemovedBody629_13 RemovedBody629_72

def RemovedBody629_74 : StackLang.HolProg 64 :=
.seq RemovedBody629_12 RemovedBody629_73

def RemovedBody629_75 : StackLang.HolProg 64 :=
.seq RemovedBody629_11 RemovedBody629_74

def RemovedBody629_76 : StackLang.HolProg 64 :=
.seq RemovedBody629_2 RemovedBody629_75

def RemovedBody629_77 : StackLang.HolProg 64 :=
.seq RemovedBody629_1 RemovedBody629_76

def RemovedBody629_78 : StackLang.HolProg 64 :=
.seq RemovedBody629_0 RemovedBody629_77

def Removed629 : Nat × StackLang.HolProg 64 := (629, RemovedBody629_78)
theorem Removed629_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc629 = Removed629 := by
  kernel_rfl
#print axioms Removed629_eq
end InitECandidate.Proofs.BackendStages
