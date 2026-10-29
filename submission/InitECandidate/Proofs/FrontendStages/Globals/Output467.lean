import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data467
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody467_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 176#64]

def globalBody467_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody467_2 : Prog (BitVec 64) :=
.seq globalBody467_0 globalBody467_1

def globalBody467_3 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 176#64]) globalBody467_2

def globalData467 : Decl (BitVec 64) :=
.function { name := "msg_new_scratch", inline := false, exported := false, params := [], body := globalBody467_3, returnShape := (Flapjack.Shape.one) }
def globalOutput467 := Pancake.PanLang.declToHOL globalData467
end InitECandidate.Proofs.FrontendStages.Declarations
