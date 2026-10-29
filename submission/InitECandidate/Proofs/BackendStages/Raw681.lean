import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function681
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody681_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody681_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody681_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody681_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody681_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody681_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody681_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody681_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody681_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 676) none

def rawBody681_9 : StackLang.HolProg 64 :=
.seq rawBody681_7 rawBody681_8

def rawBody681_10 : StackLang.HolProg 64 :=
.seq rawBody681_6 rawBody681_9

def rawBody681_11 : StackLang.HolProg 64 :=
.seq rawBody681_5 rawBody681_10

def rawBody681_12 : StackLang.HolProg 64 :=
.seq rawBody681_4 rawBody681_11

def rawBody681_13 : StackLang.HolProg 64 :=
.seq rawBody681_3 rawBody681_12

def rawBody681_14 : StackLang.HolProg 64 :=
.seq rawBody681_2 rawBody681_13

def rawBody681_15 : StackLang.HolProg 64 :=
.seq rawBody681_1 rawBody681_14

def rawBody681_16 : StackLang.HolProg 64 :=
.seq rawBody681_0 rawBody681_15

def raw681 : StackLang.HolProg 64 := rawBody681_16
theorem raw681_eq : StackRawCall.compTop RawInfo.rawInfo (function681 (.list [])).1 = raw681 := by
  kernel_rfl
#print axioms raw681_eq
end InitECandidate.Proofs.BackendStages
