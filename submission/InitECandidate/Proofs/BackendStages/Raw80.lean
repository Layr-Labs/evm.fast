import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function80
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody80_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody80_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody80_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody80_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody80_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody80_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody80_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody80_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody80_16 : StackLang.HolProg 64 :=
.seq rawBody80_14 rawBody80_15

def rawBody80_17 : StackLang.HolProg 64 :=
.seq rawBody80_13 rawBody80_16

def rawBody80_18 : StackLang.HolProg 64 :=
.seq rawBody80_12 rawBody80_17

def rawBody80_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody80_18 rawBody80_19

def rawBody80_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody80_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody80_27 : StackLang.HolProg 64 :=
.seq rawBody80_25 rawBody80_26

def rawBody80_28 : StackLang.HolProg 64 :=
.seq rawBody80_24 rawBody80_27

def rawBody80_29 : StackLang.HolProg 64 :=
.seq rawBody80_23 rawBody80_28

def rawBody80_30 : StackLang.HolProg 64 :=
.seq rawBody80_22 rawBody80_29

def rawBody80_31 : StackLang.HolProg 64 :=
.seq rawBody80_21 rawBody80_30

def rawBody80_32 : StackLang.HolProg 64 :=
.seq rawBody80_20 rawBody80_31

def rawBody80_33 : StackLang.HolProg 64 :=
.seq rawBody80_11 rawBody80_32

def rawBody80_34 : StackLang.HolProg 64 :=
.seq rawBody80_10 rawBody80_33

def rawBody80_35 : StackLang.HolProg 64 :=
.seq rawBody80_9 rawBody80_34

def rawBody80_36 : StackLang.HolProg 64 :=
.seq rawBody80_8 rawBody80_35

def rawBody80_37 : StackLang.HolProg 64 :=
.seq rawBody80_7 rawBody80_36

def rawBody80_38 : StackLang.HolProg 64 :=
.seq rawBody80_6 rawBody80_37

def rawBody80_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody80_41 : StackLang.HolProg 64 :=
.seq rawBody80_39 rawBody80_40

def rawBody80_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody80_38 rawBody80_41

def rawBody80_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_45 : StackLang.HolProg 64 :=
.seq rawBody80_43 rawBody80_44

def rawBody80_46 : StackLang.HolProg 64 :=
.seq rawBody80_42 rawBody80_45

def rawBody80_47 : StackLang.HolProg 64 :=
.seq rawBody80_5 rawBody80_46

def rawBody80_48 : StackLang.HolProg 64 :=
.loop rawBody80_47

def rawBody80_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody80_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody80_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody80_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody80_53 : StackLang.HolProg 64 :=
.seq rawBody80_51 rawBody80_52

def rawBody80_54 : StackLang.HolProg 64 :=
.seq rawBody80_50 rawBody80_53

def rawBody80_55 : StackLang.HolProg 64 :=
.seq rawBody80_49 rawBody80_54

def rawBody80_56 : StackLang.HolProg 64 :=
.seq rawBody80_48 rawBody80_55

def rawBody80_57 : StackLang.HolProg 64 :=
.seq rawBody80_4 rawBody80_56

def rawBody80_58 : StackLang.HolProg 64 :=
.seq rawBody80_3 rawBody80_57

def rawBody80_59 : StackLang.HolProg 64 :=
.seq rawBody80_2 rawBody80_58

def rawBody80_60 : StackLang.HolProg 64 :=
.seq rawBody80_1 rawBody80_59

def rawBody80_61 : StackLang.HolProg 64 :=
.seq rawBody80_0 rawBody80_60

def raw80 : StackLang.HolProg 64 := rawBody80_61
theorem raw80_eq : StackRawCall.compTop RawInfo.rawInfo (function80 (.list [])).1 = raw80 := by
  kernel_rfl
#print axioms raw80_eq
end InitECandidate.Proofs.BackendStages
