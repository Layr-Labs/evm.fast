import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function102
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody102_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody102_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody102_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody102_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody102_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody102_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody102_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody102_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody102_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody102_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody102_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody102_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody102_12 : StackLang.HolProg 64 :=
.seq rawBody102_10 rawBody102_11

def rawBody102_13 : StackLang.HolProg 64 :=
.seq rawBody102_9 rawBody102_12

def rawBody102_14 : StackLang.HolProg 64 :=
.seq rawBody102_8 rawBody102_13

def rawBody102_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody102_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody102_14 rawBody102_15

def rawBody102_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody102_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody102_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody102_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody102_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody102_22 : StackLang.HolProg 64 :=
.seq rawBody102_20 rawBody102_21

def rawBody102_23 : StackLang.HolProg 64 :=
.seq rawBody102_19 rawBody102_22

def rawBody102_24 : StackLang.HolProg 64 :=
.seq rawBody102_18 rawBody102_23

def rawBody102_25 : StackLang.HolProg 64 :=
.seq rawBody102_17 rawBody102_24

def rawBody102_26 : StackLang.HolProg 64 :=
.seq rawBody102_16 rawBody102_25

def rawBody102_27 : StackLang.HolProg 64 :=
.seq rawBody102_7 rawBody102_26

def rawBody102_28 : StackLang.HolProg 64 :=
.seq rawBody102_6 rawBody102_27

def rawBody102_29 : StackLang.HolProg 64 :=
.seq rawBody102_5 rawBody102_28

def rawBody102_30 : StackLang.HolProg 64 :=
.seq rawBody102_4 rawBody102_29

def rawBody102_31 : StackLang.HolProg 64 :=
.seq rawBody102_3 rawBody102_30

def rawBody102_32 : StackLang.HolProg 64 :=
.seq rawBody102_2 rawBody102_31

def rawBody102_33 : StackLang.HolProg 64 :=
.seq rawBody102_1 rawBody102_32

def rawBody102_34 : StackLang.HolProg 64 :=
.seq rawBody102_0 rawBody102_33

def raw102 : StackLang.HolProg 64 := rawBody102_34
theorem raw102_eq : StackRawCall.compTop RawInfo.rawInfo (function102 (.list [])).1 = raw102 := by
  kernel_rfl
#print axioms raw102_eq
end InitECandidate.Proofs.BackendStages
