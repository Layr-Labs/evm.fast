import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.RawStubs
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.Backend
import Flapjack.Compiler.Backend.RiscVConfig.Executable
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocStubsBody_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.allocSize 1

def AllocStubsBody_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.currHeap

def AllocStubsBody_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.nextFree 2

def AllocStubsBody_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.triggerGC 2

def AllocStubsBody_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.endOfHeap 2

def AllocStubsBody_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocStubsBody_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocStubsBody_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def AllocStubsBody_8 : StackLang.HolProg 64 :=
.seq AllocStubsBody_6 AllocStubsBody_7

def AllocStubsBody_9 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.test) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocStubsBody_5 AllocStubsBody_8

def AllocStubsBody_10 : StackLang.HolProg 64 :=
.seq AllocStubsBody_4 AllocStubsBody_9

def AllocStubsBody_11 : StackLang.HolProg 64 :=
.seq AllocStubsBody_3 AllocStubsBody_10

def AllocStubsBody_12 : StackLang.HolProg 64 :=
.seq AllocStubsBody_2 AllocStubsBody_11

def AllocStubsBody_13 : StackLang.HolProg 64 :=
.seq AllocStubsBody_1 AllocStubsBody_12

def AllocStubsBody_14 : StackLang.HolProg 64 :=
.seq AllocStubsBody_0 AllocStubsBody_13

def AllocStubsBody_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocStubsBody_16 : StackLang.HolProg 64 :=
.seq AllocStubsBody_14 AllocStubsBody_15

def AllocStubsBody_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocStubsBody_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackSetSize 22

def AllocStubsBody_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocStubsBody_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocStubsBody_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocStubsBody_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocStubsBody_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocStubsBody_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.raise 22

def AllocStubsBody_25 : StackLang.HolProg 64 :=
.seq AllocStubsBody_23 AllocStubsBody_24

def AllocStubsBody_26 : StackLang.HolProg 64 :=
.seq AllocStubsBody_22 AllocStubsBody_25

def AllocStubsBody_27 : StackLang.HolProg 64 :=
.seq AllocStubsBody_21 AllocStubsBody_26

def AllocStubsBody_28 : StackLang.HolProg 64 :=
.seq AllocStubsBody_20 AllocStubsBody_27

def AllocStubsBody_29 : StackLang.HolProg 64 :=
.seq AllocStubsBody_19 AllocStubsBody_28

def AllocStubsBody_30 : StackLang.HolProg 64 :=
.seq AllocStubsBody_18 AllocStubsBody_29

def AllocStubsBody_31 : StackLang.HolProg 64 :=
.seq AllocStubsBody_17 AllocStubsBody_30

def AllocStubsBody_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.storeConsts 22 23 none

def AllocStubsBody_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocStubsBody_34 : StackLang.HolProg 64 :=
.seq AllocStubsBody_32 AllocStubsBody_33

def AllocStubs : List (Nat × StackLang.HolProg 64) := [(4, AllocStubsBody_16), (5, AllocStubsBody_31), (6, AllocStubsBody_34)]
theorem AllocStubs_eq : StackAlloc.stubs RiscVConfig.pancakeRiscVBackendConfig.dataConf ++ RawStubs.map StackAlloc.progComp = AllocStubs := by
  kernel_rfl
#print axioms AllocStubs_eq
end InitECandidate.Proofs.BackendStages
