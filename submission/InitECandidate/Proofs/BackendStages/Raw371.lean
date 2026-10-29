import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function371
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody371_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody371_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody371_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody371_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody371_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody371_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody371_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def rawBody371_7 : StackLang.HolProg 64 :=
.seq rawBody371_5 rawBody371_6

def rawBody371_8 : StackLang.HolProg 64 :=
.seq rawBody371_4 rawBody371_7

def rawBody371_9 : StackLang.HolProg 64 :=
.seq rawBody371_3 rawBody371_8

def rawBody371_10 : StackLang.HolProg 64 :=
.seq rawBody371_2 rawBody371_9

def rawBody371_11 : StackLang.HolProg 64 :=
.seq rawBody371_1 rawBody371_10

def rawBody371_12 : StackLang.HolProg 64 :=
.seq rawBody371_0 rawBody371_11

def raw371 : StackLang.HolProg 64 := rawBody371_12
theorem raw371_eq : StackRawCall.compTop RawInfo.rawInfo (function371 (.list [])).1 = raw371 := by
  kernel_rfl
#print axioms raw371_eq
end InitECandidate.Proofs.BackendStages
