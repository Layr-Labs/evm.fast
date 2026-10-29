import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed540
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody540_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody540_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody540_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody540_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody540_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody540_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody540_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 56#64))

def NamedBody540_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody540_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody540_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody540_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody540_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody540_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody540_19 : StackLang.HolProg 64 :=
.seq NamedBody540_17 NamedBody540_18

def NamedBody540_20 : StackLang.HolProg 64 :=
.seq NamedBody540_16 NamedBody540_19

def NamedBody540_21 : StackLang.HolProg 64 :=
.seq NamedBody540_15 NamedBody540_20

def NamedBody540_22 : StackLang.HolProg 64 :=
.seq NamedBody540_14 NamedBody540_21

def NamedBody540_23 : StackLang.HolProg 64 :=
.seq NamedBody540_13 NamedBody540_22

def NamedBody540_24 : StackLang.HolProg 64 :=
.seq NamedBody540_12 NamedBody540_23

def NamedBody540_25 : StackLang.HolProg 64 :=
.seq NamedBody540_11 NamedBody540_24

def NamedBody540_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody540_25 NamedBody540_26

def NamedBody540_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody540_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody540_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody540_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody540_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody540_33 : StackLang.HolProg 64 :=
.seq NamedBody540_31 NamedBody540_32

def NamedBody540_34 : StackLang.HolProg 64 :=
.seq NamedBody540_30 NamedBody540_33

def NamedBody540_35 : StackLang.HolProg 64 :=
.seq NamedBody540_29 NamedBody540_34

def NamedBody540_36 : StackLang.HolProg 64 :=
.seq NamedBody540_28 NamedBody540_35

def NamedBody540_37 : StackLang.HolProg 64 :=
.seq NamedBody540_27 NamedBody540_36

def NamedBody540_38 : StackLang.HolProg 64 :=
.seq NamedBody540_10 NamedBody540_37

def NamedBody540_39 : StackLang.HolProg 64 :=
.seq NamedBody540_9 NamedBody540_38

def NamedBody540_40 : StackLang.HolProg 64 :=
.seq NamedBody540_8 NamedBody540_39

def NamedBody540_41 : StackLang.HolProg 64 :=
.seq NamedBody540_7 NamedBody540_40

def NamedBody540_42 : StackLang.HolProg 64 :=
.seq NamedBody540_6 NamedBody540_41

def NamedBody540_43 : StackLang.HolProg 64 :=
.seq NamedBody540_5 NamedBody540_42

def NamedBody540_44 : StackLang.HolProg 64 :=
.seq NamedBody540_4 NamedBody540_43

def NamedBody540_45 : StackLang.HolProg 64 :=
.seq NamedBody540_3 NamedBody540_44

def NamedBody540_46 : StackLang.HolProg 64 :=
.seq NamedBody540_2 NamedBody540_45

def NamedBody540_47 : StackLang.HolProg 64 :=
.seq NamedBody540_1 NamedBody540_46

def NamedBody540_48 : StackLang.HolProg 64 :=
.seq NamedBody540_0 NamedBody540_47

def Named540 : Nat × StackLang.HolProg 64 := (540, NamedBody540_48)
theorem Named540_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed540 = Named540 := by
  kernel_rfl
#print axioms Named540_eq
end InitECandidate.Proofs.BackendStages
