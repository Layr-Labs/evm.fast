import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function348
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody348_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody348_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody348_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody348_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody348_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody348_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody348_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody348_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody348_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody348_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody348_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody348_11 : StackLang.HolProg 64 :=
.seq rawBody348_9 rawBody348_10

def rawBody348_12 : StackLang.HolProg 64 :=
.seq rawBody348_8 rawBody348_11

def rawBody348_13 : StackLang.HolProg 64 :=
.seq rawBody348_7 rawBody348_12

def rawBody348_14 : StackLang.HolProg 64 :=
.seq rawBody348_6 rawBody348_13

def rawBody348_15 : StackLang.HolProg 64 :=
.seq rawBody348_5 rawBody348_14

def rawBody348_16 : StackLang.HolProg 64 :=
.seq rawBody348_4 rawBody348_15

def rawBody348_17 : StackLang.HolProg 64 :=
.seq rawBody348_3 rawBody348_16

def rawBody348_18 : StackLang.HolProg 64 :=
.seq rawBody348_2 rawBody348_17

def rawBody348_19 : StackLang.HolProg 64 :=
.seq rawBody348_1 rawBody348_18

def rawBody348_20 : StackLang.HolProg 64 :=
.seq rawBody348_0 rawBody348_19

def raw348 : StackLang.HolProg 64 := rawBody348_20
theorem raw348_eq : StackRawCall.compTop RawInfo.rawInfo (function348 (.list [])).1 = raw348 := by
  kernel_rfl
#print axioms raw348_eq
end InitECandidate.Proofs.BackendStages
