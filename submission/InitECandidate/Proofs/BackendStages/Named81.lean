import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed81
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody81_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody81_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody81_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody81_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody81_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody81_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody81_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody81_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody81_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody81_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody81_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody81_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody81_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody81_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody81_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody81_24 : StackLang.HolProg 64 :=
.seq NamedBody81_22 NamedBody81_23

def NamedBody81_25 : StackLang.HolProg 64 :=
.seq NamedBody81_21 NamedBody81_24

def NamedBody81_26 : StackLang.HolProg 64 :=
.seq NamedBody81_20 NamedBody81_25

def NamedBody81_27 : StackLang.HolProg 64 :=
.seq NamedBody81_19 NamedBody81_26

def NamedBody81_28 : StackLang.HolProg 64 :=
.seq NamedBody81_18 NamedBody81_27

def NamedBody81_29 : StackLang.HolProg 64 :=
.seq NamedBody81_17 NamedBody81_28

def NamedBody81_30 : StackLang.HolProg 64 :=
.seq NamedBody81_16 NamedBody81_29

def NamedBody81_31 : StackLang.HolProg 64 :=
.seq NamedBody81_15 NamedBody81_30

def NamedBody81_32 : StackLang.HolProg 64 :=
.seq NamedBody81_14 NamedBody81_31

def NamedBody81_33 : StackLang.HolProg 64 :=
.seq NamedBody81_13 NamedBody81_32

def NamedBody81_34 : StackLang.HolProg 64 :=
.seq NamedBody81_12 NamedBody81_33

def NamedBody81_35 : StackLang.HolProg 64 :=
.seq NamedBody81_11 NamedBody81_34

def NamedBody81_36 : StackLang.HolProg 64 :=
.seq NamedBody81_10 NamedBody81_35

def NamedBody81_37 : StackLang.HolProg 64 :=
.seq NamedBody81_9 NamedBody81_36

def NamedBody81_38 : StackLang.HolProg 64 :=
.seq NamedBody81_8 NamedBody81_37

def NamedBody81_39 : StackLang.HolProg 64 :=
.seq NamedBody81_7 NamedBody81_38

def NamedBody81_40 : StackLang.HolProg 64 :=
.seq NamedBody81_6 NamedBody81_39

def NamedBody81_41 : StackLang.HolProg 64 :=
.seq NamedBody81_5 NamedBody81_40

def NamedBody81_42 : StackLang.HolProg 64 :=
.seq NamedBody81_4 NamedBody81_41

def NamedBody81_43 : StackLang.HolProg 64 :=
.seq NamedBody81_3 NamedBody81_42

def NamedBody81_44 : StackLang.HolProg 64 :=
.seq NamedBody81_2 NamedBody81_43

def NamedBody81_45 : StackLang.HolProg 64 :=
.seq NamedBody81_1 NamedBody81_44

def NamedBody81_46 : StackLang.HolProg 64 :=
.seq NamedBody81_0 NamedBody81_45

def Named81 : Nat × StackLang.HolProg 64 := (81, NamedBody81_46)
theorem Named81_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed81 = Named81 := by
  kernel_rfl
#print axioms Named81_eq
end InitECandidate.Proofs.BackendStages
