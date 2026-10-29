import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function126
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody126_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody126_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody126_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody126_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody126_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody126_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody126_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody126_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody126_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody126_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody126_17 : StackLang.HolProg 64 :=
.seq rawBody126_15 rawBody126_16

def rawBody126_18 : StackLang.HolProg 64 :=
.seq rawBody126_14 rawBody126_17

def rawBody126_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody126_18 rawBody126_19

def rawBody126_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody126_25 : StackLang.HolProg 64 :=
.seq rawBody126_23 rawBody126_24

def rawBody126_26 : StackLang.HolProg 64 :=
.seq rawBody126_22 rawBody126_25

def rawBody126_27 : StackLang.HolProg 64 :=
.seq rawBody126_21 rawBody126_26

def rawBody126_28 : StackLang.HolProg 64 :=
.seq rawBody126_20 rawBody126_27

def rawBody126_29 : StackLang.HolProg 64 :=
.seq rawBody126_13 rawBody126_28

def rawBody126_30 : StackLang.HolProg 64 :=
.seq rawBody126_12 rawBody126_29

def rawBody126_31 : StackLang.HolProg 64 :=
.seq rawBody126_11 rawBody126_30

def rawBody126_32 : StackLang.HolProg 64 :=
.seq rawBody126_10 rawBody126_31

def rawBody126_33 : StackLang.HolProg 64 :=
.seq rawBody126_9 rawBody126_32

def rawBody126_34 : StackLang.HolProg 64 :=
.seq rawBody126_8 rawBody126_33

def rawBody126_35 : StackLang.HolProg 64 :=
.seq rawBody126_7 rawBody126_34

def rawBody126_36 : StackLang.HolProg 64 :=
.seq rawBody126_6 rawBody126_35

def rawBody126_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody126_39 : StackLang.HolProg 64 :=
.seq rawBody126_37 rawBody126_38

def rawBody126_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody126_36 rawBody126_39

def rawBody126_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_43 : StackLang.HolProg 64 :=
.seq rawBody126_41 rawBody126_42

def rawBody126_44 : StackLang.HolProg 64 :=
.seq rawBody126_40 rawBody126_43

def rawBody126_45 : StackLang.HolProg 64 :=
.seq rawBody126_5 rawBody126_44

def rawBody126_46 : StackLang.HolProg 64 :=
.seq rawBody126_4 rawBody126_45

def rawBody126_47 : StackLang.HolProg 64 :=
.loop rawBody126_46

def rawBody126_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody126_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody126_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody126_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody126_52 : StackLang.HolProg 64 :=
.seq rawBody126_50 rawBody126_51

def rawBody126_53 : StackLang.HolProg 64 :=
.seq rawBody126_49 rawBody126_52

def rawBody126_54 : StackLang.HolProg 64 :=
.seq rawBody126_48 rawBody126_53

def rawBody126_55 : StackLang.HolProg 64 :=
.seq rawBody126_47 rawBody126_54

def rawBody126_56 : StackLang.HolProg 64 :=
.seq rawBody126_3 rawBody126_55

def rawBody126_57 : StackLang.HolProg 64 :=
.seq rawBody126_2 rawBody126_56

def rawBody126_58 : StackLang.HolProg 64 :=
.seq rawBody126_1 rawBody126_57

def rawBody126_59 : StackLang.HolProg 64 :=
.seq rawBody126_0 rawBody126_58

def raw126 : StackLang.HolProg 64 := rawBody126_59
theorem raw126_eq : StackRawCall.compTop RawInfo.rawInfo (function126 (.list [])).1 = raw126 := by
  kernel_rfl
#print axioms raw126_eq
end InitECandidate.Proofs.BackendStages
