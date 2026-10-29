import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function352
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody352_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody352_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody352_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 320#64))

def rawBody352_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody352_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 328#64))

def rawBody352_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody352_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 336#64))

def rawBody352_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody352_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 344#64))

def rawBody352_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody352_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody352_11 : StackLang.HolProg 64 :=
.seq rawBody352_9 rawBody352_10

def rawBody352_12 : StackLang.HolProg 64 :=
.seq rawBody352_8 rawBody352_11

def rawBody352_13 : StackLang.HolProg 64 :=
.seq rawBody352_7 rawBody352_12

def rawBody352_14 : StackLang.HolProg 64 :=
.seq rawBody352_6 rawBody352_13

def rawBody352_15 : StackLang.HolProg 64 :=
.seq rawBody352_5 rawBody352_14

def rawBody352_16 : StackLang.HolProg 64 :=
.seq rawBody352_4 rawBody352_15

def rawBody352_17 : StackLang.HolProg 64 :=
.seq rawBody352_3 rawBody352_16

def rawBody352_18 : StackLang.HolProg 64 :=
.seq rawBody352_2 rawBody352_17

def rawBody352_19 : StackLang.HolProg 64 :=
.seq rawBody352_1 rawBody352_18

def rawBody352_20 : StackLang.HolProg 64 :=
.seq rawBody352_0 rawBody352_19

def raw352 : StackLang.HolProg 64 := rawBody352_20
theorem raw352_eq : StackRawCall.compTop RawInfo.rawInfo (function352 (.list [])).1 = raw352 := by
  kernel_rfl
#print axioms raw352_eq
end InitECandidate.Proofs.BackendStages
