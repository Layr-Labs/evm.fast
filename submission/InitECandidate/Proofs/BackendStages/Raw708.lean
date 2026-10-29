import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function708
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody708_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody708_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody708_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody708_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody708_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 7 0))

def rawBody708_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody708_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 8 0))

def rawBody708_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody708_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 9 0))

def rawBody708_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody708_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 10 0))

def rawBody708_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody708_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 11 0))

def rawBody708_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody708_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 12 0))

def rawBody708_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody708_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def rawBody708_17 : StackLang.HolProg 64 :=
.seq rawBody708_15 rawBody708_16

def rawBody708_18 : StackLang.HolProg 64 :=
.seq rawBody708_14 rawBody708_17

def rawBody708_19 : StackLang.HolProg 64 :=
.seq rawBody708_13 rawBody708_18

def rawBody708_20 : StackLang.HolProg 64 :=
.seq rawBody708_12 rawBody708_19

def rawBody708_21 : StackLang.HolProg 64 :=
.seq rawBody708_11 rawBody708_20

def rawBody708_22 : StackLang.HolProg 64 :=
.seq rawBody708_10 rawBody708_21

def rawBody708_23 : StackLang.HolProg 64 :=
.seq rawBody708_9 rawBody708_22

def rawBody708_24 : StackLang.HolProg 64 :=
.seq rawBody708_8 rawBody708_23

def rawBody708_25 : StackLang.HolProg 64 :=
.seq rawBody708_7 rawBody708_24

def rawBody708_26 : StackLang.HolProg 64 :=
.seq rawBody708_6 rawBody708_25

def rawBody708_27 : StackLang.HolProg 64 :=
.seq rawBody708_5 rawBody708_26

def rawBody708_28 : StackLang.HolProg 64 :=
.seq rawBody708_4 rawBody708_27

def rawBody708_29 : StackLang.HolProg 64 :=
.seq rawBody708_3 rawBody708_28

def rawBody708_30 : StackLang.HolProg 64 :=
.seq rawBody708_2 rawBody708_29

def rawBody708_31 : StackLang.HolProg 64 :=
.seq rawBody708_1 rawBody708_30

def rawBody708_32 : StackLang.HolProg 64 :=
.seq rawBody708_0 rawBody708_31

def raw708 : StackLang.HolProg 64 := rawBody708_32
theorem raw708_eq : StackRawCall.compTop RawInfo.rawInfo (function708 (.list [])).1 = raw708 := by
  kernel_rfl
#print axioms raw708_eq
end InitECandidate.Proofs.BackendStages
