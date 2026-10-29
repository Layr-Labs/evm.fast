import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function112
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody112_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody112_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody112_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody112_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody112_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody112_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody112_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody112_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody112_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody112_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody112_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody112_11 : StackLang.HolProg 64 :=
.seq rawBody112_9 rawBody112_10

def rawBody112_12 : StackLang.HolProg 64 :=
.seq rawBody112_8 rawBody112_11

def rawBody112_13 : StackLang.HolProg 64 :=
.seq rawBody112_7 rawBody112_12

def rawBody112_14 : StackLang.HolProg 64 :=
.seq rawBody112_6 rawBody112_13

def rawBody112_15 : StackLang.HolProg 64 :=
.seq rawBody112_5 rawBody112_14

def rawBody112_16 : StackLang.HolProg 64 :=
.seq rawBody112_4 rawBody112_15

def rawBody112_17 : StackLang.HolProg 64 :=
.seq rawBody112_3 rawBody112_16

def rawBody112_18 : StackLang.HolProg 64 :=
.seq rawBody112_2 rawBody112_17

def rawBody112_19 : StackLang.HolProg 64 :=
.seq rawBody112_1 rawBody112_18

def rawBody112_20 : StackLang.HolProg 64 :=
.seq rawBody112_0 rawBody112_19

def raw112 : StackLang.HolProg 64 := rawBody112_20
theorem raw112_eq : StackRawCall.compTop RawInfo.rawInfo (function112 (.list [])).1 = raw112 := by
  kernel_rfl
#print axioms raw112_eq
end InitECandidate.Proofs.BackendStages
