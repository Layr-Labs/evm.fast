import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function351
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody351_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody351_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody351_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def rawBody351_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody351_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 200#64))

def rawBody351_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody351_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody351_7 : StackLang.HolProg 64 :=
.seq rawBody351_5 rawBody351_6

def rawBody351_8 : StackLang.HolProg 64 :=
.seq rawBody351_4 rawBody351_7

def rawBody351_9 : StackLang.HolProg 64 :=
.seq rawBody351_3 rawBody351_8

def rawBody351_10 : StackLang.HolProg 64 :=
.seq rawBody351_2 rawBody351_9

def rawBody351_11 : StackLang.HolProg 64 :=
.seq rawBody351_1 rawBody351_10

def rawBody351_12 : StackLang.HolProg 64 :=
.seq rawBody351_0 rawBody351_11

def raw351 : StackLang.HolProg 64 := rawBody351_12
theorem raw351_eq : StackRawCall.compTop RawInfo.rawInfo (function351 (.list [])).1 = raw351 := by
  kernel_rfl
#print axioms raw351_eq
end InitECandidate.Proofs.BackendStages
