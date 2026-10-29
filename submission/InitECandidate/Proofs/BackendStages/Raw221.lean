import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function221
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody221_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody221_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody221_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody221_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody221_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody221_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody221_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody221_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody221_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody221_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody221_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody221_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody221_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody221_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody221_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody221_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody221_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody221_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody221_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody221_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody221_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody221_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody221_36 : StackLang.HolProg 64 :=
.seq rawBody221_34 rawBody221_35

def rawBody221_37 : StackLang.HolProg 64 :=
.seq rawBody221_33 rawBody221_36

def rawBody221_38 : StackLang.HolProg 64 :=
.seq rawBody221_32 rawBody221_37

def rawBody221_39 : StackLang.HolProg 64 :=
.seq rawBody221_31 rawBody221_38

def rawBody221_40 : StackLang.HolProg 64 :=
.seq rawBody221_30 rawBody221_39

def rawBody221_41 : StackLang.HolProg 64 :=
.seq rawBody221_29 rawBody221_40

def rawBody221_42 : StackLang.HolProg 64 :=
.seq rawBody221_28 rawBody221_41

def rawBody221_43 : StackLang.HolProg 64 :=
.seq rawBody221_27 rawBody221_42

def rawBody221_44 : StackLang.HolProg 64 :=
.seq rawBody221_26 rawBody221_43

def rawBody221_45 : StackLang.HolProg 64 :=
.seq rawBody221_25 rawBody221_44

def rawBody221_46 : StackLang.HolProg 64 :=
.seq rawBody221_24 rawBody221_45

def rawBody221_47 : StackLang.HolProg 64 :=
.seq rawBody221_23 rawBody221_46

def rawBody221_48 : StackLang.HolProg 64 :=
.seq rawBody221_22 rawBody221_47

def rawBody221_49 : StackLang.HolProg 64 :=
.seq rawBody221_21 rawBody221_48

def rawBody221_50 : StackLang.HolProg 64 :=
.seq rawBody221_20 rawBody221_49

def rawBody221_51 : StackLang.HolProg 64 :=
.seq rawBody221_19 rawBody221_50

def rawBody221_52 : StackLang.HolProg 64 :=
.seq rawBody221_18 rawBody221_51

def rawBody221_53 : StackLang.HolProg 64 :=
.seq rawBody221_17 rawBody221_52

def rawBody221_54 : StackLang.HolProg 64 :=
.seq rawBody221_16 rawBody221_53

def rawBody221_55 : StackLang.HolProg 64 :=
.seq rawBody221_15 rawBody221_54

def rawBody221_56 : StackLang.HolProg 64 :=
.seq rawBody221_14 rawBody221_55

def rawBody221_57 : StackLang.HolProg 64 :=
.seq rawBody221_13 rawBody221_56

def rawBody221_58 : StackLang.HolProg 64 :=
.seq rawBody221_12 rawBody221_57

def rawBody221_59 : StackLang.HolProg 64 :=
.seq rawBody221_11 rawBody221_58

def rawBody221_60 : StackLang.HolProg 64 :=
.seq rawBody221_10 rawBody221_59

def rawBody221_61 : StackLang.HolProg 64 :=
.seq rawBody221_9 rawBody221_60

def rawBody221_62 : StackLang.HolProg 64 :=
.seq rawBody221_8 rawBody221_61

def rawBody221_63 : StackLang.HolProg 64 :=
.seq rawBody221_7 rawBody221_62

def rawBody221_64 : StackLang.HolProg 64 :=
.seq rawBody221_6 rawBody221_63

def rawBody221_65 : StackLang.HolProg 64 :=
.seq rawBody221_5 rawBody221_64

def rawBody221_66 : StackLang.HolProg 64 :=
.seq rawBody221_4 rawBody221_65

def rawBody221_67 : StackLang.HolProg 64 :=
.seq rawBody221_3 rawBody221_66

def rawBody221_68 : StackLang.HolProg 64 :=
.seq rawBody221_2 rawBody221_67

def rawBody221_69 : StackLang.HolProg 64 :=
.seq rawBody221_1 rawBody221_68

def rawBody221_70 : StackLang.HolProg 64 :=
.seq rawBody221_0 rawBody221_69

def raw221 : StackLang.HolProg 64 := rawBody221_70
theorem raw221_eq : StackRawCall.compTop RawInfo.rawInfo (function221 (.list [])).1 = raw221 := by
  kernel_rfl
#print axioms raw221_eq
end InitECandidate.Proofs.BackendStages
