import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data760
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate744
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody760_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_is_zero" [Flapjack.Exp.var Flapjack.VarKind.local "z"]

def globalBody760_1 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64])) globalBody760_0

def globalData760 : Decl (BitVec 64) :=
.function { name := "g1_is_inf", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := globalBody760_1, returnShape := (Flapjack.Shape.one) }
def globalOutput760 := Pancake.PanLang.declToHOL globalData760
end InitECandidate.Proofs.FrontendStages.Declarations
