import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc126
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody126_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody126_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody126_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody126_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody126_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody126_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody126_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody126_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody126_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody126_17 : StackLang.HolProg 64 :=
.seq RemovedBody126_15 RemovedBody126_16

def RemovedBody126_18 : StackLang.HolProg 64 :=
.seq RemovedBody126_14 RemovedBody126_17

def RemovedBody126_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody126_18 RemovedBody126_19

def RemovedBody126_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody126_25 : StackLang.HolProg 64 :=
.seq RemovedBody126_23 RemovedBody126_24

def RemovedBody126_26 : StackLang.HolProg 64 :=
.seq RemovedBody126_22 RemovedBody126_25

def RemovedBody126_27 : StackLang.HolProg 64 :=
.seq RemovedBody126_21 RemovedBody126_26

def RemovedBody126_28 : StackLang.HolProg 64 :=
.seq RemovedBody126_20 RemovedBody126_27

def RemovedBody126_29 : StackLang.HolProg 64 :=
.seq RemovedBody126_13 RemovedBody126_28

def RemovedBody126_30 : StackLang.HolProg 64 :=
.seq RemovedBody126_12 RemovedBody126_29

def RemovedBody126_31 : StackLang.HolProg 64 :=
.seq RemovedBody126_11 RemovedBody126_30

def RemovedBody126_32 : StackLang.HolProg 64 :=
.seq RemovedBody126_10 RemovedBody126_31

def RemovedBody126_33 : StackLang.HolProg 64 :=
.seq RemovedBody126_9 RemovedBody126_32

def RemovedBody126_34 : StackLang.HolProg 64 :=
.seq RemovedBody126_8 RemovedBody126_33

def RemovedBody126_35 : StackLang.HolProg 64 :=
.seq RemovedBody126_7 RemovedBody126_34

def RemovedBody126_36 : StackLang.HolProg 64 :=
.seq RemovedBody126_6 RemovedBody126_35

def RemovedBody126_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody126_39 : StackLang.HolProg 64 :=
.seq RemovedBody126_37 RemovedBody126_38

def RemovedBody126_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody126_36 RemovedBody126_39

def RemovedBody126_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_43 : StackLang.HolProg 64 :=
.seq RemovedBody126_41 RemovedBody126_42

def RemovedBody126_44 : StackLang.HolProg 64 :=
.seq RemovedBody126_40 RemovedBody126_43

def RemovedBody126_45 : StackLang.HolProg 64 :=
.seq RemovedBody126_5 RemovedBody126_44

def RemovedBody126_46 : StackLang.HolProg 64 :=
.seq RemovedBody126_4 RemovedBody126_45

def RemovedBody126_47 : StackLang.HolProg 64 :=
.loop RemovedBody126_46

def RemovedBody126_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody126_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody126_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody126_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody126_52 : StackLang.HolProg 64 :=
.seq RemovedBody126_50 RemovedBody126_51

def RemovedBody126_53 : StackLang.HolProg 64 :=
.seq RemovedBody126_49 RemovedBody126_52

def RemovedBody126_54 : StackLang.HolProg 64 :=
.seq RemovedBody126_48 RemovedBody126_53

def RemovedBody126_55 : StackLang.HolProg 64 :=
.seq RemovedBody126_47 RemovedBody126_54

def RemovedBody126_56 : StackLang.HolProg 64 :=
.seq RemovedBody126_3 RemovedBody126_55

def RemovedBody126_57 : StackLang.HolProg 64 :=
.seq RemovedBody126_2 RemovedBody126_56

def RemovedBody126_58 : StackLang.HolProg 64 :=
.seq RemovedBody126_1 RemovedBody126_57

def RemovedBody126_59 : StackLang.HolProg 64 :=
.seq RemovedBody126_0 RemovedBody126_58

def Removed126 : Nat × StackLang.HolProg 64 := (126, RemovedBody126_59)
theorem Removed126_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc126 = Removed126 := by
  kernel_rfl
#print axioms Removed126_eq
end InitECandidate.Proofs.BackendStages
