import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc80
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody80_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody80_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody80_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody80_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody80_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody80_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody80_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody80_16 : StackLang.HolProg 64 :=
.seq RemovedBody80_14 RemovedBody80_15

def RemovedBody80_17 : StackLang.HolProg 64 :=
.seq RemovedBody80_13 RemovedBody80_16

def RemovedBody80_18 : StackLang.HolProg 64 :=
.seq RemovedBody80_12 RemovedBody80_17

def RemovedBody80_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody80_18 RemovedBody80_19

def RemovedBody80_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody80_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody80_27 : StackLang.HolProg 64 :=
.seq RemovedBody80_25 RemovedBody80_26

def RemovedBody80_28 : StackLang.HolProg 64 :=
.seq RemovedBody80_24 RemovedBody80_27

def RemovedBody80_29 : StackLang.HolProg 64 :=
.seq RemovedBody80_23 RemovedBody80_28

def RemovedBody80_30 : StackLang.HolProg 64 :=
.seq RemovedBody80_22 RemovedBody80_29

def RemovedBody80_31 : StackLang.HolProg 64 :=
.seq RemovedBody80_21 RemovedBody80_30

def RemovedBody80_32 : StackLang.HolProg 64 :=
.seq RemovedBody80_20 RemovedBody80_31

def RemovedBody80_33 : StackLang.HolProg 64 :=
.seq RemovedBody80_11 RemovedBody80_32

def RemovedBody80_34 : StackLang.HolProg 64 :=
.seq RemovedBody80_10 RemovedBody80_33

def RemovedBody80_35 : StackLang.HolProg 64 :=
.seq RemovedBody80_9 RemovedBody80_34

def RemovedBody80_36 : StackLang.HolProg 64 :=
.seq RemovedBody80_8 RemovedBody80_35

def RemovedBody80_37 : StackLang.HolProg 64 :=
.seq RemovedBody80_7 RemovedBody80_36

def RemovedBody80_38 : StackLang.HolProg 64 :=
.seq RemovedBody80_6 RemovedBody80_37

def RemovedBody80_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody80_41 : StackLang.HolProg 64 :=
.seq RemovedBody80_39 RemovedBody80_40

def RemovedBody80_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody80_38 RemovedBody80_41

def RemovedBody80_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_45 : StackLang.HolProg 64 :=
.seq RemovedBody80_43 RemovedBody80_44

def RemovedBody80_46 : StackLang.HolProg 64 :=
.seq RemovedBody80_42 RemovedBody80_45

def RemovedBody80_47 : StackLang.HolProg 64 :=
.seq RemovedBody80_5 RemovedBody80_46

def RemovedBody80_48 : StackLang.HolProg 64 :=
.loop RemovedBody80_47

def RemovedBody80_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody80_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody80_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody80_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody80_53 : StackLang.HolProg 64 :=
.seq RemovedBody80_51 RemovedBody80_52

def RemovedBody80_54 : StackLang.HolProg 64 :=
.seq RemovedBody80_50 RemovedBody80_53

def RemovedBody80_55 : StackLang.HolProg 64 :=
.seq RemovedBody80_49 RemovedBody80_54

def RemovedBody80_56 : StackLang.HolProg 64 :=
.seq RemovedBody80_48 RemovedBody80_55

def RemovedBody80_57 : StackLang.HolProg 64 :=
.seq RemovedBody80_4 RemovedBody80_56

def RemovedBody80_58 : StackLang.HolProg 64 :=
.seq RemovedBody80_3 RemovedBody80_57

def RemovedBody80_59 : StackLang.HolProg 64 :=
.seq RemovedBody80_2 RemovedBody80_58

def RemovedBody80_60 : StackLang.HolProg 64 :=
.seq RemovedBody80_1 RemovedBody80_59

def RemovedBody80_61 : StackLang.HolProg 64 :=
.seq RemovedBody80_0 RemovedBody80_60

def Removed80 : Nat × StackLang.HolProg 64 := (80, RemovedBody80_61)
theorem Removed80_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc80 = Removed80 := by
  kernel_rfl
#print axioms Removed80_eq
end InitECandidate.Proofs.BackendStages
