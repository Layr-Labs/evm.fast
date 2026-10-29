import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function474
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody474_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody474_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody474_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody474_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody474_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody474_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 112#64))

def rawBody474_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody474_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 192#64))

def rawBody474_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def rawBody474_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody474_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody474_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody474_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def rawBody474_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def rawBody474_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody474_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody474_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody474_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody474_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody474_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody474_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody474_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody474_32 : StackLang.HolProg 64 :=
.seq rawBody474_30 rawBody474_31

def rawBody474_33 : StackLang.HolProg 64 :=
.seq rawBody474_29 rawBody474_32

def rawBody474_34 : StackLang.HolProg 64 :=
.seq rawBody474_28 rawBody474_33

def rawBody474_35 : StackLang.HolProg 64 :=
.seq rawBody474_27 rawBody474_34

def rawBody474_36 : StackLang.HolProg 64 :=
.seq rawBody474_26 rawBody474_35

def rawBody474_37 : StackLang.HolProg 64 :=
.seq rawBody474_25 rawBody474_36

def rawBody474_38 : StackLang.HolProg 64 :=
.seq rawBody474_24 rawBody474_37

def rawBody474_39 : StackLang.HolProg 64 :=
.seq rawBody474_23 rawBody474_38

def rawBody474_40 : StackLang.HolProg 64 :=
.seq rawBody474_22 rawBody474_39

def rawBody474_41 : StackLang.HolProg 64 :=
.seq rawBody474_21 rawBody474_40

def rawBody474_42 : StackLang.HolProg 64 :=
.seq rawBody474_20 rawBody474_41

def rawBody474_43 : StackLang.HolProg 64 :=
.seq rawBody474_19 rawBody474_42

def rawBody474_44 : StackLang.HolProg 64 :=
.seq rawBody474_18 rawBody474_43

def rawBody474_45 : StackLang.HolProg 64 :=
.seq rawBody474_17 rawBody474_44

def rawBody474_46 : StackLang.HolProg 64 :=
.seq rawBody474_16 rawBody474_45

def rawBody474_47 : StackLang.HolProg 64 :=
.seq rawBody474_15 rawBody474_46

def rawBody474_48 : StackLang.HolProg 64 :=
.seq rawBody474_14 rawBody474_47

def rawBody474_49 : StackLang.HolProg 64 :=
.seq rawBody474_13 rawBody474_48

def rawBody474_50 : StackLang.HolProg 64 :=
.seq rawBody474_12 rawBody474_49

def rawBody474_51 : StackLang.HolProg 64 :=
.seq rawBody474_11 rawBody474_50

def rawBody474_52 : StackLang.HolProg 64 :=
.seq rawBody474_10 rawBody474_51

def rawBody474_53 : StackLang.HolProg 64 :=
.seq rawBody474_9 rawBody474_52

def rawBody474_54 : StackLang.HolProg 64 :=
.seq rawBody474_8 rawBody474_53

def rawBody474_55 : StackLang.HolProg 64 :=
.seq rawBody474_7 rawBody474_54

def rawBody474_56 : StackLang.HolProg 64 :=
.seq rawBody474_6 rawBody474_55

def rawBody474_57 : StackLang.HolProg 64 :=
.seq rawBody474_5 rawBody474_56

def rawBody474_58 : StackLang.HolProg 64 :=
.seq rawBody474_4 rawBody474_57

def rawBody474_59 : StackLang.HolProg 64 :=
.seq rawBody474_3 rawBody474_58

def rawBody474_60 : StackLang.HolProg 64 :=
.seq rawBody474_2 rawBody474_59

def rawBody474_61 : StackLang.HolProg 64 :=
.seq rawBody474_1 rawBody474_60

def rawBody474_62 : StackLang.HolProg 64 :=
.seq rawBody474_0 rawBody474_61

def raw474 : StackLang.HolProg 64 := rawBody474_62
theorem raw474_eq : StackRawCall.compTop RawInfo.rawInfo (function474 (.list [])).1 = raw474 := by
  kernel_rfl
#print axioms raw474_eq
end InitECandidate.Proofs.BackendStages
