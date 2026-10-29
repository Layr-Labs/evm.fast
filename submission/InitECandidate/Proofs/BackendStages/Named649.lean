import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed649
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody649_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody649_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody649_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody649_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody649_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody649_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody649_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody649_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody649_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody649_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody649_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody649_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody649_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody649_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody649_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody649_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody649_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody649_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody649_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody649_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody649_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody649_36 : StackLang.HolProg 64 :=
.seq NamedBody649_34 NamedBody649_35

def NamedBody649_37 : StackLang.HolProg 64 :=
.seq NamedBody649_33 NamedBody649_36

def NamedBody649_38 : StackLang.HolProg 64 :=
.seq NamedBody649_32 NamedBody649_37

def NamedBody649_39 : StackLang.HolProg 64 :=
.seq NamedBody649_31 NamedBody649_38

def NamedBody649_40 : StackLang.HolProg 64 :=
.seq NamedBody649_30 NamedBody649_39

def NamedBody649_41 : StackLang.HolProg 64 :=
.seq NamedBody649_29 NamedBody649_40

def NamedBody649_42 : StackLang.HolProg 64 :=
.seq NamedBody649_28 NamedBody649_41

def NamedBody649_43 : StackLang.HolProg 64 :=
.seq NamedBody649_27 NamedBody649_42

def NamedBody649_44 : StackLang.HolProg 64 :=
.seq NamedBody649_26 NamedBody649_43

def NamedBody649_45 : StackLang.HolProg 64 :=
.seq NamedBody649_25 NamedBody649_44

def NamedBody649_46 : StackLang.HolProg 64 :=
.seq NamedBody649_24 NamedBody649_45

def NamedBody649_47 : StackLang.HolProg 64 :=
.seq NamedBody649_23 NamedBody649_46

def NamedBody649_48 : StackLang.HolProg 64 :=
.seq NamedBody649_22 NamedBody649_47

def NamedBody649_49 : StackLang.HolProg 64 :=
.seq NamedBody649_21 NamedBody649_48

def NamedBody649_50 : StackLang.HolProg 64 :=
.seq NamedBody649_20 NamedBody649_49

def NamedBody649_51 : StackLang.HolProg 64 :=
.seq NamedBody649_19 NamedBody649_50

def NamedBody649_52 : StackLang.HolProg 64 :=
.seq NamedBody649_18 NamedBody649_51

def NamedBody649_53 : StackLang.HolProg 64 :=
.seq NamedBody649_17 NamedBody649_52

def NamedBody649_54 : StackLang.HolProg 64 :=
.seq NamedBody649_16 NamedBody649_53

def NamedBody649_55 : StackLang.HolProg 64 :=
.seq NamedBody649_15 NamedBody649_54

def NamedBody649_56 : StackLang.HolProg 64 :=
.seq NamedBody649_14 NamedBody649_55

def NamedBody649_57 : StackLang.HolProg 64 :=
.seq NamedBody649_13 NamedBody649_56

def NamedBody649_58 : StackLang.HolProg 64 :=
.seq NamedBody649_12 NamedBody649_57

def NamedBody649_59 : StackLang.HolProg 64 :=
.seq NamedBody649_11 NamedBody649_58

def NamedBody649_60 : StackLang.HolProg 64 :=
.seq NamedBody649_10 NamedBody649_59

def NamedBody649_61 : StackLang.HolProg 64 :=
.seq NamedBody649_9 NamedBody649_60

def NamedBody649_62 : StackLang.HolProg 64 :=
.seq NamedBody649_8 NamedBody649_61

def NamedBody649_63 : StackLang.HolProg 64 :=
.seq NamedBody649_7 NamedBody649_62

def NamedBody649_64 : StackLang.HolProg 64 :=
.seq NamedBody649_6 NamedBody649_63

def NamedBody649_65 : StackLang.HolProg 64 :=
.seq NamedBody649_5 NamedBody649_64

def NamedBody649_66 : StackLang.HolProg 64 :=
.seq NamedBody649_4 NamedBody649_65

def NamedBody649_67 : StackLang.HolProg 64 :=
.seq NamedBody649_3 NamedBody649_66

def NamedBody649_68 : StackLang.HolProg 64 :=
.seq NamedBody649_2 NamedBody649_67

def NamedBody649_69 : StackLang.HolProg 64 :=
.seq NamedBody649_1 NamedBody649_68

def NamedBody649_70 : StackLang.HolProg 64 :=
.seq NamedBody649_0 NamedBody649_69

def Named649 : Nat × StackLang.HolProg 64 := (649, NamedBody649_70)
theorem Named649_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed649 = Named649 := by
  kernel_rfl
#print axioms Named649_eq
end InitECandidate.Proofs.BackendStages
