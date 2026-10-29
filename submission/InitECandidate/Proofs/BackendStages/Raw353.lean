import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function353
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody353_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody353_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody353_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 352#64))

def rawBody353_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody353_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 360#64))

def rawBody353_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody353_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 368#64))

def rawBody353_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody353_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 376#64))

def rawBody353_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody353_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody353_11 : StackLang.HolProg 64 :=
.seq rawBody353_9 rawBody353_10

def rawBody353_12 : StackLang.HolProg 64 :=
.seq rawBody353_8 rawBody353_11

def rawBody353_13 : StackLang.HolProg 64 :=
.seq rawBody353_7 rawBody353_12

def rawBody353_14 : StackLang.HolProg 64 :=
.seq rawBody353_6 rawBody353_13

def rawBody353_15 : StackLang.HolProg 64 :=
.seq rawBody353_5 rawBody353_14

def rawBody353_16 : StackLang.HolProg 64 :=
.seq rawBody353_4 rawBody353_15

def rawBody353_17 : StackLang.HolProg 64 :=
.seq rawBody353_3 rawBody353_16

def rawBody353_18 : StackLang.HolProg 64 :=
.seq rawBody353_2 rawBody353_17

def rawBody353_19 : StackLang.HolProg 64 :=
.seq rawBody353_1 rawBody353_18

def rawBody353_20 : StackLang.HolProg 64 :=
.seq rawBody353_0 rawBody353_19

def raw353 : StackLang.HolProg 64 := rawBody353_20
theorem raw353_eq : StackRawCall.compTop RawInfo.rawInfo (function353 (.list [])).1 = raw353 := by
  kernel_rfl
#print axioms raw353_eq
end InitECandidate.Proofs.BackendStages
