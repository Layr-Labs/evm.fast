import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function473
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody473_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody473_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody473_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody473_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody473_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def rawBody473_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody473_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def rawBody473_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody473_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def rawBody473_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody473_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody473_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody473_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody473_13 : StackLang.HolProg 64 :=
.seq rawBody473_11 rawBody473_12

def rawBody473_14 : StackLang.HolProg 64 :=
.seq rawBody473_10 rawBody473_13

def rawBody473_15 : StackLang.HolProg 64 :=
.seq rawBody473_9 rawBody473_14

def rawBody473_16 : StackLang.HolProg 64 :=
.seq rawBody473_8 rawBody473_15

def rawBody473_17 : StackLang.HolProg 64 :=
.seq rawBody473_7 rawBody473_16

def rawBody473_18 : StackLang.HolProg 64 :=
.seq rawBody473_6 rawBody473_17

def rawBody473_19 : StackLang.HolProg 64 :=
.seq rawBody473_5 rawBody473_18

def rawBody473_20 : StackLang.HolProg 64 :=
.seq rawBody473_4 rawBody473_19

def rawBody473_21 : StackLang.HolProg 64 :=
.seq rawBody473_3 rawBody473_20

def rawBody473_22 : StackLang.HolProg 64 :=
.seq rawBody473_2 rawBody473_21

def rawBody473_23 : StackLang.HolProg 64 :=
.seq rawBody473_1 rawBody473_22

def rawBody473_24 : StackLang.HolProg 64 :=
.seq rawBody473_0 rawBody473_23

def raw473 : StackLang.HolProg 64 := rawBody473_24
theorem raw473_eq : StackRawCall.compTop RawInfo.rawInfo (function473 (.list [])).1 = raw473 := by
  kernel_rfl
#print axioms raw473_eq
end InitECandidate.Proofs.BackendStages
