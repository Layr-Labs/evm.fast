import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function101
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody101_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody101_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody101_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody101_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody101_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody101_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody101_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody101_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody101_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody101_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody101_10 : StackLang.HolProg 64 :=
.seq rawBody101_8 rawBody101_9

def rawBody101_11 : StackLang.HolProg 64 :=
.seq rawBody101_7 rawBody101_10

def rawBody101_12 : StackLang.HolProg 64 :=
.seq rawBody101_6 rawBody101_11

def rawBody101_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody101_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody101_12 rawBody101_13

def rawBody101_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody101_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody101_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody101_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody101_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody101_20 : StackLang.HolProg 64 :=
.seq rawBody101_18 rawBody101_19

def rawBody101_21 : StackLang.HolProg 64 :=
.seq rawBody101_17 rawBody101_20

def rawBody101_22 : StackLang.HolProg 64 :=
.seq rawBody101_16 rawBody101_21

def rawBody101_23 : StackLang.HolProg 64 :=
.seq rawBody101_15 rawBody101_22

def rawBody101_24 : StackLang.HolProg 64 :=
.seq rawBody101_14 rawBody101_23

def rawBody101_25 : StackLang.HolProg 64 :=
.seq rawBody101_5 rawBody101_24

def rawBody101_26 : StackLang.HolProg 64 :=
.seq rawBody101_4 rawBody101_25

def rawBody101_27 : StackLang.HolProg 64 :=
.seq rawBody101_3 rawBody101_26

def rawBody101_28 : StackLang.HolProg 64 :=
.seq rawBody101_2 rawBody101_27

def rawBody101_29 : StackLang.HolProg 64 :=
.seq rawBody101_1 rawBody101_28

def rawBody101_30 : StackLang.HolProg 64 :=
.seq rawBody101_0 rawBody101_29

def raw101 : StackLang.HolProg 64 := rawBody101_30
theorem raw101_eq : StackRawCall.compTop RawInfo.rawInfo (function101 (.list [])).1 = raw101 := by
  kernel_rfl
#print axioms raw101_eq
end InitECandidate.Proofs.BackendStages
