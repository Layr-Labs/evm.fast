import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function172
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody172_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody172_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody172_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody172_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody172_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody172_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody172_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody172_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody172_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody172_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody172_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody172_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody172_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody172_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody172_14 : StackLang.HolProg 64 :=
.seq rawBody172_12 rawBody172_13

def rawBody172_15 : StackLang.HolProg 64 :=
.seq rawBody172_11 rawBody172_14

def rawBody172_16 : StackLang.HolProg 64 :=
.seq rawBody172_10 rawBody172_15

def rawBody172_17 : StackLang.HolProg 64 :=
.seq rawBody172_9 rawBody172_16

def rawBody172_18 : StackLang.HolProg 64 :=
.seq rawBody172_8 rawBody172_17

def rawBody172_19 : StackLang.HolProg 64 :=
.seq rawBody172_7 rawBody172_18

def rawBody172_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody172_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody172_22 : StackLang.HolProg 64 :=
.seq rawBody172_20 rawBody172_21

def rawBody172_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody172_19 rawBody172_22

def rawBody172_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody172_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody172_26 : StackLang.HolProg 64 :=
.seq rawBody172_24 rawBody172_25

def rawBody172_27 : StackLang.HolProg 64 :=
.seq rawBody172_23 rawBody172_26

def rawBody172_28 : StackLang.HolProg 64 :=
.seq rawBody172_6 rawBody172_27

def rawBody172_29 : StackLang.HolProg 64 :=
.seq rawBody172_5 rawBody172_28

def rawBody172_30 : StackLang.HolProg 64 :=
.loop rawBody172_29

def rawBody172_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody172_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody172_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody172_34 : StackLang.HolProg 64 :=
.seq rawBody172_32 rawBody172_33

def rawBody172_35 : StackLang.HolProg 64 :=
.seq rawBody172_31 rawBody172_34

def rawBody172_36 : StackLang.HolProg 64 :=
.seq rawBody172_30 rawBody172_35

def rawBody172_37 : StackLang.HolProg 64 :=
.seq rawBody172_4 rawBody172_36

def rawBody172_38 : StackLang.HolProg 64 :=
.seq rawBody172_3 rawBody172_37

def rawBody172_39 : StackLang.HolProg 64 :=
.seq rawBody172_2 rawBody172_38

def rawBody172_40 : StackLang.HolProg 64 :=
.seq rawBody172_1 rawBody172_39

def rawBody172_41 : StackLang.HolProg 64 :=
.seq rawBody172_0 rawBody172_40

def raw172 : StackLang.HolProg 64 := rawBody172_41
theorem raw172_eq : StackRawCall.compTop RawInfo.rawInfo (function172 (.list [])).1 = raw172 := by
  kernel_rfl
#print axioms raw172_eq
end InitECandidate.Proofs.BackendStages
