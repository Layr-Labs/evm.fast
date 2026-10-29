import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function462
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody462_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody462_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody462_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody462_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody462_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody462_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody462_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody462_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody462_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody462_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody462_10 : StackLang.HolProg 64 :=
.seq rawBody462_8 rawBody462_9

def rawBody462_11 : StackLang.HolProg 64 :=
.seq rawBody462_7 rawBody462_10

def rawBody462_12 : StackLang.HolProg 64 :=
.seq rawBody462_6 rawBody462_11

def rawBody462_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody462_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody462_12 rawBody462_13

def rawBody462_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody462_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody462_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody462_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody462_19 : StackLang.HolProg 64 :=
.seq rawBody462_17 rawBody462_18

def rawBody462_20 : StackLang.HolProg 64 :=
.seq rawBody462_16 rawBody462_19

def rawBody462_21 : StackLang.HolProg 64 :=
.seq rawBody462_15 rawBody462_20

def rawBody462_22 : StackLang.HolProg 64 :=
.seq rawBody462_14 rawBody462_21

def rawBody462_23 : StackLang.HolProg 64 :=
.seq rawBody462_5 rawBody462_22

def rawBody462_24 : StackLang.HolProg 64 :=
.seq rawBody462_4 rawBody462_23

def rawBody462_25 : StackLang.HolProg 64 :=
.seq rawBody462_3 rawBody462_24

def rawBody462_26 : StackLang.HolProg 64 :=
.seq rawBody462_2 rawBody462_25

def rawBody462_27 : StackLang.HolProg 64 :=
.seq rawBody462_1 rawBody462_26

def rawBody462_28 : StackLang.HolProg 64 :=
.seq rawBody462_0 rawBody462_27

def raw462 : StackLang.HolProg 64 := rawBody462_28
theorem raw462_eq : StackRawCall.compTop RawInfo.rawInfo (function462 (.list [])).1 = raw462 := by
  kernel_rfl
#print axioms raw462_eq
end InitECandidate.Proofs.BackendStages
