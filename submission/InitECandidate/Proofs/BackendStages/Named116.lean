import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed116
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody116_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody116_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody116_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody116_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody116_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 10 5 1))

def NamedBody116_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody116_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 11 6 1))

def NamedBody116_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody116_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 12 7 1))

def NamedBody116_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody116_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 13 8 1))

def NamedBody116_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody116_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody116_13 : StackLang.HolProg 64 :=
.seq NamedBody116_11 NamedBody116_12

def NamedBody116_14 : StackLang.HolProg 64 :=
.seq NamedBody116_10 NamedBody116_13

def NamedBody116_15 : StackLang.HolProg 64 :=
.seq NamedBody116_9 NamedBody116_14

def NamedBody116_16 : StackLang.HolProg 64 :=
.seq NamedBody116_8 NamedBody116_15

def NamedBody116_17 : StackLang.HolProg 64 :=
.seq NamedBody116_7 NamedBody116_16

def NamedBody116_18 : StackLang.HolProg 64 :=
.seq NamedBody116_6 NamedBody116_17

def NamedBody116_19 : StackLang.HolProg 64 :=
.seq NamedBody116_5 NamedBody116_18

def NamedBody116_20 : StackLang.HolProg 64 :=
.seq NamedBody116_4 NamedBody116_19

def NamedBody116_21 : StackLang.HolProg 64 :=
.seq NamedBody116_3 NamedBody116_20

def NamedBody116_22 : StackLang.HolProg 64 :=
.seq NamedBody116_2 NamedBody116_21

def NamedBody116_23 : StackLang.HolProg 64 :=
.seq NamedBody116_1 NamedBody116_22

def NamedBody116_24 : StackLang.HolProg 64 :=
.seq NamedBody116_0 NamedBody116_23

def Named116 : Nat × StackLang.HolProg 64 := (116, NamedBody116_24)
theorem Named116_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed116 = Named116 := by
  kernel_rfl
#print axioms Named116_eq
end InitECandidate.Proofs.BackendStages
