import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc118
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody118_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody118_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody118_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody118_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody118_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 7 6 0))

def RemovedBody118_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody118_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody118_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 7 6 0))

def RemovedBody118_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody118_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody118_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 7 6 0))

def RemovedBody118_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody118_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody118_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 7 6 0))

def RemovedBody118_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody118_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody118_28 : StackLang.HolProg 64 :=
.seq RemovedBody118_26 RemovedBody118_27

def RemovedBody118_29 : StackLang.HolProg 64 :=
.seq RemovedBody118_25 RemovedBody118_28

def RemovedBody118_30 : StackLang.HolProg 64 :=
.seq RemovedBody118_24 RemovedBody118_29

def RemovedBody118_31 : StackLang.HolProg 64 :=
.seq RemovedBody118_23 RemovedBody118_30

def RemovedBody118_32 : StackLang.HolProg 64 :=
.seq RemovedBody118_22 RemovedBody118_31

def RemovedBody118_33 : StackLang.HolProg 64 :=
.seq RemovedBody118_21 RemovedBody118_32

def RemovedBody118_34 : StackLang.HolProg 64 :=
.seq RemovedBody118_20 RemovedBody118_33

def RemovedBody118_35 : StackLang.HolProg 64 :=
.seq RemovedBody118_19 RemovedBody118_34

def RemovedBody118_36 : StackLang.HolProg 64 :=
.seq RemovedBody118_18 RemovedBody118_35

def RemovedBody118_37 : StackLang.HolProg 64 :=
.seq RemovedBody118_17 RemovedBody118_36

def RemovedBody118_38 : StackLang.HolProg 64 :=
.seq RemovedBody118_16 RemovedBody118_37

def RemovedBody118_39 : StackLang.HolProg 64 :=
.seq RemovedBody118_15 RemovedBody118_38

def RemovedBody118_40 : StackLang.HolProg 64 :=
.seq RemovedBody118_14 RemovedBody118_39

def RemovedBody118_41 : StackLang.HolProg 64 :=
.seq RemovedBody118_13 RemovedBody118_40

def RemovedBody118_42 : StackLang.HolProg 64 :=
.seq RemovedBody118_12 RemovedBody118_41

def RemovedBody118_43 : StackLang.HolProg 64 :=
.seq RemovedBody118_11 RemovedBody118_42

def RemovedBody118_44 : StackLang.HolProg 64 :=
.seq RemovedBody118_10 RemovedBody118_43

def RemovedBody118_45 : StackLang.HolProg 64 :=
.seq RemovedBody118_9 RemovedBody118_44

def RemovedBody118_46 : StackLang.HolProg 64 :=
.seq RemovedBody118_8 RemovedBody118_45

def RemovedBody118_47 : StackLang.HolProg 64 :=
.seq RemovedBody118_7 RemovedBody118_46

def RemovedBody118_48 : StackLang.HolProg 64 :=
.seq RemovedBody118_6 RemovedBody118_47

def RemovedBody118_49 : StackLang.HolProg 64 :=
.seq RemovedBody118_5 RemovedBody118_48

def RemovedBody118_50 : StackLang.HolProg 64 :=
.seq RemovedBody118_4 RemovedBody118_49

def RemovedBody118_51 : StackLang.HolProg 64 :=
.seq RemovedBody118_3 RemovedBody118_50

def RemovedBody118_52 : StackLang.HolProg 64 :=
.seq RemovedBody118_2 RemovedBody118_51

def RemovedBody118_53 : StackLang.HolProg 64 :=
.seq RemovedBody118_1 RemovedBody118_52

def RemovedBody118_54 : StackLang.HolProg 64 :=
.seq RemovedBody118_0 RemovedBody118_53

def Removed118 : Nat × StackLang.HolProg 64 := (118, RemovedBody118_54)
theorem Removed118_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc118 = Removed118 := by
  kernel_rfl
#print axioms Removed118_eq
end InitECandidate.Proofs.BackendStages
