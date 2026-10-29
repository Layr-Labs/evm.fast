import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc91
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody91_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody91_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody91_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody91_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody91_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody91_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2688614400#64)

def RemovedBody91_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody91_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 4
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64)

def RemovedBody91_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody91_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody91_18 : StackLang.HolProg 64 :=
.seq RemovedBody91_16 RemovedBody91_17

def RemovedBody91_19 : StackLang.HolProg 64 :=
.seq RemovedBody91_15 RemovedBody91_18

def RemovedBody91_20 : StackLang.HolProg 64 :=
.seq RemovedBody91_14 RemovedBody91_19

def RemovedBody91_21 : StackLang.HolProg 64 :=
.seq RemovedBody91_13 RemovedBody91_20

def RemovedBody91_22 : StackLang.HolProg 64 :=
.seq RemovedBody91_12 RemovedBody91_21

def RemovedBody91_23 : StackLang.HolProg 64 :=
.seq RemovedBody91_11 RemovedBody91_22

def RemovedBody91_24 : StackLang.HolProg 64 :=
.seq RemovedBody91_10 RemovedBody91_23

def RemovedBody91_25 : StackLang.HolProg 64 :=
.seq RemovedBody91_9 RemovedBody91_24

def RemovedBody91_26 : StackLang.HolProg 64 :=
.seq RemovedBody91_8 RemovedBody91_25

def RemovedBody91_27 : StackLang.HolProg 64 :=
.seq RemovedBody91_7 RemovedBody91_26

def RemovedBody91_28 : StackLang.HolProg 64 :=
.seq RemovedBody91_6 RemovedBody91_27

def RemovedBody91_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody91_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody91_31 : StackLang.HolProg 64 :=
.seq RemovedBody91_29 RemovedBody91_30

def RemovedBody91_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody91_28 RemovedBody91_31

def RemovedBody91_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody91_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_35 : StackLang.HolProg 64 :=
.seq RemovedBody91_33 RemovedBody91_34

def RemovedBody91_36 : StackLang.HolProg 64 :=
.seq RemovedBody91_32 RemovedBody91_35

def RemovedBody91_37 : StackLang.HolProg 64 :=
.seq RemovedBody91_5 RemovedBody91_36

def RemovedBody91_38 : StackLang.HolProg 64 :=
.loop RemovedBody91_37

def RemovedBody91_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody91_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody91_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody91_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody91_43 : StackLang.HolProg 64 :=
.seq RemovedBody91_41 RemovedBody91_42

def RemovedBody91_44 : StackLang.HolProg 64 :=
.seq RemovedBody91_40 RemovedBody91_43

def RemovedBody91_45 : StackLang.HolProg 64 :=
.seq RemovedBody91_39 RemovedBody91_44

def RemovedBody91_46 : StackLang.HolProg 64 :=
.seq RemovedBody91_38 RemovedBody91_45

def RemovedBody91_47 : StackLang.HolProg 64 :=
.seq RemovedBody91_4 RemovedBody91_46

def RemovedBody91_48 : StackLang.HolProg 64 :=
.seq RemovedBody91_3 RemovedBody91_47

def RemovedBody91_49 : StackLang.HolProg 64 :=
.seq RemovedBody91_2 RemovedBody91_48

def RemovedBody91_50 : StackLang.HolProg 64 :=
.seq RemovedBody91_1 RemovedBody91_49

def RemovedBody91_51 : StackLang.HolProg 64 :=
.seq RemovedBody91_0 RemovedBody91_50

def Removed91 : Nat × StackLang.HolProg 64 := (91, RemovedBody91_51)
theorem Removed91_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc91 = Removed91 := by
  kernel_rfl
#print axioms Removed91_eq
end InitECandidate.Proofs.BackendStages
