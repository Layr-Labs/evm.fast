import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function116
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody116_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody116_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody116_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody116_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody116_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def rawBody116_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody116_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 6 0))

def rawBody116_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody116_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def rawBody116_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody116_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 8 0))

def rawBody116_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody116_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody116_13 : StackLang.HolProg 64 :=
.seq rawBody116_11 rawBody116_12

def rawBody116_14 : StackLang.HolProg 64 :=
.seq rawBody116_10 rawBody116_13

def rawBody116_15 : StackLang.HolProg 64 :=
.seq rawBody116_9 rawBody116_14

def rawBody116_16 : StackLang.HolProg 64 :=
.seq rawBody116_8 rawBody116_15

def rawBody116_17 : StackLang.HolProg 64 :=
.seq rawBody116_7 rawBody116_16

def rawBody116_18 : StackLang.HolProg 64 :=
.seq rawBody116_6 rawBody116_17

def rawBody116_19 : StackLang.HolProg 64 :=
.seq rawBody116_5 rawBody116_18

def rawBody116_20 : StackLang.HolProg 64 :=
.seq rawBody116_4 rawBody116_19

def rawBody116_21 : StackLang.HolProg 64 :=
.seq rawBody116_3 rawBody116_20

def rawBody116_22 : StackLang.HolProg 64 :=
.seq rawBody116_2 rawBody116_21

def rawBody116_23 : StackLang.HolProg 64 :=
.seq rawBody116_1 rawBody116_22

def rawBody116_24 : StackLang.HolProg 64 :=
.seq rawBody116_0 rawBody116_23

def raw116 : StackLang.HolProg 64 := rawBody116_24
theorem raw116_eq : StackRawCall.compTop RawInfo.rawInfo (function116 (.list [])).1 = raw116 := by
  kernel_rfl
#print axioms raw116_eq
end InitECandidate.Proofs.BackendStages
