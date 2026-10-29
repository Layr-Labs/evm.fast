import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function222
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody222_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody222_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody222_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def rawBody222_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody222_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 72#64))

def rawBody222_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody222_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 80#64))

def rawBody222_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody222_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 88#64))

def rawBody222_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody222_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody222_11 : StackLang.HolProg 64 :=
.call none (Sum.inl 102) none

def rawBody222_12 : StackLang.HolProg 64 :=
.seq rawBody222_10 rawBody222_11

def rawBody222_13 : StackLang.HolProg 64 :=
.seq rawBody222_9 rawBody222_12

def rawBody222_14 : StackLang.HolProg 64 :=
.seq rawBody222_8 rawBody222_13

def rawBody222_15 : StackLang.HolProg 64 :=
.seq rawBody222_7 rawBody222_14

def rawBody222_16 : StackLang.HolProg 64 :=
.seq rawBody222_6 rawBody222_15

def rawBody222_17 : StackLang.HolProg 64 :=
.seq rawBody222_5 rawBody222_16

def rawBody222_18 : StackLang.HolProg 64 :=
.seq rawBody222_4 rawBody222_17

def rawBody222_19 : StackLang.HolProg 64 :=
.seq rawBody222_3 rawBody222_18

def rawBody222_20 : StackLang.HolProg 64 :=
.seq rawBody222_2 rawBody222_19

def rawBody222_21 : StackLang.HolProg 64 :=
.seq rawBody222_1 rawBody222_20

def rawBody222_22 : StackLang.HolProg 64 :=
.seq rawBody222_0 rawBody222_21

def raw222 : StackLang.HolProg 64 := rawBody222_22
theorem raw222_eq : StackRawCall.compTop RawInfo.rawInfo (function222 (.list [])).1 = raw222 := by
  kernel_rfl
#print axioms raw222_eq
end InitECandidate.Proofs.BackendStages
