import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc706
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody706_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody706_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody706_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody706_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody706_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody706_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody706_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody706_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody706_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody706_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody706_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody706_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody706_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody706_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody706_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody706_23 : StackLang.HolProg 64 :=
.seq RemovedBody706_21 RemovedBody706_22

def RemovedBody706_24 : StackLang.HolProg 64 :=
.seq RemovedBody706_20 RemovedBody706_23

def RemovedBody706_25 : StackLang.HolProg 64 :=
.seq RemovedBody706_19 RemovedBody706_24

def RemovedBody706_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody706_25 RemovedBody706_26

def RemovedBody706_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody706_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody706_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody706_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody706_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody706_33 : StackLang.HolProg 64 :=
.seq RemovedBody706_31 RemovedBody706_32

def RemovedBody706_34 : StackLang.HolProg 64 :=
.seq RemovedBody706_30 RemovedBody706_33

def RemovedBody706_35 : StackLang.HolProg 64 :=
.seq RemovedBody706_29 RemovedBody706_34

def RemovedBody706_36 : StackLang.HolProg 64 :=
.seq RemovedBody706_28 RemovedBody706_35

def RemovedBody706_37 : StackLang.HolProg 64 :=
.seq RemovedBody706_27 RemovedBody706_36

def RemovedBody706_38 : StackLang.HolProg 64 :=
.seq RemovedBody706_18 RemovedBody706_37

def RemovedBody706_39 : StackLang.HolProg 64 :=
.seq RemovedBody706_17 RemovedBody706_38

def RemovedBody706_40 : StackLang.HolProg 64 :=
.seq RemovedBody706_16 RemovedBody706_39

def RemovedBody706_41 : StackLang.HolProg 64 :=
.seq RemovedBody706_15 RemovedBody706_40

def RemovedBody706_42 : StackLang.HolProg 64 :=
.seq RemovedBody706_14 RemovedBody706_41

def RemovedBody706_43 : StackLang.HolProg 64 :=
.seq RemovedBody706_13 RemovedBody706_42

def RemovedBody706_44 : StackLang.HolProg 64 :=
.seq RemovedBody706_12 RemovedBody706_43

def RemovedBody706_45 : StackLang.HolProg 64 :=
.seq RemovedBody706_11 RemovedBody706_44

def RemovedBody706_46 : StackLang.HolProg 64 :=
.seq RemovedBody706_10 RemovedBody706_45

def RemovedBody706_47 : StackLang.HolProg 64 :=
.seq RemovedBody706_9 RemovedBody706_46

def RemovedBody706_48 : StackLang.HolProg 64 :=
.seq RemovedBody706_8 RemovedBody706_47

def RemovedBody706_49 : StackLang.HolProg 64 :=
.seq RemovedBody706_7 RemovedBody706_48

def RemovedBody706_50 : StackLang.HolProg 64 :=
.seq RemovedBody706_6 RemovedBody706_49

def RemovedBody706_51 : StackLang.HolProg 64 :=
.seq RemovedBody706_5 RemovedBody706_50

def RemovedBody706_52 : StackLang.HolProg 64 :=
.seq RemovedBody706_4 RemovedBody706_51

def RemovedBody706_53 : StackLang.HolProg 64 :=
.seq RemovedBody706_3 RemovedBody706_52

def RemovedBody706_54 : StackLang.HolProg 64 :=
.seq RemovedBody706_2 RemovedBody706_53

def RemovedBody706_55 : StackLang.HolProg 64 :=
.seq RemovedBody706_1 RemovedBody706_54

def RemovedBody706_56 : StackLang.HolProg 64 :=
.seq RemovedBody706_0 RemovedBody706_55

def Removed706 : Nat × StackLang.HolProg 64 := (706, RemovedBody706_56)
theorem Removed706_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc706 = Removed706 := by
  kernel_rfl
#print axioms Removed706_eq
end InitECandidate.Proofs.BackendStages
