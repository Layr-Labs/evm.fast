import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw649
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody649_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody649_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody649_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody649_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody649_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody649_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody649_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody649_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody649_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody649_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody649_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody649_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody649_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody649_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody649_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody649_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody649_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody649_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody649_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody649_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody649_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody649_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody649_36 : StackLang.HolProg 64 :=
.seq AllocBody649_34 AllocBody649_35

def AllocBody649_37 : StackLang.HolProg 64 :=
.seq AllocBody649_33 AllocBody649_36

def AllocBody649_38 : StackLang.HolProg 64 :=
.seq AllocBody649_32 AllocBody649_37

def AllocBody649_39 : StackLang.HolProg 64 :=
.seq AllocBody649_31 AllocBody649_38

def AllocBody649_40 : StackLang.HolProg 64 :=
.seq AllocBody649_30 AllocBody649_39

def AllocBody649_41 : StackLang.HolProg 64 :=
.seq AllocBody649_29 AllocBody649_40

def AllocBody649_42 : StackLang.HolProg 64 :=
.seq AllocBody649_28 AllocBody649_41

def AllocBody649_43 : StackLang.HolProg 64 :=
.seq AllocBody649_27 AllocBody649_42

def AllocBody649_44 : StackLang.HolProg 64 :=
.seq AllocBody649_26 AllocBody649_43

def AllocBody649_45 : StackLang.HolProg 64 :=
.seq AllocBody649_25 AllocBody649_44

def AllocBody649_46 : StackLang.HolProg 64 :=
.seq AllocBody649_24 AllocBody649_45

def AllocBody649_47 : StackLang.HolProg 64 :=
.seq AllocBody649_23 AllocBody649_46

def AllocBody649_48 : StackLang.HolProg 64 :=
.seq AllocBody649_22 AllocBody649_47

def AllocBody649_49 : StackLang.HolProg 64 :=
.seq AllocBody649_21 AllocBody649_48

def AllocBody649_50 : StackLang.HolProg 64 :=
.seq AllocBody649_20 AllocBody649_49

def AllocBody649_51 : StackLang.HolProg 64 :=
.seq AllocBody649_19 AllocBody649_50

def AllocBody649_52 : StackLang.HolProg 64 :=
.seq AllocBody649_18 AllocBody649_51

def AllocBody649_53 : StackLang.HolProg 64 :=
.seq AllocBody649_17 AllocBody649_52

def AllocBody649_54 : StackLang.HolProg 64 :=
.seq AllocBody649_16 AllocBody649_53

def AllocBody649_55 : StackLang.HolProg 64 :=
.seq AllocBody649_15 AllocBody649_54

def AllocBody649_56 : StackLang.HolProg 64 :=
.seq AllocBody649_14 AllocBody649_55

def AllocBody649_57 : StackLang.HolProg 64 :=
.seq AllocBody649_13 AllocBody649_56

def AllocBody649_58 : StackLang.HolProg 64 :=
.seq AllocBody649_12 AllocBody649_57

def AllocBody649_59 : StackLang.HolProg 64 :=
.seq AllocBody649_11 AllocBody649_58

def AllocBody649_60 : StackLang.HolProg 64 :=
.seq AllocBody649_10 AllocBody649_59

def AllocBody649_61 : StackLang.HolProg 64 :=
.seq AllocBody649_9 AllocBody649_60

def AllocBody649_62 : StackLang.HolProg 64 :=
.seq AllocBody649_8 AllocBody649_61

def AllocBody649_63 : StackLang.HolProg 64 :=
.seq AllocBody649_7 AllocBody649_62

def AllocBody649_64 : StackLang.HolProg 64 :=
.seq AllocBody649_6 AllocBody649_63

def AllocBody649_65 : StackLang.HolProg 64 :=
.seq AllocBody649_5 AllocBody649_64

def AllocBody649_66 : StackLang.HolProg 64 :=
.seq AllocBody649_4 AllocBody649_65

def AllocBody649_67 : StackLang.HolProg 64 :=
.seq AllocBody649_3 AllocBody649_66

def AllocBody649_68 : StackLang.HolProg 64 :=
.seq AllocBody649_2 AllocBody649_67

def AllocBody649_69 : StackLang.HolProg 64 :=
.seq AllocBody649_1 AllocBody649_68

def AllocBody649_70 : StackLang.HolProg 64 :=
.seq AllocBody649_0 AllocBody649_69

def Alloc649 : Nat × StackLang.HolProg 64 := (649, AllocBody649_70)
theorem Alloc649_eq : StackAlloc.progComp (649, raw649) = Alloc649 := by
  kernel_rfl
#print axioms Alloc649_eq
end InitECandidate.Proofs.BackendStages
