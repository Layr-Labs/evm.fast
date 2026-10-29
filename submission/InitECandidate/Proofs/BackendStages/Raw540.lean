import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function540
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody540_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody540_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody540_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody540_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody540_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody540_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody540_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody540_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody540_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody540_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody540_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def rawBody540_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody540_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody540_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def rawBody540_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody540_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody540_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody540_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody540_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody540_19 : StackLang.HolProg 64 :=
.seq rawBody540_17 rawBody540_18

def rawBody540_20 : StackLang.HolProg 64 :=
.seq rawBody540_16 rawBody540_19

def rawBody540_21 : StackLang.HolProg 64 :=
.seq rawBody540_15 rawBody540_20

def rawBody540_22 : StackLang.HolProg 64 :=
.seq rawBody540_14 rawBody540_21

def rawBody540_23 : StackLang.HolProg 64 :=
.seq rawBody540_13 rawBody540_22

def rawBody540_24 : StackLang.HolProg 64 :=
.seq rawBody540_12 rawBody540_23

def rawBody540_25 : StackLang.HolProg 64 :=
.seq rawBody540_11 rawBody540_24

def rawBody540_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody540_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody540_25 rawBody540_26

def rawBody540_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody540_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody540_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody540_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody540_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody540_33 : StackLang.HolProg 64 :=
.seq rawBody540_31 rawBody540_32

def rawBody540_34 : StackLang.HolProg 64 :=
.seq rawBody540_30 rawBody540_33

def rawBody540_35 : StackLang.HolProg 64 :=
.seq rawBody540_29 rawBody540_34

def rawBody540_36 : StackLang.HolProg 64 :=
.seq rawBody540_28 rawBody540_35

def rawBody540_37 : StackLang.HolProg 64 :=
.seq rawBody540_27 rawBody540_36

def rawBody540_38 : StackLang.HolProg 64 :=
.seq rawBody540_10 rawBody540_37

def rawBody540_39 : StackLang.HolProg 64 :=
.seq rawBody540_9 rawBody540_38

def rawBody540_40 : StackLang.HolProg 64 :=
.seq rawBody540_8 rawBody540_39

def rawBody540_41 : StackLang.HolProg 64 :=
.seq rawBody540_7 rawBody540_40

def rawBody540_42 : StackLang.HolProg 64 :=
.seq rawBody540_6 rawBody540_41

def rawBody540_43 : StackLang.HolProg 64 :=
.seq rawBody540_5 rawBody540_42

def rawBody540_44 : StackLang.HolProg 64 :=
.seq rawBody540_4 rawBody540_43

def rawBody540_45 : StackLang.HolProg 64 :=
.seq rawBody540_3 rawBody540_44

def rawBody540_46 : StackLang.HolProg 64 :=
.seq rawBody540_2 rawBody540_45

def rawBody540_47 : StackLang.HolProg 64 :=
.seq rawBody540_1 rawBody540_46

def rawBody540_48 : StackLang.HolProg 64 :=
.seq rawBody540_0 rawBody540_47

def raw540 : StackLang.HolProg 64 := rawBody540_48
theorem raw540_eq : StackRawCall.compTop RawInfo.rawInfo (function540 (.list [])).1 = raw540 := by
  kernel_rfl
#print axioms raw540_eq
end InitECandidate.Proofs.BackendStages
