import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw383
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody383_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody383_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody383_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody383_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody383_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody383_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody383_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody383_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_17 : StackLang.HolProg 64 :=
.seq AllocBody383_15 AllocBody383_16

def AllocBody383_18 : StackLang.HolProg 64 :=
.seq AllocBody383_14 AllocBody383_17

def AllocBody383_19 : StackLang.HolProg 64 :=
.seq AllocBody383_13 AllocBody383_18

def AllocBody383_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_22 : StackLang.HolProg 64 :=
.seq AllocBody383_20 AllocBody383_21

def AllocBody383_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody383_19 AllocBody383_22

def AllocBody383_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody383_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody383_29 : StackLang.HolProg 64 :=
.seq AllocBody383_27 AllocBody383_28

def AllocBody383_30 : StackLang.HolProg 64 :=
.seq AllocBody383_26 AllocBody383_29

def AllocBody383_31 : StackLang.HolProg 64 :=
.seq AllocBody383_25 AllocBody383_30

def AllocBody383_32 : StackLang.HolProg 64 :=
.seq AllocBody383_24 AllocBody383_31

def AllocBody383_33 : StackLang.HolProg 64 :=
.seq AllocBody383_23 AllocBody383_32

def AllocBody383_34 : StackLang.HolProg 64 :=
.seq AllocBody383_12 AllocBody383_33

def AllocBody383_35 : StackLang.HolProg 64 :=
.seq AllocBody383_11 AllocBody383_34

def AllocBody383_36 : StackLang.HolProg 64 :=
.seq AllocBody383_10 AllocBody383_35

def AllocBody383_37 : StackLang.HolProg 64 :=
.seq AllocBody383_9 AllocBody383_36

def AllocBody383_38 : StackLang.HolProg 64 :=
.seq AllocBody383_8 AllocBody383_37

def AllocBody383_39 : StackLang.HolProg 64 :=
.seq AllocBody383_7 AllocBody383_38

def AllocBody383_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody383_43 : StackLang.HolProg 64 :=
.seq AllocBody383_41 AllocBody383_42

def AllocBody383_44 : StackLang.HolProg 64 :=
.seq AllocBody383_40 AllocBody383_43

def AllocBody383_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody383_39 AllocBody383_44

def AllocBody383_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_48 : StackLang.HolProg 64 :=
.seq AllocBody383_46 AllocBody383_47

def AllocBody383_49 : StackLang.HolProg 64 :=
.seq AllocBody383_45 AllocBody383_48

def AllocBody383_50 : StackLang.HolProg 64 :=
.seq AllocBody383_6 AllocBody383_49

def AllocBody383_51 : StackLang.HolProg 64 :=
.loop AllocBody383_50

def AllocBody383_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody383_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody383_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody383_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody383_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody383_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody383_60 : StackLang.HolProg 64 :=
.seq AllocBody383_58 AllocBody383_59

def AllocBody383_61 : StackLang.HolProg 64 :=
.seq AllocBody383_57 AllocBody383_60

def AllocBody383_62 : StackLang.HolProg 64 :=
.seq AllocBody383_56 AllocBody383_61

def AllocBody383_63 : StackLang.HolProg 64 :=
.seq AllocBody383_55 AllocBody383_62

def AllocBody383_64 : StackLang.HolProg 64 :=
.seq AllocBody383_54 AllocBody383_63

def AllocBody383_65 : StackLang.HolProg 64 :=
.seq AllocBody383_53 AllocBody383_64

def AllocBody383_66 : StackLang.HolProg 64 :=
.seq AllocBody383_52 AllocBody383_65

def AllocBody383_67 : StackLang.HolProg 64 :=
.seq AllocBody383_51 AllocBody383_66

def AllocBody383_68 : StackLang.HolProg 64 :=
.seq AllocBody383_5 AllocBody383_67

def AllocBody383_69 : StackLang.HolProg 64 :=
.seq AllocBody383_4 AllocBody383_68

def AllocBody383_70 : StackLang.HolProg 64 :=
.seq AllocBody383_3 AllocBody383_69

def AllocBody383_71 : StackLang.HolProg 64 :=
.seq AllocBody383_2 AllocBody383_70

def AllocBody383_72 : StackLang.HolProg 64 :=
.seq AllocBody383_1 AllocBody383_71

def AllocBody383_73 : StackLang.HolProg 64 :=
.seq AllocBody383_0 AllocBody383_72

def Alloc383 : Nat × StackLang.HolProg 64 := (383, AllocBody383_73)
theorem Alloc383_eq : StackAlloc.progComp (383, raw383) = Alloc383 := by
  kernel_rfl
#print axioms Alloc383_eq
end InitECandidate.Proofs.BackendStages
