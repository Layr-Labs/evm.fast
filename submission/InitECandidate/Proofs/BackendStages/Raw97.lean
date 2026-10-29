import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function97
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody97_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody97_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody97_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody97_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody97_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody97_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody97_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody97_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody97_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody97_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody97_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody97_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody97_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody97_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody97_14 : StackLang.HolProg 64 :=
.seq rawBody97_12 rawBody97_13

def rawBody97_15 : StackLang.HolProg 64 :=
.seq rawBody97_11 rawBody97_14

def rawBody97_16 : StackLang.HolProg 64 :=
.seq rawBody97_10 rawBody97_15

def rawBody97_17 : StackLang.HolProg 64 :=
.seq rawBody97_9 rawBody97_16

def rawBody97_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody97_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody97_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody97_21 : StackLang.HolProg 64 :=
.seq rawBody97_19 rawBody97_20

def rawBody97_22 : StackLang.HolProg 64 :=
.seq rawBody97_18 rawBody97_21

def rawBody97_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody97_17 rawBody97_22

def rawBody97_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody97_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody97_26 : StackLang.HolProg 64 :=
.seq rawBody97_24 rawBody97_25

def rawBody97_27 : StackLang.HolProg 64 :=
.seq rawBody97_23 rawBody97_26

def rawBody97_28 : StackLang.HolProg 64 :=
.seq rawBody97_8 rawBody97_27

def rawBody97_29 : StackLang.HolProg 64 :=
.seq rawBody97_7 rawBody97_28

def rawBody97_30 : StackLang.HolProg 64 :=
.seq rawBody97_6 rawBody97_29

def rawBody97_31 : StackLang.HolProg 64 :=
.seq rawBody97_5 rawBody97_30

def rawBody97_32 : StackLang.HolProg 64 :=
.loop rawBody97_31

def rawBody97_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody97_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody97_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody97_36 : StackLang.HolProg 64 :=
.seq rawBody97_34 rawBody97_35

def rawBody97_37 : StackLang.HolProg 64 :=
.seq rawBody97_33 rawBody97_36

def rawBody97_38 : StackLang.HolProg 64 :=
.seq rawBody97_32 rawBody97_37

def rawBody97_39 : StackLang.HolProg 64 :=
.seq rawBody97_4 rawBody97_38

def rawBody97_40 : StackLang.HolProg 64 :=
.seq rawBody97_3 rawBody97_39

def rawBody97_41 : StackLang.HolProg 64 :=
.seq rawBody97_2 rawBody97_40

def rawBody97_42 : StackLang.HolProg 64 :=
.seq rawBody97_1 rawBody97_41

def rawBody97_43 : StackLang.HolProg 64 :=
.seq rawBody97_0 rawBody97_42

def raw97 : StackLang.HolProg 64 := rawBody97_43
theorem raw97_eq : StackRawCall.compTop RawInfo.rawInfo (function97 (.list [])).1 = raw97 := by
  kernel_rfl
#print axioms raw97_eq
end InitECandidate.Proofs.BackendStages
