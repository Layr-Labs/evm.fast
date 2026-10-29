import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function359
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody359_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody359_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody359_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody359_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody359_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody359_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def rawBody359_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody359_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody359_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody359_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody359_10 : StackLang.HolProg 64 :=
.seq rawBody359_8 rawBody359_9

def rawBody359_11 : StackLang.HolProg 64 :=
.seq rawBody359_7 rawBody359_10

def rawBody359_12 : StackLang.HolProg 64 :=
.seq rawBody359_6 rawBody359_11

def rawBody359_13 : StackLang.HolProg 64 :=
.seq rawBody359_5 rawBody359_12

def rawBody359_14 : StackLang.HolProg 64 :=
.seq rawBody359_4 rawBody359_13

def rawBody359_15 : StackLang.HolProg 64 :=
.seq rawBody359_3 rawBody359_14

def rawBody359_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody359_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody359_15 rawBody359_16

def rawBody359_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody359_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody359_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody359_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def rawBody359_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody359_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody359_24 : StackLang.HolProg 64 :=
.call none (Sum.inl 176) none

def rawBody359_25 : StackLang.HolProg 64 :=
.seq rawBody359_23 rawBody359_24

def rawBody359_26 : StackLang.HolProg 64 :=
.seq rawBody359_22 rawBody359_25

def rawBody359_27 : StackLang.HolProg 64 :=
.seq rawBody359_21 rawBody359_26

def rawBody359_28 : StackLang.HolProg 64 :=
.seq rawBody359_20 rawBody359_27

def rawBody359_29 : StackLang.HolProg 64 :=
.seq rawBody359_19 rawBody359_28

def rawBody359_30 : StackLang.HolProg 64 :=
.seq rawBody359_18 rawBody359_29

def rawBody359_31 : StackLang.HolProg 64 :=
.seq rawBody359_17 rawBody359_30

def rawBody359_32 : StackLang.HolProg 64 :=
.seq rawBody359_2 rawBody359_31

def rawBody359_33 : StackLang.HolProg 64 :=
.seq rawBody359_1 rawBody359_32

def rawBody359_34 : StackLang.HolProg 64 :=
.seq rawBody359_0 rawBody359_33

def raw359 : StackLang.HolProg 64 := rawBody359_34
theorem raw359_eq : StackRawCall.compTop RawInfo.rawInfo (function359 (.list [])).1 = raw359 := by
  kernel_rfl
#print axioms raw359_eq
end InitECandidate.Proofs.BackendStages
