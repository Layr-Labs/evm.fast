import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function92
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody92_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody92_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody92_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody92_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody92_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody92_5 : StackLang.HolProg 64 :=
.seq rawBody92_3 rawBody92_4

def rawBody92_6 : StackLang.HolProg 64 :=
.seq rawBody92_2 rawBody92_5

def rawBody92_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody92_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody92_6 rawBody92_7

def rawBody92_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody92_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody92_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody92_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody92_13 : StackLang.HolProg 64 :=
.seq rawBody92_11 rawBody92_12

def rawBody92_14 : StackLang.HolProg 64 :=
.seq rawBody92_10 rawBody92_13

def rawBody92_15 : StackLang.HolProg 64 :=
.seq rawBody92_9 rawBody92_14

def rawBody92_16 : StackLang.HolProg 64 :=
.seq rawBody92_8 rawBody92_15

def rawBody92_17 : StackLang.HolProg 64 :=
.seq rawBody92_1 rawBody92_16

def rawBody92_18 : StackLang.HolProg 64 :=
.seq rawBody92_0 rawBody92_17

def raw92 : StackLang.HolProg 64 := rawBody92_18
theorem raw92_eq : StackRawCall.compTop RawInfo.rawInfo (function92 (.list [])).1 = raw92 := by
  kernel_rfl
#print axioms raw92_eq
end InitECandidate.Proofs.BackendStages
