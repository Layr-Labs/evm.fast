import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc323
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody323_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody323_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody323_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody323_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody323_7 : StackLang.HolProg 64 :=
.seq RemovedBody323_5 RemovedBody323_6

def RemovedBody323_8 : StackLang.HolProg 64 :=
.seq RemovedBody323_4 RemovedBody323_7

def RemovedBody323_9 : StackLang.HolProg 64 :=
.seq RemovedBody323_3 RemovedBody323_8

def RemovedBody323_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody323_9 RemovedBody323_10

def RemovedBody323_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody323_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody323_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody323_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody323_21 : StackLang.HolProg 64 :=
.seq RemovedBody323_19 RemovedBody323_20

def RemovedBody323_22 : StackLang.HolProg 64 :=
.seq RemovedBody323_18 RemovedBody323_21

def RemovedBody323_23 : StackLang.HolProg 64 :=
.seq RemovedBody323_17 RemovedBody323_22

def RemovedBody323_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody323_23 RemovedBody323_24

def RemovedBody323_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody323_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody323_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody323_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody323_35 : StackLang.HolProg 64 :=
.seq RemovedBody323_33 RemovedBody323_34

def RemovedBody323_36 : StackLang.HolProg 64 :=
.seq RemovedBody323_32 RemovedBody323_35

def RemovedBody323_37 : StackLang.HolProg 64 :=
.seq RemovedBody323_31 RemovedBody323_36

def RemovedBody323_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody323_37 RemovedBody323_38

def RemovedBody323_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody323_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody323_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody323_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody323_45 : StackLang.HolProg 64 :=
.seq RemovedBody323_43 RemovedBody323_44

def RemovedBody323_46 : StackLang.HolProg 64 :=
.seq RemovedBody323_42 RemovedBody323_45

def RemovedBody323_47 : StackLang.HolProg 64 :=
.seq RemovedBody323_41 RemovedBody323_46

def RemovedBody323_48 : StackLang.HolProg 64 :=
.seq RemovedBody323_40 RemovedBody323_47

def RemovedBody323_49 : StackLang.HolProg 64 :=
.seq RemovedBody323_39 RemovedBody323_48

def RemovedBody323_50 : StackLang.HolProg 64 :=
.seq RemovedBody323_30 RemovedBody323_49

def RemovedBody323_51 : StackLang.HolProg 64 :=
.seq RemovedBody323_29 RemovedBody323_50

def RemovedBody323_52 : StackLang.HolProg 64 :=
.seq RemovedBody323_28 RemovedBody323_51

def RemovedBody323_53 : StackLang.HolProg 64 :=
.seq RemovedBody323_27 RemovedBody323_52

def RemovedBody323_54 : StackLang.HolProg 64 :=
.seq RemovedBody323_26 RemovedBody323_53

def RemovedBody323_55 : StackLang.HolProg 64 :=
.seq RemovedBody323_25 RemovedBody323_54

def RemovedBody323_56 : StackLang.HolProg 64 :=
.seq RemovedBody323_16 RemovedBody323_55

def RemovedBody323_57 : StackLang.HolProg 64 :=
.seq RemovedBody323_15 RemovedBody323_56

def RemovedBody323_58 : StackLang.HolProg 64 :=
.seq RemovedBody323_14 RemovedBody323_57

def RemovedBody323_59 : StackLang.HolProg 64 :=
.seq RemovedBody323_13 RemovedBody323_58

def RemovedBody323_60 : StackLang.HolProg 64 :=
.seq RemovedBody323_12 RemovedBody323_59

def RemovedBody323_61 : StackLang.HolProg 64 :=
.seq RemovedBody323_11 RemovedBody323_60

def RemovedBody323_62 : StackLang.HolProg 64 :=
.seq RemovedBody323_2 RemovedBody323_61

def RemovedBody323_63 : StackLang.HolProg 64 :=
.seq RemovedBody323_1 RemovedBody323_62

def RemovedBody323_64 : StackLang.HolProg 64 :=
.seq RemovedBody323_0 RemovedBody323_63

def Removed323 : Nat × StackLang.HolProg 64 := (323, RemovedBody323_64)
theorem Removed323_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc323 = Removed323 := by
  kernel_rfl
#print axioms Removed323_eq
end InitECandidate.Proofs.BackendStages
