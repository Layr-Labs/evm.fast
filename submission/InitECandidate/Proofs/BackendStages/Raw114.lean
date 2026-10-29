import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function114
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody114_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody114_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody114_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody114_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody114_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody114_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody114_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody114_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody114_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody114_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody114_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody114_11 : StackLang.HolProg 64 :=
.seq rawBody114_9 rawBody114_10

def rawBody114_12 : StackLang.HolProg 64 :=
.seq rawBody114_8 rawBody114_11

def rawBody114_13 : StackLang.HolProg 64 :=
.seq rawBody114_7 rawBody114_12

def rawBody114_14 : StackLang.HolProg 64 :=
.seq rawBody114_6 rawBody114_13

def rawBody114_15 : StackLang.HolProg 64 :=
.seq rawBody114_5 rawBody114_14

def rawBody114_16 : StackLang.HolProg 64 :=
.seq rawBody114_4 rawBody114_15

def rawBody114_17 : StackLang.HolProg 64 :=
.seq rawBody114_3 rawBody114_16

def rawBody114_18 : StackLang.HolProg 64 :=
.seq rawBody114_2 rawBody114_17

def rawBody114_19 : StackLang.HolProg 64 :=
.seq rawBody114_1 rawBody114_18

def rawBody114_20 : StackLang.HolProg 64 :=
.seq rawBody114_0 rawBody114_19

def raw114 : StackLang.HolProg 64 := rawBody114_20
theorem raw114_eq : StackRawCall.compTop RawInfo.rawInfo (function114 (.list [])).1 = raw114 := by
  kernel_rfl
#print axioms raw114_eq
end InitECandidate.Proofs.BackendStages
