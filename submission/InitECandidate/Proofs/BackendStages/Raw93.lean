import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function93
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody93_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody93_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody93_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody93_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody93_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody93_5 : StackLang.HolProg 64 :=
.seq rawBody93_3 rawBody93_4

def rawBody93_6 : StackLang.HolProg 64 :=
.seq rawBody93_2 rawBody93_5

def rawBody93_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody93_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody93_6 rawBody93_7

def rawBody93_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody93_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody93_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody93_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody93_13 : StackLang.HolProg 64 :=
.seq rawBody93_11 rawBody93_12

def rawBody93_14 : StackLang.HolProg 64 :=
.seq rawBody93_10 rawBody93_13

def rawBody93_15 : StackLang.HolProg 64 :=
.seq rawBody93_9 rawBody93_14

def rawBody93_16 : StackLang.HolProg 64 :=
.seq rawBody93_8 rawBody93_15

def rawBody93_17 : StackLang.HolProg 64 :=
.seq rawBody93_1 rawBody93_16

def rawBody93_18 : StackLang.HolProg 64 :=
.seq rawBody93_0 rawBody93_17

def raw93 : StackLang.HolProg 64 := rawBody93_18
theorem raw93_eq : StackRawCall.compTop RawInfo.rawInfo (function93 (.list [])).1 = raw93 := by
  kernel_rfl
#print axioms raw93_eq
end InitECandidate.Proofs.BackendStages
