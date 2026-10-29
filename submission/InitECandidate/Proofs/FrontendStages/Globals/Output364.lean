import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data364
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody364_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 56#64]

def globalBody364_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def globalBody364_2 : Prog (BitVec 64) :=
.seq globalBody364_0 globalBody364_1

def globalBody364_3 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) globalBody364_2

def globalData364 : Decl (BitVec 64) :=
.function { name := "acct_copy", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := globalBody364_3, returnShape := (Flapjack.Shape.one) }
def globalOutput364 := Pancake.PanLang.declToHOL globalData364
end InitECandidate.Proofs.FrontendStages.Declarations
