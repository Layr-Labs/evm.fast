import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function374
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody374_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody374_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody374_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody374_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody374_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody374_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody374_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def rawBody374_7 : StackLang.HolProg 64 :=
.seq rawBody374_5 rawBody374_6

def rawBody374_8 : StackLang.HolProg 64 :=
.seq rawBody374_4 rawBody374_7

def rawBody374_9 : StackLang.HolProg 64 :=
.seq rawBody374_3 rawBody374_8

def rawBody374_10 : StackLang.HolProg 64 :=
.seq rawBody374_2 rawBody374_9

def rawBody374_11 : StackLang.HolProg 64 :=
.seq rawBody374_1 rawBody374_10

def rawBody374_12 : StackLang.HolProg 64 :=
.seq rawBody374_0 rawBody374_11

def raw374 : StackLang.HolProg 64 := rawBody374_12
theorem raw374_eq : StackRawCall.compTop RawInfo.rawInfo (function374 (.list [])).1 = raw374 := by
  kernel_rfl
#print axioms raw374_eq
end InitECandidate.Proofs.BackendStages
