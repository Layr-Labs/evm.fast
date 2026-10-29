import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc103
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody103_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody103_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody103_6 : StackLang.HolProg 64 :=
.seq RemovedBody103_4 RemovedBody103_5

def RemovedBody103_7 : StackLang.HolProg 64 :=
.seq RemovedBody103_3 RemovedBody103_6

def RemovedBody103_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_9 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody103_7 RemovedBody103_8

def RemovedBody103_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody103_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody103_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody103_17 : StackLang.HolProg 64 :=
.seq RemovedBody103_15 RemovedBody103_16

def RemovedBody103_18 : StackLang.HolProg 64 :=
.seq RemovedBody103_14 RemovedBody103_17

def RemovedBody103_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody103_18 RemovedBody103_19

def RemovedBody103_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody103_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody103_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody103_28 : StackLang.HolProg 64 :=
.seq RemovedBody103_26 RemovedBody103_27

def RemovedBody103_29 : StackLang.HolProg 64 :=
.seq RemovedBody103_25 RemovedBody103_28

def RemovedBody103_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody103_29 RemovedBody103_30

def RemovedBody103_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody103_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody103_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody103_39 : StackLang.HolProg 64 :=
.seq RemovedBody103_37 RemovedBody103_38

def RemovedBody103_40 : StackLang.HolProg 64 :=
.seq RemovedBody103_36 RemovedBody103_39

def RemovedBody103_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody103_40 RemovedBody103_41

def RemovedBody103_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody103_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody103_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody103_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody103_48 : StackLang.HolProg 64 :=
.seq RemovedBody103_46 RemovedBody103_47

def RemovedBody103_49 : StackLang.HolProg 64 :=
.seq RemovedBody103_45 RemovedBody103_48

def RemovedBody103_50 : StackLang.HolProg 64 :=
.seq RemovedBody103_44 RemovedBody103_49

def RemovedBody103_51 : StackLang.HolProg 64 :=
.seq RemovedBody103_43 RemovedBody103_50

def RemovedBody103_52 : StackLang.HolProg 64 :=
.seq RemovedBody103_42 RemovedBody103_51

def RemovedBody103_53 : StackLang.HolProg 64 :=
.seq RemovedBody103_35 RemovedBody103_52

def RemovedBody103_54 : StackLang.HolProg 64 :=
.seq RemovedBody103_34 RemovedBody103_53

def RemovedBody103_55 : StackLang.HolProg 64 :=
.seq RemovedBody103_33 RemovedBody103_54

def RemovedBody103_56 : StackLang.HolProg 64 :=
.seq RemovedBody103_32 RemovedBody103_55

def RemovedBody103_57 : StackLang.HolProg 64 :=
.seq RemovedBody103_31 RemovedBody103_56

def RemovedBody103_58 : StackLang.HolProg 64 :=
.seq RemovedBody103_24 RemovedBody103_57

def RemovedBody103_59 : StackLang.HolProg 64 :=
.seq RemovedBody103_23 RemovedBody103_58

def RemovedBody103_60 : StackLang.HolProg 64 :=
.seq RemovedBody103_22 RemovedBody103_59

def RemovedBody103_61 : StackLang.HolProg 64 :=
.seq RemovedBody103_21 RemovedBody103_60

def RemovedBody103_62 : StackLang.HolProg 64 :=
.seq RemovedBody103_20 RemovedBody103_61

def RemovedBody103_63 : StackLang.HolProg 64 :=
.seq RemovedBody103_13 RemovedBody103_62

def RemovedBody103_64 : StackLang.HolProg 64 :=
.seq RemovedBody103_12 RemovedBody103_63

def RemovedBody103_65 : StackLang.HolProg 64 :=
.seq RemovedBody103_11 RemovedBody103_64

def RemovedBody103_66 : StackLang.HolProg 64 :=
.seq RemovedBody103_10 RemovedBody103_65

def RemovedBody103_67 : StackLang.HolProg 64 :=
.seq RemovedBody103_9 RemovedBody103_66

def RemovedBody103_68 : StackLang.HolProg 64 :=
.seq RemovedBody103_2 RemovedBody103_67

def RemovedBody103_69 : StackLang.HolProg 64 :=
.seq RemovedBody103_1 RemovedBody103_68

def RemovedBody103_70 : StackLang.HolProg 64 :=
.seq RemovedBody103_0 RemovedBody103_69

def Removed103 : Nat × StackLang.HolProg 64 := (103, RemovedBody103_70)
theorem Removed103_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc103 = Removed103 := by
  kernel_rfl
#print axioms Removed103_eq
end InitECandidate.Proofs.BackendStages
