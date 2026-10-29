import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc709
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody709_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody709_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody709_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody709_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 7 0))

def RemovedBody709_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody709_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 7 0))

def RemovedBody709_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody709_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def RemovedBody709_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody709_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 7 0))

def RemovedBody709_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody709_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 7 0))

def RemovedBody709_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody709_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody709_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 7 0))

def RemovedBody709_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody709_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def RemovedBody709_28 : StackLang.HolProg 64 :=
.seq RemovedBody709_26 RemovedBody709_27

def RemovedBody709_29 : StackLang.HolProg 64 :=
.seq RemovedBody709_25 RemovedBody709_28

def RemovedBody709_30 : StackLang.HolProg 64 :=
.seq RemovedBody709_24 RemovedBody709_29

def RemovedBody709_31 : StackLang.HolProg 64 :=
.seq RemovedBody709_23 RemovedBody709_30

def RemovedBody709_32 : StackLang.HolProg 64 :=
.seq RemovedBody709_22 RemovedBody709_31

def RemovedBody709_33 : StackLang.HolProg 64 :=
.seq RemovedBody709_21 RemovedBody709_32

def RemovedBody709_34 : StackLang.HolProg 64 :=
.seq RemovedBody709_20 RemovedBody709_33

def RemovedBody709_35 : StackLang.HolProg 64 :=
.seq RemovedBody709_19 RemovedBody709_34

def RemovedBody709_36 : StackLang.HolProg 64 :=
.seq RemovedBody709_18 RemovedBody709_35

def RemovedBody709_37 : StackLang.HolProg 64 :=
.seq RemovedBody709_17 RemovedBody709_36

def RemovedBody709_38 : StackLang.HolProg 64 :=
.seq RemovedBody709_16 RemovedBody709_37

def RemovedBody709_39 : StackLang.HolProg 64 :=
.seq RemovedBody709_15 RemovedBody709_38

def RemovedBody709_40 : StackLang.HolProg 64 :=
.seq RemovedBody709_14 RemovedBody709_39

def RemovedBody709_41 : StackLang.HolProg 64 :=
.seq RemovedBody709_13 RemovedBody709_40

def RemovedBody709_42 : StackLang.HolProg 64 :=
.seq RemovedBody709_12 RemovedBody709_41

def RemovedBody709_43 : StackLang.HolProg 64 :=
.seq RemovedBody709_11 RemovedBody709_42

def RemovedBody709_44 : StackLang.HolProg 64 :=
.seq RemovedBody709_10 RemovedBody709_43

def RemovedBody709_45 : StackLang.HolProg 64 :=
.seq RemovedBody709_9 RemovedBody709_44

def RemovedBody709_46 : StackLang.HolProg 64 :=
.seq RemovedBody709_8 RemovedBody709_45

def RemovedBody709_47 : StackLang.HolProg 64 :=
.seq RemovedBody709_7 RemovedBody709_46

def RemovedBody709_48 : StackLang.HolProg 64 :=
.seq RemovedBody709_6 RemovedBody709_47

def RemovedBody709_49 : StackLang.HolProg 64 :=
.seq RemovedBody709_5 RemovedBody709_48

def RemovedBody709_50 : StackLang.HolProg 64 :=
.seq RemovedBody709_4 RemovedBody709_49

def RemovedBody709_51 : StackLang.HolProg 64 :=
.seq RemovedBody709_3 RemovedBody709_50

def RemovedBody709_52 : StackLang.HolProg 64 :=
.seq RemovedBody709_2 RemovedBody709_51

def RemovedBody709_53 : StackLang.HolProg 64 :=
.seq RemovedBody709_1 RemovedBody709_52

def RemovedBody709_54 : StackLang.HolProg 64 :=
.seq RemovedBody709_0 RemovedBody709_53

def Removed709 : Nat × StackLang.HolProg 64 := (709, RemovedBody709_54)
theorem Removed709_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc709 = Removed709 := by
  kernel_rfl
#print axioms Removed709_eq
end InitECandidate.Proofs.BackendStages
