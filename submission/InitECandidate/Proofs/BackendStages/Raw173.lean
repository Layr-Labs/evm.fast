import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function173
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody173_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody173_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody173_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody173_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody173_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody173_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody173_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody173_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody173_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody173_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody173_17 : StackLang.HolProg 64 :=
.seq rawBody173_15 rawBody173_16

def rawBody173_18 : StackLang.HolProg 64 :=
.seq rawBody173_14 rawBody173_17

def rawBody173_19 : StackLang.HolProg 64 :=
.seq rawBody173_13 rawBody173_18

def rawBody173_20 : StackLang.HolProg 64 :=
.seq rawBody173_12 rawBody173_19

def rawBody173_21 : StackLang.HolProg 64 :=
.seq rawBody173_11 rawBody173_20

def rawBody173_22 : StackLang.HolProg 64 :=
.seq rawBody173_10 rawBody173_21

def rawBody173_23 : StackLang.HolProg 64 :=
.seq rawBody173_9 rawBody173_22

def rawBody173_24 : StackLang.HolProg 64 :=
.seq rawBody173_8 rawBody173_23

def rawBody173_25 : StackLang.HolProg 64 :=
.seq rawBody173_7 rawBody173_24

def rawBody173_26 : StackLang.HolProg 64 :=
.seq rawBody173_6 rawBody173_25

def rawBody173_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody173_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody173_29 : StackLang.HolProg 64 :=
.seq rawBody173_27 rawBody173_28

def rawBody173_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody173_26 rawBody173_29

def rawBody173_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody173_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_33 : StackLang.HolProg 64 :=
.seq rawBody173_31 rawBody173_32

def rawBody173_34 : StackLang.HolProg 64 :=
.seq rawBody173_30 rawBody173_33

def rawBody173_35 : StackLang.HolProg 64 :=
.seq rawBody173_5 rawBody173_34

def rawBody173_36 : StackLang.HolProg 64 :=
.seq rawBody173_4 rawBody173_35

def rawBody173_37 : StackLang.HolProg 64 :=
.loop rawBody173_36

def rawBody173_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody173_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody173_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody173_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody173_42 : StackLang.HolProg 64 :=
.seq rawBody173_40 rawBody173_41

def rawBody173_43 : StackLang.HolProg 64 :=
.seq rawBody173_39 rawBody173_42

def rawBody173_44 : StackLang.HolProg 64 :=
.seq rawBody173_38 rawBody173_43

def rawBody173_45 : StackLang.HolProg 64 :=
.seq rawBody173_37 rawBody173_44

def rawBody173_46 : StackLang.HolProg 64 :=
.seq rawBody173_3 rawBody173_45

def rawBody173_47 : StackLang.HolProg 64 :=
.seq rawBody173_2 rawBody173_46

def rawBody173_48 : StackLang.HolProg 64 :=
.seq rawBody173_1 rawBody173_47

def rawBody173_49 : StackLang.HolProg 64 :=
.seq rawBody173_0 rawBody173_48

def raw173 : StackLang.HolProg 64 := rawBody173_49
theorem raw173_eq : StackRawCall.compTop RawInfo.rawInfo (function173 (.list [])).1 = raw173 := by
  kernel_rfl
#print axioms raw173_eq
end InitECandidate.Proofs.BackendStages
