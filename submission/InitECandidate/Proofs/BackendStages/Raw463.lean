import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function463
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody463_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody463_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody463_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody463_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody463_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody463_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody463_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody463_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody463_8 : StackLang.HolProg 64 :=
.seq rawBody463_6 rawBody463_7

def rawBody463_9 : StackLang.HolProg 64 :=
.seq rawBody463_5 rawBody463_8

def rawBody463_10 : StackLang.HolProg 64 :=
.seq rawBody463_4 rawBody463_9

def rawBody463_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody463_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody463_10 rawBody463_11

def rawBody463_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody463_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody463_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody463_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody463_17 : StackLang.HolProg 64 :=
.seq rawBody463_15 rawBody463_16

def rawBody463_18 : StackLang.HolProg 64 :=
.seq rawBody463_14 rawBody463_17

def rawBody463_19 : StackLang.HolProg 64 :=
.seq rawBody463_13 rawBody463_18

def rawBody463_20 : StackLang.HolProg 64 :=
.seq rawBody463_12 rawBody463_19

def rawBody463_21 : StackLang.HolProg 64 :=
.seq rawBody463_3 rawBody463_20

def rawBody463_22 : StackLang.HolProg 64 :=
.seq rawBody463_2 rawBody463_21

def rawBody463_23 : StackLang.HolProg 64 :=
.seq rawBody463_1 rawBody463_22

def rawBody463_24 : StackLang.HolProg 64 :=
.seq rawBody463_0 rawBody463_23

def raw463 : StackLang.HolProg 64 := rawBody463_24
theorem raw463_eq : StackRawCall.compTop RawInfo.rawInfo (function463 (.list [])).1 = raw463 := by
  kernel_rfl
#print axioms raw463_eq
end InitECandidate.Proofs.BackendStages
