import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function373
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody373_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody373_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody373_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody373_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody373_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody373_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody373_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def rawBody373_7 : StackLang.HolProg 64 :=
.seq rawBody373_5 rawBody373_6

def rawBody373_8 : StackLang.HolProg 64 :=
.seq rawBody373_4 rawBody373_7

def rawBody373_9 : StackLang.HolProg 64 :=
.seq rawBody373_3 rawBody373_8

def rawBody373_10 : StackLang.HolProg 64 :=
.seq rawBody373_2 rawBody373_9

def rawBody373_11 : StackLang.HolProg 64 :=
.seq rawBody373_1 rawBody373_10

def rawBody373_12 : StackLang.HolProg 64 :=
.seq rawBody373_0 rawBody373_11

def raw373 : StackLang.HolProg 64 := rawBody373_12
theorem raw373_eq : StackRawCall.compTop RawInfo.rawInfo (function373 (.list [])).1 = raw373 := by
  kernel_rfl
#print axioms raw373_eq
end InitECandidate.Proofs.BackendStages
