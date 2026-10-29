import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function91
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody91_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody91_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody91_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody91_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody91_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody91_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody91_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2688614400#64)

def rawBody91_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody91_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 4
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64)

def rawBody91_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody91_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody91_18 : StackLang.HolProg 64 :=
.seq rawBody91_16 rawBody91_17

def rawBody91_19 : StackLang.HolProg 64 :=
.seq rawBody91_15 rawBody91_18

def rawBody91_20 : StackLang.HolProg 64 :=
.seq rawBody91_14 rawBody91_19

def rawBody91_21 : StackLang.HolProg 64 :=
.seq rawBody91_13 rawBody91_20

def rawBody91_22 : StackLang.HolProg 64 :=
.seq rawBody91_12 rawBody91_21

def rawBody91_23 : StackLang.HolProg 64 :=
.seq rawBody91_11 rawBody91_22

def rawBody91_24 : StackLang.HolProg 64 :=
.seq rawBody91_10 rawBody91_23

def rawBody91_25 : StackLang.HolProg 64 :=
.seq rawBody91_9 rawBody91_24

def rawBody91_26 : StackLang.HolProg 64 :=
.seq rawBody91_8 rawBody91_25

def rawBody91_27 : StackLang.HolProg 64 :=
.seq rawBody91_7 rawBody91_26

def rawBody91_28 : StackLang.HolProg 64 :=
.seq rawBody91_6 rawBody91_27

def rawBody91_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody91_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody91_31 : StackLang.HolProg 64 :=
.seq rawBody91_29 rawBody91_30

def rawBody91_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody91_28 rawBody91_31

def rawBody91_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody91_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_35 : StackLang.HolProg 64 :=
.seq rawBody91_33 rawBody91_34

def rawBody91_36 : StackLang.HolProg 64 :=
.seq rawBody91_32 rawBody91_35

def rawBody91_37 : StackLang.HolProg 64 :=
.seq rawBody91_5 rawBody91_36

def rawBody91_38 : StackLang.HolProg 64 :=
.loop rawBody91_37

def rawBody91_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody91_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody91_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody91_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody91_43 : StackLang.HolProg 64 :=
.seq rawBody91_41 rawBody91_42

def rawBody91_44 : StackLang.HolProg 64 :=
.seq rawBody91_40 rawBody91_43

def rawBody91_45 : StackLang.HolProg 64 :=
.seq rawBody91_39 rawBody91_44

def rawBody91_46 : StackLang.HolProg 64 :=
.seq rawBody91_38 rawBody91_45

def rawBody91_47 : StackLang.HolProg 64 :=
.seq rawBody91_4 rawBody91_46

def rawBody91_48 : StackLang.HolProg 64 :=
.seq rawBody91_3 rawBody91_47

def rawBody91_49 : StackLang.HolProg 64 :=
.seq rawBody91_2 rawBody91_48

def rawBody91_50 : StackLang.HolProg 64 :=
.seq rawBody91_1 rawBody91_49

def rawBody91_51 : StackLang.HolProg 64 :=
.seq rawBody91_0 rawBody91_50

def raw91 : StackLang.HolProg 64 := rawBody91_51
theorem raw91_eq : StackRawCall.compTop RawInfo.rawInfo (function91 (.list [])).1 = raw91 := by
  kernel_rfl
#print axioms raw91_eq
end InitECandidate.Proofs.BackendStages
