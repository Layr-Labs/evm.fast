import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function383
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody383_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody383_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody383_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody383_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody383_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody383_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody383_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody383_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_17 : StackLang.HolProg 64 :=
.seq rawBody383_15 rawBody383_16

def rawBody383_18 : StackLang.HolProg 64 :=
.seq rawBody383_14 rawBody383_17

def rawBody383_19 : StackLang.HolProg 64 :=
.seq rawBody383_13 rawBody383_18

def rawBody383_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_22 : StackLang.HolProg 64 :=
.seq rawBody383_20 rawBody383_21

def rawBody383_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody383_19 rawBody383_22

def rawBody383_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody383_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody383_29 : StackLang.HolProg 64 :=
.seq rawBody383_27 rawBody383_28

def rawBody383_30 : StackLang.HolProg 64 :=
.seq rawBody383_26 rawBody383_29

def rawBody383_31 : StackLang.HolProg 64 :=
.seq rawBody383_25 rawBody383_30

def rawBody383_32 : StackLang.HolProg 64 :=
.seq rawBody383_24 rawBody383_31

def rawBody383_33 : StackLang.HolProg 64 :=
.seq rawBody383_23 rawBody383_32

def rawBody383_34 : StackLang.HolProg 64 :=
.seq rawBody383_12 rawBody383_33

def rawBody383_35 : StackLang.HolProg 64 :=
.seq rawBody383_11 rawBody383_34

def rawBody383_36 : StackLang.HolProg 64 :=
.seq rawBody383_10 rawBody383_35

def rawBody383_37 : StackLang.HolProg 64 :=
.seq rawBody383_9 rawBody383_36

def rawBody383_38 : StackLang.HolProg 64 :=
.seq rawBody383_8 rawBody383_37

def rawBody383_39 : StackLang.HolProg 64 :=
.seq rawBody383_7 rawBody383_38

def rawBody383_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody383_43 : StackLang.HolProg 64 :=
.seq rawBody383_41 rawBody383_42

def rawBody383_44 : StackLang.HolProg 64 :=
.seq rawBody383_40 rawBody383_43

def rawBody383_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody383_39 rawBody383_44

def rawBody383_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_48 : StackLang.HolProg 64 :=
.seq rawBody383_46 rawBody383_47

def rawBody383_49 : StackLang.HolProg 64 :=
.seq rawBody383_45 rawBody383_48

def rawBody383_50 : StackLang.HolProg 64 :=
.seq rawBody383_6 rawBody383_49

def rawBody383_51 : StackLang.HolProg 64 :=
.loop rawBody383_50

def rawBody383_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody383_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody383_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody383_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody383_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody383_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody383_60 : StackLang.HolProg 64 :=
.seq rawBody383_58 rawBody383_59

def rawBody383_61 : StackLang.HolProg 64 :=
.seq rawBody383_57 rawBody383_60

def rawBody383_62 : StackLang.HolProg 64 :=
.seq rawBody383_56 rawBody383_61

def rawBody383_63 : StackLang.HolProg 64 :=
.seq rawBody383_55 rawBody383_62

def rawBody383_64 : StackLang.HolProg 64 :=
.seq rawBody383_54 rawBody383_63

def rawBody383_65 : StackLang.HolProg 64 :=
.seq rawBody383_53 rawBody383_64

def rawBody383_66 : StackLang.HolProg 64 :=
.seq rawBody383_52 rawBody383_65

def rawBody383_67 : StackLang.HolProg 64 :=
.seq rawBody383_51 rawBody383_66

def rawBody383_68 : StackLang.HolProg 64 :=
.seq rawBody383_5 rawBody383_67

def rawBody383_69 : StackLang.HolProg 64 :=
.seq rawBody383_4 rawBody383_68

def rawBody383_70 : StackLang.HolProg 64 :=
.seq rawBody383_3 rawBody383_69

def rawBody383_71 : StackLang.HolProg 64 :=
.seq rawBody383_2 rawBody383_70

def rawBody383_72 : StackLang.HolProg 64 :=
.seq rawBody383_1 rawBody383_71

def rawBody383_73 : StackLang.HolProg 64 :=
.seq rawBody383_0 rawBody383_72

def raw383 : StackLang.HolProg 64 := rawBody383_73
theorem raw383_eq : StackRawCall.compTop RawInfo.rawInfo (function383 (.list [])).1 = raw383 := by
  kernel_rfl
#print axioms raw383_eq
end InitECandidate.Proofs.BackendStages
