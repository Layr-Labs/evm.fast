import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function113
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody113_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody113_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody113_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody113_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody113_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody113_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody113_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody113_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody113_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody113_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody113_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody113_11 : StackLang.HolProg 64 :=
.seq rawBody113_9 rawBody113_10

def rawBody113_12 : StackLang.HolProg 64 :=
.seq rawBody113_8 rawBody113_11

def rawBody113_13 : StackLang.HolProg 64 :=
.seq rawBody113_7 rawBody113_12

def rawBody113_14 : StackLang.HolProg 64 :=
.seq rawBody113_6 rawBody113_13

def rawBody113_15 : StackLang.HolProg 64 :=
.seq rawBody113_5 rawBody113_14

def rawBody113_16 : StackLang.HolProg 64 :=
.seq rawBody113_4 rawBody113_15

def rawBody113_17 : StackLang.HolProg 64 :=
.seq rawBody113_3 rawBody113_16

def rawBody113_18 : StackLang.HolProg 64 :=
.seq rawBody113_2 rawBody113_17

def rawBody113_19 : StackLang.HolProg 64 :=
.seq rawBody113_1 rawBody113_18

def rawBody113_20 : StackLang.HolProg 64 :=
.seq rawBody113_0 rawBody113_19

def raw113 : StackLang.HolProg 64 := rawBody113_20
theorem raw113_eq : StackRawCall.compTop RawInfo.rawInfo (function113 (.list [])).1 = raw113 := by
  kernel_rfl
#print axioms raw113_eq
end InitECandidate.Proofs.BackendStages
