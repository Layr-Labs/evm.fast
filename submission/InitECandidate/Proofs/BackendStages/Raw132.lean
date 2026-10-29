import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function132
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody132_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody132_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody132_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody132_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def rawBody132_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody132_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody132_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody132_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 118) none

def rawBody132_8 : StackLang.HolProg 64 :=
.seq rawBody132_6 rawBody132_7

def rawBody132_9 : StackLang.HolProg 64 :=
.seq rawBody132_5 rawBody132_8

def rawBody132_10 : StackLang.HolProg 64 :=
.seq rawBody132_4 rawBody132_9

def rawBody132_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody132_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody132_10 rawBody132_11

def rawBody132_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody132_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody132_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody132_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody132_17 : StackLang.HolProg 64 :=
.seq rawBody132_15 rawBody132_16

def rawBody132_18 : StackLang.HolProg 64 :=
.seq rawBody132_14 rawBody132_17

def rawBody132_19 : StackLang.HolProg 64 :=
.seq rawBody132_13 rawBody132_18

def rawBody132_20 : StackLang.HolProg 64 :=
.seq rawBody132_12 rawBody132_19

def rawBody132_21 : StackLang.HolProg 64 :=
.seq rawBody132_3 rawBody132_20

def rawBody132_22 : StackLang.HolProg 64 :=
.seq rawBody132_2 rawBody132_21

def rawBody132_23 : StackLang.HolProg 64 :=
.seq rawBody132_1 rawBody132_22

def rawBody132_24 : StackLang.HolProg 64 :=
.seq rawBody132_0 rawBody132_23

def raw132 : StackLang.HolProg 64 := rawBody132_24
theorem raw132_eq : StackRawCall.compTop RawInfo.rawInfo (function132 (.list [])).1 = raw132 := by
  kernel_rfl
#print axioms raw132_eq
end InitECandidate.Proofs.BackendStages
