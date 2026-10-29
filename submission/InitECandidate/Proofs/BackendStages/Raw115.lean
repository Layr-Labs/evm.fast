import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function115
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody115_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody115_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody115_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody115_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody115_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def rawBody115_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody115_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 6 0))

def rawBody115_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody115_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def rawBody115_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody115_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 8 0))

def rawBody115_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody115_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody115_13 : StackLang.HolProg 64 :=
.seq rawBody115_11 rawBody115_12

def rawBody115_14 : StackLang.HolProg 64 :=
.seq rawBody115_10 rawBody115_13

def rawBody115_15 : StackLang.HolProg 64 :=
.seq rawBody115_9 rawBody115_14

def rawBody115_16 : StackLang.HolProg 64 :=
.seq rawBody115_8 rawBody115_15

def rawBody115_17 : StackLang.HolProg 64 :=
.seq rawBody115_7 rawBody115_16

def rawBody115_18 : StackLang.HolProg 64 :=
.seq rawBody115_6 rawBody115_17

def rawBody115_19 : StackLang.HolProg 64 :=
.seq rawBody115_5 rawBody115_18

def rawBody115_20 : StackLang.HolProg 64 :=
.seq rawBody115_4 rawBody115_19

def rawBody115_21 : StackLang.HolProg 64 :=
.seq rawBody115_3 rawBody115_20

def rawBody115_22 : StackLang.HolProg 64 :=
.seq rawBody115_2 rawBody115_21

def rawBody115_23 : StackLang.HolProg 64 :=
.seq rawBody115_1 rawBody115_22

def rawBody115_24 : StackLang.HolProg 64 :=
.seq rawBody115_0 rawBody115_23

def raw115 : StackLang.HolProg 64 := rawBody115_24
theorem raw115_eq : StackRawCall.compTop RawInfo.rawInfo (function115 (.list [])).1 = raw115 := by
  kernel_rfl
#print axioms raw115_eq
end InitECandidate.Proofs.BackendStages
