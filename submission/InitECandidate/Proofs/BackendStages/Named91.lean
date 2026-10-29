import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed91
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody91_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody91_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody91_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody91_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody91_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody91_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2688614400#64)

def NamedBody91_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody91_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 13
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64)

def NamedBody91_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody91_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody91_18 : StackLang.HolProg 64 :=
.seq NamedBody91_16 NamedBody91_17

def NamedBody91_19 : StackLang.HolProg 64 :=
.seq NamedBody91_15 NamedBody91_18

def NamedBody91_20 : StackLang.HolProg 64 :=
.seq NamedBody91_14 NamedBody91_19

def NamedBody91_21 : StackLang.HolProg 64 :=
.seq NamedBody91_13 NamedBody91_20

def NamedBody91_22 : StackLang.HolProg 64 :=
.seq NamedBody91_12 NamedBody91_21

def NamedBody91_23 : StackLang.HolProg 64 :=
.seq NamedBody91_11 NamedBody91_22

def NamedBody91_24 : StackLang.HolProg 64 :=
.seq NamedBody91_10 NamedBody91_23

def NamedBody91_25 : StackLang.HolProg 64 :=
.seq NamedBody91_9 NamedBody91_24

def NamedBody91_26 : StackLang.HolProg 64 :=
.seq NamedBody91_8 NamedBody91_25

def NamedBody91_27 : StackLang.HolProg 64 :=
.seq NamedBody91_7 NamedBody91_26

def NamedBody91_28 : StackLang.HolProg 64 :=
.seq NamedBody91_6 NamedBody91_27

def NamedBody91_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody91_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody91_31 : StackLang.HolProg 64 :=
.seq NamedBody91_29 NamedBody91_30

def NamedBody91_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody91_28 NamedBody91_31

def NamedBody91_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody91_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_35 : StackLang.HolProg 64 :=
.seq NamedBody91_33 NamedBody91_34

def NamedBody91_36 : StackLang.HolProg 64 :=
.seq NamedBody91_32 NamedBody91_35

def NamedBody91_37 : StackLang.HolProg 64 :=
.seq NamedBody91_5 NamedBody91_36

def NamedBody91_38 : StackLang.HolProg 64 :=
.loop NamedBody91_37

def NamedBody91_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody91_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody91_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody91_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody91_43 : StackLang.HolProg 64 :=
.seq NamedBody91_41 NamedBody91_42

def NamedBody91_44 : StackLang.HolProg 64 :=
.seq NamedBody91_40 NamedBody91_43

def NamedBody91_45 : StackLang.HolProg 64 :=
.seq NamedBody91_39 NamedBody91_44

def NamedBody91_46 : StackLang.HolProg 64 :=
.seq NamedBody91_38 NamedBody91_45

def NamedBody91_47 : StackLang.HolProg 64 :=
.seq NamedBody91_4 NamedBody91_46

def NamedBody91_48 : StackLang.HolProg 64 :=
.seq NamedBody91_3 NamedBody91_47

def NamedBody91_49 : StackLang.HolProg 64 :=
.seq NamedBody91_2 NamedBody91_48

def NamedBody91_50 : StackLang.HolProg 64 :=
.seq NamedBody91_1 NamedBody91_49

def NamedBody91_51 : StackLang.HolProg 64 :=
.seq NamedBody91_0 NamedBody91_50

def Named91 : Nat × StackLang.HolProg 64 := (91, NamedBody91_51)
theorem Named91_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed91 = Named91 := by
  kernel_rfl
#print axioms Named91_eq
end InitECandidate.Proofs.BackendStages
