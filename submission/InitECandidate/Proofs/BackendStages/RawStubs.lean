import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.RawInfoData
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.Backend
import Flapjack.Compiler.Backend.RiscVConfig.Executable
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RawStubsBody_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def RawStubsBody_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackSetSize 22

def RawStubsBody_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RawStubsBody_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def RawStubsBody_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def RawStubsBody_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def RawStubsBody_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def RawStubsBody_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.raise 22

def RawStubsBody_8 : StackLang.HolProg 64 :=
.seq RawStubsBody_6 RawStubsBody_7

def RawStubsBody_9 : StackLang.HolProg 64 :=
.seq RawStubsBody_5 RawStubsBody_8

def RawStubsBody_10 : StackLang.HolProg 64 :=
.seq RawStubsBody_4 RawStubsBody_9

def RawStubsBody_11 : StackLang.HolProg 64 :=
.seq RawStubsBody_3 RawStubsBody_10

def RawStubsBody_12 : StackLang.HolProg 64 :=
.seq RawStubsBody_2 RawStubsBody_11

def RawStubsBody_13 : StackLang.HolProg 64 :=
.seq RawStubsBody_1 RawStubsBody_12

def RawStubsBody_14 : StackLang.HolProg 64 :=
.seq RawStubsBody_0 RawStubsBody_13

def RawStubsBody_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.storeConsts 22 23 none

def RawStubsBody_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RawStubsBody_17 : StackLang.HolProg 64 :=
.seq RawStubsBody_15 RawStubsBody_16

def RawStubs : List (Nat × StackLang.HolProg 64) := [(5, RawStubsBody_14), (6, RawStubsBody_17)]
theorem RawStubs_eq : [(raiseStubLocation, StackRawCall.compTop RawInfo.rawInfo (WordToStack.Native.raiseStubNative false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)))), (storeConstsStubLocation, StackRawCall.compTop RawInfo.rawInfo (WordToStack.Native.storeConstsStubNative (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))))] = RawStubs := by
  kernel_rfl
#print axioms RawStubs_eq
end InitECandidate.Proofs.BackendStages
