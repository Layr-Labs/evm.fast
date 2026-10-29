import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed221
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody221_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody221_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody221_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody221_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody221_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody221_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody221_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody221_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody221_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody221_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody221_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody221_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody221_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody221_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody221_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody221_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody221_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody221_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody221_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody221_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody221_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody221_36 : StackLang.HolProg 64 :=
.seq NamedBody221_34 NamedBody221_35

def NamedBody221_37 : StackLang.HolProg 64 :=
.seq NamedBody221_33 NamedBody221_36

def NamedBody221_38 : StackLang.HolProg 64 :=
.seq NamedBody221_32 NamedBody221_37

def NamedBody221_39 : StackLang.HolProg 64 :=
.seq NamedBody221_31 NamedBody221_38

def NamedBody221_40 : StackLang.HolProg 64 :=
.seq NamedBody221_30 NamedBody221_39

def NamedBody221_41 : StackLang.HolProg 64 :=
.seq NamedBody221_29 NamedBody221_40

def NamedBody221_42 : StackLang.HolProg 64 :=
.seq NamedBody221_28 NamedBody221_41

def NamedBody221_43 : StackLang.HolProg 64 :=
.seq NamedBody221_27 NamedBody221_42

def NamedBody221_44 : StackLang.HolProg 64 :=
.seq NamedBody221_26 NamedBody221_43

def NamedBody221_45 : StackLang.HolProg 64 :=
.seq NamedBody221_25 NamedBody221_44

def NamedBody221_46 : StackLang.HolProg 64 :=
.seq NamedBody221_24 NamedBody221_45

def NamedBody221_47 : StackLang.HolProg 64 :=
.seq NamedBody221_23 NamedBody221_46

def NamedBody221_48 : StackLang.HolProg 64 :=
.seq NamedBody221_22 NamedBody221_47

def NamedBody221_49 : StackLang.HolProg 64 :=
.seq NamedBody221_21 NamedBody221_48

def NamedBody221_50 : StackLang.HolProg 64 :=
.seq NamedBody221_20 NamedBody221_49

def NamedBody221_51 : StackLang.HolProg 64 :=
.seq NamedBody221_19 NamedBody221_50

def NamedBody221_52 : StackLang.HolProg 64 :=
.seq NamedBody221_18 NamedBody221_51

def NamedBody221_53 : StackLang.HolProg 64 :=
.seq NamedBody221_17 NamedBody221_52

def NamedBody221_54 : StackLang.HolProg 64 :=
.seq NamedBody221_16 NamedBody221_53

def NamedBody221_55 : StackLang.HolProg 64 :=
.seq NamedBody221_15 NamedBody221_54

def NamedBody221_56 : StackLang.HolProg 64 :=
.seq NamedBody221_14 NamedBody221_55

def NamedBody221_57 : StackLang.HolProg 64 :=
.seq NamedBody221_13 NamedBody221_56

def NamedBody221_58 : StackLang.HolProg 64 :=
.seq NamedBody221_12 NamedBody221_57

def NamedBody221_59 : StackLang.HolProg 64 :=
.seq NamedBody221_11 NamedBody221_58

def NamedBody221_60 : StackLang.HolProg 64 :=
.seq NamedBody221_10 NamedBody221_59

def NamedBody221_61 : StackLang.HolProg 64 :=
.seq NamedBody221_9 NamedBody221_60

def NamedBody221_62 : StackLang.HolProg 64 :=
.seq NamedBody221_8 NamedBody221_61

def NamedBody221_63 : StackLang.HolProg 64 :=
.seq NamedBody221_7 NamedBody221_62

def NamedBody221_64 : StackLang.HolProg 64 :=
.seq NamedBody221_6 NamedBody221_63

def NamedBody221_65 : StackLang.HolProg 64 :=
.seq NamedBody221_5 NamedBody221_64

def NamedBody221_66 : StackLang.HolProg 64 :=
.seq NamedBody221_4 NamedBody221_65

def NamedBody221_67 : StackLang.HolProg 64 :=
.seq NamedBody221_3 NamedBody221_66

def NamedBody221_68 : StackLang.HolProg 64 :=
.seq NamedBody221_2 NamedBody221_67

def NamedBody221_69 : StackLang.HolProg 64 :=
.seq NamedBody221_1 NamedBody221_68

def NamedBody221_70 : StackLang.HolProg 64 :=
.seq NamedBody221_0 NamedBody221_69

def Named221 : Nat × StackLang.HolProg 64 := (221, NamedBody221_70)
theorem Named221_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed221 = Named221 := by
  kernel_rfl
#print axioms Named221_eq
end InitECandidate.Proofs.BackendStages
