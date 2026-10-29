import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function323
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody323_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody323_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody323_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody323_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody323_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody323_7 : StackLang.HolProg 64 :=
.seq rawBody323_5 rawBody323_6

def rawBody323_8 : StackLang.HolProg 64 :=
.seq rawBody323_4 rawBody323_7

def rawBody323_9 : StackLang.HolProg 64 :=
.seq rawBody323_3 rawBody323_8

def rawBody323_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody323_9 rawBody323_10

def rawBody323_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody323_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody323_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody323_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody323_21 : StackLang.HolProg 64 :=
.seq rawBody323_19 rawBody323_20

def rawBody323_22 : StackLang.HolProg 64 :=
.seq rawBody323_18 rawBody323_21

def rawBody323_23 : StackLang.HolProg 64 :=
.seq rawBody323_17 rawBody323_22

def rawBody323_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody323_23 rawBody323_24

def rawBody323_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody323_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody323_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody323_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody323_35 : StackLang.HolProg 64 :=
.seq rawBody323_33 rawBody323_34

def rawBody323_36 : StackLang.HolProg 64 :=
.seq rawBody323_32 rawBody323_35

def rawBody323_37 : StackLang.HolProg 64 :=
.seq rawBody323_31 rawBody323_36

def rawBody323_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody323_37 rawBody323_38

def rawBody323_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody323_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody323_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody323_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody323_45 : StackLang.HolProg 64 :=
.seq rawBody323_43 rawBody323_44

def rawBody323_46 : StackLang.HolProg 64 :=
.seq rawBody323_42 rawBody323_45

def rawBody323_47 : StackLang.HolProg 64 :=
.seq rawBody323_41 rawBody323_46

def rawBody323_48 : StackLang.HolProg 64 :=
.seq rawBody323_40 rawBody323_47

def rawBody323_49 : StackLang.HolProg 64 :=
.seq rawBody323_39 rawBody323_48

def rawBody323_50 : StackLang.HolProg 64 :=
.seq rawBody323_30 rawBody323_49

def rawBody323_51 : StackLang.HolProg 64 :=
.seq rawBody323_29 rawBody323_50

def rawBody323_52 : StackLang.HolProg 64 :=
.seq rawBody323_28 rawBody323_51

def rawBody323_53 : StackLang.HolProg 64 :=
.seq rawBody323_27 rawBody323_52

def rawBody323_54 : StackLang.HolProg 64 :=
.seq rawBody323_26 rawBody323_53

def rawBody323_55 : StackLang.HolProg 64 :=
.seq rawBody323_25 rawBody323_54

def rawBody323_56 : StackLang.HolProg 64 :=
.seq rawBody323_16 rawBody323_55

def rawBody323_57 : StackLang.HolProg 64 :=
.seq rawBody323_15 rawBody323_56

def rawBody323_58 : StackLang.HolProg 64 :=
.seq rawBody323_14 rawBody323_57

def rawBody323_59 : StackLang.HolProg 64 :=
.seq rawBody323_13 rawBody323_58

def rawBody323_60 : StackLang.HolProg 64 :=
.seq rawBody323_12 rawBody323_59

def rawBody323_61 : StackLang.HolProg 64 :=
.seq rawBody323_11 rawBody323_60

def rawBody323_62 : StackLang.HolProg 64 :=
.seq rawBody323_2 rawBody323_61

def rawBody323_63 : StackLang.HolProg 64 :=
.seq rawBody323_1 rawBody323_62

def rawBody323_64 : StackLang.HolProg 64 :=
.seq rawBody323_0 rawBody323_63

def raw323 : StackLang.HolProg 64 := rawBody323_64
theorem raw323_eq : StackRawCall.compTop RawInfo.rawInfo (function323 (.list [])).1 = raw323 := by
  kernel_rfl
#print axioms raw323_eq
end InitECandidate.Proofs.BackendStages
